package com.mulaobao.administration.entity;

import java.util.Date;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import java.io.Serializable;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

/**
 * (LsSale)表实体类
 *
 * @author makejava
 * @since 2021-09-22 16:36:03
 */
@SuppressWarnings("serial")
@Data
@TableName("LS_Sale")
public class LsSale extends Model<LsSale> {

    private String id;

    @TableField("Platform_bh")
    private String platformBh;
    @TableField("Shop_bh")
    private String shopBh;
    @TableField("Date_time")
    @JsonFormat(pattern = "yyyy-MM-dd",timezone="GMT+8")
    private Date dateTime;
    @TableField(exist = false)
    private String dateTime1;
    @TableField("Sales")
    private Double sales;

    @TableField("OrderQuantity")
    private Double orderquantity;
    @TableField("Num_Buyers")
    private Double numBuyers;
    @TableField("RefundAmount")
    private Double refundamount;
    @TableField("RefundRate")
    private Double refundrate;
    @TableField(exist = false)
    private String refundrate1;  //退款率
    @TableField("ActualSales")
    private Double actualsales;
    @TableField("PaymentRate")
    private Double paymentrate;
    @TableField(exist = false)
    private String paymentrate1; //支付转化率
    @TableField("CustomerPrice")
    private Double customerprice;
    @TableField("TotalTraffic")
    private Double totaltraffic;
    @TableField("FreeTraffic")
    private Double freetraffic;
    @TableField("FreeTrafficzb")
    private Double freetrafficzb;
    @TableField(exist = false)
    private String freetrafficzb1; //免费流量占比
    @TableField("MoreSearchll")
    private Double moresearchll;
    @TableField("ManyScenesll")
    private Double manyscenesll;
    @TableField("RestAssuredPushll")
    private Double restassuredpushll;
    @TableField("TaokePromotionll")
    private Double taokepromotionll;
    @TableField("AIPromotionll")
    private Double aipromotionll;
    @TableField("Pinxiaobaoll")
    private Double pinxiaobaoll;
    @TableField("PromotionFlow")
    private Double promotionflow;
    @TableField("PromotionFlowzb")
    private Double promotionflowzb;
    @TableField(exist = false)
    private String promotionflowzb1;//推广流量占比
    @TableField("MoreSearchfy")
    private Double moresearchfy;
    @TableField("ManyScenesfy")
    private Double manyscenesfy;
    @TableField("RestAssuredPushfy")
    private Double restassuredpushfy;
    @TableField("TaokePromotionfy")
    private Double taokepromotionfy;
    @TableField("AIPromotionfy")
    private Double aipromotionfy;
    @TableField("Pinxiaobaofy")
    private Double pinxiaobaofy;
    @TableField("PromotionCost")
    private Double promotioncost;
    @TableField("PromotionCostzb")
    private Double promotioncostzb;
    @TableField(exist = false)
    private String promotioncostzb1; //推广费用占比
    @TableField("PlatformBuckle")
    private Double platformbuckle;
    @TableField("OtherExpenses")
    private Double otherexpenses;
    @TableField("TotalCost")
    private Double totalcost;
    @TableField("CostRatio")
    private Double costratio;
    @TableField(exist = false)
    private String costratio1; //费销比
    @TableField(exist = false)
    private String name;
    @TableField("Xg_datetime")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
    private Date xgdatetime;
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

