package cc.mrbird.febs.system.service;

import cc.mrbird.febs.system.entity.Dict;

import cc.mrbird.febs.common.entity.QueryRequest;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;
import java.util.Map;

/**
 *  Service接口
 *
 * @author tongrok
 * @date 2020-02-15 10:34:18
 */
public interface IDictService extends IService<Dict> {
    /**
     * 查询（分页）
     *
     * @param request QueryRequest
     * @param dict dict
     * @return IPage<Dict>
     */
    IPage<Dict> findDicts( QueryRequest request, Dict dict );

    /**
     * 查询（所有）
     *
     * @param dict dict
     * @return List<Dict>
     */
    List<Dict> findDicts( Dict dict );

    /**
     * 新增
     *
     * @param dict dict
     */
    void createDict( Dict dict );

    /**
     * 修改
     *
     * @param dict dict
     */
    void updateDict( Dict dict );

    /**
     * 删除
     *
     * @param dict dict
     */
    void deleteDict( Dict dict );

    void deleteDicts( String[] ids );

    List<Map<Long,String>> findDictCode ( String fieldName );
}
