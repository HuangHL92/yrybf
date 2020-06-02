package cc.mrbird.febs.person.service.impl;

import cc.mrbird.febs.common.entity.QueryRequest;
import cc.mrbird.febs.person.entity.Wxuser;
import cc.mrbird.febs.person.mapper.WxuserMapper;
import cc.mrbird.febs.person.service.IWxuserService;
import cc.mrbird.febs.system.entity.UserRole;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * 微信医疗人员及家属登录表  Service实现
 *
 * @author tongrok
 * @date 2020-02-17 22:35:08
 */
@Service
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true, rollbackFor = Exception.class)
public class WxuserServiceImpl extends ServiceImpl<WxuserMapper, Wxuser> implements IWxuserService {

    @Override
    public IPage<Wxuser> findWxusers(QueryRequest request, Wxuser wxuser) {
        LambdaQueryWrapper<Wxuser> queryWrapper = new LambdaQueryWrapper<>();
        // TODO 设置查询条件
        Page<Wxuser> page = new Page<>(request.getPageNum(), request.getPageSize());
        return this.page(page, queryWrapper);
    }

    @Override
    public List<Wxuser> findWxusers(Wxuser wxuser) {
	    LambdaQueryWrapper<Wxuser> queryWrapper = new LambdaQueryWrapper<>();
		// TODO 设置查询条件
		return this.baseMapper.selectList(queryWrapper);
    }

    @Override
    @Transactional
    public void createWxuser(Wxuser wxuser) {
        this.save(wxuser);
    }

    @Override
    @Transactional
    public void updateWxuser(Wxuser wxuser) {
        this.saveOrUpdate(wxuser);
    }


    @Override
    @Transactional
    public void updateWUserPasswd(Wxuser wxuser) {
        this.baseMapper.updateWUserPasswd(wxuser.getTelnum1(),wxuser.getPasswd());
    }


    @Override
    @Transactional
    public void deleteWxuser(Wxuser wxuser) {
        this.baseMapper.delete(new QueryWrapper<Wxuser>().lambda().in(Wxuser::getTelnum1, wxuser.getTelnum1()));
	}



}
