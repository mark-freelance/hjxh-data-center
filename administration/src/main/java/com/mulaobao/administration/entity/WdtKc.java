package com.mulaobao.administration.entity;

import java.util.Date;

import com.alibaba.excel.annotation.ExcelProperty;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import java.io.Serializable;
import lombok.Data;

/**
 * (WdtKc)表实体类
 *
 * @author makejava
 * @since 2021-12-22 10:13:25
 */
@SuppressWarnings("serial")
@Data
@TableName("Wdt_kc")
public class WdtKc extends Model<WdtKc> {

    private String id;
    @TableField("Date_time")
    private Date dateTime;
    @TableField("Sj_bm")
    @ExcelProperty(index = 0)
    private String sjBm;
    @ExcelProperty(index = 1)
    @TableField("Goods_bh")
    private String goodsBh;
    @ExcelProperty(index = 2)
    @TableField("Goods_name")
    private String goodsName;
    @ExcelProperty(index = 3)
    @TableField("Goods_jc")
    private String goodsJc;
    @ExcelProperty(index = 5)
    @TableField("Gg_name")
    private String ggName;
    @ExcelProperty(index = 6)
    @TableField("Lx")
    private String lx;
    @ExcelProperty(index = 7)
    @TableField("brand")
    private String brand;
    @ExcelProperty(index = 8)
    @TableField("Qq_kc")
    private Double qqKc;
    @ExcelProperty(index = 9)
    @TableField("Qc_cost")
    private Double qcCost;
    @ExcelProperty(index = 10)
    @TableField("Qc_ze")
    private Double qcZe;
    @ExcelProperty(index = 11)
    @TableField("Qm_kc")
    private Double qmKc;
    @ExcelProperty(index = 12)
    @TableField("Warehouse")
    private String warehouse;
    @ExcelProperty(index = 13)
    @TableField("Qm_cost")
    private Double qmCost;
    @ExcelProperty(index = 14)
    @TableField("Qm_ze")
    private Double qmZe;
    @ExcelProperty(index = 15)
    @TableField("Pj_kc")
    private Double pjKc;
    @ExcelProperty(index = 16)
    @TableField("Kc_rate")
    private Double kcRate;
    @ExcelProperty(index = 17)
    @TableField("Ck_num")
    private Double ckNum;


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

