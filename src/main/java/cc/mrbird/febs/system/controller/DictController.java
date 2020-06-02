package cc.mrbird.febs.system.controller;

import cc.mrbird.febs.common.annotation.ControllerEndpoint;
import cc.mrbird.febs.common.utils.FebsUtil;
import cc.mrbird.febs.common.entity.FebsConstant;
import cc.mrbird.febs.common.controller.BaseController;
import cc.mrbird.febs.common.entity.FebsResponse;
import cc.mrbird.febs.common.entity.QueryRequest;
import cc.mrbird.febs.system.entity.Dict;
import cc.mrbird.febs.system.service.IDictService;
import com.baomidou.mybatisplus.core.toolkit.StringPool;
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
 *  Controller
 *
 * @author tongrok
 * @date 2020-02-15 10:34:18
 */
@Slf4j
@Validated
@Controller
public class DictController extends BaseController {

    @Autowired
    private IDictService dictService;


    @GetMapping("dict")
    @ResponseBody
    //@RequiresPermissions("dict:view")
    public FebsResponse getAllDicts(Dict dict) {
        return new FebsResponse().success().data(dictService.findDicts(dict));
    }

    @GetMapping("dict/list")
    @ResponseBody
    @RequiresPermissions("dict:view")
    public FebsResponse dictList(QueryRequest request, Dict dict) {
        Map<String, Object> dataTable = getDataTable(this.dictService.findDicts(request, dict));
        return new FebsResponse().success().data(dataTable);
    }

    @GetMapping("dict/code")
    @ResponseBody
    public FebsResponse getDictCode(String fieldName ) {
        log.info("tableName: {} fieldName: {} ",fieldName);
        return new FebsResponse().success().data(this.dictService.findDictCode(fieldName));
    }

    @ControllerEndpoint(operation = "新增Dict", exceptionMessage = "新增Dict失败")
    @PostMapping("dict")
    @ResponseBody
    @RequiresPermissions("dict:add")
    public FebsResponse addDict(@Valid Dict dict) {
        this.dictService.createDict(dict);
        return new FebsResponse().success();
    }

    @ControllerEndpoint(operation = "删除Dict", exceptionMessage = "删除Dict失败")
    @GetMapping("dict/delete")
    @ResponseBody
    @RequiresPermissions("dict:delete")
    public FebsResponse deleteDict(Dict dict) {
        this.dictService.deleteDict(dict);
        return new FebsResponse().success();
    }

    @ControllerEndpoint(operation = "删除pa", exceptionMessage = "删除pa失败")
    @GetMapping("dict/delete/{dictids}")
    @ResponseBody
    @RequiresPermissions("pa:delete")
    public FebsResponse deletePersonAssist(@NotBlank(message = "{required}") @PathVariable String dictids) {
        String[] ids = dictids.split(StringPool.COMMA);
        this.dictService.deleteDicts(ids);
        return new FebsResponse().success();
    }


    @ControllerEndpoint(operation = "修改Dict", exceptionMessage = "修改Dict失败")
    @PostMapping("dict/update")
    @ResponseBody
    @RequiresPermissions("dict:update")
    public FebsResponse updateDict(Dict dict) {
        this.dictService.updateDict(dict);
        return new FebsResponse().success();
    }

    @ControllerEndpoint(operation = "修改Dict", exceptionMessage = "导出Excel失败")
    @PostMapping("dict/excel")
    @ResponseBody
    @RequiresPermissions("dict:export")
    public void export(QueryRequest queryRequest, Dict dict, HttpServletResponse response) {
        List<Dict> dicts = this.dictService.findDicts(queryRequest, dict).getRecords();
        ExcelKit.$Export(Dict.class, response).downXlsx(dicts, false);
    }
}
