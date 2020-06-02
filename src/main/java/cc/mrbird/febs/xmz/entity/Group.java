package cc.mrbird.febs.xmz.entity;

import java.io.Serializable;

import com.wuwenze.poi.annotation.ExcelField;
import lombok.Data;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

/**
 * 项目组信息  Entity
 *
 * @author tongrok
 * @date 2020-05-30 18:35:20
 */
@Data
@TableName("t_group")
public class Group implements Serializable {

    /**
     * 项目组ID
     */
    @TableId(value = "group_id", type = IdType.UUID)
    private Long groupId;

    /**
     * 项目组名称
     */
    @TableField("group_name")
    private String groupName;

    /**
     * 项目组备注
     */
    @TableField("group_remark")
    private String groupRemark;


    /**
     * 项目组负责人
     */
    @TableField(exist = false)
    private String groupLeader;

    @TableField(exist = false)
    private String groupLeaderName;

    @TableField(exist = false)
    private String groupMembers;

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
