package cc.mrbird.febs.matter.controller;

import cc.mrbird.febs.common.entity.FebsConstant;
import cc.mrbird.febs.common.utils.FebsUtil;
import lombok.extern.slf4j.Slf4j;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author tongrok
 */
@Controller("matterView")
@Slf4j
@RequestMapping(FebsConstant.VIEW_PREFIX + "matter")
public class ViewController {

    @GetMapping("matter")
    @RequiresPermissions("matter:view")
    public String matterIndex() {
        return FebsUtil.view("matter/matter");
    }


    @GetMapping("toAdd")
    public String toAddExplainInfo(){
        return FebsUtil.view("matter/addMatter");
    }


}
