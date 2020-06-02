package cc.mrbird.febs.group.service;

import cc.mrbird.febs.group.entity.GpaMap;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * 帮扶小组关系表  Service接口
 *
 * @author tongrok
 * @date 2020-02-20 17:36:41
 */
public interface IGpaMapService extends IService<GpaMap> {
    /**
     * 通过帮扶人员 id 删除
     *
     * @param personIds 帮扶人员 id
     */
    void deleteGpaMapsByPersonAssistId(List<String> personIds);

    /**
     * 通过帮扶小组 id 删除
     *
     * @param groupAssistIds  帮扶小组id
     */
    void deleteGpaMapsByGroupAssistId(List<String> groupAssistIds);
}
