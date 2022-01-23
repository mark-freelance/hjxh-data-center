package com.mulaobao.administration.entity;

import java.util.Date;

import com.alibaba.excel.annotation.ExcelProperty;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import java.io.Serializable;
import lombok.Data;

/**
 * (WdtCkmx)表实体类
 *
 * @author makejava
 * @since 2021-12-26 17:49:31
 */
@SuppressWarnings("serial")
@Data
@TableName("Dx_ckmx")
public class WdtCkmx extends Model<WdtCkmx> {

    private String id;
    //出库单号
    @TableField("Ck_dh")
    @ExcelProperty("出库单号")
    private String ckDh;
    //仓库
    @TableField("Warehouse")
    @ExcelProperty("仓库")
    private String warehouse;
    //经办人
    @TableField("Person")
    @ExcelProperty("经办人")
    private String person;
    //原单号
    @TableField("Y_dh")
    @ExcelProperty("源单号")
    private String ysDh;
    //物流单号
    @TableField("Wl_dh")
    @ExcelProperty("物流单号")
    private String wlDh;
    //商家编码
    @TableField("Sj_bm")
    @ExcelProperty("商家编码")
    private String sjBm;
    //货品编号
    @TableField("Goods_bm")
    @ExcelProperty("货品编号")
    private String goodsBm;
    //货品名称
    @TableField("Goods_name")
    @ExcelProperty("货品名称")
    private String goodsName;
    //数量
    @TableField("Num")
    @ExcelProperty("数量")
    private Double num;
    //出库时间
    @TableField("Ck_datetime")
    private Date ckDatetime;
    @TableField(exist = false)
    @ExcelProperty("出库时间")
    private String ckdaTetime1;
    //数据时间
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

