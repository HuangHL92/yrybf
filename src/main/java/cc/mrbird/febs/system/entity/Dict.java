package cc.mrbird.febs.system.entity;


import lombok.Data;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

/**
 *  Entity
 *
 * @author tongrok
 * @date 2020-02-15 10:34:18
 */
@Data
@TableName("t_dict")
public class Dict {

    /**
     * 字典ID
     */
    @TableId(value = "DICT_ID", type = IdType.AUTO)
    private Long dictId;

    /**
     * 字典名称
     */
    @TableField("DICT_NAME")
    private String dictName;
    /**
     * 键
     */
    @TableField("KEYY")
    private Long keyy;

    /**
     * 值
     */
    @TableField("VALUEE")
    private String valuee;

    /**
     * 表名
     */
    @TableField("TABLE_NAME")
    private String tableName;

    /**
     * 字段名称
     */
    @TableField("FIELD_NAME")
    private String fieldName;


}
