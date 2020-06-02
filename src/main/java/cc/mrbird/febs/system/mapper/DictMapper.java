package cc.mrbird.febs.system.mapper;

import cc.mrbird.febs.system.entity.Dict;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 *  Mapper
 *
 * @author tongrok
 * @date 2020-02-15 10:34:18
 */
public interface DictMapper extends BaseMapper<Dict> {

    List<Map<Long, String>> findDictCode(@Param("fieldName")String fieldName);
}
