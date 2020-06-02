package cc.mrbird.febs.explain.mapper;

import cc.mrbird.febs.explain.entity.Explain;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface ExplainQueryMapper extends BaseMapper<Explain> {

    //负责人选项
    List<Map<Long,String>> findAssistLeaders( @Param("keyword")String keyword );
    //服务对象选项
    List<Map<Long,String>> findMedicines( @Param("keyword")String keyword );
    //服务小组
    List<Map<Long,String>> findMedicineTeams( @Param("keyword")String keyword );
    //帮扶小组
    List<Map<Long,String>> findAssistTeams( @Param("keyword")String keyword );

    IPage<Explain> findDetailList(Page<Explain> page, @Param("explain") Explain explain);

    List<Explain> findDetailListToExc(@Param("explain") Explain explain);

    Explain getExplainLs(String eid);

    void updateExplain1(Explain explain);

    String getMedicineTelByUserid(String userid);
}
