package com.mulaobao.administration.entity;

import java.util.Date;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import java.io.Serializable;
import lombok.Data;

/**
 * (JdCommodity)表实体类
 *
 * @author makejava
 * @since 2021-12-31 11:01:49
 */
@SuppressWarnings("serial")
@Data
@TableName("JD_Commodity")
public class JdCommodity extends Model<JdCommodity> {
    //主键
    private String id;
    //店铺编号
    @TableField("Shop_bh")
    private String shopBh;
    //商品ID
    @TableField("product_id")
    private String productId;
    //商品名称
    @TableField("product_name")
    private String productName;
    //货号
    @TableField("huoHao")
    private Double huoHao;
    //访客数
    @TableField("page_view")
    private Double pageView;
    //浏览量
    @TableField("purchased")
    private Integer purchased;
    //加购商品件数
    @TableField("number_purchase")
    private Integer numberPurchase;
    //加购人数
    @TableField("items_purchased")
    private Integer itemsPurchased;
    //成交客户数
    @TableField("Number_customers")
    private Integer numberCustomers;
    //成交单量
    @TableField("amount_single")
    private Integer amountSingle;
    //成交商品件数
    @TableField("items_traded")
    private Integer itemsTraded;
    //成交金额
    @TableField("trading_volume")
    private Double tradingVolume;
    //成交转化率
    @TableField("Turnover_rate")
    private Double turnoverRate;
    //时间
    @TableField("date_time")
    private Date dateTime;
    //默认时间
    @TableField("default_time")
    private Date defaultTime;


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

