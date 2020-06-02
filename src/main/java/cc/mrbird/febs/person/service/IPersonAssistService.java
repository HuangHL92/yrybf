package cc.mrbird.febs.person.service;

import cc.mrbird.febs.common.entity.QueryRequest;
import cc.mrbird.febs.person.entity.PersonAssist;
import cc.mrbird.febs.person.entity.Wxuser;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;
import java.util.Map;

/**
 * 人员信息表  Service接口
 *
 * @author tongrok
 * @date 2020-02-18 17:10:22
 */
public interface IPersonAssistService extends IService<PersonAssist> {
    /**
     * 查询（分页）
     *
     * @param request QueryRequest
     * @param personAssist personAssist
     * @return IPage<PersonAssist>
     */
    IPage<PersonAssist> findPersonAssists(QueryRequest request, PersonAssist personAssist);

    /**
     * 查询（所有）
     *
     * @param personAssist personAssist
     * @return List<PersonAssist>
     */
    List<PersonAssist> findPersonAssists(PersonAssist personAssist);

    /**
     * 新增
     *
     * @param personAssist personAssist
     */
    void createPersonAssist(PersonAssist personAssist);

    /**
     * 修改
     *
     * @param personAssist personAssist
     */
    void updatePersonAssist(PersonAssist personAssist);

    /**
     * 删除
     *
     * @param personAssist personAssist
     */
    void deletePersonAssist(PersonAssist personAssist);

    List<Map<Long,String>> findGroupMembers(String type, Long groupId ,String keyword);



    /*void updateByTeamNull( Long groupId );*/

    PersonAssist findPersonAsistByPhone(String phone);

    List<PersonAssist> findPersonAssistByMedicinePhone(String phone);

    void updateRoleByPersonId( String personId,String role );


    IPage<PersonAssist> findPersonDetailList(QueryRequest request, PersonAssist personAssist);

    IPage<PersonAssist> findPersonDetail2List(QueryRequest request, PersonAssist personAssist);

	void improtExcel(MultipartFile file, List<PersonAssist> data, List<PersonAssist> updatedata,List<Wxuser> wxdata);

	void batchInsert(List<PersonAssist> data);

    List<PersonAssist> findPersonAssistByAssistMemberPhone( String phone );

    List<PersonAssist> findPersonAssistByAssistMemberPhone1( String phone );

    void deletePersons( String[] ids);
}
