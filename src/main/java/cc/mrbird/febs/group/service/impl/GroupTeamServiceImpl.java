package cc.mrbird.febs.group.service.impl;

import cc.mrbird.febs.common.entity.FebsConstant;
import cc.mrbird.febs.common.entity.QueryRequest;
import cc.mrbird.febs.common.utils.SortUtil;
import cc.mrbird.febs.group.entity.GatMap;
import cc.mrbird.febs.group.entity.GroupTeam;
import cc.mrbird.febs.group.mapper.GroupTeamMapper;
import cc.mrbird.febs.group.service.IGatMapService;
import cc.mrbird.febs.group.service.IGroupTeamService;
import cc.mrbird.febs.person.entity.PersonAssist;
import cc.mrbird.febs.person.entity.PersonMedicine;
import cc.mrbird.febs.person.service.IPersonAssistService;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.core.toolkit.StringPool;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

/**
 * 医疗分组信息  Service实现
 *
 * @author tongrok
 * @date 2020-02-15 23:58:39
 */
@Service
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true, rollbackFor = Exception.class)
public class GroupTeamServiceImpl extends ServiceImpl<GroupTeamMapper, GroupTeam> implements IGroupTeamService {

    @Autowired
    private IPersonAssistService personAssistService;

    @Autowired
    private IGatMapService gatService;

    @Override
    public IPage<GroupTeam> findGroups( QueryRequest request, GroupTeam groupTeam ) {
        LambdaQueryWrapper<GroupTeam> queryWrapper = new LambdaQueryWrapper<>();
        // TODO 设置查询条件
        Page<GroupTeam> page = new Page<>(request.getPageNum(), request.getPageSize());
        return this.page(page, queryWrapper);
    }

    @Override
    public List<GroupTeam> findGroups( GroupTeam groupTeam ) {
        LambdaQueryWrapper<GroupTeam> queryWrapper = new LambdaQueryWrapper<>();
        // TODO 设置查询条件
        return this.baseMapper.selectList(queryWrapper);
    }

    @Override
    public IPage<GroupTeam> findGroupDataList(  QueryRequest request,GroupTeam groupTeam ) {
        Page<PersonMedicine> page = new Page<>(request.getPageNum(), request.getPageSize());
        SortUtil.handlePageSort(request, page, "teamId", FebsConstant.ORDER_DESC, false);
        return this.baseMapper.findGroupDetailPage(page, groupTeam);
    }

    @Override
    public List<GroupTeam> findGroupDataList( GroupTeam groupTeam ) {
        return this.baseMapper.findGroupDetail(groupTeam);
    }


    @Override
    public GroupTeam findGroupData( GroupTeam groupTeam ) {
        List<GroupTeam> gts=this.baseMapper.findGroupDetail(groupTeam);
        return gts.size()>0?gts.get(0):null;
    }

    @Override
    @Transactional
    public void createGroup(GroupTeam groupTeam ) {
        this.save(groupTeam);
        this.saveGpaMaps(groupTeam);
        this.updateAfterRole( groupTeam.getTeamId(),groupTeam.getTeamLeader() );
    }

    @Override
    @Transactional
    public void updateGroup(GroupTeam groupTeam ) {
        this.updateBeforeRole(groupTeam.getTeamId(),groupTeam.getTeamLeader());
        this.saveOrUpdate(groupTeam);
        List<String> ss = new ArrayList<String>();
        ss.add(groupTeam.getTeamId().toString());
        this.gatService.deleteGatMapsByGroupTeamId(ss);
        this.saveGpaMaps(groupTeam);
        this.updateAfterRole(groupTeam.getTeamId(),groupTeam.getTeamLeader());
    }

    @Override
    @Transactional
    public void deleteGroup(String teamIds ) {
        List<String> list = Arrays.asList(teamIds.split(StringPool.COMMA));
        list.forEach(teamId -> { deleteBeforeRole(Long.valueOf(teamId)); });
        this.baseMapper.delete(new QueryWrapper<GroupTeam>().lambda().in(GroupTeam::getTeamId, list));
        this.gatService.deleteGatMapsByGroupTeamId(list);
    }

    @Override
    public List<Map<Long, String>> findTeamMembers( Long teamId ,String keyword) {
        return this.baseMapper.findTeamMembers(teamId,keyword);
    }


    private void saveGpaMaps( GroupTeam groupTeam ) {
        if (StringUtils.isNotBlank(groupTeam.getTeamMembers())) {
            String[] groupids = groupTeam.getTeamMembers().split(StringPool.COMMA);
            List<GatMap> gats = new ArrayList<>();
            Arrays.stream(groupids).forEach(groupaid -> {
                gats.add(new GatMap(Long.valueOf(groupaid),groupTeam.getTeamId()));
                this.personAssistService.updateRoleByPersonId(groupaid, "1");
            });
            gatService.saveBatch(gats);
        }
    }

    private void updateBeforeRole(Long teamid,String personId ){

        //更新 前团长role
        GroupTeam beforeTeam= this.baseMapper.selectById(teamid);
       String bteamleader=beforeTeam.getTeamLeader();

        if(beforeTeam!=null&&!bteamleader.equals(personId)){
            PersonAssist beforepa = personAssistService.getById(bteamleader);
            String br =beforepa.getRrole();
            if(br!=null&&br.equals("5")){
                this.personAssistService.updateRoleByPersonId(bteamleader, "2");
            }else{
                this.personAssistService.updateRoleByPersonId(bteamleader, "4");
            }
        }

    }

    private void updateAfterRole(Long teamid,String personId){

        //更新 新团长role
        PersonAssist pa = personAssistService.getById(personId);
        String role =pa.getRrole();
        //        1：组员；2：组长；3：团长；4：未分配角色人员 5.团长兼容组长
        if(role!=null&&role.equals("2")) {
            this.personAssistService.updateRoleByPersonId(personId, "5");
        }else{
            this.personAssistService.updateRoleByPersonId(personId, "3");
        }
    }

    private void deleteBeforeRole(Long teamid){

        //更新 前团长role
        GroupTeam brTeam= this.baseMapper.selectById(teamid);
        if(brTeam!=null){
           String brtl= brTeam.getTeamLeader();
           if(brtl!=null){
                PersonAssist beforepa = personAssistService.getById(brtl);
                String br =beforepa.getRrole();
                if(br!=null&&br.equals("5")){
                    this.personAssistService.updateRoleByPersonId(brtl, "2");
                }else{
                    this.personAssistService.updateRoleByPersonId(brtl, "4");
                }
            }
        }
    }
}
