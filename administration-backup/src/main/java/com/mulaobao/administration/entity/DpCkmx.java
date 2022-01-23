package com.mulaobao.administration.entity;

import java.util.Date;

import com.alibaba.excel.annotation.ExcelProperty;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import java.io.Serializable;
import lombok.Data;

/**
 * (DpXsck)表实体类
 *
 * @author makejava
 * @since 2021-12-28 17:45:08
 */
@SuppressWarnings("serial")
@Data
@TableName("Zwlx_Ckmx")
public class DpCkmx extends Model<DpCkmx> {

    private String id;
    @TableField("Ys_dh")
    @ExcelProperty("子单原始单号")
    private String ysDh;
    @TableField("Shop_bh")
    private String shopBh;
    @TableField("Tk_je")
    private Double tkJe;
    @TableField(exist = false)
    @ExcelProperty("退款前支付金额")
    private String tkJe2;
    @TableField("Fs_datetime")
    @ExcelProperty("发货时间")
    private Date fsDatetime;
    @TableField(exist = false)
    @ExcelProperty("发货时间")
    private String fsDatetime2;
    @TableField("Date_time")
    private Date dateTime;
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

