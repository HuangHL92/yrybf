package cc.mrbird.febs.xmz.entity;

import java.io.Serializable;

import lombok.Data;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

/**
 * 项目组关系表  Entity
 *
 * @author tongrok
 * @date 2020-05-30 18:35:44
 */
@Data
@TableName("t_user_group")
public class UserGroup implements Serializable {

    /**
     * 用户ID
     */
    @TableField("USER_ID")
    private Long userId;

    /**
     * 项目组ID
     */
    @TableField("GROUP_ID")
    private Long groupId;

    /**
     * 是否项目组负责人
     */
    @TableField("GROUP_TYPE")
    private String groupType;

    public UserGroup ( Long userId, Long groupId, String groupType ) {
        this.userId = userId;
        this.groupId = groupId;
        this.groupType = groupType;
    }
}
