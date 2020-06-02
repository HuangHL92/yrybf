package cc.mrbird.febs.person.controller;

import cc.mrbird.febs.common.annotation.ControllerEndpoint;
import cc.mrbird.febs.common.controller.BaseController;
import cc.mrbird.febs.common.entity.FebsResponse;
import cc.mrbird.febs.common.entity.QueryRequest;
import cc.mrbird.febs.person.entity.Wxuser;
import cc.mrbird.febs.person.service.IWxuserService;
import com.wuwenze.poi.ExcelKit;
import io.swagger.annotations.Api;
import lombok.extern.slf4j.Slf4j;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import java.util.List;
import java.util.Map;

/**
 * 微信医疗人员及家属登录表  Controller
 *
 * @author tongrok
 * @date 2020-02-17 22:35:08
 */
@Slf4j
@Validated
@Controller
public class WxuserController extends BaseController {

    @Autowired
    private IWxuserService wxuserService;

    /**
     *
     * @param wxuser
     * @return
     */
    @GetMapping("wxuser")
    @ResponseBody
    @RequiresPermissions("wxuser:view")
    public FebsResponse getAllWxusers(Wxuser wxuser) {
        return new FebsResponse().success().data(wxuserService.findWxusers(wxuser));
    }

    /**
     *
     * @param request
     * @param wxuser
     * @return
     */
    @GetMapping("wxuser/list")
    @ResponseBody
    @RequiresPermissions("wxuser:view")
    public FebsResponse wxuserList(QueryRequest request, Wxuser wxuser) {
        Map<String, Object> dataTable = getDataTable(this.wxuserService.findWxusers(request, wxuser));
        return new FebsResponse().success().data(dataTable);
    }

    /**
     *
     * @param wxuser
     * @return
     */
    @ControllerEndpoint(operation = "新增Wxuser", exceptionMessage = "新增Wxuser失败")
    @PostMapping("wxuser")
    @ResponseBody
    @RequiresPermissions("wxuser:add")
    public FebsResponse addWxuser(@Valid Wxuser wxuser) {
        this.wxuserService.createWxuser(wxuser);
        return new FebsResponse().success();
    }

    /**
     *
     * @param wxuser
     * @return
     */
    @ControllerEndpoint(operation = "删除Wxuser", exceptionMessage = "删除Wxuser失败")
    @GetMapping("wxuser/delete")
    @ResponseBody
    @RequiresPermissions("wxuser:delete")
    public FebsResponse deleteWxuser(Wxuser wxuser) {
        this.wxuserService.deleteWxuser(wxuser);
        return new FebsResponse().success();
    }

    /**
     *
     * @param wxuser
     * @return
     */
    @ControllerEndpoint(operation = "修改Wxuser", exceptionMessage = "修改Wxuser失败")
    @PostMapping("wxuser/update")
    @ResponseBody
    @RequiresPermissions("wxuser:update")
    public FebsResponse updateWxuser(Wxuser wxuser) {
        this.wxuserService.updateWxuser(wxuser);
        return new FebsResponse().success();
    }

    /**
     *
     * @param queryRequest
     * @param wxuser
     * @param response
     */
    @ControllerEndpoint(operation = "导出Wxuser", exceptionMessage = "导出Excel失败")
    @PostMapping("wxuser/excel")
    @ResponseBody
    @RequiresPermissions("wxuser:export")
    public void export(QueryRequest queryRequest, Wxuser wxuser, HttpServletResponse response) {
        List<Wxuser> wxusers = this.wxuserService.findWxusers(queryRequest, wxuser).getRecords();
        ExcelKit.$Export(Wxuser.class, response).downXlsx(wxusers, false);
    }



}
