package com.mulaobao.administration.entity;

import java.util.Date;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import java.io.Serializable;
import lombok.Data;

/**
 * (LsProductlx)表实体类
 *
 * @author makejava
 * @since 2021-11-27 14:38:02
 */
@SuppressWarnings("serial")
@Data
@TableName("LS_Productlx")
public class LsProductlx extends Model<LsProductlx> {

    private String id;

    @TableField("Lx_bh")
    private String lxBh;
    @TableField("Lx_name")
    private String lxName;
    @TableField("F_bh")
    private String fBh;
    @TableField("F_bh2")
    private String fBh2;
    @TableField("Date_time")
    private Date dateTime;
    @TableField(exist = false)
    private String shopbh;
    /**
     * 获取主键值
     *
     * @return 主键值
     */
    @Override
    protected Serializable pkVal() {
        return this.id;
    }
    }

