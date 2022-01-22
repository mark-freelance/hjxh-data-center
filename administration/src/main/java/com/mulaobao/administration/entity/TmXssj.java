package com.mulaobao.administration.entity;

import java.util.Date;

import com.alibaba.excel.annotation.ExcelProperty;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import java.io.Serializable;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

/**
 * (TmXssj)表实体类
 *
 * @author makejava
 * @since 2021-09-16 17:43:39
 */
@SuppressWarnings("serial")
@Data
@TableName("TM_Xssj")
public class TmXssj extends BaseMongoEntity{
    
    private String id;

    @TableField("Date_time")
    @ExcelProperty(index =0 )
    @JsonFormat(pattern = "yyyy-MM-dd",timezone="GMT+8")
    private Date dateTime;// 时间

    @TableField("Refund_je")
    private Double refundJe; //成功退货退款金额
    @TableField(exist = false)
    @ExcelProperty(index = 1)
    private String refundJe1;

    @TableField("Payment_je")
    private Double paymentJe;//支付金额
    @TableField(exist = false)
    @ExcelProperty(index = 2)
    private String paymentJe1;

    @TableField("Paymentfq_je")
    @ExcelProperty(index = 3)
    private Double paymentfqJe;//


    @TableField("Payment_num")
    private Double paymentNum;//支付件数
    @ExcelProperty(index =4 )
    @TableField(exist = false)
    private String paymentNum1;

    @TableField("Peoadd_num")
    private Double peoaddNum;//商品加购人数
    @TableField(exist = false)
    @ExcelProperty(index = 5)
    private String peoaddNum1;

    @TableField("Commadd_num")
    private Double commaddNum;//商品加购件数
    @TableField(exist = false)
    @ExcelProperty(index = 6)
    private String commaddNum1;

    @TableField("Product_views")
    private Double productViews;//商品浏览量
    @TableField(exist = false)
    @ExcelProperty(index = 7)
    private String productViews1;

    @TableField("Visitor_num")
    private Double visitorNum;//商品访客数
    @TableField(exist = false)
    @ExcelProperty(index = 8)
    private String visitorNum1;

    @TableField("Detvis_num")
    private Double detvisNum;//商品微详情访客数
    @TableField(exist = false)
    @ExcelProperty(index =9 )
    private String detvisNum1;

    @TableField("Commcoll_num")
    private Double commcollNum;//商品收藏人数
    @TableField(exist = false)
    @ExcelProperty(index =10 )
    private String commcollNum1;

    @TableField("Stop_duration")
    @ExcelProperty(index = 11)
    private Double stopDuration; //


    @TableField("Plaorder_num")
    private Double plaorderNum;//下单买家数
    @TableField(exist = false)
    @ExcelProperty(index = 12)
    private String plaorderNum1;

    @TableField("Paybuy_num")
    private Double paybuyNum;//支付买家数
    @TableField(exist = false)
    @ExcelProperty(index = 13)
    private String paybuyNum1;

    @TableField("Plaorder_rate")
    private Double plaorderRate;
    @TableField(exist = false)
    @ExcelProperty(index = 14)
    private String plaorderRate1;

    @TableField("Jumpout_rate")
    private Double jumpoutRate;
    @TableField(exist = false)
    @ExcelProperty(index = 15)
    private String jumpoutRate1;

    @TableField("Plaorder_je")
    private Double plaorderJe;//下单金额
    @TableField(exist = false)
    @ExcelProperty(index = 16)
    private String plaorderJe1;

    @TableField("Coll_rate")
    private Double collRate;
    @TableField(exist = false)
    @ExcelProperty(index = 17)
    private String collRate1;

    @TableField("Addpur_rate")
    private Double addpurRate;
    @TableField(exist = false)
    @ExcelProperty(index = 18)
    private String addpurRate1;

    @TableField("Payold_num")
    private Double payoldNum;//支付老买家数
    @TableField(exist = false)
    @ExcelProperty(index = 19)
    private String payoldNum1;


    @TableField("Payold_je")
    private Double payoldJe;//老买家支付金额
    @TableField(exist = false)
    @ExcelProperty(index = 20)
    private String payoldJe1;

    @TableField("Payment_rate")
    private Double paymentRate;
    @TableField(exist = false)
    @ExcelProperty(index = 21)
    private String paymentRate1;

    @TableField("Paynew_num")
    private Double paynewNum;//支付新买家数
    @TableField(exist = false)
    @ExcelProperty(index =22 )
    private String paynewNum1;

    @TableField("Paycomm_num")
    @ExcelProperty(index =23 )
    private Double paycommNum;//

    @TableField("Lowsing_num")
    private Double lowsingNum;//下单件数
    @TableField(exist = false)
    @ExcelProperty(index =24 )
    private String lowsingNum1;

    @TableField("Visit_num")
    @ExcelProperty(index = 25)
    private Double visitNum;//
    @TableField("CustomerPrice")
    @ExcelProperty(index =26 )
    private Double customerprice; //


    /**
     * 获取主键值
     *
     * @return 主键值
     */

    protected Serializable pkVal() {
        return this.id;
    }
    }

