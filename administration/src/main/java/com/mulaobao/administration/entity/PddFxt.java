package com.mulaobao.administration.entity;

import java.util.Date;

import com.alibaba.excel.annotation.ExcelProperty;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import java.io.Serializable;
import lombok.Data;

/**
 * (PddFxt)表实体类
 *
 * @author makejava
 * @since 2021-09-23 10:37:46
 */
@SuppressWarnings("serial")
@Data
@TableName("PDD_Fxt")
public class PddFxt extends BaseMongoEntity {
    
    private String id;

    @ExcelProperty(index =0 )
    @TableField("Comm_name")
    private String commName;
    @TableField("Comm_id")
    @ExcelProperty(index =1 )
    private String commId;
    @TableField("Exposure")
    @ExcelProperty(index = 2)
    private Double exposure;
    @TableField("Num_tran")
    @ExcelProperty(index = 3)
    private Double numTran;
    @TableField("Aturnover")
    @ExcelProperty(index = 4)
    private Double aturnover;
    @TableField("Spend")
    @ExcelProperty(index =5 )
    private Double spend;
    @TableField("Input_output_ratio")
    @ExcelProperty(index =6 )
    private Double inputOutputRatio;


    /**
     * 获取主键值
     *
     * @return 主键值
     */
    protected Serializable pkVal() {
        return this.id;
    }
    }

