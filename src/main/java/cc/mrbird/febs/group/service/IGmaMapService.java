package cc.mrbird.febs.group.service;

import cc.mrbird.febs.group.entity.GmaMap;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * 医务帮扶小组关系表  Service接口
 *
 * @author tongrok
 * @date 2020-02-21 22:06:48
 */
public interface IGmaMapService extends IService<GmaMap> {
    /**
     * 通过医务小组 id 删除
     *
     * @param groupmIds 医务小组 id
     */
    void deleteGmaMapsByGroupMedicineId(List<String> groupmIds);

    /**
     * 通过帮扶小组 id 删除
     *
     * @param groupaIds  帮扶小组id
     */
    void deleteGmaMapsByGroupAssistId(List<String> groupaIds);
}
