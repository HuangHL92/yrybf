package cc.mrbird.febs.person.service.impl;

import cc.mrbird.febs.common.entity.FebsConstant;
import cc.mrbird.febs.common.entity.QueryRequest;
import cc.mrbird.febs.common.properties.FebsProperties;
import cc.mrbird.febs.common.utils.ExcelUtil;
import cc.mrbird.febs.common.utils.FileUtil;
import cc.mrbird.febs.common.utils.SortUtil;
import cc.mrbird.febs.group.entity.GroupMedicine;
import cc.mrbird.febs.group.service.IGroupMedicineService;
import cc.mrbird.febs.person.entity.PersonMedicine;
import cc.mrbird.febs.person.entity.PersonMedicineFamily;
import cc.mrbird.febs.person.entity.Wxuser;
import cc.mrbird.febs.person.mapper.PersonMedicineMapper;
import cc.mrbird.febs.person.service.IPersonMedicineFamilyService;
import cc.mrbird.febs.person.service.IPersonMedicineService;
import cc.mrbird.febs.person.service.IWxuserService;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.core.toolkit.CollectionUtils;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;

import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.apache.poi.ss.usermodel.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.FileInputStream;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

/**
 * 医务人员信息表  Service实现
 *
 * @author tongrok
 * @date 2020-02-15 01:50:30
 */
@Service
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true, rollbackFor = Exception.class)
@Slf4j
public class PersonMedicineServiceImpl extends ServiceImpl<PersonMedicineMapper, PersonMedicine> implements IPersonMedicineService {

	 	@Autowired
	    private FebsProperties properties;
        @Autowired
	 	private IWxuserService wxuserService;
        @Autowired
        private IGroupMedicineService groupMedicineService;
		@Autowired
        private IPersonMedicineFamilyService personMedicineFamilyService;

   /* @Override
    public IPage<Person> findPersons( QueryRequest request, Person person ) {
        LambdaQueryWrapper<Person> queryWrapper = new LambdaQueryWrapper<>();
        // TODO 设置查询条件
        Page<Person> page = new Page<>(request.getPageNum(), request.getPageSize());
        return this.page(page, queryWrapper);
    }

    @Override
    public List<Person> findPersons( Person person ) {
	    LambdaQueryWrapper<Person> queryWrapper = new LambdaQueryWrapper<>();
		// TODO 设置查询条件
		return this.baseMapper.selectList(queryWrapper);
    }*/

    @Override
    public IPage<PersonMedicine> findPersonDetailList( QueryRequest request, PersonMedicine personMedicine ) {
        Page<PersonMedicine> page = new Page<>(request.getPageNum(), request.getPageSize());
        SortUtil.handlePageSort(request, page, "phone", FebsConstant.ORDER_DESC, false);
        return this.baseMapper.findPersonDetailPage(page, personMedicine);
    }

    @Override
    public List<PersonMedicine> findPersonDetailList( PersonMedicine person) {
        return this.baseMapper.findPersonDetail(person);
    }

    @Override
    public PersonMedicine findPersonDetail( String phone ) {
        PersonMedicine param = new PersonMedicine();
        param.setPhone(phone);
        List<PersonMedicine> persons = this.baseMapper.findPersonDetail(param);
        return CollectionUtils.isNotEmpty(persons) ? persons.get(0) : null;
    }

    @Override
    @Transactional
    public void createPerson(PersonMedicine personMedicine ) {
        this.save(personMedicine);
    }

    @Override
    @Transactional
    public void updatePerson(PersonMedicine personMedicine ) {
		PersonMedicine pm=this.baseMapper.selectOne(new QueryWrapper<PersonMedicine>().lambda().eq(PersonMedicine::getPersonId,personMedicine.getPersonId()));
		beforeUpdateGroup(pm.getGroupId(),personMedicine.getPersonId());
    	this.saveOrUpdate(personMedicine);
		afterUpdateGroup(personMedicine.getGroupId(),personMedicine.getPersonId());
    }


	@Override
    @Transactional
    public void deletePerson(PersonMedicine personMedicine ) {
		beforeUpdateGroup(personMedicine.getGroupId(),personMedicine.getPersonId());
        LambdaQueryWrapper<PersonMedicine> wrapper = new LambdaQueryWrapper<>();
	    // TODO 设置删除条件
	    this.remove(wrapper);
	}

    @Override
    public List<Map<Long,String>> findGroupMembers(Long groupid,String keyword ) {
        return this.baseMapper.findGroupMembers(groupid,keyword);
    }

    @Override
    public void updateByGroupMedicine( GroupMedicine groupMedicine ) {

        if(StringUtils.isNotEmpty(groupMedicine.getGroupMembers())) {
            groupMedicine.setGroupMemberIds(groupMedicine.getGroupMembers().split(","));
             this.baseMapper.updateGroupIdByGroupMedicine(groupMedicine );
        }

    }
    @Override
    public void updateByGroupNull(Long groupid ) {
            this.baseMapper.updateGroupNull(groupid);
    }

    @Override
    public Long findPersonIdByPhone( String phone ) {
        return this.baseMapper.findPersonIdByPhone(phone);
    }


    @Override
	@Transactional
	public void batchInsert(List<PersonMedicine> data) {
		saveBatch(data, properties.getMaxBatchInsertNum());
		
	}
	private  void beforeUpdateGroup( Long groupId, Long personId){
		if(groupId!=null) {
			GroupMedicine gm=groupMedicineService.getById(groupId);
			if(gm!=null){
				String members=gm.getGroupMembers();
				String mb2="";
				if(members!=null){
					for (String membe:members.split(",")) {
						if(mb2.equals("")){
							if(!membe.equals(personId.toString())){
								mb2=mb2+membe;
							}
						}else{
							if(!membe.equals(personId.toString())){
								mb2=mb2+","+membe;
							}
						}

					}
				}
				gm.setGroupMembers(mb2);
				groupMedicineService.saveOrUpdate(gm);
			}
		}
	}

	private void afterUpdateGroup( Long groupId, Long personId ) {
		if(groupId!=null) {
			GroupMedicine gm=groupMedicineService.getById(groupId);
			if(gm!=null){
				String members=gm.getGroupMembers();
				if(members.equals("")||members==null){
					members=personId.toString();
				}else{
					members=members+","+personId;
				}
				gm.setGroupMembers(members);
				groupMedicineService.saveOrUpdate(gm);
			}
		}
	}


	@Override
	public void updatePersonFmField( String id, String filedName, String filedValue ,String ylrphone) {
    		this.baseMapper.updatePersonFmField( id,  filedName,  filedValue,ylrphone);
	}

	@Override
	public void improtExcel(MultipartFile file, List<PersonMedicine> data, List<PersonMedicine> updatedata,List<Wxuser> wxdata) {
		FileInputStream fis=null;
		File Excelfile=null;
		PersonMedicine personMedicine=new PersonMedicine();
		try {
			
			Excelfile=FileUtil.multipartFileToFile(file);
			fis=new FileInputStream(Excelfile);
			Workbook wb=ExcelUtil.getWorkbok(fis,Excelfile);
			FormulaEvaluator evaluator=wb.getCreationHelper().createFormulaEvaluator();
			Sheet sheet=wb.getSheetAt(0);
			int lastnumber=sheet.getLastRowNum();
			for(int i=1;i<=lastnumber;i++) {
				PersonMedicine pm=new PersonMedicine();
				Row row=sheet.getRow(i);
				Cell cell=row.getCell(1);
				String info=ExcelUtil.getCellValueByCell(cell,evaluator);
				pm.setPersonName(info);

				cell=row.getCell(2);
				info=ExcelUtil.getCellValueByCell(cell,evaluator);
				pm.setSex(info);
				

				cell=row.getCell(3);
				info=ExcelUtil.getCellValueByCell(cell,evaluator);
				pm.setUnit(info);
				
				cell=row.getCell(4);
				info=ExcelUtil.getCellValueByCell(cell,evaluator);
				pm.setDuty(info);

				
				cell=row.getCell(5);
				info=ExcelUtil.getCellValueByCell(cell,evaluator);
				pm.setProfessional(info);
				
				cell=row.getCell(6);
				info=ExcelUtil.getCellValueByCell(cell,evaluator);
				pm.setAge(info);
				
				cell=row.getCell(7);
				info=ExcelUtil.getCellValueByCell(cell,evaluator);
				pm.setParty(info);

				
				cell=row.getCell(8);
				info=ExcelUtil.getCellValueByCell(cell,evaluator);
				pm.setCategory(info);


				cell=row.getCell(9);
				info=ExcelUtil.getCellValueByCell(cell,evaluator);
				pm.setCounty(info);

				cell=row.getCell(10);
				info=ExcelUtil.getCellValueByCell(cell,evaluator);
				pm.setTown(info);

				cell=row.getCell(11);
				info=ExcelUtil.getCellValueByCell(cell,evaluator);
				pm.setVillage(info);

				cell=row.getCell(12);
				info=ExcelUtil.getCellValueByCell(cell,evaluator);
				pm.setAddress(info);


				cell=row.getCell(13);
				info=ExcelUtil.getCellValueByCell(cell,evaluator);
				if(StringUtils.isEmpty(info)||StringUtils.isEmpty(info.trim())) {
					continue;
				}
				pm.setPhone(info);
				personMedicine.setPhone(info);

				
				PersonMedicine pm2=this.baseMapper.selectOne(new QueryWrapper<PersonMedicine>().lambda().eq(PersonMedicine::getPhone,info));

				if(pm2==null) {
					if(!data.contains(pm)){
						data.add(pm);
	                    Wxuser wx1=this.wxuserService.getOne(new QueryWrapper<Wxuser>().lambda().eq(Wxuser::getUserid,info));
	                    if(wx1==null){
	                        Wxuser wx=new Wxuser();
	                        wx.setUserid(pm.getPhone());
	                        wx.setTelnum1(pm.getPhone());
	                        wx.setTelnum2(pm.getPhone());
	                        wx.setPasswd("123456");
	                        wx.setRylx("0");
	                        wx.setFamily("1");
	                        wxdata.add(wx);
	                    }
					}
					
				}else {
					pm.setPersonId(pm2.getPersonId());
					pm.setGroupId(pm2.getGroupId());
					updatedata.add(pm);
				}
				
			}
		} catch (Exception e) {
			
			e.printStackTrace();
		}finally {
			try{
				if(fis!=null){
					fis.close();
					FileUtil.delteTempFile(Excelfile);
				}
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		
	}

    @Override
    public List<PersonMedicine> findPersonMedicineByAssisitMemberPhone( String phone ) {
        return this.baseMapper.findPersonMedicineByAssistMemberPhone(phone);
    }


	@Override
	public List<PersonMedicine> findPersonMedicineByAssisitMemberPhone1( String phone ) {
		return this.baseMapper.findPersonMedicineByAssistMemberPhone1(phone);
	}

	@Override
	public List<Map<String, String>> tjUnit() {
		
		return this.baseMapper.tjUnit();
	}

	@Override
	@Transactional
	public void deletePersons( String[] ids ) {

		List<String> list = Arrays.asList(ids);
		for (String id:list) {
			PersonMedicine pm = getById(id);
			beforeUpdateGroup(pm.getGroupId(),pm.getPersonId());
		}
		// 删除用户
		this.removeByIds(list);

	}

	@Override
	@Transactional
	public void deletePersonFms( String[] ids ) {

		personMedicineFamilyService.remove(new QueryWrapper<PersonMedicineFamily>().lambda().in(PersonMedicineFamily::getUserid,ids));

	}
}
