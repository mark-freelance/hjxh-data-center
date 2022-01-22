package com.mulaobao.administration.entity;

import java.util.Date;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import java.io.Serializable;
import lombok.Data;

/**
 * (TtXssj)表实体类
 *
 * @author makejava
 * @since 2021-09-16 17:44:06
 */
@SuppressWarnings("serial")
@Data
public class TtXssj extends Model<TtXssj> {
    
    private String id;
    
    private String orderBh;
    
    private String platformBh;
    
    private String shopBh;
    
    private String channelLx;
    
    private String warehouse;
    
    private String warehouseLx;
    
    private String originalDh;
    
    private String orderState;
    
    private String deliverState;
    
    private String platformState;
    
    private String orderLx;
    
    private String deliverCondition;
    
    private String freezingReason;
    
    private String refundState;
    
    private String distributionLx;
    
    private String distributorName;
    
    private Date xdDatetime;
    
    private Date fkDatetime;
    
    private String buyerAccount;
    
    private String customerName;
    
    private String addressee;
    
    private String city1;
    
    private String city2;
    
    private String city3;
    
    private String address;
    
    private String phone;
    
    private String telephone;
    
    private String zipCode;
    
    private String region;
    
    private String sqAddress;
    
    private Date psDatetime;
    
    private String logisticsCompany;
    
    private String logisticsNo;
    
    private String buyerMessage;
    
    private String kfRemarks;
    
    private String flag;
    
    private String printNotes;
    
    private Double numTypegoods;
    
    private Double numTotalgoods;
    
    private Double totalGoods;
    
    private Double postage;
    
    private Double otherExpenses;
    
    private Double discount;
    
    private Double yyMoney;
    
    private Double outputTax;
    
    private Double fhMoney;
    
    private Double codMoney;
    
    private Double codCost;
    
    private Double commission;
    
    private String goodsCost;
    
    private String yzCost;
    
    private Double yfMoney;
    
    private Double ygWeight;
    
    private String ygProfit;
    
    private String invoiceLx;
    
    private String invoiceHeader;
    
    private String invoiceContent;
    
    private String salesman;
    
    private String reviewer;
    
    private String financialAudit;
    
    private String checkedOutby;
    
    private String deliveryNo;
    
    private String tagName;
    
    private Double handleDays;
    
    private String orderSource;
    
    private String merchantCode;
    
    private Double numOriginalgoods;
    
    private Double numOriginalspecies;
    
    private Date djDatetime;
    
    private String currency;
    
    private Double numSplit;
    
    private Date jhDatetime;
    
    private String invoiced;
    
    private Double volume;
    
    private String certificatesHm;


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

