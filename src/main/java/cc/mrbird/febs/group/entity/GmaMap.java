package cc.mrbird.febs.group.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.AllArgsConstructor;
import lombok.Data;

import java.io.Serializable;

/**
 * 医务帮扶小组关系表  Entity
 *
 * @author tongrok
 * @date 2020-02-21 22:06:48
 */
@Data
@TableName("t_gma_map")
@AllArgsConstructor
public class GmaMap implements Serializable {

    /**
     * 医疗小组id
     */
    @TableField("groupm_id")
    private Long groupmId;

    /**
     * 帮扶小组id
     */
    @TableField("groupa_id")
    private Long groupaId;

}
