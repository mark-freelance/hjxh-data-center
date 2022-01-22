package com.mulaobao.administration.entity;

import java.util.Date;

import com.alibaba.excel.annotation.ExcelProperty;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import java.io.Serializable;
import lombok.Data;

/**
 * (WdtCk)表实体类
 *
 * @author makejava
 * @since 2021-12-22 10:12:59
 */
@SuppressWarnings("serial")
@Data
@TableName("Dx_kc")
public class WdtCk extends Model<WdtCk> {

    private String id;
    @TableField("Date_time")
    private Date dateTime;
    @ExcelProperty(index = 0)
    @TableField("Sj_bm")
    private String sjBm;
    @ExcelProperty(index = 1)
    @TableField("Goods_bh")
    private String goodsBh;
    @ExcelProperty(index = 2)
    @TableField("Goods_name")
    private String goodsName;
    @ExcelProperty(index = 3)
    @TableField("Gg_name")
    private String ggName;
    @ExcelProperty(index = 5)
    @TableField("goods_lx")
    private String goodsLx;
    @ExcelProperty(index =6 )
    @TableField("num")
    private Double num;
    @ExcelProperty(index = 7)
    @TableField("total")
    private Double total;
    @TableField("cost")
    @ExcelProperty(index = 8)
    private Double cost;


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

