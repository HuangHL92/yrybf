package cc.mrbird.febs.person.mapper;

import cc.mrbird.febs.group.entity.GroupMedicine;
import cc.mrbird.febs.person.entity.PersonMedicine;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * 人员信息表  Mapper
 *
 * @author tongrok
 * @date 2020-02-15 01:50:30
 */
public interface PersonMedicineMapper extends BaseMapper<PersonMedicine> {


    Long findPersonIdByPhone(String phone);

    /**
     * 查找用户详细信息
     *
     * @param page 分页对象
     * @param personMedicine 人员对象，用于传递查询条件
     * @return Ipage
     */
    IPage<PersonMedicine> findPersonDetailPage(Page page, @Param("personMedicine") PersonMedicine personMedicine);

    /**
     * 查找用户详细信息
     *
     * @param personMedicine 人员对象，用于传递查询条件
     * @return List<User>
     */
    List<PersonMedicine> findPersonDetail(@Param("personMedicine") PersonMedicine personMedicine);

    List<Map<Long,String>> findGroupMembers(@Param("groupId")Long groupId,@Param("keyword")String keyword );

    void updateGroupIdByGroupMedicine(@Param("groupMedicine") GroupMedicine groupMedicine);

    void updateGroupNull( Long groupId );

	List<PersonMedicine> findPersonDetailByPhone(@Param("personMedicine")PersonMedicine personMedicine);

    List<PersonMedicine> findPersonMedicineByAssistMemberPhone( String phone );

    List<PersonMedicine> findPersonMedicineByAssistMemberPhone1( String phone );

	List<Map<String, String>> tjUnit();

    void updatePersonFmField( @Param("id") String id, @Param("filedName") String filedName, @Param("filedValue") String filedValue, @Param("ylrphone") String ylrphone );
}
