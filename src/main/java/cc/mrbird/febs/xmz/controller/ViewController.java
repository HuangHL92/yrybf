package cc.mrbird.febs.xmz.controller;

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
@Controller("xmzView")
@Slf4j
@RequestMapping(FebsConstant.VIEW_PREFIX + "xmz")
public class ViewController {

    @GetMapping("index")
    @RequiresPermissions("xmz:view")
    public String xmzIndex() {
        return FebsUtil.view("xmz/index");
    }


    @GetMapping("manage")
    @RequiresPermissions("xmz:manage")
    public String xmzManage() {
        return FebsUtil.view("xmz/manage");
    }


}
