package cc.mrbird.febs.group.service.impl;

import cc.mrbird.febs.common.entity.FebsConstant;
import cc.mrbird.febs.common.entity.QueryRequest;
import cc.mrbird.febs.common.utils.SortUtil;
import cc.mrbird.febs.group.entity.GroupMedicine;
import cc.mrbird.febs.group.mapper.GroupMedicineMapper;
import cc.mrbird.febs.group.service.IGmaMapService;
import cc.mrbird.febs.group.service.IGroupMedicineService;
import cc.mrbird.febs.person.entity.PersonMedicine;
import cc.mrbird.febs.person.service.IPersonMedicineService;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.core.toolkit.ObjectUtils;
import com.baomidou.mybatisplus.core.toolkit.StringPool;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

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
public class GroupMedicineServiceImpl extends ServiceImpl<GroupMedicineMapper, GroupMedicine> implements IGroupMedicineService {

    @Autowired
    private IPersonMedicineService personMedicineService;

    @Autowired
    private IGmaMapService gmamService;

    @Override
    public IPage<GroupMedicine> findGroupDataList(  QueryRequest request,GroupMedicine groupMedicine ) {
        Page<PersonMedicine> page = new Page<>(request.getPageNum(), request.getPageSize());
        SortUtil.handlePageSort(request, page, "sortno", FebsConstant.ORDER_ASC, false);
        return this.baseMapper.findGroupDetailPage(page, groupMedicine);
    }

    @Override
    public List<GroupMedicine> findGroupDataList( GroupMedicine groupMedicine ) {
        return this.baseMapper.findGroupDetail(groupMedicine);
    }


    @Override
    public GroupMedicine findGroupData( GroupMedicine groupMedicine ) {
        return ObjectUtils.isEmpty(this.baseMapper.findGroupDetail(groupMedicine))?null:this.baseMapper.findGroupDetail(groupMedicine).get(0);
    }
    @Override
    @Transactional
    public void createGroup(GroupMedicine groupMedicine ) {
        this.save(groupMedicine);
        this.personMedicineService.updateByGroupMedicine(groupMedicine);
    }

    @Override
    @Transactional
    public void updateGroup(GroupMedicine groupMedicine ) {

        this.saveOrUpdate(groupMedicine);
        this.personMedicineService.updateByGroupNull(groupMedicine.getGroupId());
        this.personMedicineService.updateByGroupMedicine(groupMedicine);
    }

    @Override
    @Transactional
    public void deleteGroup(String groupIds ) {
        List<String> list = Arrays.asList(groupIds.split(StringPool.COMMA));
        this.baseMapper.delete(new QueryWrapper<GroupMedicine>().lambda().in(GroupMedicine::getGroupId, list));
        for (String s:list  ) {this.personMedicineService.updateByGroupNull(Long.parseLong(s));}
        this.gmamService.deleteGmaMapsByGroupMedicineId(list);
	}

    @Override
    public List<Map<Long,String>> findGroupMedicine( Long groupId,String keyword ) {
        return this.baseMapper.findGroupMedicine(groupId,keyword);
    }

}
