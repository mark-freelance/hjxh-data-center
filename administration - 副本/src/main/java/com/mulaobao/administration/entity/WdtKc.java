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
@TableName("Dx_kc")
public class WdtKc extends Model<WdtKc> {

    private String id;
    @TableField("Date_time")
    private Date dateTime;  //
    @TableField("Goods_bh")
    @ExcelProperty(index = 0)
    private String goodsBh;  //
    @TableField("Goods_name")
    @ExcelProperty(index = 1)
    private String goodsName; //
    @TableField("Lx")
    @ExcelProperty(index = 2)
    private String lx;  //
    @TableField("Qm_kc")
    @ExcelProperty(index = 3)
    private Double qmKc; //
    @TableField("Warehouse")
    @ExcelProperty(index = 4)
    private String warehouse;  //

    @TableField("FileName")
    private String fileName;  //

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

