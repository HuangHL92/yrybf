package cc.mrbird.febs.explain.controller;

import cc.mrbird.febs.common.entity.FebsConstant;
import cc.mrbird.febs.common.entity.FebsResponse;
import cc.mrbird.febs.common.utils.CheckMobile;
import cc.mrbird.febs.common.utils.FebsUtil;
import cc.mrbird.febs.explain.entity.Explain;
import cc.mrbird.febs.explain.service.IExplainQueryService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author tongrok
 */
@Controller("explainView")
@RequestMapping(FebsConstant.VIEW_PREFIX + "explain")
public class ViewController {

    @Autowired
    private IExplainQueryService explainQueryService;

    @GetMapping("explain")
    public String explainIndex(){
        return FebsUtil.view("explain/explain");
    }
    
    @GetMapping("statistical")
    public String statistical(HttpServletRequest request, HttpServletResponse response){

        String userAgent = request.getHeader("USER-AGENT");
        boolean isphone = CheckMobile.check(userAgent);
        if(isphone){
            //手机访问操作
            return FebsUtil.view("explain/statisticalMobile");
        }else {
            return FebsUtil.view("explain/statistical");
        }
    }


    @GetMapping("explainInfo/{eid}")
    @RequiresPermissions("explain:view")
    public static String explainDetail( @PathVariable String eid, Model model ){

        model.addAttribute("eid", eid);

        return FebsUtil.view("explain/explainInfo");
    }

    @GetMapping("toAddExplainInfo")
    public String toAddExplainInfo(){
        return FebsUtil.view("explain/addExplainInfo");
    }

    @GetMapping("toUpdateExplain/{eid}")
    @RequiresPermissions("explain:view")
    public  String toUpdateExplain( @PathVariable String eid, Model model ){
        model.addAttribute("eid", eid);
        Explain explain = explainQueryService.getExplainLs(eid);
        model.addAttribute("estatus", explain.getEstatus());
        model.addAttribute("etype", explain.getEtype());
        model.addAttribute("einfo", explain.getEinfo());
        model.addAttribute("transversion", explain.getTransversion());
        model.addAttribute("aid", explain.getAid());
        return FebsUtil.view("explain/updateExplain");
    }

    @GetMapping("toCancelExplain/{eid}")
    @RequiresPermissions("explain:view")
    public  String toCancelExplain( @PathVariable String eid, Model model ){
        model.addAttribute("eid", eid);
        Explain explain = explainQueryService.getExplainLs(eid);
        model.addAttribute("estatus", explain.getEstatus());
        return FebsUtil.view("explain/cancelExplain");
    }


    @GetMapping("barInfo/{name}")
    @RequiresPermissions("explain:view")
    public String barInfo(@PathVariable String name, Model model) {
       
    	model.addAttribute("code", name);
    	model.addAttribute("searchtype", "unit");
    	return FebsUtil.view("explain/pieinfo");
    }

    @GetMapping("pieInfo/{code}")
    @RequiresPermissions("explain:view")
    public String pieInfo(@PathVariable String code, Model model) {
       
    	model.addAttribute("code", code);
    	model.addAttribute("searchtype", "estatus");
    	return FebsUtil.view("explain/pieinfo");
    }
    
    @GetMapping("pieInfo2/{code}")
    @RequiresPermissions("explain:view")
    public String pieInfo2(@PathVariable String code, Model model) {
       
    	model.addAttribute("code", code);
    	model.addAttribute("searchtype", "etype");
    	return FebsUtil.view("explain/pieinfo");
    }
    
    
    @GetMapping("lineInfo/{code}")
    @RequiresPermissions("explain:view")
    public String lineInfo(@PathVariable String code, Model model) {
       
    	model.addAttribute("code", code);
    	model.addAttribute("searchtype", "line");
    	return FebsUtil.view("explain/pieinfo");
    }

}
