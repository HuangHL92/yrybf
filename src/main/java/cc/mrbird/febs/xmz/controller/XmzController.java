package cc.mrbird.febs.system.controller;

import cc.mrbird.febs.common.annotation.ControllerEndpoint;
import cc.mrbird.febs.common.utils.FebsUtil;
import cc.mrbird.febs.common.entity.FebsConstant;
import cc.mrbird.febs.common.controller.BaseController;
import cc.mrbird.febs.common.entity.FebsResponse;
import cc.mrbird.febs.common.entity.QueryRequest;
import cc.mrbird.febs.group.entity.GroupAssist;
import cc.mrbird.febs.xmz.entity.Group;
import cc.mrbird.febs.xmz.service.IGroupService;
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
 * 项目组信息  Controller
 *
 * @author tongrok
 * @date 2020-05-30 18:35:20
 */
@Slf4j
@Validated
@Controller
public class XmzController extends BaseController {

    @Autowired
    private IGroupService groupService;


    @GetMapping("xmz/list2")
    @ResponseBody
    @RequiresPermissions("xmz:view")
    public FebsResponse groupList2(QueryRequest request, Group group) {
        Map<String, Object> dataTable = getDataTable(this.groupService.findGroupLists(request, group));
        return new FebsResponse().success().data(dataTable);
    }

    @ControllerEndpoint(operation = "新增xmz", exceptionMessage = "新增xmz失败")
    @PostMapping("xmz")
    @ResponseBody
    @RequiresPermissions("xmz:add")
    public FebsResponse addGroup(@Valid Group group) {
        this.groupService.createGroup(group);
        return new FebsResponse().success();
    }

    @ControllerEndpoint(operation = "删除xmz", exceptionMessage = "删除xmz失败")
    @GetMapping("xmz/delete")
    @ResponseBody
    @RequiresPermissions("xmz:delete")
    public FebsResponse deleteGroup(Group group) {
        this.groupService.deleteGroup(group);
        return new FebsResponse().success();
    }

    @ControllerEndpoint(operation = "修改xmz", exceptionMessage = "修改xmz失败")
    @PostMapping("xmz/update")
    @ResponseBody
    @RequiresPermissions("xmz:update")
    public FebsResponse updateGroup(Group group) {
        this.groupService.updateGroup(group);
        return new FebsResponse().success();
    }

    @ControllerEndpoint(operation = "导出xmz", exceptionMessage = "导出Excel失败")
    @PostMapping("xmz/excel")
    @ResponseBody
    @RequiresPermissions("xmz:export")
    public void export(QueryRequest queryRequest, Group group, HttpServletResponse response) {
        List<Group> groups = this.groupService.findGroups(queryRequest, group).getRecords();
        ExcelKit.$Export(Group.class, response).downXlsx(groups, false);
    }
}
