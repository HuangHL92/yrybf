package cc.mrbird.febs.person.entity;

import java.io.Serializable;

import lombok.Data;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

/**
 * 微信医疗人员及家属登录表  Entity
 *
 * @author tongrok
 * @date 2020-02-17 22:35:08
 */
@Data
@TableName("t_wxuser")
public class Wxuser implements Serializable {

    /**
     * 微信openid
     */
    @TableId(value = "userid", type = IdType.INPUT)
    private String userid;

    /**
     * 微信openid
     */
   /* @TableId(value = "openid")
    private String openid;
*/
    /**
     * 手机号
     */
    @TableField("telnum1")
    private String telnum1;

    /**
     * 医护人员手机号
     */
    @TableField("telnum2")
    private String telnum2;

    /**
     * 所属医院
     */
    @TableField("hospital")
    private String hospital;

    /**
     * 所在地区
     */
    @TableField("region")
    private String region;

    /**
     * 详细地址
     */
    @TableField("address")
    private String address;

    /**
     * 密码
     */
    @TableField("passwd")
    private String passwd;

    /**
     * 用户类型 0为医护人员及家属 ,2位帮扶小组成员,3为帮扶小组组长
     */
    @TableField("rylx")
    private String rylx;

    /**
     * 家庭关系 0为家属,1为本人
     */
    @TableField("family")
    private String family;

}
