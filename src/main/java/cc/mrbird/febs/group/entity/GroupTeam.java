package cc.mrbird.febs.group.entity;

import java.io.Serializable;

import com.wuwenze.poi.annotation.ExcelField;
import lombok.Data;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

/**
 * 团组  Entity
 *
 * @author tongrok
 * @date 2020-02-20 13:54:06
 */
@Data
@TableName("t_group_team")
public class GroupTeam implements Serializable {

    /**
     * 所在团主键
     */
    @TableId(value = "team_id", type = IdType.AUTO)
    private Long teamId;

    /**
     * 所在团名字
     */
    @TableField("team_name")
    private String teamName;

    /**
     * 团长ID
     */
    @TableField("team_leader")
    private String teamLeader;

    /**
     * 帮扶小组ids
     */
    @TableField(exist = false)
    private String teamMembers;

    @TableField(exist = false)
    private String teamLeaderName;

    /**
     * 小组数
     */
    @TableField(exist=false)
    @ExcelField(value = "小组数")
    private String teamMemberCount;


    @TableField(exist = false)
    private String[] teamMemberIds;


}
