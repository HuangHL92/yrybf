package cc.mrbird.febs.group.mapper;

import cc.mrbird.febs.group.entity.GroupAssist;
import cc.mrbird.febs.person.entity.PersonMedicine;
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
public interface GroupAssistMapper extends BaseMapper<GroupAssist> {


    /**
     * 查找用户详细信息
     *
     * @param page 分页对象
     * @param groupAssist group对象，用于传递查询条件
     * @return Ipage
     */
    IPage<GroupAssist> findGroupDetailPage( Page page, @Param("groupAssist") GroupAssist groupAssist );

    /**
     * 查找用户详细信息
     *
     * @param groupAssist group对象，用于传递查询条件
     * @return List<User>
     */
    List<GroupAssist> findGroupDetail( @Param("groupAssist") GroupAssist groupAssist );


    String findGroupLeaderById(Long groupId );

    List<String> findGroupMemberById(Long groupId );

    IPage<GroupAssist> findGroupDetail2Page(  Page page, @Param("groupAssist")GroupAssist groupAssist );
}
