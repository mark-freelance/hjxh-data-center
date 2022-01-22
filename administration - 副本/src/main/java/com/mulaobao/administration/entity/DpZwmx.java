package com.mulaobao.administration.entity;

import java.util.Date;

import com.alibaba.excel.annotation.ExcelProperty;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import java.io.Serializable;
import lombok.Data;

/**
 * (DpZwmx)表实体类
 *
 * @author makejava
 * @since 2021-12-13 13:41:49
 */
@SuppressWarnings("serial")
@Data
@TableName("Zwlx_Zwmx")
public class DpZwmx extends Model<DpZwmx> {

    private String id;
    @TableField("Shop_bh")
    private String shopBh;
    @TableField("Sh_ddh")
    @ExcelProperty("商户订单号")
    private String shDdh;
    @TableField("Fs_datetime")
    @ExcelProperty("发生时间")
    private Date fsDatetime;
    @TableField("Sr_je")
    @ExcelProperty("收入金额（+元）")
    private Double srJe;
    @TableField("Zc_je")
    @ExcelProperty("支出金额（-元）")
    private Double zcJe;
    @TableField("Zw_lx")
    @ExcelProperty("账务类型")
    private String zwLx;
    @TableField("Bz")
    @ExcelProperty("备注")
    private String bz;
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

