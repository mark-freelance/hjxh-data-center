package com.mulaobao.administration.entity;

import com.alibaba.excel.annotation.ExcelProperty;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import java.io.Serializable;
import lombok.Data;

/**
 * (MtXssj)表实体类
 *
 * @author makejava
 * @since 2021-09-16 17:41:50
 */
@SuppressWarnings("serial")
@Data
@TableName("MT_Xssj")
public class MtXssj  {
    
    private String id;


    @TableField("PlatForm_bh")
    private String platformBh;//平台BH
    @TableField("Shop_bh")
    private String shopBh;//店铺BH
    @TableField("Channel_lx")
    private String channelLx;//搜索推广

    @TableField("Js_datetime")
    @ExcelProperty(index = 0)
    private String jsDatetime;
    @TableField("Xs_datetime")
    @ExcelProperty(index =1 )
    private String xsDatetime;
    @TableField("Comm_skuId")
    @ExcelProperty(index = 2)
    private String commSkuid;
    @TableField("Comm_name")
    @ExcelProperty(index =3 )
    private String commName;
    @TableField("Dis_mode")
    @ExcelProperty(index =4 )
    private String disMode;
    @TableField("Pre_sale")
    @ExcelProperty(index = 5)
    private String preSale;
    @TableField("Category")
    @ExcelProperty(index = 6)
    private String category;
    @TableField("Order_city")
    @ExcelProperty(index = 7)
    private String orderCity;
    @TableField("Deliveryc")
    @ExcelProperty(index = 8)
    private String deliveryc;
    @TableField("Sale_num")
    @ExcelProperty(index = 9)
    private Double saleNum;
    @TableField("Sett_dj")
    @ExcelProperty(index =10 )
    private Double settDj;
    @TableField("Cost_je")
    @ExcelProperty(index = 11)
    private Double costJe;
    @TableField("Loan_je")
    @ExcelProperty(index = 12)
    private Double loanJe;
    @TableField("Cur_state")
    @ExcelProperty(index = 13)
    private String curState;
    @TableField("sett_dh")
    @ExcelProperty(index =14 )
    private String settDh;
    @TableField("Payment")
    @ExcelProperty(index =15 )
    private String payment;
    @TableField("Download")
    @ExcelProperty(index = 16)
    private String download;


    /**
     * 获取主键值
     *
     * @return 主键值
     */

    protected Serializable pkVal() {
        return this.id;
    }
    }

