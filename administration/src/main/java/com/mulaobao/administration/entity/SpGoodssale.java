package com.mulaobao.administration.entity;

import java.util.Date;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import java.io.Serializable;
import lombok.Data;

/**
 * (SpGoodssale)表实体类
 *
 * @author makejava
 * @since 2021-11-05 18:28:11
 */
@SuppressWarnings("serial")
@Data
@TableName("SP_Goodssale")
public class SpGoodssale extends Model<SpGoodssale> {
    
    private String id;

    @TableField("Date_time")
    private Date dateTime;
    @TableField("Shop_bh")
    private String shopBh;
    @TableField("Goods_bh")
    private String goodsBh;
    @TableField("Goods_name")
    private String goodsName;
    @TableField("Num_sale")
    private Double numSale;


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

