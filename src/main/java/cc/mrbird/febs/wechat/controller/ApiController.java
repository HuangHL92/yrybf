package cc.mrbird.febs.wechat.controller;

import cc.mrbird.febs.common.annotation.ControllerEndpoint;
import cc.mrbird.febs.common.controller.BaseController;
import cc.mrbird.febs.common.entity.FebsResponse;
import cc.mrbird.febs.common.utils.DateUtil;
import cc.mrbird.febs.explain.entity.Explain;
import cc.mrbird.febs.explain.service.IExplainService;
import cc.mrbird.febs.group.entity.GatMap;
import cc.mrbird.febs.group.entity.GpaMap;
import cc.mrbird.febs.group.entity.GroupTeam;
import cc.mrbird.febs.group.service.IGatMapService;
import cc.mrbird.febs.group.service.IGmaMapService;
import cc.mrbird.febs.group.service.IGpaMapService;
import cc.mrbird.febs.group.service.IGroupTeamService;
import cc.mrbird.febs.person.entity.PersonAssist;
import cc.mrbird.febs.person.entity.PersonMedicine;
import cc.mrbird.febs.person.entity.PersonMedicineFamily;
import cc.mrbird.febs.person.entity.Wxuser;
import cc.mrbird.febs.person.service.IPersonAssistService;
import cc.mrbird.febs.person.service.IPersonMedicineFamilyService;
import cc.mrbird.febs.person.service.IPersonMedicineService;
import cc.mrbird.febs.person.service.IWxuserService;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.validation.Valid;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

@Slf4j
@Validated
@Controller
@Api(tags = "小程序交互相关接口")
@RequestMapping("/api")
public class ApiController extends BaseController {

    @Autowired
    private IWxuserService wxuserService;

    @Autowired
    private IPersonMedicineService personService;

    @Autowired
    private IExplainService explainService;
    @Autowired
    private IPersonAssistService personaService;

    @Autowired
    private IGroupTeamService groupTeamService;
    @Autowired
    private IGpaMapService gpaMapService;
    @Autowired
    private IGmaMapService gmaMapService;
    @Autowired
    private IGatMapService gatMapService;
    @Autowired
    private IPersonMedicineFamilyService pmfService;


    /**
     * 新增微信用户接口
     *
     * @param wxuser
     * @return
     */
    @ControllerEndpoint(operation = "新增Wxuser", exceptionMessage = "新增Wxuser失败")
    @PostMapping("/WxUserAdd")
    @ResponseBody
    @ApiOperation("新增微信用户接口")
    public FebsResponse addWUser( Wxuser wxuser ) {
        log.info(" w1, {} :", wxuser);
        //TODO 新增微信人员
        //if(wxuser.getFamily().equals("0"))
        if (wxuser.getRylx().equals("0")) {
            if (wxuser.getFamily().equals("1")) {
                wxuser.setTelnum1(wxuser.getTelnum2());
            }
        } else {
            if (wxuser.getTelnum2() != null) {
                wxuser.setTelnum1(wxuser.getTelnum2());
            }
        }
        this.wxuserService.createWxuser(wxuser);
        return new FebsResponse().success();

    }


    /**
     * 首先需向wxUser表查找用户是否存在，不存在返回 6
     * 如若存在：
     * t_person_medicine(医护人员表):
     * 返回医护人员的手机号；
     * t_person_assist(帮扶人员表)：
     * 判断帮扶人员角色，
     *
     * @param phone  手机号
     * @param passwd 密码
     * @return
     */
    @ControllerEndpoint(operation = "验证WxUser", exceptionMessage = "验证WxUser失败")
    @GetMapping("/WxUserCheckNew")
    @ResponseBody
    @ApiOperation("验证微信用户接口 新接口")
    public FebsResponse newcheckWUser( String phone, String passwd ) {

        //验证用户是否存在
        Wxuser w1 = this.wxuserService.getById(phone);
        log.info(" w1, {} :", w1);
        if (w1 != null) {
            if (passwd.equals(w1.getPasswd())) {
                if (w1.getRylx().equals("0")) {
                    return new FebsResponse().success().data("0").put("tel", w1.getTelnum2());
                } else {
                    PersonAssist pa = personaService.findPersonAsistByPhone(phone);
                    return new FebsResponse().success().data(pa.getRrole() == null ? "4" : pa.getRrole());
                }
            } else {
                return new FebsResponse().success().data("-1");
            }
        } else {
            return new FebsResponse().success().data("-2");
        }
    }

    @ControllerEndpoint(operation = "验证WxUser", exceptionMessage = "验证WxUser失败")
    @GetMapping("/WxUserCheck")
    @ResponseBody
    @ApiOperation("验证微信用户接口  老接口")
    public FebsResponse oldcheckWUser( String telnum1, String passwd ) {

        //验证用户是否存在
        Wxuser w1 = this.wxuserService.getById(telnum1);
        log.info(" w1, {} :", w1);
        if (w1 != null) {
            if (passwd.equals(w1.getPasswd())) {
                if (w1.getRylx().equals("0")) {
                    return new FebsResponse().success().data("1").put("tel", w1.getTelnum2());
                } else {
                    PersonAssist pa = personaService.findPersonAsistByPhone(telnum1);
                    return new FebsResponse().success().data(pa.getRrole() == null ? "4" : pa.getRrole() + 1);
                }
            } else {
                return new FebsResponse().success().data("0");
            }
        } else {
            return new FebsResponse().success().data("-1");
        }
    }

    /**
     * @param telnum1 注册手机号
     * @return
     */
    @ControllerEndpoint(operation = "获取WxUserr", exceptionMessage = "获取证WxUser失败")
    @GetMapping("/WxUserGet")
    @ResponseBody
    @ApiOperation("获取微信用户接口")
    public FebsResponse getWUser( String telnum1 ) {
        LambdaQueryWrapper<Wxuser> wrapper = new LambdaQueryWrapper<>();
        wrapper.eq(Wxuser::getUserid, telnum1);
        //wrapper.eq(Wxuser::getTelnum1,telnum1);
        Wxuser wx = this.wxuserService.getOne(wrapper);
        return new FebsResponse().success().data(wx).put("regions", wx.getRegion().split(","));
    }

    /**
     * @param wxuser
     * @return
     */
    @ControllerEndpoint(operation = "修改WUser", exceptionMessage = "修改WUser失败")
    @PostMapping("/WxUserUpdate")
    @ResponseBody
    @ApiOperation("修改微信用户接口")
    public FebsResponse UpdateWUser( Wxuser wxuser ) {
        log.info(" {} ", wxuser);
        this.wxuserService.updateWUserPasswd(wxuser);

        return new FebsResponse().success();
    }


    /**
     * @param person
     * @return
     */
    @ControllerEndpoint(operation = "新增addPersonByApi", exceptionMessage = "新增addPersonByApi失败")
    @PostMapping("/pm")
    @ResponseBody
    @ApiOperation("添加医务人员信息的接口")
    public FebsResponse addPersonByApi( @Valid PersonMedicine person ) {
        this.personService.createPerson(person);
        return new FebsResponse().success();
    }


    @ControllerEndpoint(operation = "获取getPersonByApi", exceptionMessage = "获取getPersonByApi失败")
    @GetMapping("/pm")
    @ResponseBody
    @ApiOperation("获取医务人员信息的接口")
    public FebsResponse getPersonByApi( String phone ) {

        PersonMedicine pm = personService.getOne(new QueryWrapper<PersonMedicine>().lambda().eq(PersonMedicine::getPhone, phone));

        Wxuser wx = wxuserService.getOne(new QueryWrapper<Wxuser>().lambda().eq(Wxuser::getUserid, phone));

        return new FebsResponse().success().data(pm).put("passwd",wx.getPasswd());
    }

    @ControllerEndpoint(operation = "获取updatePersonMedicine4Api", exceptionMessage = "获取updatePersonMedicine4Api失败")
    @PostMapping("/pm4update")
    @ResponseBody
    @ApiOperation("修改医务人员信息的接口")
    public FebsResponse updatePersonMedicine4Api(PersonMedicine pm, String passwd /*String phone ,String passwd,String sex,String party,String unit,String dity,String professional ,String address*/){

        PersonMedicine p = personService.getOne(new QueryWrapper<PersonMedicine>().lambda().eq(PersonMedicine::getPhone, pm.getPhone()));
        if(p!=null){
            p.setAddress(pm.getAddress());
            p.setAge(pm.getAge().equals("1")?"男":"女");
            p.setProfessional(pm.getProfessional());
            p.setParty(pm.getParty());
            p.setUnit(pm.getUnit());
            p.setDuty(pm.getDuty());
            personService.saveOrUpdate(p);
        }
        Wxuser wx = wxuserService.getOne(new QueryWrapper<Wxuser>().lambda().eq(Wxuser::getUserid, pm.getPhone()));

        if(wx!=null){
            wx.setPasswd(passwd);
            wx.setAddress(p.getAddress());
            wx.setHospital(p.getUnit());
            wxuserService.saveOrUpdate(wx);
        }

        return new FebsResponse().success();
    }

    /**
     * @param phone 医务人员手机号
     * @return
     */
    @ControllerEndpoint(operation = "获取getPersonFamilyInfo", exceptionMessage = "获取getPersonFamilyInfo失败")
    @GetMapping("/getPersonFamilyInfo")
    @ResponseBody
    @ApiOperation("获取医务人员家属信息的接口")
    public FebsResponse getPersonFamilyInfo( String phone ) {

        PersonMedicine pm = personService.getOne(new QueryWrapper<PersonMedicine>().lambda().eq(PersonMedicine::getPhone, phone));
        List<PersonMedicineFamily> pmfs = pmfService.list(new QueryWrapper<PersonMedicineFamily>().lambda().eq(PersonMedicineFamily::getYlrphone, phone));

        return new FebsResponse().success().put("pmfs", pmfs).put("ylrname",pm.getPersonName());
    }

    @ControllerEndpoint(operation = "获取getPersonFamily4Info", exceptionMessage = "获取getPersonFamily4Info失败")
    @GetMapping("/getPersonFamily4Info")
    @ResponseBody
    @ApiOperation("获取帮扶人员信息的接口")
    public FebsResponse getPersonFamily4Info( String phone ) {
        PersonMedicineFamily pmf = pmfService.getOne(new QueryWrapper<PersonMedicineFamily>().lambda().eq(PersonMedicineFamily::getPhone, phone));
        Wxuser wxuser = wxuserService.getOne(new QueryWrapper<Wxuser>().lambda().eq(Wxuser::getUserid, phone));
        return new FebsResponse().success().put("pmf", pmf).put("passwd",wxuser.getPasswd());
    }


    @ControllerEndpoint(operation = "新增addPersonMedicineFamily", exceptionMessage = "新增addPersonMedicineFamily失败")
    @PostMapping("/addPersonMedicineFamily")
    @ResponseBody
    @ApiOperation("添加家庭人员信息的接口")
    public FebsResponse addPersonMedicineFamily( PersonMedicineFamily personMedicineFamily ) {
        List<PersonMedicineFamily> ps =pmfService.list(new QueryWrapper<PersonMedicineFamily>().lambda().eq(PersonMedicineFamily::getYlrphone, personMedicineFamily.getYlrphone()));

        if(ps.size()<3) {
            PersonMedicineFamily pmf = pmfService.getOne(new QueryWrapper<PersonMedicineFamily>().lambda().eq(PersonMedicineFamily::getPhone, personMedicineFamily.getPhone()));
            if (pmf == null) {
                pmfService.createPersonMedicineFamily(personMedicineFamily);
            }
            return new FebsResponse().success();
        }
        return new FebsResponse().fail().message("最多只能新增3个家庭成员");
    }

    /**
     *
     * @param phone 家庭成员手机号
     * @param ylrphone 医务人员手机号
     * @return
     */
    @ControllerEndpoint(operation = "新增deletePersonMedicineFamily", exceptionMessage = "新增deletePersonMedicineFamily失败")
    @PostMapping("/deletePersonMedicineFamily")
    @ResponseBody
    @ApiOperation("删除家庭人员信息的接口")
    public FebsResponse deletePersonMedicineFamily(String phone,String ylrphone) {

        pmfService.deletePersonMedicineFamily(phone,ylrphone);

        return new FebsResponse().success();
    }



    /**
     * @param phone 手机号
     * @return
     */
    @ControllerEndpoint(operation = "获取getPersonAssistInfo", exceptionMessage = "获取getPersonAssistInfo失败")
    @GetMapping("/getPersonAssistInfo")
    @ResponseBody
    @ApiOperation("获取帮扶人员信息的接口")
    public FebsResponse getPersonAssistInfo( String phone ) {
        PersonAssist pa = personaService.getOne(new QueryWrapper<PersonAssist>().lambda().eq(PersonAssist::getPhone, phone));
        Wxuser wxuser = wxuserService.getOne(new QueryWrapper<Wxuser>().lambda().eq(Wxuser::getUserid, phone));
        return new FebsResponse().success().put("pa", pa).put("passwd",wxuser.getPasswd());
    }


    @ControllerEndpoint(operation = "获取updatePersonAssistInfo", exceptionMessage = "获取获取updatePersonAssistInfo失败")
    @PostMapping("/updatePersonAssistInfo")
    @ResponseBody
    @ApiOperation("修改帮扶人员信息的接口")
    public FebsResponse updatePersonAssistInfo(String phone,String nname,String ssex, String political, String passwd,String workunid,String duty) {
        PersonAssist p = personaService.getOne(new QueryWrapper<PersonAssist>().lambda().eq(PersonAssist::getPhone, phone));
        if(p!=null){
            p.setNname(nname);
            p.setSsex(ssex.equals("1")?"男":"女");
            p.setPolitical(political);
            p.setWorkunid(workunid);
            p.setDuty(duty);
            personaService.saveOrUpdate(p);
        }
        Wxuser wxuser = wxuserService.getOne(new QueryWrapper<Wxuser>().lambda().eq(Wxuser::getUserid, phone));
        if(wxuser!=null){
            wxuser.setPasswd(passwd);
            wxuserService.saveOrUpdate(wxuser);
        }
        return new FebsResponse().success();
    }

    @ControllerEndpoint(operation = "获取updatePersonAssistInfo", exceptionMessage = "获取获取updatePersonAssistInfo失败")
    @PostMapping("/updatePersonMedicineRemark")
    @ResponseBody
    @ApiOperation("修改医务人员备注信息的接口")
    public FebsResponse updatePersonMedicineRemark(String phone,String remark) {
        PersonMedicine p = personService.getOne(new QueryWrapper<PersonMedicine>().lambda().eq(PersonMedicine::getPhone, phone));
        if(p!=null){
            p.setRemark(remark);
            personService.saveOrUpdate(p);
        }
        return new FebsResponse().success();
    }


    @ControllerEndpoint(operation = "updatePersonUpdate", exceptionMessage = "获取updatePersonUpdate失败")
    @PostMapping("/updatePersonUpdate")
    @ResponseBody
    @ApiOperation("修改微信用户密码的接口")
    public FebsResponse updatePersonUpdate( String phone,String passwd ) {
        log.info("phone {}     passwd {} ",phone,passwd);
        Wxuser wxuser = wxuserService.getOne(new QueryWrapper<Wxuser>().lambda().eq(Wxuser::getUserid, phone));
        if(wxuser!=null){
            wxuser.setPasswd(passwd);
            wxuserService.saveOrUpdate(wxuser);
            return new FebsResponse().success();
        }

        return new FebsResponse().fail();
    }

    /**
     * @param phone 手机号码
     * @param rylx  0 医务人员,1帮扶组员,2帮扶组长,3帮扶团长
     * @return
     */
    @ControllerEndpoint(operation = "获取getPersonByPhone", exceptionMessage = "获取getPersonByPhone失败")
    @GetMapping("/getPersonAssistByPhone")
    @ResponseBody
    @ApiOperation("获取医务小组/帮扶小组信息的接口")
    public FebsResponse getPersonListByPhone( String phone, String rylx ) {
        Wxuser wxuser = wxuserService.getOne(new QueryWrapper<Wxuser>().lambda().eq(Wxuser::getUserid, phone));
        if (wxuser != null) {
            if (wxuser.getRylx().equals("0")) {
                List<PersonAssist> pas = this.personaService.findPersonAssistByMedicinePhone(phone);
                return new FebsResponse().success().put("pas", pas);
            } else {
                PersonAssist pa = personaService.getOne(new QueryWrapper<PersonAssist>().lambda().eq(PersonAssist::getPhone, phone));
                if (pa != null) {
                    String role = pa.getRrole();
                    if (role.equals("1")) {
                        List<PersonMedicine> pms = this.personService.findPersonMedicineByAssisitMemberPhone(phone);
                        List<PersonAssist> pas = this.personaService.findPersonAssistByAssistMemberPhone(phone);
                        return new FebsResponse().success().put("pms", pms).put("pas", pas);
                    } else if (role.equals("2")) {
                        List<PersonMedicine> pms = this.personService.findPersonMedicineByAssisitMemberPhone(phone);
                        List<PersonAssist> pas = this.personaService.findPersonAssistByAssistMemberPhone1(phone);
                        /*PersonAssist paleader = null;
                        if (pa != null) {
                            GpaMap gpam = gpaMapService.getOne(new QueryWrapper<GpaMap>().lambda().eq(GpaMap::getPersonaId, pa.getUserid()));
                            if (gpam != null) {
                                GatMap gatm = gatMapService.getOne(new QueryWrapper<GatMap>().lambda().eq(GatMap::getGroupaId, gpam.getGroupaId()));
                                if (gpam != null) {
                                    GroupTeam gt = groupTeamService.getById(gatm.getTeamId());
                                    if (gatm != null) {
                                        paleader = personaService.getById(gt.getTeamLeader());
                                    }
                                }
                            }
                        }*/
                        return new FebsResponse().success().put("pms", pms).put("pas", pas)/*.put("paleader", paleader)*/;
                    } else if (role.equals("3")) {
                        List<PersonAssist> pas = new ArrayList<>();
                        List<PersonMedicine> pms = this.personService.findPersonMedicineByAssisitMemberPhone1(phone);
                        //PersonAssist pa = personaService.getOne(new QueryWrapper<PersonAssist>().lambda().eq(PersonAssist::getPhone, phone));
                        if (pa != null) {
                            GroupTeam groupTeam = groupTeamService.getOne(new QueryWrapper<GroupTeam>().lambda().eq(GroupTeam::getTeamLeader, pa.getUserid()));
                            if (groupTeam != null) {
                                List<GatMap> gatms = gatMapService.list(new QueryWrapper<GatMap>().lambda().eq(GatMap::getTeamId, groupTeam.getTeamId()));
                                if (gatms != null) {
                                    List<Long> pauserids = new ArrayList<>();
                                    for (GatMap gatm : gatms) {
                                        QueryWrapper<GpaMap> queryWrapper = new QueryWrapper<>();
                                        queryWrapper.eq("groupa_type", "1");
                                        queryWrapper.eq("groupa_id", gatm.getGroupaId());
                                        GpaMap gpa = gpaMapService.getOne(queryWrapper);
                                        if (gpa != null) {
                                            pauserids.add(gpa.getPersonaId());
                                        }
                                    }
                                    if (pauserids != null) {
                                     List<PersonAssist>   pass = personaService.list(new QueryWrapper<PersonAssist>().lambda().in(PersonAssist::getUserid, pauserids));
                                        for (PersonAssist paa: pass ) {
                                            if(paa.getRrole().equals("1")){
                                                paa.setRrole("组员");
                                            }else if(paa.getRrole().equals("2")){
                                                paa.setRrole("小组负责人");
                                            }/*else if(paa.getRrole().equals("3")){
                                                paa.setRrole("团长");
                                            }*/
                                            pas.add(paa);
                                        }
                                    }

                                }
                            }
                        }
                        return new FebsResponse().success().put("pms", pms).put("pas", pas);
                    }
                }
            }
        }
        return new FebsResponse().success();
    }

    /**
     *
     * @param explain
     * @return
     */
    @ControllerEndpoint(operation = "新增ExplainByApi", exceptionMessage = "新增ExplainByApi失败")
    @PostMapping("/explain")
    @ResponseBody
    @ApiOperation("新增诉求接口")
    public FebsResponse addExplainByApi(Explain explain) {
        log.info("insert explain :{}  ",explain);
        explain.setEstatus("0");
        log.info("getProvince :{}  ",explain.getProvince());
/*        if(!explain.getProvince().equals("浙江省")){
            explain.setSfsw("1");
        }else{
            explain.setSfsw("0");
        }*/
        explain.setCreatedate(DateUtil.getDateFormat(new Date(),DateUtil.FULL_TIME_SPLIT_PATTERN));
        this.explainService.createExplain(explain);
        return new FebsResponse().success();
    }

    /**
     *
     * @param explain
     * @param rylx
     * @return
     */
    @GetMapping("/explain/getListNum")
    @ResponseBody
    @ApiOperation("获取诉求条数接口")
    public FebsResponse getListNum(Explain explain,String rylx) {
        log.info("tel :{}  rclx : {}",explain.getTel(),rylx);
        Explain newexplain = this.explainService.getListNum(explain.getTel(),rylx);
        return new FebsResponse().success()
                .put("wcl",newexplain.getWcl())
                .put("clz",newexplain.getClz())
                .put("ycl",newexplain.getYcl());
    }

    /**
     *
     * @param tel  手机号
     * @param estatus  人员状态
     * @param rylx 人员类型
     * @return
     */
    @GetMapping("/explain/getList")
    @ResponseBody
    @ApiOperation("获取诉求列表接口")
    public FebsResponse getExplainList(String tel ,String estatus, String rylx) {
        log.info("tel :{} status :  {}  rylx : {}",tel,estatus,rylx);
        List<Explain> explains = this.explainService.getExplainList( tel , estatus,  rylx);
        return new FebsResponse().success().data(explains);
    }

    /**
     *
     * @param eid
     * @return
     */
    @GetMapping("/explain/getExplain")
    @ResponseBody
    @ApiOperation("获取诉求详情接口")
    public FebsResponse getExplainById(String eid,String status) {
        log.info("eid :{}  ",eid);
        log.info("status :{}  ",status);
        Explain  explain = this.explainService.getExplainByEid(eid,status);
        return new FebsResponse().success().data(explain);
    }

    /**
     *
     * @param eid
     * @return
     */
    @PostMapping("/explain/cancelExplain")
    @ResponseBody
    @ApiOperation("撤销诉求接口")
    public FebsResponse cancelExplain(String eid ,String status,String rylx,String chreason,String tel ) {
        log.info("eid :{}  ",eid);
        log.info("status :{}  ",status);
        log.info("rylx :{}  ",rylx);
        log.info("chreason :{}  ",chreason);
        log.info("tel :{}  ",tel);
        this.explainService.cancelExplain(eid,status,rylx,chreason,tel);
        return new FebsResponse().success();
    }


    /**
     *
     * @param tel
     * @param rylx
     * @return
     */
    @GetMapping("/explain/assistTeam")
    @ResponseBody
    @ApiOperation("组长获取组员接口")
    public FebsResponse assistTeam(String tel ,String rylx) {
        log.info("tel :{}  ",tel);
        log.info("rylx :{}  ",rylx);
        List<String> assists= this.explainService.assistTeam(tel,rylx);
        return new FebsResponse().success().data(assists);
    }

    /**
     *
     * @param tel
     * @param rylx
     * @return
     */
    @GetMapping("/explain/assistTeamZz")
    @ResponseBody
    @ApiOperation("团长获取组长接口")
    public FebsResponse assistTeamZz(String tel ,String rylx) {
        log.info("tel :{}  ",tel);
        log.info("rylx :{}  ",rylx);
        List<String> assists= this.explainService.assistTeamZz(tel,rylx);
        return new FebsResponse().success().data(assists);
    }

    /**
     *
     * @param eid
     * @param tel
     * @param bfr
     * @param type
     * @return
     */
    @PostMapping("/explain/allotExplain")
    @ResponseBody
    @ApiOperation("诉求处理接口")
    public FebsResponse allotExplain(String eid ,String tel,String bfr,String type,String reason) {
        log.info("eid :{}  ",eid);
        log.info("tel :{}  ",tel);
        log.info("bfr :{}  ",bfr);
        log.info("type :{}  ",type);
        log.info("reason :{}  ",reason);
        this.explainService.allotExplain(eid,tel,bfr,type,reason);
        return new FebsResponse().success();
    }


    @GetMapping("/explain/getPersonMedicine")
    @ResponseBody
    @ApiOperation("负责人获取医护人员接口")
    public FebsResponse getPersonMedicine(String tel ) {
        log.info("tel :{}  ",tel);
        List<PersonMedicine> pms = this.personService.findPersonMedicineByAssisitMemberPhone(tel);
        List<String> yharray = new ArrayList<String>();
        yharray.add("请选择医护人员");
        for(PersonMedicine pm : pms){
            yharray.add(pm.getGroupName()+"-"+pm.getPersonName()+"-"+pm.getPhone());
        }

        return new FebsResponse().success().put("yharray",yharray).put("pms",pms);
    }



}
