package cc.mrbird.febs.xmz.service.impl;

import cc.mrbird.febs.common.entity.FebsConstant;
import cc.mrbird.febs.common.entity.QueryRequest;
import cc.mrbird.febs.common.utils.SortUtil;
import cc.mrbird.febs.group.entity.GpaMap;
import cc.mrbird.febs.group.entity.GroupAssist;
import cc.mrbird.febs.xmz.entity.Group;
import cc.mrbird.febs.xmz.entity.UserGroup;
import cc.mrbird.febs.xmz.mapper.GroupMapper;
import cc.mrbird.febs.xmz.service.IGroupService;
import cc.mrbird.febs.xmz.service.IUserGroupService;
import com.baomidou.mybatisplus.core.toolkit.StringPool;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.beans.factory.annotation.Autowired;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

/**
 * 项目组信息  Service实现
 *
 * @author tongrok
 * @date 2020-05-30 18:35:20
 */
@Service
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true, rollbackFor = Exception.class)
public class GroupServiceImpl extends ServiceImpl<GroupMapper, Group> implements IGroupService {

    @Autowired
    private IUserGroupService  userGroupService;

    @Override
    public IPage<Group> findGroups(QueryRequest request, Group group) {
        LambdaQueryWrapper<Group> queryWrapper = new LambdaQueryWrapper<>();
        // TODO 设置查询条件
        Page<Group> page = new Page<>(request.getPageNum(), request.getPageSize());
        return this.page(page, queryWrapper);
    }

    @Override
    public List<Group> findGroups(Group group) {
	    LambdaQueryWrapper<Group> queryWrapper = new LambdaQueryWrapper<>();
		// TODO 设置查询条件
		return this.baseMapper.selectList(queryWrapper);
    }

    @Override
    @Transactional
    public void createGroup(Group group) {

        this.save(group);
        this.saveUserGroup(group);

    }

    @Override
    @Transactional
    public void updateGroup(Group group) {

        this.saveOrUpdate(group);
        List<String> ss = new ArrayList<String>();
        ss.add(group.getGroupId().toString());
        this.userGroupService.deleteUserGroupByGroupId(ss);
        this.saveUserGroup(group);
    }

    @Override
    @Transactional
    public void deleteGroup(Group group) {
        LambdaQueryWrapper<Group> wrapper = new LambdaQueryWrapper<>();
	    // TODO 设置删除条件
	    this.remove(wrapper);
	}

    @Override
    public IPage <Group> findGroupLists ( QueryRequest request, Group group ) {
        Page<Group> page = new Page<>(request.getPageNum(), request.getPageSize());
        SortUtil.handlePageSort(request, page, "groupId", FebsConstant.ORDER_ASC, false);
        return this.baseMapper.findGroupDetail2Page(page, group);
    }




    private void saveUserGroup( Group group ) {
        if (StringUtils.isNotBlank(group.getGroupMembers())) {
            String[] userids = group.getGroupMembers().split(StringPool.COMMA);
            List<UserGroup> userGroups = new ArrayList<> ();
            Arrays.stream(userids).forEach(userid -> {
                userGroups.add(new UserGroup (Long.valueOf(userid),Long.valueOf(group.getGroupId()),"0"));
                //this.personAssistService.updateRoleByPersonId(userid, "1");
            });
            if(group.getGroupLeader()!=null) {
                userGroups.add(new UserGroup(Long.valueOf(group.getGroupLeader()), Long.valueOf(group.getGroupId()), "1"));
            }
            userGroupService.saveBatch(userGroups);
        }
    }


    @Override
    public List <Map<Long, String>> findGroupLeaders ( Long groupId, String keyword ) {
        return this.baseMapper.findGroupLeaders(groupId,keyword);
    }

    @Override
    public List <Map <Long, String>> findGroupMembers ( Long groupId, String keyword ) {
        return  this.baseMapper.findGroupMembers(groupId,keyword);
    }
}
