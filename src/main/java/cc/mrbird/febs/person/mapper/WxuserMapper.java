package cc.mrbird.febs.person.mapper;

import cc.mrbird.febs.person.entity.Wxuser;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;

/**
 * 微信医疗人员及家属登录表  Mapper
 *
 * @author tongrok
 * @date 2020-02-17 22:35:08
 */
public interface WxuserMapper extends BaseMapper<Wxuser> {


    void updateWUserPasswd(@Param("telno")String telno, @Param("passwd")  String passwd);
}
