package com.mulaobao.administration.entity;

import java.util.Date;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import java.io.Serializable;
import lombok.Data;

/**
 * (PddCommodity)表实体类
 *
 * @author makejava
 * @since 2021-10-29 16:32:55
 */
@SuppressWarnings("serial")
@Data
@TableName("PDD_Commodity")
public class PddCommodity extends Model<PddCommodity> {
    
    private String goods_id;
    @TableField("Shop_bh")
    private String shopBh;

    @TableField("date_time")
    private Date dateTime;
    
    private String goods_name;
    
    private Double goods_uv;

    private String id;

    private Double goods_pv;
    
    private Double pay_qty;
    
    private Double pay_usr_cnt;
    
    private Double pay_ordr_cnt;
    
    private Double pay_ordr_amt;

    }

