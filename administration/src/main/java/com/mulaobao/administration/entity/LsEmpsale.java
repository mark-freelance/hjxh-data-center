package com.mulaobao.administration.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import java.io.Serializable;
import lombok.Data;

/**
 * (LsEmpsale)表实体类
 *
 * @author makejava
 * @since 2021-10-19 15:20:02
 */
@SuppressWarnings("serial")
@Data
@TableName("LS_EmpSale")
public class LsEmpsale extends Model<LsEmpsale> {
    
    private String id;

    @TableField("Person_bh")
    private String personBh;
    @TableField("Shop_bh")
    private String shopBh;
    @TableField("Jx_datetime")
    private String jxDatetime;


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

