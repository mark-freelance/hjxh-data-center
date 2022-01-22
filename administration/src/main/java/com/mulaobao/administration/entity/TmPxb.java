package com.mulaobao.administration.entity;

import java.util.Date;

import com.alibaba.excel.annotation.ExcelProperty;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import java.io.Serializable;
import lombok.Data;

/**
 * (TmPxb)表实体类
 *
 * @author makejava
 * @since 2021-09-16 17:43:16
 */
@SuppressWarnings("serial")
@Data
@TableName("TM_Pxb")
public class TmPxb extends BaseMongoEntity {
    
    private String id;

    @TableField("Date_time")
    @ExcelProperty(index = 0)
    private Date dateTime;// 时间
    @TableField("Search_num")
    @ExcelProperty(index = 1)
    private Double searchNum;
    @TableField("Seavis_num")
    @ExcelProperty(index = 2)
    private Double seavisNum;
    @TableField("VisTouch_rate")
    @ExcelProperty(index = 3)
    private Double vistouchRate;
    @TableField("Toshow_num")
    @ExcelProperty(index = 4)
    private Double toshowNum;
    @TableField("Flow_exposure")
    @ExcelProperty(index = 5)
    private Double flowExposure;
    @TableField("Consume")
    @ExcelProperty(index = 6)
    private Double consume;
    @TableField("VisTouch_num")
    @ExcelProperty(index = 7)
    private Double vistouchNum;
    @TableField("Toshow_cost")
    @ExcelProperty(index = 8)
    private Double toshowCost;
    @TableField("Hits_Price")
    @ExcelProperty(index = 9)
    private Double hitsPrice;
    @TableField("Juhits_Price")
    @ExcelProperty(index = 10)
    private Double juhitsPrice;
    @TableField("Hits_num")
    @ExcelProperty(index = 11)
    private Double hitsNum;
    @TableField("Juhits_num")
    @ExcelProperty(index = 12)
    private Double juhitsNum;
    @TableField("Vishits_num")
    @ExcelProperty(index = 13)
    private Double vishitsNum;
    @TableField("Inthits_num")
    @ExcelProperty(index = 14)
    private Double inthitsNum;
    @TableField("Hits_rate")
    @ExcelProperty(index = 15)
    private Double hitsRate;
    @TableField("Juhits_rate")
    @ExcelProperty(index = 16)
    private Double juhitsRate;
    @TableField("Store_num")
    @ExcelProperty(index = 17)
    private Double storeNum;
    @TableField("Collshop_num")
    @ExcelProperty(index = 18)
    private Double collshopNum;
    @TableField("Collbaby_num")
    @ExcelProperty(index = 19)
    private Double collbabyNum;
    @TableField("Addbaby_num")
    @ExcelProperty(index = 20)
    private Double addbabyNum;
    @TableField("Getvis_num")
    @ExcelProperty(index = 21)
    private Double getvisNum;
    @TableField("Shopvis_num")
    @ExcelProperty(index = 22)
    private Double shopvisNum;
    @TableField("Babyvis_num")
    @ExcelProperty(index = 23)
    private Double babyvisNum;
    @TableField("Addbyvis_num")
    @ExcelProperty(index = 24)
    private Double addbyvisNum;
    @TableField("Deal_num")
    @ExcelProperty(index = 25)
    private Double dealNum;
    @TableField("Deal_je")
    @ExcelProperty(index = 26)
    private Double dealJe;
    @TableField("Return_rate")
    @ExcelProperty(index = 27)
    private Double returnRate;
    @TableField("Conver_rate")
    @ExcelProperty(index = 28)
    private Double converRate;
    @TableField("Flowexp_num")
    @ExcelProperty(index = 29)
    private Double flowexpNum;
    @TableField("Presale_cjbs")
    @ExcelProperty(index = 30)
    private Double presaleCjbs;
    @TableField("Presale_cjje")
    @ExcelProperty(index = 31)
    private Double presaleCjje;
    @TableField("Dealvis_num")
    @ExcelProperty(index = 32)
    private Double dealvisNum;
    @TableField("Seastore_rate")
    @ExcelProperty(index = 33)
    private Double seastoreRate;
    @TableField("Getstore_rate")
    @ExcelProperty(index = 34)
    private Double getstoreRate;
    @TableField("Getdeal_rate")
    @ExcelProperty(index = 35)
    private Double getdealRate;


    /**
     * 获取主键值
     *
     * @return 主键值
     */

    protected Serializable pkVal() {
        return this.id;
    }
    }

