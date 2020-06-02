package cc.mrbird.febs.xmz.service;

import cc.mrbird.febs.xmz.entity.Group;

import cc.mrbird.febs.common.entity.QueryRequest;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;
import java.util.Map;

/**
 * 项目组信息  Service接口
 *
 * @author tongrok
 * @date 2020-05-30 18:35:20
 */
public interface IGroupService extends IService<Group> {
    /**
     * 查询（分页）
     *
     * @param request QueryRequest
     * @param group group
     * @return IPage<Group>
     */
    IPage<Group> findGroups(QueryRequest request, Group group);

    /**
     * 查询（所有）
     *
     * @param group group
     * @return List<Group>
     */
    List<Group> findGroups(Group group);

    /**
     * 新增
     *
     * @param group group
     */
    void createGroup(Group group);

    /**
     * 修改
     *
     * @param group group
     */
    void updateGroup(Group group);

    /**
     * 删除
     *
     * @param group group
     */
    void deleteGroup(Group group);

    IPage<?> findGroupLists ( QueryRequest request, Group group );

    List<Map<Long,String>>  findGroupLeaders ( Long groupId, String keyword );

    List<Map<Long,String>>  findGroupMembers ( Long groupId, String keyword );
}
