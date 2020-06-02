package cc.mrbird.febs.xmz.service;

import cc.mrbird.febs.xmz.entity.UserGroup;

import cc.mrbird.febs.common.entity.QueryRequest;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * 项目组关系表  Service接口
 *
 * @author tongrok
 * @date 2020-05-30 18:35:44
 */
public interface IUserGroupService extends IService<UserGroup> {
    /**
     * 查询（分页）
     *
     * @param request QueryRequest
     * @param userGroup userGroup
     * @return IPage<UserGroup>
     */
    IPage<UserGroup> findUserGroups(QueryRequest request, UserGroup userGroup);

    /**
     * 查询（所有）
     *
     * @param userGroup userGroup
     * @return List<UserGroup>
     */
    List<UserGroup> findUserGroups(UserGroup userGroup);

    /**
     * 新增
     *
     * @param userGroup userGroup
     */
    void createUserGroup(UserGroup userGroup);

    /**
     * 修改
     *
     * @param userGroup userGroup
     */
    void updateUserGroup(UserGroup userGroup);

    /**
     * 删除
     *
     * @param userGroup userGroup
     */
    void deleteUserGroup(UserGroup userGroup);

    void deleteUserGroupByGroupId ( List<String> groupIds );
}
