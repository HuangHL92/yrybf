package cc.mrbird.febs.person.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import lombok.Data;

@Data
public class WxEntity {

    /**
     * 微信ID
     */
    @TableField(value = "openid")
    private String openid;

    /**
     * 性别
     */
    @TableField("sex")
    private String sex;


    /**
     * 昵称
     */
    @TableField("nick_name")
    private String nickName;

    /**
     * 照片
     */
    @TableField("avatar_url")
    private String avatarUrl;



    /**
     * 国家
     */
    @TableField("country")
    private String country;

    /**
     * 省份
     */
    @TableField("province")
    private String province;

    /**
     * 城市
     */
    @TableField("city")
    private String city;
}
