package cc.mrbird.febs.person.controller;

import cc.mrbird.febs.common.annotation.ControllerEndpoint;
import cc.mrbird.febs.common.controller.BaseController;
import cc.mrbird.febs.common.entity.FebsResponse;
import cc.mrbird.febs.common.entity.QueryRequest;
import cc.mrbird.febs.common.exception.FebsException;
import cc.mrbird.febs.group.service.IGroupMedicineService;
import cc.mrbird.febs.group.service.IGroupTeamService;
import cc.mrbird.febs.person.entity.PersonMedicine;
import cc.mrbird.febs.person.entity.PersonMedicineFamily;
import cc.mrbird.febs.person.entity.Wxuser;
import cc.mrbird.febs.person.service.IPersonAssistService;
import cc.mrbird.febs.person.service.IPersonMedicineFamilyService;
import cc.mrbird.febs.person.service.IPersonMedicineService;
import cc.mrbird.febs.person.service.IWxuserService;
import cc.mrbird.febs.xmz.service.IGroupService;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.StringPool;
import com.google.common.base.Stopwatch;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Lists;
import com.wuwenze.poi.ExcelKit;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.collections4.CollectionUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import javax.validation.constraints.NotBlank;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/**
 * 医务信息表  Controller
 *
 * @author tongrok
 * @date 2020-02-15 01:50:30
 */
@Slf4j
@Validated
@Controller
public class PersonMedicineController extends BaseController {

    @Autowired
    private IPersonMedicineService personService;
    @Autowired
    private IPersonAssistService personaService;
    @Autowired
    private IGroupMedicineService groupmService;
    @Autowired
    private IGroupTeamService groupTeamService;
    @Autowired
    private IPersonMedicineFamilyService  personFamilyService;
    @Autowired
    private IGroupService groupService;
    
    
    @Autowired
    private IWxuserService wxuserService;
    
    @GetMapping("pm/person")
    @ResponseBody
    @RequiresPermissions("pm:view")
    public FebsResponse getAllPersonInfos(PersonMedicine person ) {
        return new FebsResponse().success().data(personService.findPersonDetailList(person));
    }

    @GetMapping("pm/list")
    @ResponseBody
    @RequiresPermissions("pm:view")
    public FebsResponse unitPersonList(QueryRequest request, PersonMedicine personMedicine) {

        Map<String, Object> dataTable = getDataTable(this.personService.findPersonDetailList(request, personMedicine));
        return new FebsResponse().success().data(dataTable);
    }

    @GetMapping("pm/tree")
    @ControllerEndpoint(exceptionMessage = "获取医务人员分组失败")
    @ResponseBody
    public FebsResponse getGroupTree() {
       // MenuTree<GroupMedicine> GroupMedicine = this.personService.findAllUnits();
      //  return new FebsResponse().success().data(units.getChilds());
        return null;
    }

    @ControllerEndpoint(operation = "新增PM", exceptionMessage = "新增PM失败")
    @PostMapping("pm/person")
    @ResponseBody
    @RequiresPermissions("pm:add")
    public FebsResponse addPerson(@Valid PersonMedicine person ) {
        this.personService.createPerson(person);
        return new FebsResponse().success();
    }

    @GetMapping("pm/delete/{personIds}")
    @RequiresPermissions("pm:delete")
    @ResponseBody
    @ControllerEndpoint(operation = "删除用户", exceptionMessage = "删除用户失败")
    public FebsResponse deleteUsers(@NotBlank(message = "{required}") @PathVariable String personIds) {
        String[] ids = personIds.split(StringPool.COMMA);
        this.personService.deletePersons(ids);
        return new FebsResponse().success();
    }

    @ControllerEndpoint(operation = "修改PM", exceptionMessage = "修改PM失败")
    @PostMapping("pm/person/update")
    @ResponseBody
    @RequiresPermissions("pm:update")
    public FebsResponse updatePerson(PersonMedicine person ) {
        if(person.getGroupId()==null){person.setGroupId(0L);}
        this.personService.updatePerson(person);
        return new FebsResponse().success();
    }

    @ControllerEndpoint(operation = "导出PM", exceptionMessage = "导出Excel失败")
    @GetMapping("pm/excel")
    @ResponseBody
    @RequiresPermissions("pm:export")
    public void export( QueryRequest queryRequest, PersonMedicine person, HttpServletResponse response) {
        List<PersonMedicine> people = this.personService.findPersonDetailList(queryRequest, person).getRecords();
        ExcelKit.$Export(PersonMedicine.class, response).downXlsx(people, false);
    }


    @GetMapping("person/member")
    @ResponseBody
    public FebsResponse groupMembers(String tableName,Long groupId,String keyword ) {
        log.info("tableName: {} groupId: {} keyword: {}",tableName,groupId,keyword);
        if(tableName.equals("t_person_medicine")){
            return new FebsResponse().success().data(this.personService.findGroupMembers(groupId,keyword));
        }else if(tableName.equals("group-leader")){
            return new FebsResponse().success().data(this.personaService.findGroupMembers("2",groupId,keyword));
        }else if(tableName.equals("group-member")){
            return new FebsResponse().success().data(this.personaService.findGroupMembers("1",groupId,keyword));
        }else if(tableName.equals("group-medicine")){
            return new FebsResponse().success().data(this.groupmService.findGroupMedicine(groupId,keyword));
        /*}else if(tableName.equals("team-member")){
            return new FebsResponse().success().data(this.groupTeamService.findTeamMembers(groupId,keyword));
        }else if(tableName.equals("team-leader")){
            return new FebsResponse().success().data(this.personaService.findGroupMembers("3",groupId,keyword));*/
        }else if(tableName.equals("xmz-leader")){
            return new FebsResponse().success().data(this.groupService.findGroupLeaders(groupId,keyword));
        }else if(tableName.equals("xmz-member")){
            return new FebsResponse().success().data(this.groupService.findGroupMembers(groupId,keyword));
        }else {
            return new FebsResponse().fail();
        }
    }


    @PostMapping("pm/family/update")
    @RequiresPermissions("pm:update")
    @ResponseBody
    public FebsResponse groupMembers(String id,String filedName,String filedValue ,String ylrphone) {
        log.info("id: {} filedName: {} filedValue: {}",id,filedName,filedValue,ylrphone);
        if(filedName=="phone"&&filedValue!=""){
           List<PersonMedicineFamily> pfs=personFamilyService.list(new QueryWrapper<PersonMedicineFamily>().lambda().eq(PersonMedicineFamily::getPhone,filedValue));
            if (pfs.size()>0){
                return new FebsResponse().fail().put("data","手机号码已存在!");
            }
        }

        personService.updatePersonFmField(id,filedName,filedValue,ylrphone);

        return new FebsResponse().success();

    }

    @GetMapping("pm/family/delete/{userIds}")
    @RequiresPermissions("pm:delete")
    @ResponseBody
    @ControllerEndpoint(operation = "删除家属信息", exceptionMessage = "删除家属信息失败")
    public FebsResponse deletePersonFms(@NotBlank(message = "{required}") @PathVariable String userIds) {

        String[] ids = userIds.split(StringPool.COMMA);
        this.personService.deletePersonFms(ids);
        return new FebsResponse().success();
    }

    @GetMapping("pm/family/add/{phone}")
    @RequiresPermissions("pm:add")
    @ResponseBody
    @ControllerEndpoint(operation = "添加家属信息", exceptionMessage = "添加家属信息失败")
    public FebsResponse addPersonFms(@NotBlank(message = "{required}") @PathVariable String phone) {
        PersonMedicineFamily pmf=new PersonMedicineFamily();
        pmf.setYlrphone(phone);
        this.personFamilyService.save(pmf);
        return new FebsResponse().success();
    }

    /**
     * 导入Excel数据，并批量插入医疗人员表
     */
    @PostMapping("pm/import")
    @RequiresPermissions("pm:import")
    @ResponseBody
    public FebsResponse importExcels(MultipartFile file) throws IOException {
        if (file.isEmpty()) {
            throw new FebsException("导入数据为空");
        }
        String filename = file.getOriginalFilename();
        if (!StringUtils.endsWith(filename, ".xlsx")) {
            throw new FebsException("只支持.xlsx类型文件导入");
        }


        // 开始导入操作
        Stopwatch stopwatch = Stopwatch.createStarted();
        final List<PersonMedicine> data = Lists.newArrayList();
        final List<Map<String, Object>> error = Lists.newArrayList();
        final List<PersonMedicine> updatedata = Lists.newArrayList();
        final List<Wxuser> wxdata = Lists.newArrayList();
        /*ExcelKit.$Import(PersonMedicine.class).readXlsx(file.getInputStream(), new ExcelReadHandler<PersonMedicine>() {
            @Override
            public void onSuccess(int sheet, int row, PersonMedicine personMedicine) {
                // 数据校验成功时，加入集合
            	personMedicine.setCreateTime(new Date());
                data.add(personMedicine);
            }

            @Override
            public void onError(int sheet, int row, List<ExcelErrorField> errorFields) {
                // 数据校验失败时，记录到 error集合
                error.add(ImmutableMap.of("row", row, "errorFields", errorFields));
            }
        });*/
         personService.improtExcel(file,data,updatedata,wxdata);
        
        
        if (CollectionUtils.isNotEmpty(data)) {
            // 将合法的记录批量入库
            this.personService.batchInsert(data);
        }
        if(CollectionUtils.isNotEmpty(updatedata)) {
        	personService.updateBatchById(updatedata);
        }
        if(CollectionUtils.isNotEmpty(wxdata)) {
       	 	wxuserService.saveBatch(wxdata);
       }
        

        ImmutableMap<String, Object> result = ImmutableMap.of(
                "time", stopwatch.stop().toString(),
                "data", data,
                "error", error
        );
        return new FebsResponse().success().data(result);
    }
    
    
    @GetMapping("pm/familylist/{phone}")
    @ResponseBody
    public FebsResponse getFamily(@PathVariable String phone,QueryRequest request) {
    	Map<String, Object> dataTable = getDataTable(this.personFamilyService.getFaimlyByPhone(request,phone));
   
        return new FebsResponse().success().data(dataTable);
    }

    
    @GetMapping("pm/unit") 
    @ResponseBody
    public FebsResponse tjUnit() {
    	List<Map<String, String>> dataTable=this.personService.tjUnit();
    	return new FebsResponse().success().data(dataTable);
    }

    @GetMapping("pm/barlist/{name}")
    @ResponseBody
    @RequiresPermissions("pm:view")
    public FebsResponse barlist(QueryRequest request, @PathVariable String name) {
    	PersonMedicine person=new PersonMedicine();
    	person.setUnit(name);
        Map<String, Object> dataTable = getDataTable(this.personService.findPersonDetailList(request, person));
        return new FebsResponse().success().data(dataTable);
    }

}
