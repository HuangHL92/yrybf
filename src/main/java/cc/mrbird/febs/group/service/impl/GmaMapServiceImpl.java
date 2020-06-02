package cc.mrbird.febs.group.service.impl;

import cc.mrbird.febs.group.entity.GmaMap;
import cc.mrbird.febs.group.mapper.GmaMapMapper;
import cc.mrbird.febs.group.service.IGmaMapService;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * 医务帮扶小组关系表  Service实现
 *
 * @author tongrok
 * @date 2020-02-21 22:06:48
 */
@Service
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true, rollbackFor = Exception.class)
public class GmaMapServiceImpl extends ServiceImpl<GmaMapMapper, GmaMap> implements IGmaMapService {


    @Override
    public void deleteGmaMapsByGroupMedicineId( List<String> groupmIds ) {
        this.baseMapper.delete(new QueryWrapper<GmaMap>().lambda().in(GmaMap::getGroupmId, groupmIds));

    }

    @Override
    public void deleteGmaMapsByGroupAssistId( List<String> groupaIds ) {
        this.baseMapper.delete(new QueryWrapper<GmaMap>().lambda().in(GmaMap::getGroupaId, groupaIds));

    }
}
