package cc.mrbird.febs.group.mapper;

import cc.mrbird.febs.group.entity.GroupMedicine;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * 分组信息  Mapper
 *
 * @author tongrok
 * @date 2020-02-15 23:58:39
 */
public interface GroupMedicineMapper extends BaseMapper<GroupMedicine> {


    /**
     * 查找用户详细信息
     *
     * @param page 分页对象
     * @param groupMedicine group对象，用于传递查询条件
     * @return Ipage
     */
    IPage<GroupMedicine> findGroupDetailPage( Page page, @Param("groupMedicine") GroupMedicine groupMedicine);

    /**
     * 查找用户详细信息
     *
     * @param groupMedicine group对象，用于传递查询条件
     * @return List<User>
     */
    List<GroupMedicine> findGroupDetail( @Param("groupMedicine") GroupMedicine groupMedicine);

    List<Map<Long,String>> findGroupMedicine( @Param("groupId") Long groupId, @Param("keyword") String keyword );
}
