package cc.mrbird.febs.group.service;

import cc.mrbird.febs.group.entity.GatMap;

import cc.mrbird.febs.common.entity.QueryRequest;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * 帮扶团小组关系表 Service接口
 *
 * @author tongrok
 * @date 2020-02-21 07:46:25
 */
public interface IGatMapService extends IService<GatMap> {

    /**
     * 通过帮扶小组 id 删除
     *
     * @param groupIds 帮扶人员 id
     */
    void deleteGatMapsByGroupAssistId(List<String> groupIds);

    /**
     * 通过帮扶团 id 删除
     *
     * @param teamIds  帮扶小组id
     */
    void deleteGatMapsByGroupTeamId(List<String> teamIds);

}
