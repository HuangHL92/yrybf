package cc.mrbird.febs.explain.service;

import cc.mrbird.febs.common.entity.QueryRequest;
import cc.mrbird.febs.explain.entity.Explain;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;
import java.util.Map;

/**
 * 支持诉求查询的接口
 */
public interface IExplainQueryService extends IService<Explain> {

    /**
     * 查询条件中的选择选项
     * @param tableName
     * @param keyword
     * @return
     */
    List<Map<Long,String>> findSelectInfo(String tableName, String keyword);

    IPage<Explain> findDetailList(QueryRequest request, Explain explain);

    Explain getExplainLs(String eid);

    void updateExplain1(Explain explain);

    List<Explain> findDetailList(Explain explain);

    String getMedicineTelByUserid(String userid);

}
