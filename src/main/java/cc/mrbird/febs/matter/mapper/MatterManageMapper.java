package cc.mrbird.febs.matter.mapper;

import cc.mrbird.febs.matter.entity.MatterManage;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 事项管理  Mapper
 *
 * @author tongrok
 * @date 2020-05-31 22:55:32
 */
@Mapper
public interface MatterManageMapper extends BaseMapper<MatterManage> {

    List<MatterManage> findManageMapper(@Param("matterManage") MatterManage matterManage);

    Integer getTatal(@Param("matterManage") MatterManage matterManage);

    void updateByOid(@Param("oid") Integer oid, @Param("sts") Integer sts);
}
