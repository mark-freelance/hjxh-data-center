package com.mulaobao.administration.entity;

import java.util.Date;

import com.alibaba.excel.annotation.ExcelProperty;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import java.io.Serializable;
import lombok.Data;

/**
 * (MgjXssj)表实体类
 *
 * @author makejava
 * @since 2021-09-16 17:41:38
 */
@SuppressWarnings("serial")
@Data
@TableName("MGJ_Xssj")
public class MgjXssj extends BaseMongoEntity {
    
    private String id;
    
@TableField("ZBMC")
@ExcelProperty(index = 0)
    private String zbmc;
    @TableField("DQSJ")
    @ExcelProperty(index = 1)
    private Double dqsj;
    @TableField("HB")
    @ExcelProperty(index = 2)
    private Double hb;
    @TableField("HYJZ")
    @ExcelProperty(index = 3)
    private Double hyjz;
    @TableField("GAP")
    @ExcelProperty(index = 4)
    private Double gap;


    /**
     * 获取主键值
     *
     * @return 主键值
     */
    protected Serializable pkVal() {
        return this.id;
    }
    }

