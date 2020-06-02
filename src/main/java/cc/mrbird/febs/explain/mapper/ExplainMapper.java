package cc.mrbird.febs.explain.mapper;

import cc.mrbird.febs.explain.entity.Explain;
import cc.mrbird.febs.explain.entity.ExplainAssist;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;

import org.apache.ibatis.annotations.Param;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 诉求信息  Mapper
 *
 * @author tongrok
 * @date 2020-02-17 19:15:14
 */
public interface ExplainMapper extends BaseMapper<Explain> {

    //获取诉求数量
    //医护人员及家属
    Explain  getListNum(String tel);
    //帮扶组员
    Explain  getListNumRylx1(String tel);
    //帮扶组长
    Explain  getListNumRylx2(String te1);
    //帮扶团长
    Explain  getListNumRylx3(String tel);


    //获取诉求列表
    List<Explain> getExplainListByTelAndStatus( @Param("tel") String tel , @Param("estatus")  String estatus);
    List<Explain> getExplainListByTelAndStatus1( @Param("tel") String tel , @Param("estatus")  String estatus);
    List<Explain> getExplainListByTelAndStatus2( @Param("tel") String tel , @Param("estatus")  String estatus);
    List<Explain> getExplainListByTelAndStatus3( @Param("tel") String tel , @Param("estatus")  String estatus);

    //获取组员
    List<String> getAssistTeamByTel( @Param("tel") String tel,@Param("rylx")  String rylx);

    //获取组长
    List<String> getAssistTeamZzByTel( @Param("tel") String tel,@Param("rylx")  String rylx);

    //处理表插入数据
    void insertTExplainAssist(ExplainAssist explainAssist);

    //通过手机号获取帮扶人员userid
    String getAssistUserid(@Param("phone") String phone);

    //获取团长信息
    HashMap getTeamLeadByTel(@Param("phone") String phone);

    ExplainAssist getExplainAssist(@Param("tid") String tid);

    void updateExplainAssistCurrent(@Param("taid") String taid);

    void updateExplainLy(@Param("eid") String eid,@Param("transversion") String transversion,@Param("fkmx") String fkmx,@Param("myd") String myd);

    void cancelExplain( @Param("eid")String eid ,@Param("status")String status,@Param("chreason")String chreason);

    Explain getExplainByEid( @Param("eid")String eid,@Param("status")String status );

	IPage<Explain> findDetailList(Page<Explain> page, @Param("explain") Explain explain);
	
	List<Explain> findDetailList(@Param("explain") Explain explain);
	
	List<Map<String, String>> findTJestatus();
	
	List<Map<String, String>> findTJetype();
	
	String getExplainNumByTime(@Param("endtime") String endtime);
	
	String getExplainEndNumByTime(@Param("endtime") String endtime);

	String getPaidByPersonid(@Param("personid")String personid);
	
	IPage<Explain> findEndDetailList(Page<Explain> page,@Param("explain") Explain explain);
}
