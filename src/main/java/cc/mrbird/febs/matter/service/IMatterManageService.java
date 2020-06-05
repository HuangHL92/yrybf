package cc.mrbird.febs.matter.service;

import cc.mrbird.febs.matter.entity.MatterManage;

import cc.mrbird.febs.common.entity.QueryRequest;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * 事项管理  Service接口
 *
 * @author tongrok
 * @date 2020-05-31 22:55:32
 */
public interface IMatterManageService extends IService<MatterManage> {
    /**
     * 查询（分页）
     *
     * @param request QueryRequest
     * @param matterManage matterManage
     * @return IPage<MatterManage>
     */
    IPage<MatterManage> findMatterManages(QueryRequest request, MatterManage matterManage);

    /**
     * 查询（所有）
     *
     * @param matterManage matterManage
     * @return List<MatterManage>
     */
    List<MatterManage> findMatterManages(MatterManage matterManage);

    /**
     * 新增
     *
     * @param matterManage matterManage
     */
    void createMatterManage(MatterManage matterManage);

    /**
     * 修改
     *
     * @param matterManage matterManage
     */
    void updateMatterManage(MatterManage matterManage);

    /**
     * 删除
     *
     * @param matterManage matterManage
     */
    void deleteMatterManage(MatterManage matterManage);


    Integer getTatal(MatterManage matterManage);

    void updateByOid(Integer oid,Integer sts);
}
