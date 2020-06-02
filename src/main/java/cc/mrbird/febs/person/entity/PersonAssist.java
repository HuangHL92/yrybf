package cc.mrbird.febs.person.entity;

import java.io.Serializable;
import java.util.Date;

import com.wuwenze.poi.annotation.Excel;
import lombok.Data;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.wuwenze.poi.annotation.ExcelField;

import javax.validation.constraints.NotBlank;

/**
 * 帮扶人员信息表  Entity
 *
 * @author tongrok
 * @date 2020-02-19 18:24:33
 */
@Data
@TableName("t_person_assist")
@Excel("帮扶人员信息表")
public class PersonAssist implements Serializable {

    /**
     * 人员ID
     */
    @TableId(value = "userid", type = IdType.AUTO)
    private Long userid;

    /**
     * 姓名
     */
    @TableField("nname")
    @NotBlank(message = "{required}")
    @ExcelField(value = "姓名")
    private String nname;

    /**
     * 人员类别 1:机关处级干部；2：医疗卫生机构中层；3：社区工作者；4：志愿者
     */
    @TableField("ttype")
    @ExcelField(value = "类型")
    private String ttype;


    /**
     * 性别
     */
    @TableField("ssex")
    @ExcelField(value = "性别")
    private String ssex;


    /**
     * 出生年月
     */
    @TableField("birth")
    @ExcelField(value = "出生年月")
    private String birth;


    /**
     * 工作单位
     */
    @TableField("workunid")
    @ExcelField(value = "工作单位")
    private String workunid;

    /**
     * 职务
     */
    @TableField("duty")
    @ExcelField(value = "职务")
    private String duty;

    /**
     * 政治面貌
     */
    @TableField("political")
    @ExcelField(value = "政治面貌")
    private String political;

    /**
     * 手机号码
     */
    @TableId(value = "phone", type = IdType.INPUT)
    @ExcelField(value = "联系方式")
    private String phone;

    @TableField("city")
    @ExcelField(value = "市")
    private String city;
    
    @TableField("county")
    @ExcelField(value = "区")
    private String county;
    
    @TableField("town")
    @ExcelField(value = "街道")
    private String town;
    
    @TableField("village")
    @ExcelField(value = "社区")
    private String village;
    
    @TableField("address")
    @ExcelField(value = "具体地址")
    private String address;


    /**
     * 角色 1：组员；2：组长；3：团长；4：未分配角色人员 5 团长兼任组长
     */
    @TableField("rrole")
    private String rrole;

    @TableField(exist = false)
    private String groupId;


    @TableField(exist = false)
    private String groupName;

    
}
