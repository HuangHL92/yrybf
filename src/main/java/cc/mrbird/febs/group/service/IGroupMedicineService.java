package cc.mrbird.febs.group.service;

import cc.mrbird.febs.group.entity.GroupMedicine;

import cc.mrbird.febs.common.entity.QueryRequest;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;
import java.util.Map;

/**
 * 分组信息  Service接口
 *
 * @author tongrok
 * @date 2020-02-15 23:58:39
 */
public interface IGroupMedicineService extends IService<GroupMedicine> {



    IPage<GroupMedicine> findGroupDataList(QueryRequest request,GroupMedicine groupMedicine);

    /**
     * 查询（所有）
     *
     * @param groupMedicine groupMedicine
     * @return List<GroupMedicine>
     */
    List<GroupMedicine> findGroupDataList( GroupMedicine groupMedicine);

    GroupMedicine findGroupData( GroupMedicine groupMedicine);

    /**
     * 新增
     *
     * @param groupMedicine groupMedicine
     */
    void createGroup(GroupMedicine groupMedicine );

    /**
     * 修改
     *
     * @param groupMedicine groupMedicine
     */
    void updateGroup(GroupMedicine groupMedicine );

    /**
     * 删除
     *
     * @param groupIds groupIds
     */
    void deleteGroup(String  groupIds );

    List<Map<Long,String>> findGroupMedicine( Long groupId ,String keyword);

    /**
     * 查找用户详细信息
     *
     * @param request request
     * @param groupMedicine    用户对象，用于传递查询条件
     * @return IPage
     */

}
