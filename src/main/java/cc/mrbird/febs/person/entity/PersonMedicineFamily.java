package cc.mrbird.febs.person.entity;

import java.io.Serializable;

import lombok.Data;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

/**
 * 医疗人员信息表  Entity
 *
 * @author tongrok
 * @date 2020-02-22 21:49:40
 */
@Data
@TableName("t_person_medicine_family")
public class PersonMedicineFamily implements Serializable {

    /**
     * 人员ID
     */
    @TableId(value = "userid", type = IdType.AUTO)
    private Long userid;

    /**
     * 姓名
     */
    @TableField("nname")
    private String nname;

    /**
     * 年龄
     */
    @TableField("age")
    private String age;

    /**
     * 亲属关系
     */
    @TableField("relation")
    private String relation;

    /**
     * 目前居住地
     */
    @TableField("address")
    private String address;

    /**
     * 工作单位
     */
    @TableField("unit")
    private String unit;

    /**
     * 手机
     */
    @TableField("phone")
    private String phone;

    /**
     * 医务人员手机号
     */
    @TableId(value = "ylrphone")
    private String ylrphone;

}
