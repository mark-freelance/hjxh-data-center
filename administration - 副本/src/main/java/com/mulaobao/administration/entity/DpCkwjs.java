package com.mulaobao.administration.entity;

import java.util.Date;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import java.io.Serializable;
import lombok.Data;

/**
 * (DpCkwjs)表实体类
 *
 * @author makejava
 * @since 2022-01-04 16:02:54
 */
@SuppressWarnings("serial")
@Data
@TableName("Dp_Ckwjs")
public class DpCkwjs extends Model<DpCkwjs> {

    private String id;
    //店铺编号
    @TableField("Shop_bh")
    private String shopBh;
    //子单原始单号
    @TableField("Ys_dh")
    private String ysDh;
    //退款前支付金额
    @TableField("Tk_je")
    private Double tkJe;
    //发货时间
    @TableField("Fs_datetime")
    private Date fsDatetime;


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

