package cc.mrbird.febs.person.service;

import cc.mrbird.febs.common.entity.MenuTree;
import cc.mrbird.febs.common.entity.QueryRequest;
import cc.mrbird.febs.group.entity.GroupAssist;
import cc.mrbird.febs.group.entity.GroupMedicine;
import cc.mrbird.febs.person.entity.PersonMedicine;
import cc.mrbird.febs.person.entity.Wxuser;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartFile;

/**
 * 医务人员信息表  Service接口
 *
 * @author tongrok
 * @date 2020-02-15 01:50:30
 */
public interface IPersonMedicineService extends IService<PersonMedicine> {
    /**
     * 查询（分页）
     *
     * @param request QueryRequest
     * @param personMedicine personMedicine
     * @return IPage<Person>
     */

    IPage<PersonMedicine> findPersonDetailList( QueryRequest request,PersonMedicine personMedicine );

    /**
     * 查询（所有）
     *
     * @param personMedicine personMedicine
     * @return List<Person>
     */
    List<PersonMedicine> findPersonDetailList( PersonMedicine personMedicine);



    PersonMedicine findPersonDetail( String phone);
    /**
     * 通过openid查询ID
     * @param phone
     * @return
     */
    Long findPersonIdByPhone( String phone );

    /**
     * 新增
     *
     * @param person person
     */
    void createPerson( PersonMedicine person );

    /**
     * 修改
     *
     * @param person person
     */
    void updatePerson( PersonMedicine person );

    /**
     * 删除
     *
     * @param person person
     */
    void deletePerson( PersonMedicine person );

    List<Map<Long,String>> findGroupMembers( Long groupId,String keyword );


    void updateByGroupNull( Long groupid );

    void updateByGroupMedicine( GroupMedicine groupMedicine );


	void batchInsert(List<PersonMedicine> data);

	void improtExcel(MultipartFile file, List<PersonMedicine> data, List<PersonMedicine> updatedata, List<Wxuser> wxdata);

    List<PersonMedicine> findPersonMedicineByAssisitMemberPhone( String phone );
    List<PersonMedicine> findPersonMedicineByAssisitMemberPhone1( String phone );

	List<Map<String, String>> tjUnit();

    void deletePersons( String[] ids );

    void updatePersonFmField( String id, String filedName, String filedValue ,String ylrphone);

    void deletePersonFms( String[] ids );
}
