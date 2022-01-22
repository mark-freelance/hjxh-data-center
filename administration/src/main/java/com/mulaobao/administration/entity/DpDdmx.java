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
@TableName("Dp_ddmx")
public class DpDdmx extends Model<DpDdmx> {

    private String id;
    @TableField("Shop_bh")
    private String shopBh;
    @TableField("Goods_name")
    private String goodsName;
    @TableField("Sh_ddh")
    private String shDdh;
    @TableField("Dd_zt")
    private String ddZt;
    @TableField("Goods_zj")
    private Double goodsZj;
    @TableField("Dpyh_zk")
    private Double dpyhZk;
    @TableField("Ptyh_zk")
    private Double ptyhZk;
    @TableField("Yhsf_je")
    private Double yhsfJe;
    @TableField("Sjss_je")
    private Double sjssJe;
    @TableField("Goods_sl")
    private Integer goodsSl;
    @TableField("Fh_datetime")
    private Date fhDatetime;
    @TableField("Sf_datetime")
    private Date sfDatetime;
    @TableField("Goods_id")
    private String goodsId;
    @TableField("Goods_gg")
    private String goodsGg;
    @TableField("Ys_id")
    private String ysId;
    @TableField("Sh_zt")
    private String shZt;
    @TableField("Kd_dh")
    private String kdDh;
    @TableField("Kd_gs")
    private String kdGs;
    @TableField("Cj_datetime")
    private Date cjDatetime;
    @TableField("Sf_fq")
    private String sfFq;
    @TableField("Fq_qs")
    private String fqQs;
    @TableField("Sxf_cdf")
    private String sxfCdf;
    @TableField("Sxf_rate")
    private String sxfRate;


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

