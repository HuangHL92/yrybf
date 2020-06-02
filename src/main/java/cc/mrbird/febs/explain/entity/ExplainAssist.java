package cc.mrbird.febs.explain.entity;

import java.io.Serializable;
import java.util.Date;

import lombok.Data;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

/**
 *  Entity
 *
 * @author tongrok
 * @date 2020-02-20 16:39:14
 */
@Data
@TableName("t_explain_assist")
public class ExplainAssist implements Serializable {

    /**
     * 
     */
    @TableId(value = "taid", type = IdType.UUID)
    private String taid;

    /**
     * 帮扶人员id
     */
    @TableField("aid")
    private String aid;

    /**
     * 
     */
    @TableField("tid")
    private String tid;

    /**
     * 
     */
    @TableField("receivedate")
    private Date receivedate;

    /**
     * 
     */
    @TableField("startdate")
    private Date startdate;

    /**
     * 
     */
    @TableField("enddate")
    private Date enddate;

    /**
     * 
     */
    @TableField("paid")
    private String paid;

    /**
     * 
     */
    @TableField("astatus")
    private String astatus;

    /**
     * 
     */
    @TableField("reason")
    private String reason;

    /**
     * 
     */
    @TableField("chreason")
    private String chreason;

    /**
     * 
     */
    @TableField("xh")
    private Integer xh;

    /**
     * 
     */
    @TableField("tcurrent")
    private String tcurrent;

    /**
     *
     */
    @TableField(exist = false)
    private String bfphone;

    /**
     *
     */
    @TableField(exist = false)
    private String tel;

}
