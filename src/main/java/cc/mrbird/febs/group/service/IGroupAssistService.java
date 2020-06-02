package cc.mrbird.febs.group.service;

import cc.mrbird.febs.common.entity.QueryRequest;
import cc.mrbird.febs.group.entity.GroupAssist;
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
public interface IGroupAssistService extends IService<GroupAssist> {



    IPage<GroupAssist> findGroupDataList( QueryRequest request, GroupAssist groupAssist );

    /**
     * 查询（所有）
     *
     * @param groupAssist groupAssist
     * @return List<GroupMedicine>
     */
    List<GroupAssist> findGroupDataList( GroupAssist groupAssist );

    GroupAssist findGroupData( GroupAssist groupAssist );

    /**
     * 新增
     *
     * @param groupAssist groupAssist
     */
    void createGroup( GroupAssist groupAssist );

    /**
     * 修改
     *
     * @param groupAssist groupAssist
     */
    void updateGroup( GroupAssist groupAssist );

    /**
     * 删除
     *
     * @param groupIds groupIds
     */
    void deleteGroup( String groupIds );


    IPage<GroupAssist> findGroupDataList2( QueryRequest request, GroupAssist groupAssist );
}
