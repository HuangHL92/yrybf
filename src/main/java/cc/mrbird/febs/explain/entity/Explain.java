package cc.mrbird.febs.explain.entity;

import java.io.Serializable;
import java.util.Date;

import lombok.Data;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.wuwenze.poi.annotation.Excel;
import com.wuwenze.poi.annotation.ExcelField;

/**
 * 诉求信息  Entity
 *
 * @author tongrok
 * @date 2020-02-17 21:01:22
 */
@Data
@TableName("t_explain")
@Excel("诉求信息表")
public class Explain implements Serializable {


    @TableField("mgroup")
    private String mgroup;

    @TableField(exist = false)
    @ExcelField(value = "序号")
    private String xh;

    @TableField(exist = false)
    @ExcelField(value = "帮扶组")
    private String agroup;

    @TableField("yhname")
    @ExcelField(value = "服务对象")
    private  String yhname;

    /**
     * 医护人员联系电话
     */
    @TableField("tel")
    @ExcelField(value = "服务对象手机号码")
    private String tel;

    /**
     * 联系人姓名
     */
    @TableField("sqrname")
    @ExcelField(value = "家属联系人")
    private String sqrname;

    /**
     * 家属关系
     */
    @TableField("sqrrelation")
    @ExcelField(value = "家属关系")
    private String sqrrelation;

    /**
     * 联系人电话
     */
    @TableField("sqrphone")
    @ExcelField(value = "家属联系人手机号码")
    private String sqrphone;

    @TableField("unit")
    @ExcelField(value = "单位")
    private  String unit;

    @TableField("szyld")
    @ExcelField(value = "是否援鄂")
    private  String szyld;

    @TableField("duty")
    private  String duty;

    @TableField("remark")
    private  String remark;



    /**
     * 诉求信息
     */
    @TableField("etypevalue")
    @ExcelField(value = "诉求类型")
    private String etypevalue;

    /**
     * 诉求信息
     */
    @TableField("einfo")
    @ExcelField(value = "诉求内容")
    private String einfo;




    /**
     * 创建时间
     */
    @TableField("createdate")
    private String createdate;

    @TableField("transversion")
    @ExcelField(value = "解决举措")
    private String transversion;

    /**
     * 诉求信息
     */
    @TableField("estatusvalue")
    @ExcelField(value = "完成情况")
    private String estatusvalue;



    @TableField("fzr")
    private String fzr;

    @TableField("interview")
    private String interview;

    /**
     * 诉求ID
     */
    @TableId(value = "eid", type = IdType.UUID)
    private String eid;


    
    /**
     * 诉求类型
     */
    @TableField("etype")
    //@ExcelField(value = "诉求类型",writeConverterExp = "1=日常通勤,2=生活照料,3=医疗服务,4=帮扶人子女教育,5=心理疏导,6=其他")
    private String etype;



    
    /**
     * 诉求状态 0:未分配；1：处理中；2：已处理；3：已撤销；4：已反馈
     */
    @TableField("estatus")
   // @ExcelField(value = "诉求状态",writeConverterExp = "1=处理中,2=已解决,3=已撤销,4=已反馈,0=未分配")
    private String estatus;
    
    /**
     * 所在省
     */
    @TableField("province")
    //@ExcelField(value = "省")
    private String province;

    /**
     * 所在市
     */
    @TableField("city")
   // @ExcelField(value = "市")
    private String city;

    /**
     * 所在区
     */
    @TableField("district")
   // @ExcelField(value = "区")
    private String district;
    /**
     * 所在街道
     */
    @TableField("town")
   // @ExcelField(value = "街道")
    private String town;
    

    /**
     * 详细地址
     */
    @TableField("sqradress")
   // @ExcelField(value = "地址")
    private String sqradress;

    /**
     * 满意度 1：非常满意；2：满意；3：一般；4：不满意
     */
    @TableField("myd")
   // @ExcelField(value = "反馈类型",writeConverterExp = "1=非常满意,2=满意,3=一般,4=不满意,99= ")
    private String myd;



    @TableField(exist = false)
    private String gmedicine;



    @TableField(exist = false)
    //@ExcelField(value = "帮扶团队")
    private String ateam;

    /**
     * 人员唯一码
     */
    @TableField("openid")
    private String openid;

    /**
     * 是否省外 0：省内；1：省外；  后台判定province 为‘浙江省’则为0，其余都为1；
     */
    @TableField("sfsw")
    private String sfsw;

   

    /**
     * 处理状态 0：组长分配；1：开始处理诉求；2：向上转交诉求；3：已处理;4:撤回
     */
    @TableField("astatus")
    private String astatus;

    /**
     * 撤销理由
     */
    @TableField("cxly")
    private String cxly;

    /**
     * 医疗小组名称
     */
    @TableField("groupName")
    private String groupName;

    /**
     * 满意描述
     */
    @TableField("fkmx")
    private String fkmx;


    /**
     * 未处理诉求
     */
    @TableField(exist = false)
    private Integer wcl;
    /**
     * 处理中诉求
     */
    @TableField(exist = false)
    private Integer clz;

    /**
     * 已处理诉求
     */
    @TableField(exist = false)
    private Integer ycl;




    @TableField(exist = false)
    private String createTimeFrom;
    @TableField(exist = false)
    private String createTimeTo;

    @TableField(exist = false)
    private String enddate;

    /**
     * 团长评价
     */
    @TableField("leadappraise")
    private String leadappraise;

    /**
     * 转交诉求理由
     */
    @TableField("reason")
    private String reason;

    /**
     * 诉求处理人id
     */
    @TableField("aid")
    private String aid;

    /**
     * 诉求处理小组长id
     */
    @TableField("paid")
    private String paid;





    /**
     * 已评价
     */
    @TableField("ypj")
    private String ypj;

    /**
     *
     */
    @TableField("aidname")
    private String aidname;

    /**
     * 当前处理人
     */
    @TableField("aidphone")
    private String aidphone;




}
