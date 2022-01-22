package com.mulaobao.administration.entity;

import com.alibaba.excel.annotation.ExcelProperty;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import java.io.Serializable;
import lombok.Data;

/**
 * (KdWdtzd)表实体类
 *
 * @author makejava
 * @since 2022-01-07 17:39:22
 */
@SuppressWarnings("serial")
@Data
@TableName("Kd_wdtzd")
public class KdWdtzd extends Model<KdWdtzd> {

    private String id;
    //物流快递
    @TableField("Kd_Name")
    private String kdName;
    //数据时间
    @TableField("Date_time")
    private String dateTime;
    //物流单号
    @TableField("Wl_dh")
    @ExcelProperty("物流单号")
    private String wlDh;
    //实际重量
    @TableField("Sj_zl")
    private Double sjZl;
    @TableField(exist = false)
    @ExcelProperty(value = "实际重量")
    private String sjZl2;
    //省
    @TableField("Province")
    @ExcelProperty(value = "收货地区")
    private String province;
    //市
    @TableField("City")
    private String city;
    //县
    @TableField("County")
    private String county;


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

