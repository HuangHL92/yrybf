package cc.mrbird.febs.explain.controller;

import cc.mrbird.febs.common.annotation.ControllerEndpoint;
import cc.mrbird.febs.common.controller.BaseController;
import cc.mrbird.febs.common.entity.FebsResponse;
import cc.mrbird.febs.common.entity.QueryRequest;
import cc.mrbird.febs.common.utils.DateUtil;
import cc.mrbird.febs.explain.entity.Explain;
import cc.mrbird.febs.explain.entity.ExplainAssist;
import cc.mrbird.febs.explain.service.IExplainAssistService;
import cc.mrbird.febs.explain.service.IExplainQueryService;
import cc.mrbird.febs.explain.service.IExplainService;
import com.wuwenze.poi.ExcelKit;
import lombok.extern.slf4j.Slf4j;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * 诉求信息  Controller
 *
 * @author tongrok
 * @date 2020-02-17 19:15:14
 */
@Slf4j
@Validated
@Controller
public class ExplainController extends BaseController {

    @Autowired
    private IExplainService explainService;

    @Autowired
    private IExplainQueryService explainQueryService;


    @Autowired
    private IExplainAssistService explainAssistService;

    @GetMapping("explain")
    @ResponseBody
    @RequiresPermissions("explain:view")
    public FebsResponse getAllExplains(Explain explain) {
        return new FebsResponse().success().data(explainService.findExplains(explain));
    }

    @GetMapping("explain/list")
    @ResponseBody
    @RequiresPermissions("explain:view")
    public FebsResponse explainList(QueryRequest request, Explain explain) {
        Map<String, Object> dataTable = getDataTable(this.explainQueryService.findDetailList(request, explain));
        return new FebsResponse().success().data(dataTable);
    }

    @ControllerEndpoint(operation = "新增Explain", exceptionMessage = "新增Explain失败")
    @PostMapping("explain")
    @ResponseBody
    @RequiresPermissions("explain:add")
    public FebsResponse addExplain(@Valid Explain explain) {
        this.explainService.createExplain(explain);
        return new FebsResponse().success();
    }

    @ControllerEndpoint(operation = "删除Explain", exceptionMessage = "删除Explain失败")
    @GetMapping("explain/delete")
    @ResponseBody
    @RequiresPermissions("explain:delete")
    public FebsResponse deleteExplain(Explain explain) {
        this.explainService.deleteExplain(explain);
        return new FebsResponse().success();
    }

    @ControllerEndpoint(operation = "修改Explain", exceptionMessage = "修改Explain失败")
    @PostMapping("explain/update")
    @ResponseBody
    @RequiresPermissions("explain:update")
    public FebsResponse updateExplain(Explain explain) {
        this.explainService.updateExplain(explain);
        return new FebsResponse().success();
    }

    @GetMapping("explain/excel")
    @ResponseBody
    public void export(QueryRequest queryRequest, Explain explain, HttpServletResponse response) {
        List<Explain> explains = this.explainQueryService.findDetailList(explain);
        List<Explain> excelexplains = new ArrayList<Explain>();
        if(explains!=null && !explains.isEmpty()){
            int i = 1;
            for(Explain exp : explains){
                exp.setXh(i +"");
                i++;
                excelexplains.add(exp);
            }
        }
        ExcelKit.$Export(Explain.class, response).downXlsx(excelexplains, false);
    }
    
    
    @GetMapping("explain/estatus")
    @ResponseBody
    public FebsResponse eststus() {
    	List<Map<String, String>> data = this.explainService.findTJestatus();
        return new FebsResponse().success().data(data);
    }
    
    
    @GetMapping("explain/grow")
    @ResponseBody
    public FebsResponse grow() {
    	List<Map<String, String>> data = this.explainService.findTJgrow();
        return new FebsResponse().success().data(data);
    }
    
    @GetMapping("explain/etype")
    @ResponseBody
    public FebsResponse etype() {
    	List<Map<String, String>> data = this.explainService.findTJetype();
        return new FebsResponse().success().data(data);
    }
    
    

    @GetMapping("explain/info/{phone}")
    @ResponseBody
    public FebsResponse getEplain(@PathVariable String phone,QueryRequest request) {
    	Explain explain =new Explain();
    	explain.setTel(phone);
    	Map<String, Object> dataTable = getDataTable(this.explainService.findDetailList(request,explain));
   
        return new FebsResponse().success().data(dataTable);
    }

    
    @GetMapping("explain/pielist/{code}")
    @ResponseBody
    public FebsResponse pielist(@PathVariable String code,QueryRequest request) {
    	Explain explain =new Explain();
    	explain.setEstatus(code);
    	Map<String, Object> dataTable = getDataTable(this.explainService.findDetailList(request,explain));
   
        return new FebsResponse().success().data(dataTable);
    }
    
    
    @GetMapping("explain/pielist2/{code}")
    @ResponseBody
    public FebsResponse pielist2(@PathVariable String code,QueryRequest request) {
    	Explain explain =new Explain();
    	explain.setEtype(code);
    	Map<String, Object> dataTable = getDataTable(this.explainService.findDetailList(request,explain));
   
        return new FebsResponse().success().data(dataTable);
    }
    
    
    @GetMapping("explain/barlist/{code}")
    @ResponseBody
    public FebsResponse barlist(@PathVariable String code,QueryRequest request) {
    	Explain explain =new Explain();
    	explain.setUnit(code);
    	Map<String, Object> dataTable = getDataTable(this.explainService.findDetailList(request,explain));
   
        return new FebsResponse().success().data(dataTable);
    }
    
    @GetMapping("explain/linelist/{code}")
    @ResponseBody
    public FebsResponse linelist(@PathVariable String code,QueryRequest request) throws ParseException {
    	Explain explain =new Explain();
    	SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
    	Date date = simpleDateFormat.parse(code);
    	Calendar cal=Calendar.getInstance();
    	cal.setTime(date);
    	cal.add(Calendar.DATE,1);
        Date d=cal.getTime();
        String time=DateUtil.getDateFormat(d, "yyyy-MM-dd");
    	explain.setCreateTimeTo(time);
    	Map<String, Object> dataTable = getDataTable(this.explainService.findDetailList(request,explain));
   
        return new FebsResponse().success().data(dataTable);
    }
    
    
    @GetMapping("explain/linelist2/{code}")
    @ResponseBody
    public FebsResponse linelist2(@PathVariable String code,QueryRequest request) throws ParseException {
    	Explain explain =new Explain();
    	SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
    	Date date = simpleDateFormat.parse(code);
    	Calendar cal=Calendar.getInstance();
    	cal.setTime(date);
    	cal.add(Calendar.DATE,1);
        Date d=cal.getTime();
        String time=DateUtil.getDateFormat(d, "yyyy-MM-dd");
        explain.setEnddate(time);
    	Map<String, Object> dataTable = getDataTable(this.explainService.findEndDetailList(request,explain));
   
        return new FebsResponse().success().data(dataTable);
    }
    
    
    

    @GetMapping("explain/assistinfo/{eid}")
    @ResponseBody
    public FebsResponse getEplainDetail( @PathVariable String eid, QueryRequest request) {
        ExplainAssist ea=new ExplainAssist();
        ea.setTid(eid);
        Map<String, Object> dataTable = getDataTable(this.explainAssistService.findDetailList(request, ea));
        return new FebsResponse().success().data(dataTable);
    }


    /**
     * 查询条件中的选择选项
     * @param tableName
     * @param keyword
     * @return
     */
    @GetMapping("explain/getMembers")
    @ResponseBody
    public FebsResponse getMembers(String tableName, Long groupId, String keyword ) {
        log.info("tableName: {} groupId: {} keyword: {}", tableName, groupId, keyword);
        List<Map<Long,String>> seleinfo = this.explainQueryService.findSelectInfo(tableName, keyword);
        if( seleinfo != null ){
            return new FebsResponse().success().data(seleinfo);
        }
        return new FebsResponse().fail();
    }

    /**
     * 更新
     * @param explain
     * @return
     */
    @PostMapping("explain/updateExplain1")
    @ResponseBody
    public FebsResponse updateExplain1(Explain explain,String ystatus) {
        log.info("ystatus:", ystatus);
        this.explainQueryService.updateExplain1(explain);
        this.explainService.allotExplainHt(explain,ystatus);
        return new FebsResponse().success();
    }

    /**
     * 后台撤销诉求
     * @return
     */
    @PostMapping("explain/cancelExplain1")
    @ResponseBody
    public FebsResponse updateExplain1(String eid ,String estatus,String chreason) {
        log.info("eid :{}  ", eid);
        log.info("estatus :{}  ", estatus);
        log.info("chreason :{}  ", chreason);
        String rylx = "0";
        if (!"0".equals(estatus)) {
            rylx = "1";
        }
        this.explainService.cancelExplain(eid, estatus, rylx, chreason, "99999999999");
        return new FebsResponse().success();
    }

    /**
     * 后台新增诉求
     * @param explain
     * @return
     */
    @PostMapping("explain/insertExplain")
    @ResponseBody
    public FebsResponse insertExplain(Explain explain) {
        log.info("insert explain :{}  ",explain);
        if(explain.getGmedicine() != null && !"".equals(explain.getGmedicine())){
            explain.setEid(UUID.randomUUID().toString());
            explain.setEstatus("0");
            explain.setCreatedate(DateUtil.getDateFormat(new Date(),DateUtil.FULL_TIME_SPLIT_PATTERN));
            explain.setTel(explainQueryService.getMedicineTelByUserid(explain.getGmedicine()));
            this.explainService.createExplain(explain);
            this.explainService.dealExplain(explain);
            return new FebsResponse().success();
        }else{
            return new FebsResponse().fail();
        }
    }



}
