package cc.mrbird.febs.group.mapper;

import cc.mrbird.febs.group.entity.GroupTeam;
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
public interface GroupTeamMapper extends BaseMapper<GroupTeam> {


    /**
     * 查找用户详细信息
     *
     * @param page 分页对象
     * @param groupTeam group对象，用于传递查询条件
     * @return Ipage
     */
    IPage<GroupTeam> findGroupDetailPage( Page page, @Param("groupTeam") GroupTeam groupTeam );

    /**
     * 查找用户详细信息
     *
     * @param groupTeam group对象，用于传递查询条件
     * @return List<User>
     */
    List<GroupTeam> findGroupDetail( @Param("groupTeam") GroupTeam groupTeam );


    List<Map<Long,String>> findTeamMembers( @Param("teamId") Long teamId ,@Param("keyword") String keyword);

}
