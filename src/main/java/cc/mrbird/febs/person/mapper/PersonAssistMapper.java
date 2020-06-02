package cc.mrbird.febs.person.mapper;

import cc.mrbird.febs.group.entity.GroupAssist;
import cc.mrbird.febs.group.entity.GroupTeam;
import cc.mrbird.febs.person.entity.PersonAssist;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * 人员信息表  Mapper
 *
 * @author tongrok
 * @date 2020-02-18 17:10:22
 */
public interface PersonAssistMapper extends BaseMapper<PersonAssist> {

    IPage<PersonAssist> findPersonDetailPage(Page<PersonAssist> page,@Param("personAssist") PersonAssist personAssist);

    IPage<PersonAssist> findPersonDetail2Page(Page<PersonAssist> page,@Param("personAssist") PersonAssist personAssist);


    /* void updatePersonAssistIdsById(@Param("groupAssist") GroupAssist groupAssist);*/

    List<Map<Long,String>> findGroupMembers( @Param("groupId") Long groupId ,@Param("keyword") String keyword);

    List<Map<Long,String>> findGroupLeaders( @Param("groupId") Long groupId ,@Param("keyword") String keyword);

    List<Map<Long,String>> findTeamLeaders( @Param("teamId") Long teamId ,@Param("keyword") String keyword);

/*
    void updateGroupNull( Long groupId );

    void updateTeamNull( Long groupId );

    void updateRoleNull( Long groupId );*/

    void updateRoleByPersonId( @Param("personId")String personId,@Param("role")String role );
/*
    void updateGroupAssistIdsById(@Param("groupTeam") GroupTeam groupTeam);*/


    List<PersonAssist> findPersonDetailByPhone(@Param("personAssist") PersonAssist personAssist);

    List<PersonAssist> findPersonAssistByMedicinePhone(String phone);

    List<PersonAssist> findPersonAssistByAssistMemberPhone(String phone);


    List<PersonAssist> findPersonAssistByAssistMemberPhone1( String phone );
}
