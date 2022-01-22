package com.mulaobao.administration.entity;

import java.util.Date;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import java.io.Serializable;
import lombok.Data;

/**
 * (JdJdkc)表实体类
 *
 * @author makejava
 * @since 2021-09-16 17:40:36
 */
@SuppressWarnings("serial")
@Data
@TableName("JD_Jdkc")
public class JdJdkc extends BaseMongoEntity {
    
    private String id;

    @TableField("Promotion_plan")
    private String promotionPlan;
    @TableField("Plan_id")
    private String planId;
    @TableField("State")
    private String state;
    @TableField("Promotion_eq")
    private String promotionEq;
    @TableField("Plan_lx")
    private String planLx;
    @TableField("Pre_kssj")
    private String preKssj;
    @TableField("Pre_jssj")
    private String preJssj;
    @TableField("Time_inter")
    private String timeInter;
    @TableField("Dis_coeff")
    private Double disCoeff;
    @TableField("Budget_day")
    private Double budgetDay;
    @TableField("Toshow_num")
    private Double toshowNum;
    @TableField("Hits_num")
    private Double hitsNum;
    @TableField("Hits_rate")
    private Double hitsRate;
    @TableField("Total_cost")
    private Double totalCost;
    @TableField("Toshow_spend")
    private Double toshowSpend;
    @TableField("Hits_spend")
    private Double hitsSpend;
    @TableField("Direct_ddh")
    private Double directDdh;
    @TableField("Direct_ddje")
    private Double directDdje;
    @TableField("Indirect_ddh")
    private Double indirectDdh;
    @TableField("Indirect_ddje")
    private Double indirectDdje;
    @TableField("Total_ddh")
    private Double totalDdh;
    @TableField("Total_ddje")
    private Double totalDdje;
    @TableField("Presale_ddh")
    private Double presaleDdh;
    @TableField("Presale_ddje")
    private Double presaleDdje;
    @TableField("Direct_addnum")
    private Double directAddnum;
    @TableField("Indirect_addnum")
    private Double indirectAddnum;
    @TableField("Total_addnum")
    private Double totalAddnum;
    @TableField("Con_rate")
    private Double conRate;
    @TableField("Roi")
    private Double roi;
    @TableField("Cpa")
    private Double cpa;


    /**
     * 获取主键值
     *
     * @return 主键值
     */
    protected Serializable pkVal() {
        return this.id;
    }
    }

