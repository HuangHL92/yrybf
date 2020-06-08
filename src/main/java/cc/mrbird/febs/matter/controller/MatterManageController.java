package cc.mrbird.febs.matter.controller;

import cc.mrbird.febs.common.annotation.ControllerEndpoint;
import cc.mrbird.febs.common.utils.FebsUtil;
import cc.mrbird.febs.common.entity.FebsConstant;
import cc.mrbird.febs.common.controller.BaseController;
import cc.mrbird.febs.common.entity.FebsResponse;
import cc.mrbird.febs.common.entity.QueryRequest;
import cc.mrbird.febs.matter.entity.MatterManage;
import cc.mrbird.febs.matter.service.IMatterManageService;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.wuwenze.poi.ExcelKit;
import lombok.extern.slf4j.Slf4j;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.SimpleFormatter;

/**
 * 事项管理  Controller
 *
 * @author tongrok
 * @date 2020-05-31 22:55:32
 */
@Slf4j
@Validated
@Controller
public class MatterManageController extends BaseController {

    @Autowired
    private IMatterManageService matterService;


    @GetMapping("matter")
    @ResponseBody
    @RequiresPermissions("matter:view")
    public FebsResponse getAllMatterManages(MatterManage matter) {
        return new FebsResponse().success().data(matterService.findMatterManages(matter));
    }

    @GetMapping("matter/list")
    @ResponseBody
    @RequiresPermissions("matter:view")
    public FebsResponse matterList(QueryRequest request, MatterManage matter) {
        Map<String,Object> resultMap = new HashMap<>();
        matter.setPageNum((request.getPageNum()-1)*30);
        matter.setPageSize(request.getPageSize());
        List<MatterManage> matterManages = matterService.findMatterManages(matter);
        Integer tatal = matterService.getTatal(matter);
        resultMap.put("rows",matterManages);
        resultMap.put("total",tatal);
        return new FebsResponse().success().data(resultMap);
    }

    @ControllerEndpoint(operation = "新增MatterManage", exceptionMessage = "新增MatterManage失败")
    @PostMapping("matter/add")
    @ResponseBody
    @RequiresPermissions("matter:add")
    public FebsResponse addMatterManage(@Valid MatterManage matter) {


        this.matterService.createMatterManage(matter);
        FebsResponse success = new FebsResponse().success();
        return success;
    }

    @ControllerEndpoint(operation = "删除MatterManage", exceptionMessage = "删除MatterManage失败")
    @GetMapping("matter/delete")
    @ResponseBody
    @RequiresPermissions("matter:delete")
    public FebsResponse deleteMatterManage(MatterManage matter) {
        this.matterService.deleteMatterManage(matter);
        return new FebsResponse().success();
    }

    @ControllerEndpoint(operation = "修改MatterManage", exceptionMessage = "修改MatterManage失败")
    @RequestMapping("matter/update/{oid}/{sts}")
    @ResponseBody
    @RequiresPermissions("matter:update")
    public FebsResponse updateMatterManage(@PathVariable("oid") Integer oid,@PathVariable("sts") Integer sts) {

       this.matterService.updateByOid(oid,sts);
        return new FebsResponse().success();
    }

    @ControllerEndpoint(operation = "导出MatterManage", exceptionMessage = "导出Excel失败")
    @PostMapping("matter/excel")
    @ResponseBody
    @RequiresPermissions("matter:export")
    public void export(QueryRequest queryRequest, MatterManage matter, HttpServletResponse response) {
        List<MatterManage> matters = this.matterService.findMatterManages(queryRequest, matter).getRecords();
        ExcelKit.$Export(MatterManage.class, response).downXlsx(matters, false);
    }
}
