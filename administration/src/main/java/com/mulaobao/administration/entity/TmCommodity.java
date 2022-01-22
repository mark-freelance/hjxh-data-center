package com.mulaobao.administration.entity;

import java.util.Date;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import java.io.Serializable;
import lombok.Data;

/**
 * (TmCommodity)表实体类
 *
 * @author makejava
 * @since 2021-12-09 16:11:31
 */
@SuppressWarnings("serial")
@Data
@TableName("TM_Commodity")
public class TmCommodity extends Model<TmCommodity> {

    private String id;
    @TableField("Shop_bh")
    private String shopBh;
    @TableField("Date_time")
    private Date dateTime;
    @TableField("Comm_id")
    private String commId;
    @TableField("Comm_name")
    private String commName;
    @TableField("Goods_bh")
    private String goodsBh;
    @TableField("Comm_state")
    private String commState;
    @TableField("Comm_label")
    private String commLabel;
    @TableField("Comm_visitor")
    private Double commVisitor;
    @TableField("Comm_browse")
    private Double commBrowse;
    @TableField("Stop_time")
    private Double stopTime;
    @TableField("Page_outrate")
    private Double pageOutrate;
    @TableField("Num_commcoll")
    private Double numCommcoll;
    @TableField("Num_commpiece")
    private Double numCommpiece;
    @TableField("Num_commpeo")
    private Double numCommpeo;
    @TableField("Num_xdbuyers")
    private Double numXdbuyers;
    @TableField("Num_xdpiece")
    private Double numXdpiece;
    @TableField("Xd_je")
    private Double xdJe;
    @TableField("Xd_rate")
    private Double xdRate;
    @TableField("Num_buyers")
    private Double numBuyers;
    @TableField("Num_zfpiece")
    private Double numZfpiece;
    @TableField("Zf_je")
    private Double zfJe;
    @TableField("Zf_rate")
    private Double zfRate;
    @TableField("Num_buyersnew")
    private Double numBuyersnew;
    @TableField("Num_buyersold")
    private Double numBuyersold;
    @TableField("Zf_jeold")
    private Double zfJeold;
    @TableField("Zf_polyje")
    private Double zfPolyje;
    @TableField("Visit_value")
    private Double visitValue;
    @TableField("RefundAmount")
    private Double refundamount;
    @TableField("Compe_pf")
    private String compePf;
    @TableField("Year_zfje")
    private Double yearZfje;
    @TableField("Month_zfje")
    private Double monthZfje;
    @TableField("Month_zfpiece")
    private Double monthZfpiece;
    @TableField("Search_rate")
    private Double searchRate;
    @TableField("Num_Seavis")
    private Double numSeavis;

    @TableField("Num_Seabuyers")
    private Double numSeabuyers;


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

