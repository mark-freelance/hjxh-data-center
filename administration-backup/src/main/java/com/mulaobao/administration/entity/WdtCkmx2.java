package com.mulaobao.administration.entity;

import com.alibaba.excel.annotation.ExcelProperty;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import lombok.Data;

/**
 * (WdtCkmx)表实体类
 *
 * @author makejava
 * @since 2021-12-27 13:56:38
 */
@SuppressWarnings("serial")
@Data
public class WdtCkmx2 extends Model<WdtCkmx2> {


    //出库单号
    @ExcelProperty(index =0 )
    private String ckDh;
    //仓库
    @ExcelProperty(index = 1)
    private String warehouse;
    //经办人
    @ExcelProperty(index =2 )
    private String person;
    //原单号
    @ExcelProperty(index =4 )
    private String ysDh;
    //物流单号
    @ExcelProperty(index =6 )
    private String wlDh;
    //商家编码
    @ExcelProperty(index =7 )
    private String sjBm;
    //货品编号
    @ExcelProperty(index = 9)
    private String goodsBm;
    //货品名称
    @ExcelProperty(index =10 )
    private String goodsName;
    //品牌
    @ExcelProperty(index =12 )
    private String brand;
    //数量
    @ExcelProperty(index = 14)
    private Double num;
    //单价
    @ExcelProperty(index = 18)
    private Double price;
    //合计金额
    @ExcelProperty(index = 19)
    private Double hjJe;
    //成本价
    @ExcelProperty(index =20 )
    private Double costPrice;
    //成本总额
    @ExcelProperty(index =21 )
    private Double cost;
    //出库时间
    @ExcelProperty(index = 24)
    private String ckDatetime;

    }

