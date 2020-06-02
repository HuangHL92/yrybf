package cc.mrbird.febs.group.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.AllArgsConstructor;
import lombok.Data;

import java.io.Serializable;

/**
 * 帮扶小组关系表  Entity
 *
 * @author tongrok
 * @date 2020-02-20 17:36:41
 */
@Data
@TableName("t_gpa_map")
@AllArgsConstructor
public class GpaMap implements Serializable {

    /**
     * 帮扶人员id
     */
    @TableField("persona_id")
    private Long personaId;

    /**
     * 帮扶小组id
     */
    @TableField("groupa_id")
    private Long groupaId;

    /**
     * 是否组长 0 否 1是
     */
    @TableField("groupa_type")
    private String groupaType;

}
