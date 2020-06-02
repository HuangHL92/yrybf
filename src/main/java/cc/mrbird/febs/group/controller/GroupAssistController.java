package cc.mrbird.febs.group.controller;

import cc.mrbird.febs.common.annotation.ControllerEndpoint;
import cc.mrbird.febs.common.controller.BaseController;
import cc.mrbird.febs.common.entity.FebsResponse;
import cc.mrbird.febs.common.entity.QueryRequest;
import cc.mrbird.febs.group.entity.GroupAssist;
import cc.mrbird.febs.group.service.IGroupAssistService;
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
import javax.validation.constraints.NotBlank;
import java.util.List;
import java.util.Map;

/**
 * 分组信息  Controller
 *
 * @author tongrok
 * @date 2020-02-15 23:58:39
 */
@Slf4j
@Validated
@Controller
public class GroupAssistController extends BaseController {

    @Autowired
    private IGroupAssistService groupService;


    @GetMapping("ga/groupAssist")
    @ResponseBody
    @RequiresPermissions("ga:view")
    public FebsResponse getAllGroups(GroupAssist groupAssist ) {
        return new FebsResponse().success().data(groupService.findGroupDataList(groupAssist));
    }

    @GetMapping("ga/list")
    @ResponseBody
    @RequiresPermissions("ga:view")
    public FebsResponse groupList(QueryRequest request, GroupAssist groupAssist ) {
        Map<String, Object> dataTable = getDataTable(this.groupService.findGroupDataList(request, groupAssist));
        return new FebsResponse().success().data(dataTable);
    }


    @GetMapping("ga/list2")
    @ResponseBody
    @RequiresPermissions("ga:view")
    public FebsResponse groupList2(QueryRequest request, GroupAssist groupAssist ) {
        Map<String, Object> dataTable = getDataTable(this.groupService.findGroupDataList2(request, groupAssist));
        return new FebsResponse().success().data(dataTable);
    }



    @ControllerEndpoint(operation = "新增Group", exceptionMessage = "新增Group失败")
    @PostMapping("ga/add")
    @ResponseBody
    @RequiresPermissions("ga:add")
    public FebsResponse addGroup(@Valid GroupAssist groupAssist ) {
        this.groupService.createGroup(groupAssist);
        return new FebsResponse().success();
    }

    @ControllerEndpoint(operation = "删除Group", exceptionMessage = "删除Group失败")
    @GetMapping("ga/delete/{groupIds}")
    @ResponseBody
    @RequiresPermissions("ga:delete")
    public FebsResponse deleteGroup( @NotBlank(message = "{required}") @PathVariable String groupIds ) {
        this.groupService.deleteGroup(groupIds);
        return new FebsResponse().success();
    }

    @ControllerEndpoint(operation = "修改Group", exceptionMessage = "修改Group失败")
    @PostMapping("ga/update")
    @ResponseBody
    @RequiresPermissions("ga:update")
    public FebsResponse updateGroup(@Valid GroupAssist groupAssist ) {
        this.groupService.updateGroup(groupAssist);
        return new FebsResponse().success();
    }

    @ControllerEndpoint(operation = "导出Group", exceptionMessage = "导出Excel失败")
    @PostMapping("ga/excel")
    @ResponseBody
    @RequiresPermissions("ga:export")
    public void export( QueryRequest queryRequest, GroupAssist groupAssist, HttpServletResponse response) {
        List<GroupAssist> groupAssists = this.groupService.findGroupDataList(queryRequest, groupAssist).getRecords();
        ExcelKit.$Export(GroupAssist.class, response).downXlsx(groupAssists, false);
    }

}
