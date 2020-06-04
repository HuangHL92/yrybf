package cc.mrbird.febs.matter.service.impl;

import cc.mrbird.febs.common.entity.QueryRequest;
import cc.mrbird.febs.common.utils.FebsUtil;
import cc.mrbird.febs.matter.entity.MatterManage;
import cc.mrbird.febs.matter.mapper.MatterManageMapper;
import cc.mrbird.febs.matter.service.IMatterManageService;
import cc.mrbird.febs.system.service.IRoleService;
import cc.mrbird.febs.xmz.service.IGroupService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.beans.factory.annotation.Autowired;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;

import java.util.Date;
import java.util.List;

/**
 * 事项管理  Service实现
 *
 * @author tongrok
 * @date 2020-05-31 22:55:32
 */
@Service
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true, rollbackFor = Exception.class)
public class MatterManageServiceImpl extends ServiceImpl<MatterManageMapper, MatterManage> implements IMatterManageService {
    @Autowired
    private IRoleService roleService;
    @Autowired
    private IGroupService groupService;
    @Override
    public IPage<MatterManage> findMatterManages(QueryRequest request, MatterManage matterManage) {
        LambdaQueryWrapper<MatterManage> queryWrapper = new LambdaQueryWrapper<>();
        // TODO 设置查询条件
        Page<MatterManage> page = new Page<>(request.getPageNum(), request.getPageSize());
        return this.page(page, queryWrapper);
    }

    @Override
    public List<MatterManage> findMatterManages(MatterManage matterManage) {
//	    LambdaQueryWrapper<MatterManage> queryWrapper = new LambdaQueryWrapper<>();
		// TODO 设置查询条件
		return this.baseMapper.findManageMapper(matterManage);
    }

    @Override
    @Transactional
    public void createMatterManage(MatterManage matterManage) {
        matterManage.setCreatedTime (new Date());
        matterManage.setUpdatedBy(FebsUtil.getCurrentUser().getUsername());
        matterManage.setUpdatedTime(new Date());
        String creatUserName = matterManage.getCreatedBy();
        String groupName = groupService.getGroupNameByUserName(creatUserName);
        matterManage.setGroupName(groupName);
        matterManage.setUpdatedTime(matterManage.getCreatedTime());
        matterManage.setStatus("1");
        baseMapper.insert(matterManage);
    }

    @Override
    @Transactional
    public void updateMatterManage(MatterManage matterManage) {
        this.saveOrUpdate(matterManage);
    }

    @Override
    @Transactional
    public void deleteMatterManage(MatterManage matterManage) {
        LambdaQueryWrapper<MatterManage> wrapper = new LambdaQueryWrapper<>();
	    // TODO 设置删除条件
	    this.remove(wrapper);
	}

    @Override
    public Integer getTatal(MatterManage matterManage) {
        return baseMapper.getTatal(matterManage);
    }
}
