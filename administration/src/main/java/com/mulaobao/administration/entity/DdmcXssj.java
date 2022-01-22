package com.mulaobao.administration.entity;

import java.util.Date;

import com.alibaba.excel.annotation.ExcelProperty;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import java.io.Serializable;
import lombok.Data;

/**
 * (DdmcXssj)表实体类
 *
 * @author makejava
 * @since 2021-09-18 18:32:41
 */
@SuppressWarnings("serial")
@Data
@TableName("DDMC_Xssj")
public class DdmcXssj extends BaseMongoEntity {
    
    private String id;
    @TableField("Comm_id")
    @ExcelProperty(index = 0)
    private String commId;
    @TableField("Comm_name")
    @ExcelProperty(index = 1)
    private String commName;
    @TableField("Sale_speci")
    @ExcelProperty(index = 2)
    private String saleSpeci;
    @TableField("Warehouse_id")
    @ExcelProperty(index = 3)
    private String warehouseId;
    @TableField("Warehouse")
    @ExcelProperty(index = 4)
    private String warehouse;
    @TableField("Bus_offer")
    @ExcelProperty(index = 5)
    private Double busOffer;
    @TableField("Comm_num")
    @ExcelProperty(index = 6)
    private Double commNum;


    /**
     * 获取主键值
     *
     * @return 主键值
     */
    protected Serializable pkVal() {
        return this.id;
    }
    }

