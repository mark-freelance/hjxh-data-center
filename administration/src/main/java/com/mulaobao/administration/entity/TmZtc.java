package com.mulaobao.administration.entity;

import java.util.Date;

import com.alibaba.excel.annotation.ExcelProperty;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import java.io.Serializable;
import lombok.Data;

/**
 * (TmZtc)表实体类
 *
 * @author makejava
 * @since 2021-09-16 17:43:52
 */
@SuppressWarnings("serial")
@Data
@TableName("TM_Ztc")
public class TmZtc extends BaseMongoEntity {
    
    private String id;
    

    @TableField("Channel_lx2")
    @ExcelProperty(index = 0)
    private String channelLx2;
    @TableField("Plan_id")
    @ExcelProperty(index =1 )
    private String planId;
    @TableField("Plan_name")
    @ExcelProperty(index = 2)
    private String planName;
    @TableField("Unit_id")
    @ExcelProperty(index =3 )
    private String unitId;
    @TableField("Unit_name")
    @ExcelProperty(index = 4)
    private String unitName;
    @TableField("Shop_id")
    @ExcelProperty(index =5 )
    private String shopId;
    @TableField("Toshow_num")
    @ExcelProperty(index = 6)
    private Double toshowNum;
    @TableField("Hits_num")
    @ExcelProperty(index = 7)
    private Double hitsNum;
    @TableField("Spend")
    @ExcelProperty(index = 8)
    private Double spend;
    @TableField("Hits_rate")
    @ExcelProperty(index = 9)
    private Double hitsRate;
    @TableField("Hits_spend")
    @ExcelProperty(index = 10)
    private Double hitsSpend;
    @TableField("Toshow_spend")
    @ExcelProperty(index = 11)
    private Double toshowSpend;
    @TableField("Coll_num")
    @ExcelProperty(index = 12)
    private Double collNum;
    @TableField("Coll_baby")
    @ExcelProperty(index = 13)
    private Double collBaby;
    @TableField("Coll_shop")
    @ExcelProperty(index =14 )
    private Double collShop;
    @TableField("Shopping_num")
    @ExcelProperty(index = 15)
    private Double shoppingNum;
    @TableField("Shoppingzj_num")
    @ExcelProperty(index =16 )
    private Double shoppingzjNum;
    @TableField("Shoppingjj_num")
    @ExcelProperty(index = 17)
    private Double shoppingjjNum;
    @TableField("Addg_cost")
    @ExcelProperty(index = 18)
    private Double addgCost;
    @TableField("Collbaby_cost")
    @ExcelProperty(index = 19)
    private Double collbabyCost;
    @TableField("Collbaby_rate")
    @ExcelProperty(index = 20)
    private Double collbabyRate;
    @TableField("Addg_rate")
    @ExcelProperty(index =21 )
    private Double addgRate;
    @TableField("Presale_cjje")
    @ExcelProperty(index = 22)
    private Double presaleCjje;
    @TableField("Presale_cjbs")
    @ExcelProperty(index = 23)
    private Double presaleCjbs;
    @TableField("Presale_cjjezj")
    @ExcelProperty(index = 24)
    private Double presaleCjjezj;
    @TableField("Presale_cjbszj")
    @ExcelProperty(index = 25)
    private Double presaleCjbszj;
    @TableField("Presale_cjjejj")
    @ExcelProperty(index = 26)
    private Double presaleCjjejj;
    @TableField("Presale_cjbsjj")
    @ExcelProperty(index = 27)
    private Double presaleCjbsjj;
    @TableField("Tran_je")
    @ExcelProperty(index = 28)
    private Double tranJe;
    @TableField("Tran_jezj")
    @ExcelProperty(index =29 )
    private Double tranJezj;
    @TableField("Tran_jejj")
    @ExcelProperty(index =30 )
    private Double tranJejj;
    @TableField("Tran_num")
    @ExcelProperty(index =31 )
    private Double tranNum;
    @TableField("Tranzj_num")
    @ExcelProperty(index = 32)
    private Double tranzjNum;
    @TableField("Tranjj_num")
    @ExcelProperty(index =33 )
    private Double tranjjNum;
    @TableField("Input_output_ratio")
    @ExcelProperty(index = 34)
    private Double inputOutputRatio;
    @TableField("Click_rate")
    @ExcelProperty(index = 35)
    private Double clickRate;
    @TableField("Click_ratezj")
    @ExcelProperty(index =36 )
    private Double clickRatezj;
    @TableField("Recharge_num")
    @ExcelProperty(index =37 )
    private Double rechargeNum;
    @TableField("Recharge_je")
    @ExcelProperty(index = 38)
    private Double rechargeJe;
    @TableField("Flow_exposure")
    @ExcelProperty(index = 39)
    private Double flowExposure;
    @TableField("Flow_je")
    @ExcelProperty(index = 40)
    private Double flowJe;
    



    /**
     * 获取主键值
     *
     * @return 主键值
     */

    protected Serializable pkVal() {
        return this.id;
    }
    }

