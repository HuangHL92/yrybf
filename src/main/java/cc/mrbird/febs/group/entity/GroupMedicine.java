package cc.mrbird.febs.group.entity;

import java.io.Serializable;

import com.wuwenze.poi.annotation.ExcelField;
import lombok.Data;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

import javax.validation.constraints.NotBlank;

/**
 * 医疗分组信息  Entity
 *
 * @author tongrok
 * @date 2020-02-15 23:58:39
 */
@Data
@TableName("t_group_medicine")
public class GroupMedicine implements Serializable {

    private static final long serialVersionUID = -1L;

    /**
     * 分组ID
     */
    @TableId(value = "group_id", type = IdType.AUTO)
    private Long groupId;

    /**
     * 分组名称
     */
    @TableField("group_name")
    @NotBlank(message = "{required}")
    private String groupName;


    @TableField("group_members")
    private String groupMembers;

    /**
     * 分组备注
     */
    @TableField("group_remark")
    private String groupRemark;
    /**
     * 小组成员数
     */
    @TableField(exist=false)
    @ExcelField(value = "小组成员数")
    private String groupMemberCount;

    @ExcelField(value = "小组成员")
    @TableField(exist = false)
    private String groupMemberName;


    @TableField(exist = false)
    private String[] groupMemberIds;

}
