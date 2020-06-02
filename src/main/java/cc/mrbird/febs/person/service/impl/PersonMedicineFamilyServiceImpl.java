package cc.mrbird.febs.person.service.impl;

import cc.mrbird.febs.common.entity.QueryRequest;
import cc.mrbird.febs.person.entity.PersonAssist;
import cc.mrbird.febs.person.entity.PersonMedicineFamily;
import cc.mrbird.febs.person.entity.Wxuser;
import cc.mrbird.febs.person.mapper.PersonMedicineFamilyMapper;
import cc.mrbird.febs.person.service.IPersonMedicineFamilyService;
import cc.mrbird.febs.person.service.IWxuserService;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.beans.factory.annotation.Autowired;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;

import java.util.List;

/**
 * 医疗人员信息表  Service实现
 *
 * @author tongrok
 * @date 2020-02-22 21:49:40
 */
@Service
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true, rollbackFor = Exception.class)
public class PersonMedicineFamilyServiceImpl extends ServiceImpl<PersonMedicineFamilyMapper, PersonMedicineFamily> implements IPersonMedicineFamilyService {

    @Autowired
    IWxuserService wxuserService;

    @Override
    public IPage<PersonMedicineFamily> findPersonMedicineFamilys(QueryRequest request, PersonMedicineFamily personMedicineFamily) {
        LambdaQueryWrapper<PersonMedicineFamily> queryWrapper = new LambdaQueryWrapper<>();
        // TODO 设置查询条件
        Page<PersonMedicineFamily> page = new Page<>(request.getPageNum(), request.getPageSize());
        return this.page(page, queryWrapper);
    }

    @Override
    public List<PersonMedicineFamily> findPersonMedicineFamilys(PersonMedicineFamily personMedicineFamily) {
        LambdaQueryWrapper<PersonMedicineFamily> queryWrapper = new LambdaQueryWrapper<>();
        // TODO 设置查询条件
        return this.baseMapper.selectList(queryWrapper);
    }

    @Override
    @Transactional
    public void createPersonMedicineFamily(PersonMedicineFamily personMedicineFamily) {

        this.save(personMedicineFamily);
        Wxuser wxuser=   wxuserService.getOne(new QueryWrapper<Wxuser>().lambda().eq(Wxuser::getUserid,personMedicineFamily.getPhone()));
        if(wxuser==null) {
            wxuser=new Wxuser();
            wxuser.setUserid(personMedicineFamily.getPhone());
            wxuser.setPasswd("123456");
            wxuser.setTelnum1(personMedicineFamily.getPhone());
            wxuser.setTelnum2(personMedicineFamily.getYlrphone());
            wxuser.setRylx("0");
            wxuser.setHospital(personMedicineFamily.getUnit());
            wxuser.setAddress(personMedicineFamily.getAddress());
            wxuser.setFamily("0");
        this.wxuserService.save(wxuser);
        }

    }

    @Override
    @Transactional
    public void updatePersonMedicineFamily(PersonMedicineFamily personMedicineFamily,String passwd) {
        this.saveOrUpdate(personMedicineFamily);
    }

    @Override
    @Transactional
    public void deletePersonMedicineFamily(String phone, String ylrphone) {

        LambdaQueryWrapper<PersonMedicineFamily> wrapper = new LambdaQueryWrapper<>();
        wrapper.eq(PersonMedicineFamily::getPhone,phone);
        wrapper.eq(PersonMedicineFamily::getYlrphone,ylrphone);
	    this.remove(wrapper);
        LambdaQueryWrapper<Wxuser> wrapper2 = new LambdaQueryWrapper<>();
        wrapper2.eq(Wxuser::getUserid,phone);
        wrapper2.eq(Wxuser::getTelnum2,ylrphone);
        this.wxuserService.remove(wrapper2);

	}

	@Override
	public IPage<PersonMedicineFamily> getFaimlyByPhone(QueryRequest request,String phone) {
		QueryWrapper<PersonMedicineFamily> qw=new QueryWrapper<PersonMedicineFamily>();
		qw.eq("ylrphone", phone);
		Page<PersonMedicineFamily> page = new Page<>(request.getPageNum(), request.getPageSize());
		
		return this.page(page, qw);
	}

}
