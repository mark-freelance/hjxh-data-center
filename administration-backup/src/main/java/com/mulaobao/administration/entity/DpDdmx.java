package com.mulaobao.administration.entity;

import java.util.Date;

import com.alibaba.excel.annotation.ExcelProperty;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import java.io.Serializable;
import lombok.Data;

/**
 * (DpDdmx)表实体类
 *
 * @author makejava
 * @since 2021-12-12 18:12:03
 */
@SuppressWarnings("serial")
@Data
@TableName("Zwlx_Ddmx")
public class DpDdmx extends Model<DpDdmx> {

    private String id;
    @TableField("Shop_bh")
    private String shopBh;
    @TableField("Sh_ddh")
    @ExcelProperty("订单号")
    private String shDdh;
    @TableField("Dd_zt")
    @ExcelProperty("订单状态")
    private String ddZt;
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

