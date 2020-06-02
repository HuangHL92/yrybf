package cc.mrbird.febs.system.service.impl;

import cc.mrbird.febs.common.entity.QueryRequest;
import cc.mrbird.febs.system.entity.Dict;
import cc.mrbird.febs.system.mapper.DictMapper;
import cc.mrbird.febs.system.service.IDictService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.beans.factory.annotation.Autowired;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;

import java.util.List;
import java.util.Map;

/**
 *  Service实现
 *
 * @author tongrok
 * @date 2020-02-15 10:34:18
 */
@Service
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true, rollbackFor = Exception.class)
public class DictServiceImpl extends ServiceImpl<DictMapper, Dict> implements IDictService {

    @Override
    public IPage<Dict> findDicts(QueryRequest request, Dict dict) {
        LambdaQueryWrapper<Dict> queryWrapper = new LambdaQueryWrapper<>();
        // TODO 设置查询条件
        Page<Dict> page = new Page<>(request.getPageNum(), request.getPageSize());
        return this.page(page, queryWrapper);
    }

    @Override
    public List<Dict> findDicts( Dict dict) {
	    LambdaQueryWrapper<Dict> queryWrapper = new LambdaQueryWrapper<>();
		// TODO 设置查询条件
		return this.baseMapper.selectList(queryWrapper);
    }

    @Override
    @Transactional
    public void createDict(Dict dict) {
        this.save(dict);
    }

    @Override
    @Transactional
    public void updateDict(Dict dict) {
        this.saveOrUpdate(dict);
    }

    @Override
    @Transactional
    public void deleteDict(Dict dict) {
        LambdaQueryWrapper<Dict> wrapper = new LambdaQueryWrapper<>();
	    // TODO 设置删除条件
	    this.remove(wrapper);
	}

    @Override
    @Transactional
    public void deleteDicts( String[] ids ) {
        LambdaQueryWrapper<Dict> wrapper = new LambdaQueryWrapper<>();
        wrapper.in(Dict::getDictId,ids);
        this.baseMapper.delete(wrapper);
    }

    @Override
    public List <Map<Long, String>> findDictCode (String fieldName ) {
      return    this.baseMapper.findDictCode(fieldName);
    }
}
