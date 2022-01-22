package com.mulaobao.administration.entity;

import java.util.Date;

import com.alibaba.excel.annotation.ExcelProperty;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import java.io.Serializable;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * (PddCjtg)表实体类
 *
 * @author makejava
 * @since 2021-09-16 17:42:01
 */
@SuppressWarnings("serial")
@Data
@TableName("PDD_Cjtg")
public class PddCjtg extends BaseMongoEntity {
    
    private String id;
    

    @TableField("Promotion_plan")
    @ExcelProperty(index = 0)
    private String promotionPlan; //推广计划
    @TableField("State")
    @ExcelProperty(index = 1)
    private String state; //状态
    @TableField("Promotion_unit")
    @ExcelProperty(index = 2)
    private String promotionUnit; //推广单元
    @TableField("Exposure")
    @ExcelProperty(index = 3)
    private Double exposure; //曝光量
    @TableField("Hits")
    @ExcelProperty(index = 4)
    private Double hits;//点击量
    @TableField("Hits_rate")
    private Double hitsRate;//点击率
    @ExcelProperty(index = 5)
    @TableField(exist = false)
    private String hitsRate1;
    @TableField("Spend")
    @ExcelProperty(index = 6)
    private Double spend;//花费(元)
    @TableField("Input_output_ratio")
    @ExcelProperty(index = 7)
    private Double inputOutputRatio;//投入产出比
    @TableField("Tran_cost")
    @ExcelProperty(index = 8)
    private Double tranCost;//每笔成交花费（元）
    @TableField("Num_tran")
    @ExcelProperty(index = 9)
    private Double numTran;//成交笔数
    @TableField("Tran_amount")
    @ExcelProperty(index = 10)
    private Double tranAmount;//每笔成交金额
    @TableField("Click_cost")
    @ExcelProperty(index = 11)
    private Double clickCost;//平均点击花费（元）
    @TableField("Click_rate")
    private Double clickRate;//点击转化率
    @ExcelProperty(index = 12)
    @TableField(exist = false)
    private String clickRate1;
    @TableField("Aturnover")
    @ExcelProperty(index = 13)
    private Double aturnover;//交易额（元）
    @TableField("Exposure_cost")
    @ExcelProperty(index = 14)
    private Double exposureCost;//千次曝光花费（元）
    @TableField("Num_concerns")
    @ExcelProperty(index = 15)
    private Double numConcerns;//店铺关注数
    @TableField("Num_collection")
    @ExcelProperty(index = 16)
    private Double numCollection;//商品收藏数

    @TableField("goodsName")
    private String goodsName;
    /**
     * 获取主键值
     *
     * @return 主键值
     */

    protected Serializable pkVal() {
        return this.id;
    }
    }

