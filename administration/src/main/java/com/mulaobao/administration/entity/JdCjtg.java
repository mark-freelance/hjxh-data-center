package com.mulaobao.administration.entity;

import java.util.Date;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import java.io.Serializable;
import lombok.Data;

/**
 * (JdCjtg)表实体类
 *
 * @author makejava
 * @since 2021-09-16 17:40:04
 */
@SuppressWarnings("serial")
@Data
@TableName("JD_Jst")
public class JdCjtg extends BaseMongoEntity {
    
    private String id; // uuid

    @TableField("Plan_id")
    private String planId;
    @TableField("Plan_name")
    private String planName;
    @TableField("Plan_exist")
    private String planExist;
    @TableField("Budget")
    private Double budget;
    @TableField("Plan_state")
    private String planState;
    @TableField("Plan_kssj")
    private Date planKssj;
    @TableField("Plan_jssj")
    private String planJssj;
    @TableField("Mark_rio")
    private String markRio;
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
    @TableField("Roi")
    private Double roi;
    @TableField("Con_rate")
    private Double conRate;


    /**
     * 获取主键值
     *
     * @return 主键值
     */

    protected Serializable pkVal() {
        return this.id;
    }
    }

