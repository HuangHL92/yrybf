package cc.mrbird.febs.group.controller;

import cc.mrbird.febs.common.annotation.ControllerEndpoint;
import cc.mrbird.febs.common.controller.BaseController;
import cc.mrbird.febs.common.entity.FebsResponse;
import cc.mrbird.febs.common.entity.QueryRequest;
import cc.mrbird.febs.group.entity.GroupMedicine;
import cc.mrbird.febs.group.service.IGroupMedicineService;
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
 * 医务分组信息  Controller
 *
 * @author tongrok
 * @date 2020-02-15 23:58:39
 */
@Slf4j
@Validated
@Controller
public class GroupMedicineController extends BaseController {

    @Autowired
    private IGroupMedicineService groupService;



    @GetMapping("gm/groupMedicine")
    @ResponseBody
    @RequiresPermissions("gm:view")
    public FebsResponse getAllGroups(GroupMedicine groupMedicine ) {
        return new FebsResponse().success().data(groupService.findGroupDataList(groupMedicine));
    }

    @GetMapping("gm/list")
    @ResponseBody
    @RequiresPermissions("gm:view")
    public FebsResponse groupList(QueryRequest request, GroupMedicine groupMedicine ) {
        Map<String, Object> dataTable = getDataTable(this.groupService.findGroupDataList(request, groupMedicine));
        return new FebsResponse().success().data(dataTable);
    }

    @GetMapping("gm/AllList")
    @ResponseBody
    @RequiresPermissions("gm:update")
    public FebsResponse getAllGroupMedicines() {
        return new FebsResponse().success().data(groupService.list());
    }

    @ControllerEndpoint(operation = "新增Group", exceptionMessage = "新增Group失败")
    @PostMapping("gm/add")
    @ResponseBody
    @RequiresPermissions("gm:add")
    public FebsResponse addGroup(@Valid GroupMedicine groupMedicine ) {
        this.groupService.createGroup(groupMedicine);
        return new FebsResponse().success();
    }

    @ControllerEndpoint(operation = "删除Group", exceptionMessage = "删除Group失败")
    @GetMapping("gm/delete/{groupIds}")
    @ResponseBody
    @RequiresPermissions("gm:delete")
    public FebsResponse deleteGroup( @NotBlank(message = "{required}") @PathVariable String groupIds ) {
        this.groupService.deleteGroup(groupIds);
        return new FebsResponse().success();
    }

    @ControllerEndpoint(operation = "修改Group", exceptionMessage = "修改Group失败")
    @PostMapping("gm/update")
    @ResponseBody
    @RequiresPermissions("gm:update")
    public FebsResponse updateGroup(@Valid GroupMedicine groupMedicine ) {
        this.groupService.updateGroup(groupMedicine);
        return new FebsResponse().success();
    }

    @ControllerEndpoint(operation = "导出Group", exceptionMessage = "导出Excel失败")
    @PostMapping("gm/excel")
    @ResponseBody
    @RequiresPermissions("gm:export")
    public void export( QueryRequest queryRequest, GroupMedicine groupMedicine, HttpServletResponse response) {
        List<GroupMedicine> groupMedicines = this.groupService.findGroupDataList(queryRequest, groupMedicine).getRecords();
        ExcelKit.$Export(GroupMedicine.class, response).downXlsx(groupMedicines, false);
    }

}
