package cc.mrbird.febs.explain.service.impl;

import cc.mrbird.febs.common.entity.FebsConstant;
import cc.mrbird.febs.common.entity.QueryRequest;
import cc.mrbird.febs.common.utils.SortUtil;
import cc.mrbird.febs.explain.entity.Explain;
import cc.mrbird.febs.explain.mapper.ExplainMapper;
import cc.mrbird.febs.explain.mapper.ExplainQueryMapper;
import cc.mrbird.febs.explain.service.IExplainQueryService;
import cc.mrbird.febs.explain.service.IExplainService;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;

@Service
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true, rollbackFor = Exception.class)
public class ExplainQueryServiceImpl  extends ServiceImpl<ExplainQueryMapper, Explain> implements IExplainQueryService {

    /**
     * 查询条件中的选择选项
     * @param tableName
     * @param keyword
     * @return
     */
    public List<Map<Long,String>> findSelectInfo(String tableName, String keyword){
        if("mgroup".equals(tableName)){
            return this.baseMapper.findMedicineTeams(keyword);
        }else if("medicine".equals(tableName)){
            return this.baseMapper.findMedicines(keyword);
        }else if("agroup".equals(tableName)){
            return this.baseMapper.findAssistTeams(keyword);
        }else if("fzr".equals(tableName)){
            return this.baseMapper.findAssistLeaders(keyword);
        }else{
            return null;
        }
    }



    @Override
    public IPage<Explain> findDetailList(QueryRequest request, Explain explain) {
        Page<Explain> page = new Page<>(request.getPageNum(), request.getPageSize());
        SortUtil.handlePageSort(request, page, "estatus", FebsConstant.ORDER_ASC, false);
        return this.baseMapper.findDetailList(page,explain);
    }

    public List<Explain> findDetailList(Explain explain){
        return this.baseMapper.findDetailListToExc(explain);
    }

    public Explain getExplainLs(String eid){
        return this.baseMapper.getExplainLs(eid);
    }

    public void updateExplain1(Explain explain){
        this.baseMapper.updateExplain1(explain);
    }

    public String getMedicineTelByUserid(String userid){ return  this.baseMapper.getMedicineTelByUserid(userid); }
}
