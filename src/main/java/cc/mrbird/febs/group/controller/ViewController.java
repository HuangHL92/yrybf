package cc.mrbird.febs.group.controller;

import cc.mrbird.febs.common.entity.FebsConstant;
import cc.mrbird.febs.common.utils.FebsUtil;
import cc.mrbird.febs.group.service.IGroupMedicineService;
import lombok.extern.slf4j.Slf4j;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author tongrok
 */
@Controller("groupView")
@Slf4j
@RequestMapping(FebsConstant.VIEW_PREFIX + "group")
public class ViewController {

    @GetMapping("groupMedicine")
    @RequiresPermissions("gm:view")
    public String gmIndex() {
        return FebsUtil.view("group/groupMedicine");
    }

    @GetMapping("groupAssist")
    @RequiresPermissions("ga:view")
    public String gaIndex() {
        return FebsUtil.view("group/groupAssist");
    }

    @GetMapping("groupTeam")
    @RequiresPermissions("gt:view")
    public String gtIndex() {
        return FebsUtil.view("group/groupTeam");
    }

}
