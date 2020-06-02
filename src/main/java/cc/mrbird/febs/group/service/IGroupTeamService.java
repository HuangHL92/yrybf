package cc.mrbird.febs.group.service;

import cc.mrbird.febs.common.entity.QueryRequest;
import cc.mrbird.febs.group.entity.GroupTeam;
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
public interface IGroupTeamService extends IService<GroupTeam> {
    /**
     * 查询（分页）
     *
     * @param request QueryRequest
     * @param groupTeam groupTeam
     * @return IPage<GroupMedicine>
     */
    IPage<GroupTeam> findGroups( QueryRequest request, GroupTeam groupTeam );

    /**
     * 查询（所有）
     *
     * @param groupTeam groupTeam
     * @return List<GroupMedicine>
     */
    List<GroupTeam> findGroups( GroupTeam groupTeam );



    IPage<GroupTeam> findGroupDataList( QueryRequest request, GroupTeam groupTeam );

    /**
     * 查询（所有）
     *
     * @param groupTeam groupTeam
     * @return List<GroupMedicine>
     */
    List<GroupTeam> findGroupDataList( GroupTeam groupTeam );

    GroupTeam findGroupData( GroupTeam groupTeam );

    /**
     * 新增
     *
     * @param groupTeam groupTeam`
     */
    void createGroup( GroupTeam groupTeam );

    /**
     * 修改
     *
     * @param groupTeam groupTeam
     */
    void updateGroup( GroupTeam groupTeam );

    /**
     * 删除
     *
     * @param groupIds groupIds
     */
    void deleteGroup( String groupIds );


    List<Map<Long,String>> findTeamMembers( Long groupId ,String keyword);
}
