package com.mulaobao.administration.entity;

import java.util.Date;

import com.alibaba.excel.annotation.ExcelProperty;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import java.io.Serializable;
import lombok.Data;

/**
 * (KdYdzd)表实体类
 *
 * @author makejava
 * @since 2022-01-10 09:20:16
 */
@SuppressWarnings("serial")
@Data
@TableName("Kd_ydzd")
public class KdYdzd extends Model<KdYdzd> {

    private String id;
@TableField("Kd_Name")
    private String kdName;
    //运单号
    @TableField("Y_dh")
    @ExcelProperty("运单号")
    private String ydh;
    //账单日期
    @TableField("Zd_rq")
    @ExcelProperty("账单日期")
    private Date zdRq;
    //目的地省
    @TableField("Province")
    @ExcelProperty("目的地省")
    private String province;
    //目的地市
    @TableField("City")
    @ExcelProperty("目的地市")
    private String city;
    //结算重量
    @TableField("Js_zl")
    @ExcelProperty("结算重量")
    private Double jsZl;
    //应收费用
    @TableField("Ys_fy")
    @ExcelProperty("应收费用")
    private Double ysFy;


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

