package com.mulaobao.administration.entity;

import java.util.Date;

import com.alibaba.excel.annotation.ExcelIgnore;
import com.alibaba.excel.annotation.ExcelProperty;
import com.alibaba.excel.annotation.format.DateTimeFormat;
import com.alibaba.excel.annotation.write.style.ColumnWidth;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import java.io.Serializable;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

/**
 * (LsFilename)表实体类
 *
 * @author makejava
 * @since 2022-01-10 14:04:18
 */
@SuppressWarnings("serial")
@Data
@TableName("LS_FileName")
public class LsFilename extends Model<LsFilename> {


    @TableField("File_name")
    @ExcelProperty(value = "文件名称")
    @ColumnWidth(50)
    private String fileName;
    //数据导入时间
    @TableField("Date_time")
    @ExcelProperty(value = "导入时间")
    @ColumnWidth(30)
    @DateTimeFormat("yyyy-MM-dd")
    @JsonFormat(pattern = "yyyy-MM-dd",timezone="GMT+8")
    private Date dateTime;
    @ExcelIgnore
    @TableField(exist = false)
    private String [] daTa;

    //类型：1动销，2账务类型
    @TableField("Lx")
    @ExcelIgnore
    private String lx;
    @ExcelIgnore
    private String id;
    //文件名称
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

