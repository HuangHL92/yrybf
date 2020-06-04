package cc.mrbird.febs.xmz.mapper;

import cc.mrbird.febs.xmz.entity.Group;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * 项目组信息  Mapper
 *
 * @author tongrok
 * @date 2020-05-30 18:35:20
 */
@Mapper
public interface GroupMapper extends BaseMapper<Group> {

    IPage<Group> findGroupDetail2Page ( Page<Group> page, @Param("group")Group group );

    List <Map <Long, String>> findGroupLeaders ( @Param("groupId")Long groupId, @Param("keyword")String keyword );

    List <Map <Long, String>> findGroupMembers ( @Param("groupId")Long groupId, @Param("keyword")String keyword );

    String getGroupNameByUserName(@Param("userName")String userName);
}
