package cc.mrbird.febs.xmz.controller;

import cc.mrbird.febs.common.annotation.ControllerEndpoint;
import cc.mrbird.febs.common.utils.FebsUtil;
import cc.mrbird.febs.common.entity.FebsConstant;
import cc.mrbird.febs.common.controller.BaseController;
import cc.mrbird.febs.common.entity.FebsResponse;
import cc.mrbird.febs.common.entity.QueryRequest;
import cc.mrbird.febs.xmz.entity.UserGroup;
import cc.mrbird.febs.xmz.service.IUserGroupService;
import com.wuwenze.poi.ExcelKit;
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
 * 项目组关系表  Controller
 *
 * @author tongrok
 * @date 2020-05-30 18:35:44
 */
@Slf4j
@Validated
@Controller
public class UserGroupController extends BaseController {

    @Autowired
    private IUserGroupService userGroupService;

    @GetMapping(FebsConstant.VIEW_PREFIX + "userGroup")
    public String userGroupIndex(){
        return FebsUtil.view("userGroup/userGroup");
    }

    @GetMapping("userGroup")
    @ResponseBody
    @RequiresPermissions("userGroup:view")
    public FebsResponse getAllUserGroups(UserGroup userGroup) {
        return new FebsResponse().success().data(userGroupService.findUserGroups(userGroup));
    }

    @GetMapping("userGroup/list")
    @ResponseBody
    @RequiresPermissions("userGroup:view")
    public FebsResponse userGroupList(QueryRequest request, UserGroup userGroup) {
        Map<String, Object> dataTable = getDataTable(this.userGroupService.findUserGroups(request, userGroup));
        return new FebsResponse().success().data(dataTable);
    }

    @ControllerEndpoint(operation = "新增UserGroup", exceptionMessage = "新增UserGroup失败")
    @PostMapping("userGroup")
    @ResponseBody
    @RequiresPermissions("userGroup:add")
    public FebsResponse addUserGroup(@Valid UserGroup userGroup) {
        this.userGroupService.createUserGroup(userGroup);
        return new FebsResponse().success();
    }

    @ControllerEndpoint(operation = "删除UserGroup", exceptionMessage = "删除UserGroup失败")
    @GetMapping("userGroup/delete")
    @ResponseBody
    @RequiresPermissions("userGroup:delete")
    public FebsResponse deleteUserGroup(UserGroup userGroup) {
        this.userGroupService.deleteUserGroup(userGroup);
        return new FebsResponse().success();
    }

    @ControllerEndpoint(operation = "修改UserGroup", exceptionMessage = "修改UserGroup失败")
    @PostMapping("userGroup/update")
    @ResponseBody
    @RequiresPermissions("userGroup:update")
    public FebsResponse updateUserGroup(UserGroup userGroup) {
        this.userGroupService.updateUserGroup(userGroup);
        return new FebsResponse().success();
    }

    @ControllerEndpoint(operation = "导出UserGroup", exceptionMessage = "导出Excel失败")
    @PostMapping("userGroup/excel")
    @ResponseBody
    @RequiresPermissions("userGroup:export")
    public void export(QueryRequest queryRequest, UserGroup userGroup, HttpServletResponse response) {
        List<UserGroup> userGroups = this.userGroupService.findUserGroups(queryRequest, userGroup).getRecords();
        ExcelKit.$Export(UserGroup.class, response).downXlsx(userGroups, false);
    }
}
