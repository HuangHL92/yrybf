package cc.mrbird.febs.person.entity;

import cc.mrbird.febs.common.annotation.IsMobile;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.wuwenze.poi.annotation.Excel;
import com.wuwenze.poi.annotation.ExcelField;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.io.Serializable;

/**
 * 医疗人员信息表  Entity
 *
 * @author tongrok
 * @date 2020-02-15 12:31:08
 */
@Data
@TableName("t_person_medicine")
@Excel("服务对象信息表")
public class PersonMedicine implements Serializable  {

    /**
     * 人员ID
     */
    @TableId(value = "person_id", type = IdType.AUTO)
    private Long personId;

    /**
     * 所属分组
     */
    @ExcelField(value = "组别")
    @TableField(exist = false)
    private String groupName;


    /**
     * 姓名
     */
    @TableField("person_name")
    @ExcelField(value = "姓名")
    private String personName;

    @TableField("sex")
    @ExcelField(value = "性别")
    private String sex;

    /**
     * 单位
     */
    @TableField("unit")
    @ExcelField(value = "单位")
    private String unit;

    /**
     * 职务
     */
    @TableField("duty")
    @ExcelField(value = "职务/职称")
    private String duty;


    @TableField("professional")
    @ExcelField(value = "专业")
    private String professional;


    @TableField("age")
    @ExcelField(value = "年龄")
    private String age;

    
    @TableField("party")
    @ExcelField(value = "政治面貌")
    private String party;


    @TableField("category")
    @ExcelField(value = "类别")
    private String category;


    @TableField("szyld")
    @ExcelField(value = "所在医疗队")
    private String szyld;

    @TableField("county")
    @ExcelField(value = "所在县市区")
    private String county;


    @TableField("town")
    @ExcelField(value = "所在镇街道")
    private String town;

    @TableField("village")
    @ExcelField(value = "所在村社区")
    private String village;


    @TableField("address")
    @ExcelField(value = "家庭地址")
    private String address;

    /**
     * 手机号
     */
    @TableField("phone")
    @IsMobile(message = "{mobile}")
    @ExcelField(value = "联系方式")
    private String phone;


    /**
     * 身份证
     */
    /*@TableField("id_card")
    @ExcelField(value = "身份证")
    private String idCard;
*/
    /**
     * 籍贯
     */
    /*@TableField("native_place")
    @ExcelField(value = "籍贯")
    private String nativePlace;*/

    /**
     * 所属分组ID
     */
    @TableField("group_id")
    private Long groupId;

    @TableField("remark")
    private String remark;



    @TableField("accredited")
    private String accredited;


}
