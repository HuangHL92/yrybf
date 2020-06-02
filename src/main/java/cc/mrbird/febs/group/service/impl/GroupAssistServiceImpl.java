package cc.mrbird.febs.group.service.impl;

import cc.mrbird.febs.common.entity.FebsConstant;
import cc.mrbird.febs.common.entity.QueryRequest;
import cc.mrbird.febs.common.utils.SortUtil;
import cc.mrbird.febs.group.entity.GmaMap;
import cc.mrbird.febs.group.entity.GpaMap;
import cc.mrbird.febs.group.entity.GroupAssist;
import cc.mrbird.febs.group.mapper.GroupAssistMapper;
import cc.mrbird.febs.group.service.IGatMapService;
import cc.mrbird.febs.group.service.IGmaMapService;
import cc.mrbird.febs.group.service.IGpaMapService;
import cc.mrbird.febs.group.service.IGroupAssistService;
import cc.mrbird.febs.person.entity.PersonAssist;
import cc.mrbird.febs.person.entity.PersonMedicine;
import cc.mrbird.febs.person.service.IPersonAssistService;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.core.toolkit.ObjectUtils;
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

/**
 * 医疗分组信息  Service实现
 *
 * @author tongrok
 * @date 2020-02-15 23:58:39
 */
@Service
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true, rollbackFor = Exception.class)
public class GroupAssistServiceImpl extends ServiceImpl<GroupAssistMapper, GroupAssist> implements IGroupAssistService {

    @Autowired
    private IPersonAssistService personAssistService;
    @Autowired
    private IGpaMapService gapmService;
    @Autowired
    private IGatMapService gatmSerivice;
    @Autowired
    private IGmaMapService gmamService;


    @Override
    public IPage<GroupAssist> findGroupDataList( QueryRequest request, GroupAssist groupAssist ) {
        Page<PersonMedicine> page = new Page<>(request.getPageNum(), request.getPageSize());
        SortUtil.handlePageSort(request, page, "sortno", FebsConstant.ORDER_ASC, false);
        return this.baseMapper.findGroupDetailPage(page, groupAssist);
    }


    @Override
    public IPage<GroupAssist> findGroupDataList2( QueryRequest request, GroupAssist groupAssist ) {
        Page<PersonMedicine> page = new Page<>(request.getPageNum(), request.getPageSize());
        SortUtil.handlePageSort(request, page, "sortno", FebsConstant.ORDER_ASC, false);
        return this.baseMapper.findGroupDetail2Page(page, groupAssist);
    }


    @Override
    public List<GroupAssist> findGroupDataList( GroupAssist groupAssist ) {
        return this.baseMapper.findGroupDetail(groupAssist);
    }


    @Override
    public GroupAssist findGroupData( GroupAssist groupAssist ) {
        return ObjectUtils.isEmpty(this.baseMapper.findGroupDetail(groupAssist)) ? null : this.baseMapper.findGroupDetail(groupAssist).get(0);
    }

    @Override
    @Transactional
    public void createGroup( GroupAssist groupAssist ) {
        this.save(groupAssist);
        this.saveGpaMaps(groupAssist);
        this.saveGmaMaps(groupAssist);
        this.updateAfterRole( groupAssist.getGroupId(),groupAssist.getGroupLeader() );

    }

    @Override
    @Transactional
    public void updateGroup( GroupAssist groupAssist ) {

        this.updateBeforeRole(groupAssist.getGroupId(), groupAssist.getGroupLeader());
        this.saveOrUpdate(groupAssist);
        List<String> ss = new ArrayList<String>();
        ss.add(groupAssist.getGroupId().toString());
        this.gapmService.deleteGpaMapsByGroupAssistId(ss);
        this.gmamService.deleteGmaMapsByGroupAssistId(ss);
        this.saveGpaMaps(groupAssist);
        this.saveGmaMaps(groupAssist);
        this.updateAfterRole(groupAssist.getGroupId(), groupAssist.getGroupLeader());

    }


    @Override
    @Transactional
    public void deleteGroup( String groupIds ) {
        List<String> list = Arrays.asList(groupIds.split(StringPool.COMMA));
        list.forEach(groupaid -> { deleteBeforeRole(Long.valueOf(groupaid)); });
        this.baseMapper.delete(new QueryWrapper<GroupAssist>().lambda().in(GroupAssist::getGroupId, list));
        this.gapmService.deleteGpaMapsByGroupAssistId(list);
        //this.gatmSerivice.deleteGatMapsByGroupAssistId(list);
        this.gmamService.deleteGmaMapsByGroupAssistId(list);

    }


    private void saveGpaMaps( GroupAssist groupAssist ) {
        if (StringUtils.isNotBlank(groupAssist.getGroupMembers())) {
            String[] groupaids = groupAssist.getGroupMembers().split(StringPool.COMMA);
            List<GpaMap> gpams = new ArrayList<>();
            Arrays.stream(groupaids).forEach(groupaid -> {
                gpams.add(new GpaMap(Long.valueOf(groupaid),Long.valueOf(groupAssist.getGroupId()),"0"));
                this.personAssistService.updateRoleByPersonId(groupaid, "1");
            });
            if(groupAssist.getGroupLeader()!=null) {
                gpams.add(new GpaMap(Long.valueOf(groupAssist.getGroupLeader()), Long.valueOf(groupAssist.getGroupId()), "1"));
            }
            gapmService.saveBatch(gpams);
        }
    }

    private void saveGmaMaps( GroupAssist groupAssist ) {
        if (StringUtils.isNotBlank(groupAssist.getGroupMedicine())) {
            gmamService.save(new GmaMap(Long.valueOf(groupAssist.getGroupMedicine()),groupAssist.getGroupId()));
        }
    }

    private void updateBeforeRole(Long groupId,String personId ){

        String beforeGroupLeader= this.baseMapper.findGroupLeaderById(groupId);
        //List<String> bfms= this.baseMapper.findGroupMemberById(groupId);


        QueryWrapper<GpaMap> wqmember= new QueryWrapper<GpaMap>();
        wqmember.lambda().eq(GpaMap::getGroupaType,"0");
        wqmember.lambda().eq(GpaMap::getGroupaId,groupId);
        List<GpaMap> gmembers= this.gapmService.list(wqmember);

        QueryWrapper<GpaMap> wq= new QueryWrapper<GpaMap>();
        wq.lambda().eq(GpaMap::getGroupaType,"1");
        wq.lambda().eq(GpaMap::getPersonaId,beforeGroupLeader);
        List<GpaMap> gleaders=this.gapmService.list(wq);

        //更新修改前组长role
        if(gleaders.size()>1){
            //PersonAssist beforepa = personAssistService.getById(beforeGroupLeader);
            //String br =beforepa.getRrole();
            //if(br!=null&&br.equals("5")){
                this.personAssistService.updateRoleByPersonId(beforeGroupLeader, "2");
            ///}else{
                //this.personAssistService.updateRoleByPersonId(beforeGroupLeader, "4");
            //}
        }else{
            this.personAssistService.updateRoleByPersonId(beforeGroupLeader, "4");
        }

        //更新修改前组员role
        gmembers.forEach(gmember -> {
            this.personAssistService.updateRoleByPersonId(gmember.getPersonaId().toString(), "4");
        });

    }

    private void updateAfterRole(Long groupId,String personId){

        PersonAssist pa = personAssistService.getById(personId);
        //List<String> afms= this.baseMapper.findGroupMemberById(groupId);
        //更新修改后组长role
       // String role =pa.getRrole();
        //        1：组员；2：组长；3：团长；4：未分配角色人员 5.团长兼容组长
        //if(role!=null&&(role.equals("3") || role.equals("5"))) {
         //   this.personAssistService.updateRoleByPersonId(personId, "5");
        //}else{
            this.personAssistService.updateRoleByPersonId(personId, "2");
        //}


        QueryWrapper<GpaMap> wqmember= new QueryWrapper<GpaMap>();
        wqmember.lambda().eq(GpaMap::getGroupaType,"0");
        wqmember.lambda().eq(GpaMap::getGroupaId,groupId);
        List<GpaMap> gmembers= this.gapmService.list(wqmember);
        //更新修改后组员role
        gmembers.forEach(gmember -> {
            this.personAssistService.updateRoleByPersonId(gmember.getPersonaId().toString(), "1");
        });
    }

    private void deleteBeforeRole(Long groupId){

        //更新修改前组长role
        String beforeGroupLeader= this.baseMapper.findGroupLeaderById(groupId);



        //List<String> bfms= this.baseMapper.findGroupMemberById(groupId);
        /*if(beforeGroupLeader!=null){
            PersonAssist beforepa = personAssistService.getById(beforeGroupLeader);
            String br =beforepa.getRrole();
            if(br!=null&&br.equals("5")){
                this.personAssistService.updateRoleByPersonId(beforeGroupLeader, "3");
            }else{
                this.personAssistService.updateRoleByPersonId(beforeGroupLeader, "4");
            }
        }*/

        QueryWrapper<GpaMap> wq= new QueryWrapper<GpaMap>();
        wq.lambda().eq(GpaMap::getGroupaType,"1");
        wq.lambda().eq(GpaMap::getPersonaId,beforeGroupLeader);
        List<GpaMap> gleaders=this.gapmService.list(wq);

        if(gleaders.size()>1){
            this.personAssistService.updateRoleByPersonId(beforeGroupLeader, "2");
        }else{
            this.personAssistService.updateRoleByPersonId(beforeGroupLeader, "4");
        }
        QueryWrapper<GpaMap> wqmember= new QueryWrapper<GpaMap>();
        wqmember.lambda().eq(GpaMap::getGroupaType,"0");
        wqmember.lambda().eq(GpaMap::getGroupaId,groupId);
        List<GpaMap> gmembers= this.gapmService.list(wqmember);
        //更新修改 前组员role
        gmembers.forEach(gmember -> {
            this.personAssistService.updateRoleByPersonId(gmember.getPersonaId().toString(), "4");
        });

    }
}
