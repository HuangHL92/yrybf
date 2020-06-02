package cc.mrbird.febs.person.controller;

import cc.mrbird.febs.common.annotation.ControllerEndpoint;
import cc.mrbird.febs.common.utils.FebsUtil;
import cc.mrbird.febs.common.entity.FebsConstant;
import cc.mrbird.febs.common.controller.BaseController;
import cc.mrbird.febs.common.entity.FebsResponse;
import cc.mrbird.febs.common.entity.QueryRequest;
import cc.mrbird.febs.common.exception.FebsException;
import cc.mrbird.febs.person.entity.PersonAssist;
import cc.mrbird.febs.person.entity.PersonMedicine;
import cc.mrbird.febs.person.entity.Wxuser;
import cc.mrbird.febs.person.service.IPersonAssistService;
import cc.mrbird.febs.person.service.IWxuserService;

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
 * 帮扶信息表  Controller
 *
 * @author tongrok
 * @date 2020-02-18 17:10:22
 */
@Slf4j
@Validated
@Controller
public class PersonAssistController extends BaseController {

    @Autowired
    private IPersonAssistService personAssistService;

    @Autowired
    private IWxuserService wxuserService;

    @GetMapping("pa/person")
    @ResponseBody
    @RequiresPermissions("pa:view")
    public FebsResponse getAllPersonAssists(PersonAssist personAssist) {
        return new FebsResponse().success().data(personAssistService.findPersonAssists(personAssist));
    }

    @GetMapping("pa/list")
    @ResponseBody
    @RequiresPermissions("pa:view")
    public FebsResponse personAssistList(QueryRequest request, PersonAssist personAssist) {
        Map<String, Object> dataTable = getDataTable(this.personAssistService.findPersonDetailList(request, personAssist));
        return new FebsResponse().success().data(dataTable);
    }


    @GetMapping("pa/list2")
    @ResponseBody
    @RequiresPermissions("pa:view")
    public FebsResponse personAssist2List(QueryRequest request, PersonAssist personAssist) {
        Map<String, Object> dataTable = getDataTable(this.personAssistService.findPersonDetail2List(request, personAssist));
        return new FebsResponse().success().data(dataTable);
    }

    @ControllerEndpoint(operation = "新增PersonAssist", exceptionMessage = "新增PersonAssist失败")
    @PostMapping("pa/person")
    @ResponseBody
    @RequiresPermissions("pa:add")
    public FebsResponse addPersonAssist(@Valid PersonAssist personAssist) {
        this.personAssistService.createPersonAssist(personAssist);
        return new FebsResponse().success();
    }

    @ControllerEndpoint(operation = "删除pa", exceptionMessage = "删除pa失败")
    @GetMapping("pa/delete")
    @ResponseBody
    @RequiresPermissions("pa:delete")
    public FebsResponse deletePersonAssist(PersonAssist personAssist) {
        this.personAssistService.deletePersonAssist(personAssist);
        return new FebsResponse().success();
    }


    @ControllerEndpoint(operation = "删除pa", exceptionMessage = "删除pa失败")
    @GetMapping("pa/delete/{userids}")
    @ResponseBody
    @RequiresPermissions("pa:delete")
    public FebsResponse deletePersonAssist(@NotBlank(message = "{required}") @PathVariable String userids) {
        String[] ids = userids.split(StringPool.COMMA);
        this.personAssistService.deletePersons(ids);
        return new FebsResponse().success();
    }

    @ControllerEndpoint(operation = "修改pa", exceptionMessage = "修改pa失败")
    @PostMapping("pa/update")
    @ResponseBody
    @RequiresPermissions("pa:update")
    public FebsResponse updatePersonAssist(PersonAssist personAssist) {
        this.personAssistService.updatePersonAssist(personAssist);
        return new FebsResponse().success();
    }

    @ControllerEndpoint(operation = "导出pa", exceptionMessage = "导出pa失败")
    @GetMapping("pa/excel")
    @ResponseBody
    @RequiresPermissions("pa:export")
    public void export(QueryRequest queryRequest, PersonAssist personAssist, HttpServletResponse response) {
        List<PersonAssist> personAssists = this.personAssistService.findPersonDetail2List(queryRequest, personAssist).getRecords();
        ExcelKit.$Export(PersonAssist.class, response).downXlsx(personAssists, false);
    }
    
    
    
    
    /**
     * 导入Excel数据，并批量插入人员表
     */
    @PostMapping("pa/import")
    @RequiresPermissions("pa:view")
    @ResponseBody
    //@ControllerEndpoint(exceptionMessage = "导入Excel数据失败")
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
        final List<PersonAssist> data = Lists.newArrayList();
        final List<Map<String, Object>> error = Lists.newArrayList();
        final List<PersonAssist> updatedata = Lists.newArrayList();
        final List<Wxuser> wxdata =Lists.newArrayList();
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
        personAssistService.improtExcel(file,data,updatedata,wxdata);
        
        
        if (CollectionUtils.isNotEmpty(data)) {
            // 将合法的记录批量入库
            personAssistService.batchInsert(data);
        }
        if(CollectionUtils.isNotEmpty(updatedata)) {
        	personAssistService.updateBatchById(updatedata);
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
    
    
    
    
    
    
}
