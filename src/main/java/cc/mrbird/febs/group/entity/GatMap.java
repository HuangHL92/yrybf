package cc.mrbird.febs.group.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.AllArgsConstructor;
import lombok.Data;

import java.io.Serializable;

/**
 * 帮扶团小组关系表 Entity
 *
 * @author tongrok
 * @date 2020-02-21 07:46:25
 */
@Data
@TableName("t_gat_map")
@AllArgsConstructor
public class GatMap implements Serializable {

    /**
     * 帮扶小组id
     */
    @TableField("groupa_id")
    private Long groupaId;

    /**
     * 团id
     */
    @TableField("team_id")
    private Long teamId;

}
