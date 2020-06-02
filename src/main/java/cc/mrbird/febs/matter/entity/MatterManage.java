package cc.mrbird.febs.matter.entity;

import java.io.Serializable;
import java.util.Date;

import lombok.Data;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

/**
 * 事项管理  Entity
 *
 * @author tongrok
 * @date 2020-05-31 22:55:32
 */
@Data
@TableName("t_matter_manage")
public class MatterManage implements Serializable {

    /**
     * 主键 主键
     */
    @TableField("OID")
    private String oid;

    /**
     * 创建人 创建人
     */
    @TableField("CREATED_BY")
    private String createdBy;

    /**
     * 创建时间 创建时间
     */
    @TableField("CREATED_TIME")
    private Date createdTime;

    /**
     * 更新人 更新人
     */
    @TableField("UPDATED_BY")
    private String updatedBy;

    /**
     * 更新时间 更新时间
     */
    @TableField("UPDATED_TIME")
    private Date updatedTime;

    /**
     * 事项类型 事项类型
     */
    @TableField("MATTER_TYPE")
    private String matterType;

    /**
     * 状态 0，正常；1，删除
     */
    @TableField("STATUS")
    private String status;

    /**
     * 事项内容 事项内容
     */
    @TableField("MATTER_CONTENT")
    private String matterContent;

    /**
     * 事项创建人所在的组
     */
    @TableField("Group_Name")
    private String groupName;
}
