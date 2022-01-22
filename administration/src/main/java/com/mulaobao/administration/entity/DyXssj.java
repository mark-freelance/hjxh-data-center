package com.mulaobao.administration.entity;

import java.util.Date;

import com.alibaba.excel.annotation.ExcelProperty;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import java.io.Serializable;
import lombok.Data;

/**
 * (DyXssj)表实体类
 *
 * @author makejava
 * @since 2021-09-16 15:04:36
 */
@SuppressWarnings("serial")
@Data
@TableName("DY_Xssj")
public class DyXssj extends BaseMongoEntity {

    private String id;

    @TableField("Commodity_bh")
    @ExcelProperty(index =1 )
    private String commodityBh;
    @TableField("Commodity_name")
    @ExcelProperty(index = 2)
    private String commodityName;
    @TableField("Comm_talent")
    @ExcelProperty(index =3 )
    private Double commTalent;
    @TableField("Tran_je")
    @ExcelProperty(index = 4)
    private Double tranJe;
    @TableField("Tranorder_num")
    @ExcelProperty(index = 5)
    private Double tranorderNum;
    @TableField("Tran_num")
    @ExcelProperty(index = 6)
    private Double tranNum;
    @TableField("Tran_rs")
    @ExcelProperty(index =7 )
    private Double tranRs;
    @TableField("Tran_kdj")
    @ExcelProperty(index = 8)
    private Double tranKdj;
    @TableField("Tran_jetc")
    @ExcelProperty(index = 9)
    private Double tranJetc;
    @TableField("Tran_ddnumtc")
    @ExcelProperty(index = 10)
    private Double tranDdnumtc;
    @TableField("Sjjs_je")
    @ExcelProperty(index = 11)
    private Double sjjsJe;
    @TableField("Sjyj_zc")
    @ExcelProperty(index = 12)
    private Double sjyjZc;
    @TableField("Presale_num")
    @ExcelProperty(index = 13)
    private Double presaleNum;
    @TableField("Presale_cjje")
    @ExcelProperty(index = 14)
    private Double presaleCjje;
    @TableField("Refund_je")
    @ExcelProperty(index = 15)
    private Double refundJe;
    @TableField("Refund_num")
    @ExcelProperty(index = 16)
    private Double refundNum;
    @TableField("Refund_rs")
    @ExcelProperty(index = 17)
    private Double refundRs;
    @TableField("Refund_cjje")
    @ExcelProperty(index =18 )
    private Double refundCjje;
    @TableField("Refund_cjnum")
    @ExcelProperty(index = 19)
    private Double refundCjnum;
    @TableField("Refund_cjrate")
    @ExcelProperty(index = 20)
    private Double refundCjrate;
    @TableField("Fh_cjrate")
    @ExcelProperty(index = 21)
    private Double fhCjrate;
    @TableField("Quality_thrate")
    @ExcelProperty(index =22 )
    private Double qualityThrate;
    @TableField("Complaint_rate")
    @ExcelProperty(index = 23)
    private Double complaintRate;
    @TableField("CP_rate")
    @ExcelProperty(index =24 )
    private Double cpRate;
    @TableField("CP_num")
    @ExcelProperty(index =25 )
    private Double cpNum;
    @TableField("Hp_rate")
    @ExcelProperty(index = 26)
    private Double hpRate;
    @TableField("Hp_num")
    @ExcelProperty(index =27 )
    private Double hpNum;
    @TableField("Evaluate_num")
    @ExcelProperty(index = 28)
    private Double evaluateNum;
    @TableField("Zbjtoshow_num")
    @ExcelProperty(index =29 )
    private Double zbjtoshowNum;
    @TableField("Zbjhits_num")
    @ExcelProperty(index =30 )
    private Double zbjhitsNum;
    @TableField("Zbj_cjje")
    @ExcelProperty(index = 31)
    private Double zbjCjje;
    @TableField("Zbj_cjdds")
    @ExcelProperty(index =32 )
    private Double zbjCjdds;
    @TableField("Zbj_cjjs")
    @ExcelProperty(index = 33)
    private Double zbjCjjs;
    @TableField("Zbj_cjrs")
    @ExcelProperty(index =34 )
    private Double zbjCjrs;
    @TableField("Zbj_zfrate")
    @ExcelProperty(index = 35)
    private Double zbjZfrate;
    @TableField("Dsp_toshow_num")
    @ExcelProperty(index =36 )
    private Double dspToshowNum;
    @TableField("Dsp_hits_num")
    @ExcelProperty(index =37 )
    private Double dspHitsNum;
    @TableField("Dsp_cjje")
    @ExcelProperty(index =38 )
    private Double dspCjje;
    @TableField("Dsp_cjdds")
    @ExcelProperty(index =39 )
    private Double dspCjdds;
    @TableField("Dsp_cjjs")
    @ExcelProperty(index =40 )
    private Double dspCjjs;
    @TableField("Dsp_cjrs")
    @ExcelProperty(index = 41)
    private Double dspCjrs;
    @TableField("Dsp_zfrate")
    @ExcelProperty(index = 42)
    private Double dspZfrate;


    /**
     * 获取主键值
     *
     * @return 主键值
     */
    protected Serializable pkVal() {
        return this.id;
    }
    }

