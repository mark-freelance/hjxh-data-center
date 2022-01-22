package com.mulaobao.administration.entity;

import java.util.Date;

import com.alibaba.excel.annotation.ExcelProperty;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import java.io.Serializable;
import lombok.Data;

/**
 * (TmAitg)表实体类
 *
 * @author makejava
 * @since 2021-09-16 17:42:44
 */
@SuppressWarnings("serial")
@Data
@TableName("TM_Aitg")
public class TmAitg extends BaseMongoEntity{
    
    private String id;



    @TableField("Date_time")
    @ExcelProperty(index = 0)
    private Date dateTime;// 时间

    @TableField("Optimobj")
    @ExcelProperty(index = 1)
    private String optimobj;
    @TableField("Effect_model")
    @ExcelProperty(index = 2)
    private String effectModel;
    @TableField("Statiber")
    @ExcelProperty(index = 3)
    private String statiber;
    @TableField("Tran_cycle")
    @ExcelProperty(index = 4)
    private String tranCycle;
    @TableField("Consume")
    @ExcelProperty(index = 5)
    private Double consume;
    @TableField("Exposure_num")
    @ExcelProperty(index = 6)
    private Double exposureNum;
    @TableField("Hits_num")
    @ExcelProperty(index = 7)
    private Double hitsNum;
    @TableField("Hits_rate")
    @ExcelProperty(index = 8)
    private Double hitsRate;
    @TableField("Hits_spend")
    @ExcelProperty(index = 9)
    private Double hitsSpend;
    @TableField("Addg_num")
    @ExcelProperty(index = 10)
    private Double addgNum;
    @TableField("Coll_num")
    @ExcelProperty(index = 11)
    private Double collNum;
    @TableField("Addcoll_num")
    @ExcelProperty(index = 12)
    private Double addcollNum;
    @TableField("Addcoll_cost")
    @ExcelProperty(index = 13)
    private Double addcollCost;
    @TableField("Tran_je")
    @ExcelProperty(index = 14)
    private Double tranJe;
    @TableField("Tran_num")
    @ExcelProperty(index = 15)
    private Double tranNum;
    @TableField("Tran_rate")
    @ExcelProperty(index = 16)
    private Double tranRate;
    @TableField("Roi")
    @ExcelProperty(index = 17)
    private Double roi;
    @TableField("Presale_num")
    @ExcelProperty(index = 18)
    private Double presaleNum;
    @TableField("Presale_je")
    @ExcelProperty(index = 19)
    private Double presaleJe;


    /**
     * 获取主键值
     *
     * @return 主键值
     */

    protected Serializable pkVal() {
        return this.id;
    }
    }

