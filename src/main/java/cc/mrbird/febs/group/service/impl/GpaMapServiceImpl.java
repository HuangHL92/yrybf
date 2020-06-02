package cc.mrbird.febs.group.service.impl;

import cc.mrbird.febs.group.entity.GpaMap;
import cc.mrbird.febs.group.mapper.GpaMapMapper;
import cc.mrbird.febs.group.service.IGpaMapService;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * 帮扶小组关系表  Service实现
 *
 * @author tongrok
 * @date 2020-02-20 17:36:41
 */
@Service
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true, rollbackFor = Exception.class)
public class GpaMapServiceImpl extends ServiceImpl<GpaMapMapper, GpaMap> implements IGpaMapService {


    @Override
    public void deleteGpaMapsByPersonAssistId( List<String> personIds ) {
        this.baseMapper.delete(new QueryWrapper<GpaMap>().lambda().in(GpaMap::getPersonaId, personIds));

    }

    @Override
    public void deleteGpaMapsByGroupAssistId( List<String> groupAssistIds ) {
        this.baseMapper.delete(new QueryWrapper<GpaMap>().lambda().in(GpaMap::getGroupaId, groupAssistIds));

    }
}
