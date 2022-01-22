package com.mulaobao.administration.entity;

import java.util.Date;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import java.io.Serializable;
import lombok.Data;

/**
 * (SpGoodslx)表实体类
 *
 * @author makejava
 * @since 2021-11-05 18:28:23
 */
@SuppressWarnings("serial")
@Data
@TableName("SP_Goodslx")
public class SpGoodslx extends Model<SpGoodslx> {
    
    private String id;

    @TableField("Lx_bh")
    private String lxBh;
    @TableField("Lx_name")
    private String lxName;
    @TableField("date_time")
    private Date dateTime;


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

