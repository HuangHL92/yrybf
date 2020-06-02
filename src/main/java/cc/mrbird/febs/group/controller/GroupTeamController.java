package cc.mrbird.febs.group.controller;

import cc.mrbird.febs.common.annotation.ControllerEndpoint;
import cc.mrbird.febs.common.controller.BaseController;
import cc.mrbird.febs.common.entity.FebsResponse;
import cc.mrbird.febs.common.entity.QueryRequest;
import cc.mrbird.febs.group.entity.GroupTeam;
import cc.mrbird.febs.group.service.IGroupTeamService;
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
public class GroupTeamController extends BaseController {

    @Autowired
    private IGroupTeamService groupService;


    @GetMapping("gt/groupTeam")
    @ResponseBody
    @RequiresPermissions("ga:view")
    public FebsResponse getAllGroups(GroupTeam groupTeam ) {
        return new FebsResponse().success().data(groupService.findGroupDataList(groupTeam));
    }

    @GetMapping("gt/list")
    @ResponseBody
    @RequiresPermissions("gt:view")
    public FebsResponse groupList(QueryRequest request, GroupTeam groupTeam ) {
        Map<String, Object> dataTable = getDataTable(this.groupService.findGroupDataList(request, groupTeam));
        return new FebsResponse().success().data(dataTable);
    }



    @ControllerEndpoint(operation = "新增Group", exceptionMessage = "新增Group失败")
    @PostMapping("gt/add")
    @ResponseBody
    @RequiresPermissions("gt:add")
    public FebsResponse addGroup(@Valid GroupTeam groupTeam ) {
        this.groupService.createGroup(groupTeam);
        return new FebsResponse().success();
    }

    @ControllerEndpoint(operation = "删除Group", exceptionMessage = "删除Group失败")
    @GetMapping("gt/delete/{groupIds}")
    @ResponseBody
    @RequiresPermissions("gt:delete")
    public FebsResponse deleteGroup( @NotBlank(message = "{required}") @PathVariable String groupIds ) {
        this.groupService.deleteGroup(groupIds);
        return new FebsResponse().success();
    }

    @ControllerEndpoint(operation = "修改Group", exceptionMessage = "修改Group失败")
    @PostMapping("gt/update")
    @ResponseBody
    @RequiresPermissions("gt:update")
    public FebsResponse updateGroup(@Valid GroupTeam groupTeam ) {
        this.groupService.updateGroup(groupTeam);
        return new FebsResponse().success();
    }

    @ControllerEndpoint(operation = "导出Group", exceptionMessage = "导出Excel失败")
    @PostMapping("gt/excel")
    @ResponseBody
    @RequiresPermissions("gt:export")
    public void export( QueryRequest queryRequest, GroupTeam groupTeam, HttpServletResponse response) {
        List<GroupTeam> groupTeams = this.groupService.findGroupDataList(queryRequest, groupTeam).getRecords();
        ExcelKit.$Export(GroupTeam.class, response).downXlsx(groupTeams, false);
    }

}
