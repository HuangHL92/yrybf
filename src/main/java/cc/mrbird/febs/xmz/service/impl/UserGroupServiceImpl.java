package cc.mrbird.febs.xmz.service.impl;

import cc.mrbird.febs.common.entity.QueryRequest;
import cc.mrbird.febs.group.entity.GpaMap;
import cc.mrbird.febs.xmz.entity.UserGroup;
import cc.mrbird.febs.xmz.mapper.UserGroupMapper;
import cc.mrbird.febs.xmz.service.IUserGroupService;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.beans.factory.annotation.Autowired;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;

import java.util.List;

/**
 * 项目组关系表  Service实现
 *
 * @author tongrok
 * @date 2020-05-30 18:35:44
 */
@Service
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true, rollbackFor = Exception.class)
public class UserGroupServiceImpl extends ServiceImpl<UserGroupMapper, UserGroup> implements IUserGroupService {


    @Override
    public IPage<UserGroup> findUserGroups(QueryRequest request, UserGroup userGroup) {
        LambdaQueryWrapper<UserGroup> queryWrapper = new LambdaQueryWrapper<>();
        // TODO 设置查询条件
        Page<UserGroup> page = new Page<>(request.getPageNum(), request.getPageSize());
        return this.page(page, queryWrapper);
    }

    @Override
    public List<UserGroup> findUserGroups(UserGroup userGroup) {
	    LambdaQueryWrapper<UserGroup> queryWrapper = new LambdaQueryWrapper<>();
		// TODO 设置查询条件
		return this.baseMapper.selectList(queryWrapper);
    }

    @Override
    @Transactional
    public void createUserGroup(UserGroup userGroup) {
        this.save(userGroup);
    }

    @Override
    @Transactional
    public void updateUserGroup(UserGroup userGroup) {
        this.saveOrUpdate(userGroup);
    }

    @Override
    @Transactional
    public void deleteUserGroup(UserGroup userGroup) {
        LambdaQueryWrapper<UserGroup> wrapper = new LambdaQueryWrapper<>();
	    // TODO 设置删除条件
	    this.remove(wrapper);
	}

    @Override
    public void deleteUserGroupByGroupId ( List <String> groupIds ) {
        this.baseMapper.delete(new QueryWrapper<UserGroup> ().lambda().in(UserGroup::getGroupId, groupIds));
    }
}
