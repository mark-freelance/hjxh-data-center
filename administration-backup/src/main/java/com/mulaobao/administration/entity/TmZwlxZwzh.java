package com.mulaobao.administration.entity;

import java.util.Date;

import com.alibaba.excel.annotation.ExcelProperty;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import java.io.Serializable;
import lombok.Data;

/**
 * (TmZwlxZwzh)表实体类
 *
 * @author makejava
 * @since 2022-01-12 10:48:05
 */
@SuppressWarnings("serial")
@Data
@TableName("TM_Zwlx_zwzh")
public class TmZwlxZwzh extends Model<TmZwlxZwzh> {

    private String id;
    //入账时间
    @TableField("Rz_sj")
    private Date rzSj;

    //账务类型
    @TableField("Zw_lx")
    private String zwLx;
    //收入金额
    @TableField("Sr_je")
    private Double srJe;

    //支出金额
    @TableField("Zc_je")
    private Double zcJe;

    //商品名称
    @TableField("Goods_name")
    private String goodsName;
    //备注
    @TableField("Bz")
    private String bz;
    //业务基础订单号
    @TableField("Ywjc_ddh")
    private String ywjcDdh;
    //数据导入数据
    @TableField("Date_time")
    private Date dateTime;
    @TableField("Shop_bh")
    private String shopBh;

    @TableField("FileName")
    private String fileName;  //

    @TableField(exist = false)
    @ExcelProperty(index = 0)
    private String a1;
    @TableField(exist = false)
    @ExcelProperty(index = 1)
    private String a2;
    @TableField(exist = false)
    @ExcelProperty(index = 2)
    private String a3;
    @TableField(exist = false)
    @ExcelProperty(index = 3)
    private String a4;
    @TableField(exist = false)
    @ExcelProperty(index = 4)
    private String a5;
    @TableField(exist = false)
    @ExcelProperty(index = 5)
    private String a6;
    @TableField(exist = false)
    @ExcelProperty(index = 6)
    private String a7;
    @TableField(exist = false)
    @ExcelProperty(index = 7)
    private String a8;
    @TableField(exist = false)
    @ExcelProperty(index = 8)
    private String a9;
    @TableField(exist = false)
    @ExcelProperty(index = 9)
    private String a10;
    @TableField(exist = false)
    @ExcelProperty(index = 10)
    private String a11;
    @TableField(exist = false)
    @ExcelProperty(index = 11)
    private String a12;
    @TableField(exist = false)
    @ExcelProperty(index = 12)
    private String a13;
    @TableField(exist = false)
    @ExcelProperty(index = 13)
    private String a14;
    @TableField(exist = false)
    @ExcelProperty(index = 14)
    private String a15;
    @TableField(exist = false)
    @ExcelProperty(index = 15)
    private String a16;
    @TableField(exist = false)
    @ExcelProperty(index =16)
    private String a17;
    @TableField(exist = false)
    @ExcelProperty(index = 17)
    private String a18;
    @TableField(exist = false)
    @ExcelProperty(index = 18)
    private String a19;
    @TableField(exist = false)
    @ExcelProperty(index = 19)
    private String a20;
    @TableField(exist = false)
    @ExcelProperty(index = 20)
    private String a21;
    @TableField(exist = false)
    @ExcelProperty(index = 21)
    private String a22;


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

