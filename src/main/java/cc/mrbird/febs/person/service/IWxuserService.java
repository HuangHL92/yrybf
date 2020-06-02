package cc.mrbird.febs.person.service;

import cc.mrbird.febs.person.entity.Wxuser;

import cc.mrbird.febs.common.entity.QueryRequest;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * 微信医疗人员及家属登录表  Service接口
 *
 * @author tongrok
 * @date 2020-02-17 22:35:08
 */
public interface IWxuserService extends IService<Wxuser> {
    /**
     * 查询（分页）
     *
     * @param request QueryRequest
     * @param wxuser wxuser
     * @return IPage<Wxuser>
     */
    IPage<Wxuser> findWxusers( QueryRequest request, Wxuser wxuser );

    /**
     * 查询（所有）
     *
     * @param wxuser wxuser
     * @return List<Wxuser>
     */
    List<Wxuser> findWxusers( Wxuser wxuser );

    /**
     * 新增
     *
     * @param wxuser wxuser
     */
    void createWxuser( Wxuser wxuser );

    /**
     * 修改
     *
     * @param wxuser wxuser
     */
    void updateWxuser( Wxuser wxuser );

    void updateWUserPasswd(Wxuser wxuser);
    /**
     * 删除
     *
     * @param wxuser wxuser
     */
    void deleteWxuser( Wxuser wxuser );






}
