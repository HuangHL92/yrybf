package cc.mrbird.febs.group.service.impl;

import cc.mrbird.febs.group.entity.GatMap;
import cc.mrbird.febs.group.mapper.GatMapMapper;
import cc.mrbird.febs.group.service.IGatMapService;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * 帮扶团小组关系表 Service实现
 *
 * @author tongrok
 * @date 2020-02-21 07:46:25
 */
@Service
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true, rollbackFor = Exception.class)
public class GatMapServiceImpl extends ServiceImpl<GatMapMapper, GatMap> implements IGatMapService {


    @Override
    public void deleteGatMapsByGroupAssistId( List<String> groupIds ) {
        this.baseMapper.delete(new QueryWrapper<GatMap>().lambda().in(GatMap::getGroupaId, groupIds));
    }

    @Override
    public void deleteGatMapsByGroupTeamId( List<String> teamIds ) {
        this.baseMapper.delete(new QueryWrapper<GatMap>().lambda().in(GatMap::getTeamId, teamIds));

    }
}
