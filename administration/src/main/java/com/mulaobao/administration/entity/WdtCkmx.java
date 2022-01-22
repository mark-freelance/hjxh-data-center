package com.mulaobao.administration.entity;

import java.util.Date;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import java.io.Serializable;
import lombok.Data;

/**
 * (WdtCkmx)表实体类
 *
 * @author makejava
 * @since 2021-12-26 17:49:31
 */
@SuppressWarnings("serial")
@Data
public class WdtCkmx extends Model<WdtCkmx> {

    private String id;
    //出库单号
    @TableField("Ck_dh")
    private String ckDh;
    //仓库
    @TableField("Warehouse")
    private String warehouse;
    //经办人
    @TableField("Person")
    private String person;
    //原单号
    @TableField("Y_dh")
    private String yDh;
    //物流单号
    @TableField("Wl_dh")
    private String wlDh;
    //商家编码
    @TableField("Sj_bm")
    private String sjBm;
    //货品编号
    @TableField("Goods_bm")
    private String goodsBm;
    //货品名称
    @TableField("Goods_name")
    private String goodsName;
    //品牌
    @TableField("Brand")
    private String brand;
    //数量
    @TableField("Num")
    private Double num;
    //出库货位
    @TableField("Ck_hw")
    private String ckHw;
    //单价
    @TableField("Price")
    private Double price;
    //合计金额
    @TableField("Hj_je")
    private Double hjJe;
    //成本价
    @TableField("Cost_price")
    private Double costPrice;
    //成本总额
    @TableField("Cost")
    private Double cost;
    //出库时间
    @TableField("Ck_datetime")
    private Date ckDatetime;
    //数据时间
    @TableField("Date_time")
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

