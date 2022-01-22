package com.mulaobao.administration.entity;

import java.util.Date;

import com.alibaba.excel.annotation.ExcelProperty;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import java.io.Serializable;
import lombok.Data;

/**
 * (TmTktg)表实体类
 *
 * @author makejava
 * @since 2021-09-16 17:43:26
 */
@SuppressWarnings("serial")
@Data
@TableName("TM_Tktg")
public class TmTktg extends BaseMongoEntity {
    
    private String id;
    
    @TableField("Plan_name")
    @ExcelProperty(index = 0)
    private String planName;
    @TableField("Hits_num")
    @ExcelProperty(index = 1)
    private Double hitsNum;
    @TableField("Fk_bs")
    @ExcelProperty(index = 2)
    private Double fkBs;
    @TableField("Fk_je")
    @ExcelProperty(index = 3)
    private Double fkJe;
    @TableField("Sh_bs")
    @ExcelProperty(index = 4)
    private Double shBs;
    @TableField("Sh_je")
    @ExcelProperty(index = 5)
    private Double shJe;
    @TableField("Comm_rate")

    private Double commRate;
    @ExcelProperty(index = 6)
    @TableField(exist = false)
    private String commRate1;
    @TableField("Service_rate")
    private Double serviceRate;
    @ExcelProperty(index = 7)
    @TableField(exist = false)
    private String serviceRate1;
    @TableField("Zc_je")
    @ExcelProperty(index = 8)
    private Double zcJe;



    /**
     * 获取主键值
     *
     * @return 主键值
     */

    protected Serializable pkVal() {
        return this.id;
    }
    }

