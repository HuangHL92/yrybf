package cc.mrbird.febs.explain.service;

import cc.mrbird.febs.explain.entity.ExplainAssist;

import cc.mrbird.febs.common.entity.QueryRequest;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 *  Service接口
 *
 * @author tongrok
 * @date 2020-02-23 18:17:25
 */
public interface IExplainAssistService extends IService<ExplainAssist> {

    IPage<ExplainAssist> findDetailList( QueryRequest request, ExplainAssist explain);


}
