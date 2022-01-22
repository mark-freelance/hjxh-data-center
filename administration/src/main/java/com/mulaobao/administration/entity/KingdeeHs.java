package com.mulaobao.administration.entity;

import java.util.Date;

import com.alibaba.excel.annotation.ExcelProperty;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import java.io.Serializable;
import lombok.Data;

/**
 * (KingdeeHs)表实体类
 *
 * @author makejava
 * @since 2021-12-22 10:14:01
 */
@SuppressWarnings("serial")
@Data
@TableName("Kingdee_Hs")
public class KingdeeHs extends Model<KingdeeHs> {

    private String id;
    @TableField("Date_time")
    private Date dateTime;
    @TableField("Wl_bm")
    @ExcelProperty(index =0 )
    private String wlBm;
    @ExcelProperty(index = 1)
    @TableField("Wl_name")
    private String wlName;
    @ExcelProperty(index = 2)
    @TableField("Warehouse")
    private String warehouse;
    @ExcelProperty(index =3 )
    @TableField("Hz_lx")
    private String hzLx;
    @ExcelProperty(index =4 )
    @TableField("Hz")
    private String hz;
    @ExcelProperty(index =5 )
    @TableField("Kc_dw")
    private String kcDw;
    @ExcelProperty(index = 6)
    @TableField("Qc_kcnum")
    private Double qcKcnum;
    @ExcelProperty(index =7 )
    @TableField("Sr_kcnum")
    private Double srKcnum;
    @ExcelProperty(index =8 )
    @TableField("Fc_kcnum")
    private Double fcKcnum;
    @TableField("Jc_kcnum")
    @ExcelProperty(index =9 )
    private Double jcKcnum;
    @TableField("Kc_zzcs")
    @ExcelProperty(index = 10)
    private Double kcZzcs;
    @TableField("Kc_zzts")
    @ExcelProperty(index = 11)
    private Double kcZzts;


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

