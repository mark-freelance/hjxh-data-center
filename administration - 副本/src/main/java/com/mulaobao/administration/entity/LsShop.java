package com.mulaobao.administration.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * (LsShop)表实体类
 *
 * @author makejava
 * @since 2021-09-16 17:41:12
 */
@SuppressWarnings("serial")
@Data
@TableName("LS_Shop")
public class LsShop extends Model<LsShop> {

    private String id;
    @TableField("PlatForm_bh")
    private String platformBh;
    @TableField("Shop_bh")
    private String shopBh;
    @TableField("Shop_name")
    private String shopName;
    @TableField("Date_time")
    private Date dateTime;
    @TableField("state")
    private String state;
@TableField("Shop_lx2")
private String shoplx2;
    @TableField("Shop_lx3")
    private String shoplx3;
    @TableField("XG_datetime")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
    private Date xgdateTime;

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

