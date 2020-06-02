package cc.mrbird.febs.explain.service.impl;

import cc.mrbird.febs.common.entity.FebsConstant;
import cc.mrbird.febs.common.entity.QueryRequest;
import cc.mrbird.febs.common.utils.DateUtil;
import cc.mrbird.febs.common.utils.SortUtil;
import cc.mrbird.febs.explain.entity.Explain;
import cc.mrbird.febs.explain.entity.ExplainAssist;
import cc.mrbird.febs.explain.mapper.ExplainMapper;
import cc.mrbird.febs.explain.service.IExplainService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.annotation.Propagation;
import org.apache.ibatis.javassist.expr.NewArray;
import org.springframework.beans.factory.annotation.Autowired;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.google.common.collect.Lists;

import java.util.*;

/**
 * 诉求信息  Service实现
 *
 * @author tongrok
 * @date 2020-02-17 19:15:14
 */
@Service
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true, rollbackFor = Exception.class)
public class ExplainServiceImpl extends ServiceImpl<ExplainMapper, Explain> implements IExplainService {


    @Override
    public IPage<Explain> findExplains(QueryRequest request, Explain explain) {
        LambdaQueryWrapper<Explain> queryWrapper = new LambdaQueryWrapper<>();
        // TODO 设置查询条件
        Page<Explain> page = new Page<>(request.getPageNum(), request.getPageSize());
        return this.page(page, queryWrapper);
    }




    @Override
    public List<Explain> findExplains(Explain explain) {
	    LambdaQueryWrapper<Explain> queryWrapper = new LambdaQueryWrapper<>();
		// TODO 设置查询条件
		return this.baseMapper.selectList(queryWrapper);
    }

    @Override
    @Transactional
    public void createExplain(Explain explain) {
        this.save(explain);
    }

    @Override
    @Transactional
    public void updateExplain(Explain explain) {
        this.saveOrUpdate(explain);
    }

    @Override
    @Transactional
    public void deleteExplain(Explain explain) {
        LambdaQueryWrapper<Explain> wrapper = new LambdaQueryWrapper<>();
	    // TODO 设置删除条件
	    this.remove(wrapper);
	}

    @Override
    public Explain getListNum(String  tel,String rylx) {
        Explain e = null;
        if( "0".equals(rylx) ){//医务人员及家属
            e = this.baseMapper.getListNum(tel);
        }else if ( "1".equals(rylx) ){//帮扶小组组员
            e = this.baseMapper.getListNumRylx1(tel);
        }else if ( "2".equals(rylx) ){//帮扶小组组长
            e = this.baseMapper.getListNumRylx2(tel);
        }else if ( "3".equals(rylx) || "5".equals(rylx) ){//帮扶小组团长
            e = this.baseMapper.getListNumRylx3(tel);
        }else if ( "4".equals(rylx) ){//帮扶小组未分配角色
            e = new Explain();
            e.setWcl(0);
            e.setClz(0);
            e.setYcl(0);
        }
        return e;

    }

    @Override
    public List<Explain>  getExplainList( String tel ,String estatus, String rylx) {
        estatus = estatus.replaceAll("'","");
        List<Explain> elist = null;
        if( "0".equals(rylx) ){//医务人员及家属
            if("2".equals(estatus)){
                estatus = " and ( e.estatus ='2' or  e.estatus ='4' ) and t.tcurrent='1' and t.astatus='3' ";
            }else if("3".equals(estatus)){
                estatus = " and  e.estatus <>'3' ";

            }else if("1".equals(estatus)){
                estatus = " and t.tcurrent='0' and e.estatus =" + estatus ;
            }else{
                estatus = " and e.estatus =" + estatus ;
            }
            elist = this.baseMapper.getExplainListByTelAndStatus( tel , estatus);
        }else if("1".equals(rylx)){// 帮扶小组组员
            if("2".equals(estatus)){
                estatus = " and t.astatus='3' and t.tcurrent='1' ";
            }else{
                estatus = " and t.tcurrent='0' and t.astatus =" + estatus ;
            }
            elist = this.baseMapper.getExplainListByTelAndStatus1( tel , estatus);
        }else if ( "2".equals(rylx)){//帮扶小组组长
            elist = this.baseMapper.getExplainListByTelAndStatus2( tel , estatus);
        }else if ( "3".equals(rylx) || "5".equals(rylx) ){//帮扶小组团长
            elist = this.baseMapper.getExplainListByTelAndStatus3( tel , estatus);
        }else if ( "4".equals(rylx) ){//帮扶小组未分配角色

        }
        return elist;

    }
    @Override
    public Explain  getExplainByEid( String eid,String status) {

        return this.baseMapper.getExplainByEid( eid,status.replaceAll("'",""));

    }

    @Override
    public void cancelExplain( String eid ,String status,String rylx,String chreason,String tel ) {
        if( "0".equals(rylx) ){
            this.baseMapper.cancelExplain(eid,"3",null);
        }else{
            ExplainAssist explainAssist = this.baseMapper.getExplainAssist(eid);
            if( explainAssist ==null ){
                this.baseMapper.cancelExplain(eid,"3",chreason);
            }else{
                //原有数据状态更新
                this.baseMapper.updateExplainAssistCurrent(explainAssist.getTaid());
                ExplainAssist ea = new ExplainAssist();
                ea.setTaid(UUID.randomUUID().toString());
                ea.setAstatus("4");
                ea.setAid(this.baseMapper.getAssistUserid(tel));
                ea.setPaid(explainAssist.getPaid());
                ea.setTcurrent("1");
                ea.setReceivedate(explainAssist.getReceivedate());
                ea.setXh(explainAssist.getXh()+1);
                ea.setTid(eid);
                ea.setStartdate(explainAssist.getStartdate());
                ea.setEnddate(new Date());
                //处理表插入数据
                this.baseMapper.insertTExplainAssist(ea);
                //诉求表更新状态
                this.baseMapper.cancelExplain(eid,"3",chreason);
            }
        }

    }


    /**
     * 获取组员
     * @param tel
     * @param rylx
     * @return
     */
    public List<String> assistTeam(String tel,String rylx){
        return this.baseMapper.getAssistTeamByTel(tel,rylx);
    }

    /**
     * 获取组长
     * @param tel
     * @param rylx
     * @return
     */
    public List<String> assistTeamZz(String tel,String rylx){
        return this.baseMapper.getAssistTeamZzByTel(tel,rylx);
    }

    /**
     * 获得团长信息
     * @param tel
     * @return
     */
    public HashMap getTeamLead(String tel){
        return this.baseMapper.getTeamLeadByTel(tel);
    }

    /**
     * 诉求处理接口
     * @param eid
     * @param tel
     * @param bfr
     * @param type
     * @return
     */
    public void allotExplain(String eid,String tel,String bfr,String type,String reason){
        ExplainAssist ea = new ExplainAssist();
        ExplainAssist explainAssist = this.baseMapper.getExplainAssist(eid);
        if( "0".equals(type) ){//组长分配组员
            if( explainAssist==null ){
                ea.setTaid(UUID.randomUUID().toString());
                ea.setAstatus("0");
                ea.setAid(this.baseMapper.getAssistUserid(bfr.split("-")[2]));
                ea.setPaid(this.baseMapper.getAssistUserid(tel));
                ea.setTcurrent("0");
                ea.setReceivedate(new Date());
                ea.setXh(0);
                ea.setTid(eid);
                //处理表插入数据
                this.baseMapper.insertTExplainAssist(ea);
                //诉求表更新状态
                this.baseMapper.cancelExplain(eid,"1",null);
            }else{
                //原有数据状态更新
                this.baseMapper.updateExplainAssistCurrent(explainAssist.getTaid());
                ea.setTaid(UUID.randomUUID().toString());
                ea.setAstatus("0");
                ea.setAid(this.baseMapper.getAssistUserid(bfr.split("-")[2]));
                ea.setPaid(explainAssist.getPaid());
                ea.setTcurrent("0");
                ea.setReceivedate(new Date());
                ea.setXh(explainAssist.getXh()+1);
                ea.setTid(eid);
                //处理表插入数据
                this.baseMapper.insertTExplainAssist(ea);
            }

//        }else if ( "1".equals(type) ){//转给团长
//            if( explainAssist == null ){//未处理的诉求
//                ea.setTaid(UUID.randomUUID().toString());
//                ea.setAstatus("2");
//                ea.setReason(reason);
//                ea.setAid(bfr);
//                ea.setPaid(this.baseMapper.getAssistUserid(tel));
//                ea.setTcurrent("0");
//                ea.setReceivedate(new Date());
//                ea.setXh(0);
//                ea.setTid(eid);
//                //处理表插入数据
//                this.baseMapper.insertTExplainAssist(ea);
//                //诉求表更新状态
//                this.baseMapper.cancelExplain(eid,"1",null);
//            }else{
//                //原有数据状态更新
//                this.baseMapper.updateExplainAssistCurrent(explainAssist.getTaid());
//                ea.setTaid(UUID.randomUUID().toString());
//                ea.setAstatus("2");
//                ea.setReason(reason);
//                ea.setAid(bfr);
//                ea.setPaid(explainAssist.getPaid());
//                ea.setTcurrent("0");
//                ea.setReceivedate(new Date());
//                ea.setXh(explainAssist.getXh()+1);
//                ea.setTid(eid);
//                //处理表插入数据
//                this.baseMapper.insertTExplainAssist(ea);
//            }
        }else if ("2".equals(type)){//组员开始处理诉求
            //原有数据状态更新
            this.baseMapper.updateExplainAssistCurrent(explainAssist.getTaid());
            ea.setTaid(UUID.randomUUID().toString());
            ea.setAstatus("1");
            ea.setAid(this.baseMapper.getAssistUserid(tel));
            ea.setPaid(explainAssist.getPaid());
            ea.setTcurrent("0");
            ea.setReceivedate(explainAssist.getReceivedate());
            ea.setXh(explainAssist.getXh()+1);
            ea.setTid(eid);
            ea.setStartdate(new Date());
            //处理表插入数据
            this.baseMapper.insertTExplainAssist(ea);
        }else if ("3".equals(type)){//结束诉求
            //原有数据状态更新
            this.baseMapper.updateExplainAssistCurrent(explainAssist.getTaid());
            ea.setTaid(UUID.randomUUID().toString());
            ea.setAstatus("3");
            ea.setAid(this.baseMapper.getAssistUserid(tel));
            ea.setPaid(explainAssist.getPaid());
            ea.setTcurrent("1");
            ea.setReceivedate(explainAssist.getReceivedate());
            ea.setXh(explainAssist.getXh()+1);
            ea.setTid(eid);
            ea.setStartdate(explainAssist.getStartdate());
            ea.setEnddate(new Date());
            //处理表插入数据
            this.baseMapper.insertTExplainAssist(ea);
            //诉求表更新状态
            this.baseMapper.cancelExplain(eid,"2",null);
        }else if ("4".equals(type)){//医护家属评价
            this.baseMapper.updateExplainLy(eid,null,reason,bfr);
            //诉求表更新状态
            this.baseMapper.cancelExplain(eid,"4",null);
        }else if ("5".equals(type)){//负责人评价
            this.baseMapper.updateExplainLy(eid,reason,null,null);
        }else if( "6".equals(type)) {//组员转给组长
            //原有数据状态更新
            this.baseMapper.updateExplainAssistCurrent(explainAssist.getTaid());
            ea.setTaid(UUID.randomUUID().toString());
            ea.setAstatus("2");
            ea.setReason(reason);
            ea.setAid(explainAssist.getPaid());
            ea.setPaid(explainAssist.getPaid());
            ea.setTcurrent("0");
            ea.setReceivedate(new Date());
            ea.setXh(explainAssist.getXh()+1);
            ea.setTid(eid);
            //处理表插入数据
            this.baseMapper.insertTExplainAssist(ea);
//        }else if( "7".equals(type)) {//团长转给组长
//            //原有数据状态更新
//            this.baseMapper.updateExplainAssistCurrent(explainAssist.getTaid());
//            ea.setTaid(UUID.randomUUID().toString());
//            ea.setAstatus("2");
//            ea.setAid(this.baseMapper.getAssistUserid(bfr.split("-")[2]));
//            ea.setPaid(this.baseMapper.getAssistUserid(bfr.split("-")[2]));
//            ea.setTcurrent("0");
//            ea.setReceivedate(new Date());
//            ea.setXh(explainAssist.getXh()+1);
//            ea.setTid(eid);
//            //处理表插入数据
//            this.baseMapper.insertTExplainAssist(ea);
        }else if( "8".equals(type)) {//组长开始处理诉求
            if( explainAssist==null ){
                ea.setTaid(UUID.randomUUID().toString());
                ea.setAstatus("1");
                ea.setAid(this.baseMapper.getAssistUserid(tel));
                ea.setPaid(this.baseMapper.getAssistUserid(tel));
                ea.setTcurrent("0");
                ea.setReceivedate(new Date());
                ea.setXh(0);
                ea.setTid(eid);
                ea.setStartdate(new Date());
                //处理表插入数据
                this.baseMapper.insertTExplainAssist(ea);
                //诉求表更新状态
                this.baseMapper.cancelExplain(eid,"1",null);
            }else{
                this.baseMapper.updateExplainAssistCurrent(explainAssist.getTaid());
                ea.setTaid(UUID.randomUUID().toString());
                ea.setAstatus("1");
                ea.setAid(this.baseMapper.getAssistUserid(tel));
                ea.setPaid(this.baseMapper.getAssistUserid(tel));
                ea.setTcurrent("0");
                ea.setReceivedate(explainAssist.getReceivedate());
                ea.setXh(explainAssist.getXh()+1);
                ea.setTid(eid);
                ea.setStartdate(new Date());
                //处理表插入数据
                this.baseMapper.insertTExplainAssist(ea);
            }
        }
    }



    /**
     * 诉求处理
     * @param explain
     */
    public void allotExplainHt(Explain explain,String ystatus){
        String xstatus = explain.getEstatus();
        String eid = explain.getEid();
        String aid = explain.getAid();
        if( !ystatus.equals(xstatus)){//状态有变化
            ExplainAssist ea = new ExplainAssist();
            if("0".equals(ystatus) && "1".equals(xstatus)){//未分配诉求变成处理中
                ea.setTaid(UUID.randomUUID().toString());
                ea.setAstatus("1");
                ea.setAid(aid);
                ea.setPaid(aid);
                ea.setTcurrent("0");
                ea.setReceivedate(new Date());
                ea.setXh(0);
                ea.setTid(eid);
                ea.setStartdate(new Date());
                //处理表插入数据
                this.baseMapper.insertTExplainAssist(ea);
            }else if("0".equals(ystatus) && "2".equals(xstatus)) {//从未分配诉求变成已解决
                ea.setTaid(UUID.randomUUID().toString());
                ea.setAstatus("3");
                ea.setAid(aid);
                ea.setPaid(aid);
                ea.setTcurrent("1");
                ea.setReceivedate(new Date());
                ea.setXh(0);
                ea.setTid(eid);
                ea.setStartdate(new Date());
                ea.setEnddate(new Date());
                //处理表插入数据
                this.baseMapper.insertTExplainAssist(ea);
            }else if("0".equals(ystatus) && "5".equals(xstatus)){//从未分配诉求变成无法解决
                ea.setTaid(UUID.randomUUID().toString());
                ea.setAstatus("5");
                ea.setAid(aid);
                ea.setPaid(aid);
                ea.setTcurrent("0");
                ea.setReceivedate(new Date());
                ea.setXh(0);
                ea.setTid(eid);
                ea.setStartdate(new Date());
                //处理表插入数据
                this.baseMapper.insertTExplainAssist(ea);
            }else if( ("1".equals(ystatus) && "2".equals(xstatus))||("5".equals(ystatus) &&  "2".equals(xstatus)) ){//从处理中到已解决
                ExplainAssist explainAssist = this.baseMapper.getExplainAssist(eid);
                //原有数据状态更新
                this.baseMapper.updateExplainAssistCurrent(explainAssist.getTaid());
                ea.setTaid(UUID.randomUUID().toString());
                ea.setAstatus("3");
                ea.setAid(aid);
                ea.setPaid(explainAssist.getPaid());
                ea.setTcurrent("1");
                ea.setReceivedate(explainAssist.getReceivedate());
                ea.setXh(explainAssist.getXh()+1);
                ea.setTid(eid);
                ea.setStartdate(explainAssist.getStartdate());
                ea.setEnddate(new Date());
                //处理表插入数据
                this.baseMapper.insertTExplainAssist(ea);
            }else if("1".equals(ystatus) &&  "5".equals(xstatus) ){//从处理中到无法解决
                ExplainAssist explainAssist = this.baseMapper.getExplainAssist(eid);
                //原有数据状态更新
                this.baseMapper.updateExplainAssistCurrent(explainAssist.getTaid());
                ea.setTaid(UUID.randomUUID().toString());
                ea.setAstatus("5");
                ea.setAid(aid);
                ea.setPaid(explainAssist.getPaid());
                ea.setTcurrent("0");
                ea.setReceivedate(explainAssist.getReceivedate());
                ea.setXh(explainAssist.getXh()+1);
                ea.setTid(eid);
                ea.setStartdate(explainAssist.getStartdate());
                //处理表插入数据
                this.baseMapper.insertTExplainAssist(ea);
            }
        }
    }

    //新增之后自动开启流程
    public void dealExplain( Explain explain){
        ExplainAssist ea = new ExplainAssist();
        String eid = explain.getEid();
        ea.setTaid(UUID.randomUUID().toString());
        ea.setAstatus("1");
        ea.setAid(this.baseMapper.getPaidByPersonid(explain.getGmedicine()));
        ea.setPaid(this.baseMapper.getPaidByPersonid(explain.getGmedicine()));
        ea.setTcurrent("0");
        ea.setReceivedate(new Date());
        ea.setXh(0);
        ea.setTid(eid);
        ea.setStartdate(new Date());
        //处理表插入数据
        this.baseMapper.insertTExplainAssist(ea);
        //诉求表更新状态
        this.baseMapper.cancelExplain(eid,"1",null);
    }


	@Override
	public IPage<Explain> findDetailList(QueryRequest request, Explain explain) {

		Page<Explain> page = new Page<>(request.getPageNum(), request.getPageSize());
        SortUtil.handlePageSort(request, page, "estatus", FebsConstant.ORDER_ASC, false);
		return this.baseMapper.findDetailList(page,explain);
	}




	@Override
	public List<Explain> findDetailList(Explain explain) {
		
		return this.baseMapper.findDetailList(explain);
	}




	@Override
	public List<Map<String, String>> findTJestatus() {
		
		return this.baseMapper.findTJestatus();
	}




	@Override
	public List<Map<String, String>> findTJetype() {
		
		return this.baseMapper.findTJetype();
	}




	@Override
	public List<Map<String, String>> findTJgrow() {
		//获取近7日的时间
		List<Map<String, String>> data=Lists.newArrayList();
		
        for(int i=-6;i<1;i++) {
        	Calendar cal=Calendar.getInstance();
        	cal.add(Calendar.DATE,i);
            Date d=cal.getTime();
            String time=DateUtil.getDateFormat(d, "yyyy-MM-dd");
            
            cal.add(Calendar.DATE,1);
            Date enddate=cal.getTime();
            String endtime=DateUtil.getDateFormat(enddate, "yyyy-MM-dd");
            
            String num=this.baseMapper.getExplainNumByTime(endtime);
            
            
            String endnum=this.baseMapper.getExplainEndNumByTime(endtime);
            
            Map<String,String> map=new HashMap<String,String>();
            map.put("time", time);
            map.put("num", num);
            map.put("endnum", endnum);
            data.add(map);
        }
 

		return data;
	}




	@Override
	public IPage<Explain> findEndDetailList(QueryRequest request, Explain explain) {
		Page<Explain> page = new Page<>(request.getPageNum(), request.getPageSize());
		return this.baseMapper.findEndDetailList(page,explain);
	}
}
