package cc.mrbird.febs.person.controller;

import cc.mrbird.febs.common.entity.FebsConstant;
import cc.mrbird.febs.common.utils.FebsUtil;
import cc.mrbird.febs.person.entity.PersonAssist;
import cc.mrbird.febs.person.entity.PersonMedicine;
import cc.mrbird.febs.person.service.IPersonAssistService;
import cc.mrbird.febs.person.service.IPersonMedicineService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author tongrok
 */
@Controller("personView")
@RequestMapping(FebsConstant.VIEW_PREFIX + "person")
public class ViewController {

    @Autowired
    private IPersonAssistService personAssistService;

    @Autowired
    private IPersonMedicineService personMedicineService;


    @GetMapping("personMedicine")
    @RequiresPermissions("pm:view")
    public String pmIndex() {
        return FebsUtil.view("person/personMedicine");
    }
    
    
    
    @GetMapping("personAssist")
    @RequiresPermissions("pa:view")
    public String personAssist() {
        return FebsUtil.view("person/personAssist");
    }
    
    @GetMapping("personFamily/{phone}")
    @RequiresPermissions("pm:view")
    public String personFamily(@PathVariable String phone, Model model) {
        //把phone信息放到页面
    	model.addAttribute("phone", phone);
    	return FebsUtil.view("person/personFamily");
    }
    
    @GetMapping("explainInfo/{phone}")
    @RequiresPermissions("explain:view")
    public String explainInfo(@PathVariable String phone, Model model) {
        //把phone信息放到页面
    	model.addAttribute("phone", phone);
    	return FebsUtil.view("person/explainInfo");
    }


    @GetMapping("assistInfo/{userid}")
    @RequiresPermissions("pa:update")
    public String assistInfo(@PathVariable String userid, Model model) {
        //把phone信息放到页面
        PersonAssist pa=personAssistService.getById(userid);
        model.addAttribute("persona", pa);
        return FebsUtil.view("person/assistUpdate");
    }

    @GetMapping("medicineInfo/{personId}")
    @RequiresPermissions("pm:update")
    public String medicineInfo(@PathVariable String personId, Model model) {
        //把phone信息放到页面
        PersonMedicine pm=personMedicineService.getById(personId);
        model.addAttribute("personm", pm);
        return FebsUtil.view("person/medicineUpdate");
    }

}
