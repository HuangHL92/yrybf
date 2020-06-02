package cc.mrbird.febs.explain.service.impl;

import cc.mrbird.febs.common.entity.FebsConstant;
import cc.mrbird.febs.common.entity.QueryRequest;
import cc.mrbird.febs.common.utils.SortUtil;
import cc.mrbird.febs.explain.entity.ExplainAssist;
import cc.mrbird.febs.explain.mapper.ExplainAssistMapper;
import cc.mrbird.febs.explain.service.IExplainAssistService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.annotation.Propagation;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;

/**
 *  Service实现
 *
 * @author tongrok
 * @date 2020-02-23 18:17:25
 */
@Service
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true, rollbackFor = Exception.class)
public class ExplainAssistServiceImpl extends ServiceImpl<ExplainAssistMapper, ExplainAssist> implements IExplainAssistService {



    public IPage<ExplainAssist> findDetailList( QueryRequest request, ExplainAssist explainAssist) {

        Page<ExplainAssist> page = new Page<>(request.getPageNum(), request.getPageSize());
        SortUtil.handlePageSort(request, page, "xh", FebsConstant.ORDER_ASC, false);
        return this.baseMapper.findDetailList(page,explainAssist);
    }

}
