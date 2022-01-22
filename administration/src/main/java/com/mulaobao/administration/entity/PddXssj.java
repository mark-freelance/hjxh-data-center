package com.mulaobao.administration.entity;

import java.util.Date;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import java.io.Serializable;
import lombok.Data;

/**
 * (PddXssj)表实体类
 *
 * @author makejava
 * @since 2021-09-16 17:42:30
 */
@SuppressWarnings("serial")
@Data
@TableName("")
public class PddXssj extends Model<PddXssj> {
    
    private String id;

    @TableField("Order_bh")
    private String orderBh;

    @TableField("Warehouse")
    
    private String warehouse;
    @TableField("Warehouse_lx")
    private String warehouseLx;
    @TableField("Original_dh")
    private String originalDh;
    @TableField("Order_state")
    private String orderState;
    @TableField("Deliver_state")
    private String deliverState;
    @TableField("PlatForm_state")
    private String platformState;
    @TableField("Order_lx")
    private String orderLx;
    @TableField("Deliver_condition")
    private String deliverCondition;
    @TableField("Freezing_reason")
    private String freezingReason;
    @TableField("Refund_state")
    private String refundState;
    @TableField("Distribution_lx")
    private String distributionLx;
    @TableField("Distributor_name")
    private String distributorName;
    @TableField("Xd_datetime")
    private Date xdDatetime;
    @TableField("Fk_datetime")
    private Date fkDatetime;
    @TableField("Buyer_account")
    private String buyerAccount;
    @TableField("Customer_name")
    private String customerName;
    @TableField("Addressee")
    private String addressee;
    @TableField("city1")
    private String city1;
    @TableField("city2")
    private String city2;
    @TableField("city3")
    private String city3;
    @TableField("Address")
    private String address;
    @TableField("Phone")
    private String phone;
    @TableField("Telephone")
    private String telephone;
    @TableField("Zip_code")
    private String zipCode;
    @TableField("Region")
    private String region;
    @TableField("Sq_Address")
    private String sqAddress;
    @TableField("Ps_datetime")
    private Date psDatetime;
    @TableField("Logistics_company")
    private String logisticsCompany;
    @TableField("Logistics_No")
    private String logisticsNo;
    @TableField("Buyer_message")
    private String buyerMessage;
    @TableField("Kf_remarks")
    private String kfRemarks;
    @TableField("Flag")
    private String flag;
    @TableField("Print_notes")
    private String printNotes;
    @TableField("Num_typegoods")
    private Double numTypegoods;
    @TableField("Num_totalgoods")
    private Double numTotalgoods;
    @TableField("Total_goods")
    private Double totalGoods;
    @TableField("Postage")
    private Double postage;
    @TableField("Other_expenses")
    private Double otherExpenses;
    @TableField("Discount")
    private Double discount;
    @TableField("Yy_money")
    private Double yyMoney;
    @TableField("Output_tax")
    private Double outputTax;
    @TableField("Fh_money")
    private Double fhMoney;
    @TableField("Cod_money")
    private Double codMoney;
    @TableField("Cod_cost")
    private Double codCost;
    @TableField("Commission")
    private Double commission;
    @TableField("Goods_cost")
    private String goodsCost;
    @TableField("Yz_cost")
    private String yzCost;
    @TableField("Yf_money")
    private Double yfMoney;
    @TableField("Yg_weight")
    private Double ygWeight;
    @TableField("Yg_profit")
    private String ygProfit;
    @TableField("Invoice_lx")
    private String invoiceLx;
    @TableField("Invoice_header")
    private String invoiceHeader;
    @TableField("Invoice_content")
    private String invoiceContent;
    @TableField("Salesman")
    private String salesman;
    @TableField("Reviewer")
    private String reviewer;
    @TableField("Financial_audit")
    private String financialAudit;
    @TableField("Checked_outby")
    private String checkedOutby;
    @TableField("Delivery_no")
    private String deliveryNo;
    @TableField("Tag_name")
    private String tagName;
    @TableField("Handle_days")
    private Double handleDays;
    @TableField("Order_source")
    private String orderSource;
    @TableField("Merchant_code")
    private String merchantCode;
    @TableField("Num_Originalgoods")
    private Double numOriginalgoods;
    @TableField("Num_Originalspecies")
    private Double numOriginalspecies;
    @TableField("Dj_datetime")
    private Date djDatetime;
    @TableField("Currency")
    private String currency;
    @TableField("Num_split")
    private Double numSplit;
    @TableField("Jh_datetime")
    private Date jhDatetime;
    @TableField("Invoiced")
    private String invoiced;
    @TableField("Volume")
    private Double volume;
    @TableField("Certificates_hm")
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

