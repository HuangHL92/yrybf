package cc.mrbird.febs.person.service;

import cc.mrbird.febs.person.entity.PersonMedicineFamily;

import cc.mrbird.febs.common.entity.QueryRequest;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * 医疗人员信息表  Service接口
 *
 * @author tongrok
 * @date 2020-02-22 21:49:40
 */
public interface IPersonMedicineFamilyService extends IService<PersonMedicineFamily> {
    /**
     * 查询（分页）
     *
     * @param request QueryRequest
     * @param personMedicineFamily personMedicineFamily
     * @return IPage<PersonMedicineFamily>
     */
    IPage<PersonMedicineFamily> findPersonMedicineFamilys(QueryRequest request, PersonMedicineFamily personMedicineFamily);

    /**
     * 查询（所有）
     *
     * @param personMedicineFamily personMedicineFamily
     * @return List<PersonMedicineFamily>
     */
    List<PersonMedicineFamily> findPersonMedicineFamilys(PersonMedicineFamily personMedicineFamily);

    /**
     * 新增
     *
     * @param personMedicineFamily personMedicineFamily
     */
    void createPersonMedicineFamily(PersonMedicineFamily personMedicineFamily);

    /**
     * 修改
     *
     * @param personMedicineFamily personMedicineFamily
     */
    void updatePersonMedicineFamily(PersonMedicineFamily personMedicineFamily,String passwd);

    /**
     * 删除

     */
    void deletePersonMedicineFamily(String phone, String ylrphone);

	IPage<PersonMedicineFamily> getFaimlyByPhone(QueryRequest request, String phone);
}
