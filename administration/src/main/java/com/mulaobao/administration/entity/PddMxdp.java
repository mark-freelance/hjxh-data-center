package com.mulaobao.administration.entity;

import java.util.Date;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import java.io.Serializable;
import lombok.Data;

/**
 * (PddMxdp)表实体类
 *
 * @author makejava
 * @since 2021-12-02 15:44:06
 */
@SuppressWarnings("serial")
@Data
@TableName("PDD_Mxdp")
public class PddMxdp extends Model<PddMxdp> {

    private String id;

    @TableField("PlatForm_bh")
    private String platformBh;
    @TableField("Shop_bh")
    private String shopBh;
    @TableField("Date_time")
    private Date dateTime;
    @TableField("Promotion_plan")
    private String promotionPlan;
    @TableField("Channel_lx")
    private String channellx;
    @TableField("State")
    private String state;
    @TableField("Tran_je")
    private Double ysRxe;
    @TableField("Exposure")
    private Double exposure;
    @TableField("Hits")
    private Double hits;
    @TableField("Hits_rate")
    private Double hitsRate;
    @TableField("Spend")
    private Double spend;
    @TableField("Input_output_ratio")
    private Double inputOutputRatio;
    @TableField("Tran_cost")
    private Double tranCost;
    @TableField("Num_tran")
    private Double numTran;
    @TableField("Click_cost")
    private Double clickCost;
    @TableField("Click_rate")
    private Double clickRate;
    @TableField("Aturnover")
    private Double aturnover;
    @TableField("Exposure_cost")
    private Double exposureCost;
    @TableField("Num_concerns")
    private Double numConcerns;
    @TableField("Num_collection")
    private Double numCollection;


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

