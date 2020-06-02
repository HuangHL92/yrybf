package cc.mrbird.febs.explain.service;

import cc.mrbird.febs.explain.entity.Explain;

import cc.mrbird.febs.common.entity.QueryRequest;
import cc.mrbird.febs.person.entity.PersonMedicine;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 诉求信息  Service接口
 *
 * @author tongrok
 * @date 2020-02-17 19:15:14
 */
public interface IExplainService extends IService<Explain> {
    /**
     * 查询（分页）
     *
     * @param request QueryRequest
     * @param explain explain
     * @return IPage<Explain>
     */
    IPage<Explain> findExplains(QueryRequest request, Explain explain);

    /**
     * 查询（所有）
     *
     * @param explain explain
     * @return List<Explain>
     */
    List<Explain> findExplains(Explain explain);

    /**
     * 新增
     *
     * @param explain explain
     */
    void createExplain(Explain explain);

    /**
     * 修改
     *
     * @param explain explain
     */
    void updateExplain(Explain explain);

    /**
     * 删除
     *
     * @param explain explain
     */
    void deleteExplain(Explain explain);

    /**
     * 获取诉求条数
     * wcl(未处理诉求:status=0）,clz(处理中诉求：status=1),ycl(已处理诉求：status:2 和 status:4)
     * @param
     * @return
     */
    Explain getListNum(String tel,String rylx);

    /**
     * 获取诉求列表
     * @return
     */
    List<Explain>  getExplainList(String tel ,String estatus, String rylx);

    Explain  getExplainByEid(String eid,String status);

    /**
     * 撤销诉求
     * @param eid
     * @return
     */
    void cancelExplain( String eid,String status,String rylx,String chreason,String tel );

    /**
     * 获取组员
     * @param tel
     * @param rylx
     * @return
     */
    List<String> assistTeam(String tel,String rylx);

    /**
     * 获取组长
     * @param tel
     * @param rylx
     * @return
     */
    List<String> assistTeamZz(String tel,String rylx);

    /**
     * 诉求处理接口
     * @param eid
     * @param tel
     * @param bfr
     * @param type
     * @return
     */
    void allotExplain(String eid,String tel,String bfr,String type,String reason);

    /**
     * 获得团长信息
     * @param tel
     * @return
     */
    HashMap getTeamLead(String tel);

	IPage<Explain> findDetailList(QueryRequest request, Explain explain);

	List<Explain> findDetailList(Explain explain);

	List<Map<String, String>> findTJestatus();

	List<Map<String, String>> findTJetype();

	List<Map<String, String>> findTJgrow();

    void allotExplainHt(Explain explain,String ystatus);

    void dealExplain(Explain explain);

	IPage<Explain> findEndDetailList(QueryRequest request, Explain explain);


}
