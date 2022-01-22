package com.mulaobao.administration.entity;

import java.util.Date;

import com.alibaba.excel.annotation.ExcelProperty;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import java.io.Serializable;
import lombok.Data;

/**
 * (TmCjtg)表实体类
 *
 * @author makejava
 * @since 2021-09-16 17:42:55
 */
@SuppressWarnings("serial")
@Data
@TableName("TM_Cjtj")
public class TmCjtg extends BaseMongoEntity {
    
    private String id;
    

    @TableField("Promotion_plan")
    @ExcelProperty(index = 1)
    private String promotionPlan;
    @TableField("Promotion_unit")
    @ExcelProperty(index = 2)
    private String promotionUnit;
    @ExcelProperty(index = 3)
    @TableField("Toshow")
    private Double toshow;
    @ExcelProperty(index = 4)
    @TableField("Hits_num")
    private Double hitsNum;
    @ExcelProperty(index = 5)
    @TableField("Toshow_cost")
    private Double toshowCost;
    @TableField("Consume")
    @ExcelProperty(index = 6)
    private Double consume;
    @TableField("Hits_Price")
    @ExcelProperty(index = 7)
    private Double hitsPrice;
    @TableField("Order_num")
    @ExcelProperty(index = 8)
    private Double orderNum;
    @TableField("Presale_je")
    @ExcelProperty(index = 9)
    private Double presaleJe;
    @TableField("Hits_rate")
    @ExcelProperty(index = 10)
    private Double hitsRate;
    @TableField("Guide_num")
    @ExcelProperty(index = 11)
    private Double guideNum;
    @TableField("Guide_rate")
    @ExcelProperty(index = 12)
    private Double guideRate;
    @TableField("Guidedentry_num")
    @ExcelProperty(index = 13)
    private Double guidedentryNum;
    @TableField("Guidedqk_num")
    @ExcelProperty(index = 14)
    private Double guidedqkNum;
    @TableField("Guidedqkzb_num")
    @ExcelProperty(index = 15)
    private Double guidedqkzbNum;
    @TableField("Deepentry_num")
    @ExcelProperty(index = 16)
    private Double deepentryNum;
    @TableField("Duration")
    @ExcelProperty(index = 17)
    private Double duration;
    @TableField("Pages_num")
    @ExcelProperty(index = 18)
    private Double pagesNum;
    @TableField("Coll_shop")
    @ExcelProperty(index = 19)
    private Double collShop;
    @TableField("Follow_shop")
    @ExcelProperty(index = 20)
    private Double followShop;
    @TableField("New_guest")
    @ExcelProperty(index = 21)
    private Double newGuest;
    @TableField("Newguest_rate")
    @ExcelProperty(index = 22)
    private Double newguestRate;
    @TableField("New_cost")
    @ExcelProperty(index = 23)
    private Double newCost;
    @TableField("New_consume")
    @ExcelProperty(index = 24)
    private Double newConsume;
    @TableField("Coll_baby")
    @ExcelProperty(index = 25)
    private Double collBaby;
    @TableField("Shopping_num")
    @ExcelProperty(index = 26)
    private Double shoppingNum;
    @TableField("Coupon_num")
    @ExcelProperty(index = 27)
    private Double couponNum;
    @TableField("Ww_zxl")
    @ExcelProperty(index = 28)
    private Double wwZxl;
    @TableField("Orderpx_num")
    @ExcelProperty(index = 29)
    private Double orderpxNum;
    @TableField("Orderpx_je")
    @ExcelProperty(index = 30)
    private Double orderpxJe;
    @TableField("Ordercj_num")
    @ExcelProperty(index = 31)
    private Double ordercjNum;
    @TableField("Ordercj_je")
    @ExcelProperty(index = 32)
    private Double ordercjJe;
    @TableField("Toshow_rate")
    @ExcelProperty(index = 33)
    private Double toshowRate;
    @TableField("Click_rate")
    @ExcelProperty(index = 34)
    private Double clickRate;
    @TableField("Return_rate")
    @ExcelProperty(index = 35)
    private Double returnRate;


    /**
     * 获取主键值
     *
     * @return 主键值
     */

    protected Serializable pkVal() {
        return this.id;
    }
    }

