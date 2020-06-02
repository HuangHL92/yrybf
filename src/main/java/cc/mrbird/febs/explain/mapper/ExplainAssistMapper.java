package cc.mrbird.febs.explain.mapper;

import cc.mrbird.febs.explain.entity.Explain;
import cc.mrbird.febs.explain.entity.ExplainAssist;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.apache.ibatis.annotations.Param;

/**
 *  Mapper
 *
 * @author tongrok
 * @date 2020-02-23 18:17:25
 */
public interface ExplainAssistMapper extends BaseMapper<ExplainAssist> {


    IPage<ExplainAssist> findDetailList( Page<ExplainAssist> page, @Param("explainAssist") ExplainAssist explainAssist);

}
