package com.mulaobao.administration.entity;

import java.util.Date;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import java.io.Serializable;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

/**
 * (SpGoodscost)表实体类
 *
 * @author makejava
 * @since 2021-11-05 18:28:36
 */
@SuppressWarnings("serial")
@Data
@TableName("SP_GoodsCost")
public class SpGoodscost extends Model<SpGoodscost> {
    
    private String id;

    @TableField("Goods_bh")
    private String goodsBh;
    @TableField("Lx_bh")
    private String lxBh;
    @TableField("Goods_cost")
    private Double goodsCost;
    @TableField("Goods_name")
    private String goodsName;
    @TableField("state")
    private char state;
    @TableField("Ks_datetime")
    @JsonFormat(pattern = "yyyy-MM-dd ",timezone="GMT+8")
    private Date ksDatetime;
    @TableField("Js_datetime")
    @JsonFormat(pattern = "yyyy-MM-dd",timezone="GMT+8")
    private Date jsDatetime;
    @TableField(exist = false)
    private String accoun;
    @TableField(exist = false)
    private String goodlx;

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

