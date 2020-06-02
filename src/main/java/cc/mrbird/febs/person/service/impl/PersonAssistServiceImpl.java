package cc.mrbird.febs.person.service.impl;

import cc.mrbird.febs.common.entity.FebsConstant;
import cc.mrbird.febs.common.entity.QueryRequest;
import cc.mrbird.febs.common.properties.FebsProperties;
import cc.mrbird.febs.common.utils.ExcelUtil;
import cc.mrbird.febs.common.utils.FileUtil;
import cc.mrbird.febs.common.utils.SortUtil;
import cc.mrbird.febs.group.entity.GroupMedicine;
import cc.mrbird.febs.group.service.IGpaMapService;
import cc.mrbird.febs.person.entity.PersonAssist;
import cc.mrbird.febs.person.entity.PersonMedicine;
import cc.mrbird.febs.person.entity.Wxuser;
import cc.mrbird.febs.person.mapper.PersonAssistMapper;
import cc.mrbird.febs.person.service.IPersonAssistService;
import cc.mrbird.febs.person.service.IWxuserService;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.core.toolkit.StringPool;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.apache.commons.lang3.StringUtils;
import org.apache.poi.ss.usermodel.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

/**
 * 人员信息表  Service实现
 *
 * @author tongrok
 * @date 2020-02-18 17:10:22
 */
@Service
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true, rollbackFor = Exception.class)
public class PersonAssistServiceImpl extends ServiceImpl<PersonAssistMapper, PersonAssist> implements IPersonAssistService {

	
	@Autowired
    private FebsProperties properties;
	@Autowired
	private IWxuserService wxuserService;
	@Autowired
	private IGpaMapService gpaMapService;

    @Override
    public IPage<PersonAssist> findPersonAssists(QueryRequest request, PersonAssist personAssist) {
        LambdaQueryWrapper<PersonAssist> queryWrapper = new LambdaQueryWrapper<>();
        // TODO 设置查询条件
        Page<PersonAssist> page = new Page<>(request.getPageNum(), request.getPageSize());
        return this.page(page, queryWrapper);
    }

    @Override
    public List<PersonAssist> findPersonAssists(PersonAssist personAssist) {
	    LambdaQueryWrapper<PersonAssist> queryWrapper = new LambdaQueryWrapper<>();
		// TODO 设置查询条件
		return this.baseMapper.selectList(queryWrapper);
    }

    @Override
    @Transactional
    public void createPersonAssist(PersonAssist personAssist) {
        this.save(personAssist);
    }

    @Override
    @Transactional
    public void updatePersonAssist(PersonAssist personAssist) {
        this.saveOrUpdate(personAssist);
    }

    @Override
    @Transactional
    public void deletePersonAssist(PersonAssist personAssist) {
        LambdaQueryWrapper<PersonAssist> wrapper = new LambdaQueryWrapper<>();
	    this.remove(wrapper);
	}

    @Override
    public void updateRoleByPersonId( String personId ,String role) {
        this.baseMapper.updateRoleByPersonId(personId,role);
    }

    @Override
    public List<Map<Long,String>> findGroupMembers(String type, Long groupId ,String keyword ) {
        if(type.equals("1")) {
            return this.baseMapper.findGroupMembers(groupId,keyword);
        }else if(type.equals("2")) {
            return this.baseMapper.findGroupLeaders(groupId,keyword);
        }else if(type.equals("3")){
            return this.baseMapper.findTeamLeaders(groupId,keyword);
        }
        return  null;
    }

	@Override
	public PersonAssist findPersonAsistByPhone( String phone ) {
		PersonAssist pa =new PersonAssist();
		pa.setPhone(phone);
		List<PersonAssist> pas=this.baseMapper.findPersonDetailByPhone(pa);
		return pas.size()>0?pas.get(0):null;
	}

	@Override
	public List<PersonAssist> findPersonAssistByMedicinePhone( String phone ) {
		return this.baseMapper.findPersonAssistByMedicinePhone(phone);
	}


	@Override
	public IPage<PersonAssist> findPersonDetailList(QueryRequest request, PersonAssist personAssist) {
		Page<PersonAssist> page = new Page<>(request.getPageNum(), request.getPageSize());
        SortUtil.handlePageSort(request, page, "phone", FebsConstant.ORDER_DESC, false);
        return this.baseMapper.findPersonDetailPage(page, personAssist);
		
	}


	@Override
	public IPage<PersonAssist> findPersonDetail2List(QueryRequest request, PersonAssist personAssist) {
		Page<PersonAssist> page = new Page<>(request.getPageNum(), request.getPageSize());
		SortUtil.handlePageSort(request, page, "phone", FebsConstant.ORDER_DESC, false);
		return this.baseMapper.findPersonDetail2Page(page, personAssist);

	}
		@Override
	public void improtExcel(MultipartFile file, List<PersonAssist> data, List<PersonAssist> updatedata,List<Wxuser> wxdata) {
		FileInputStream fis=null;
		File Excelfile=null;
		PersonAssist personAssist=new PersonAssist();
		try {
			
			Excelfile=FileUtil.multipartFileToFile(file);
			fis=new FileInputStream(Excelfile);
			Workbook wb=ExcelUtil.getWorkbok(fis,Excelfile);
			FormulaEvaluator evaluator=wb.getCreationHelper().createFormulaEvaluator();
			Sheet sheet=wb.getSheet("合集");
			int lastnumber=sheet.getLastRowNum();
			for(int i=1;i<=lastnumber;i++) {
				PersonAssist pa=new PersonAssist();
				Row row=sheet.getRow(i);
				Cell cell=row.getCell(0);
				String info=ExcelUtil.getCellValueByCell(cell,evaluator);
				pa.setNname(info);
				
				cell=row.getCell(1);
				info=ExcelUtil.getCellValueByCell(cell,evaluator);
				pa.setTtype(info);
				
				
				cell=row.getCell(2);
				info=ExcelUtil.getCellValueByCell(cell,evaluator);
				pa.setSsex(info);
				
				cell=row.getCell(3);
				info=ExcelUtil.getCellValueByCell(cell,evaluator);
				pa.setBirth(info);
				
				cell=row.getCell(4);
				info=ExcelUtil.getCellValueByCell(cell,evaluator);
				pa.setWorkunid(info);
				
				cell=row.getCell(5);
				info=ExcelUtil.getCellValueByCell(cell,evaluator);
				pa.setDuty(info);
			
				cell=row.getCell(6);
				info=ExcelUtil.getCellValueByCell(cell,evaluator);
				pa.setPolitical(info);
				
				cell=row.getCell(7);
				info=ExcelUtil.getCellValueByCell(cell,evaluator);
				if(StringUtils.isEmpty(info)||StringUtils.isEmpty(info.trim())) {
					continue;
				}
				pa.setPhone(info);
				personAssist.setPhone(info);
				
				
				cell=row.getCell(8);
				info=ExcelUtil.getCellValueByCell(cell,evaluator);
				pa.setCity(info);
				
				cell=row.getCell(9);
				info=ExcelUtil.getCellValueByCell(cell,evaluator);
				pa.setCounty(info);
				
				cell=row.getCell(10);
				info=ExcelUtil.getCellValueByCell(cell,evaluator);
				pa.setTown(info);
				
				cell=row.getCell(11);
				info=ExcelUtil.getCellValueByCell(cell,evaluator);
				pa.setVillage(info);
				
				cell=row.getCell(12);
				info=ExcelUtil.getCellValueByCell(cell,evaluator);
				pa.setAddress(info);


				PersonAssist pa2=baseMapper.selectOne(new QueryWrapper<PersonAssist>().lambda().eq(PersonAssist::getPhone,pa.getPhone()));
				//List<PersonAssist> list=baseMapper.findPersonDetailByPhone(personAssist);
				//if(list==null||list.size()==0) {
				if(pa2==null){
					if(!data.contains(pa)){
						data.add(pa);
						Wxuser wx1=this.wxuserService.getOne(new QueryWrapper<Wxuser>().lambda().eq(Wxuser::getUserid,pa.getPhone()));
						if(wx1==null){
							Wxuser wx=new Wxuser();
							wx.setUserid(pa.getPhone());
							wx.setTelnum1(pa.getPhone());
							wx.setTelnum2(pa.getPhone());
							wx.setPasswd("123456");
							wx.setRylx("1");
							wx.setFamily("1");
							wxdata.add(wx);
						}
					}
					
				}else {
					//PersonAssist pa2=list.get(0);
					pa.setUserid(pa2.getUserid());
					pa.setRrole(pa2.getRrole());
					updatedata.add(pa);
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
	public void batchInsert(List<PersonAssist> data) {
		saveBatch(data, properties.getMaxBatchInsertNum());
	}



	@Override
	public List<PersonAssist> findPersonAssistByAssistMemberPhone( String phone ) {
		return this.baseMapper.findPersonAssistByAssistMemberPhone(phone);
	}

	@Override
	public List<PersonAssist> findPersonAssistByAssistMemberPhone1( String phone ) {
		return this.baseMapper.findPersonAssistByAssistMemberPhone1(phone);
	}

	@Override
	@Transactional
	public void deletePersons(String[]  userids ) {
		List<String> list = Arrays.asList(userids);

		this.gpaMapService.deleteGpaMapsByPersonAssistId(list);
		// 删除用户
		this.removeByIds(list);
	}

}
