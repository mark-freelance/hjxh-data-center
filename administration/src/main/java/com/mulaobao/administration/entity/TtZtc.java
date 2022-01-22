package com.mulaobao.administration.entity;

import java.util.Date;

import com.alibaba.excel.annotation.ExcelProperty;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import java.io.Serializable;
import lombok.Data;

/**
 * (TtZtc)表实体类
 *
 * @author makejava
 * @since 2021-09-16 17:44:17
 */
@SuppressWarnings("serial")
@Data
@TableName("TT_Ztc")
public class TtZtc extends BaseMongoEntity {
    
    private String id;

    @TableField("Unit_sc")
    @ExcelProperty(index = 0)
    private String unitSc;
    @TableField("Plan_sc")
    @ExcelProperty(index = 1)
    private String planSc;
    @TableField(exist = false)
    @ExcelProperty(index = 2)
    private String dateTime1;// 时间
    @TableField("Unit_id")
    @ExcelProperty(index = 3)
    private String unitId;
    @TableField("Unit_name")
    @ExcelProperty(index = 4)
    private String unitName;
    @TableField("Plan_id")
    @ExcelProperty(index = 5)
    private String planId;
    @TableField("Plan_name")
    @ExcelProperty(index = 6)
    private String planName;
    @TableField("Toshow_num")
    @ExcelProperty(index = 7)
    private Double toshowNum;
    @TableField("Hits_num")
    @ExcelProperty(index =8 )
    private Double hitsNum;
    @TableField("Spend")
    @ExcelProperty(index = 9)
    private Double spend;
    @TableField("Order_num")
    @ExcelProperty(index =10 )
    private Double orderNum;
    @TableField("Order_je")
    @ExcelProperty(index = 11)
    private Double orderJe;
    @TableField("Hits_rate")
    private Double hitsRate; //点击率
    @TableField(exist = false)
    @ExcelProperty(index = 12)
    private String hitsRate1;
    @TableField("Rate")
    private Double rate; //转化率
    @TableField(exist = false)
    @ExcelProperty(index =13 )
    private String rate1;
    @TableField("Hits_spend")
    @ExcelProperty(index =14 )
    private Double hitsSpend;
    @TableField("Input_output_ratio")
    @ExcelProperty(index = 15)
    private Double inputOutputRatio;


    /**
     * 获取主键值
     *
     * @return 主键值
     */

    protected Serializable pkVal() {
        return this.id;
    }
    }

