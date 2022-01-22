package com.mulaobao.administration.entity;

import java.util.Date;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import java.io.Serializable;
import lombok.Data;

/**
 * (LsProductcomm)表实体类
 *
 * @author makejava
 * @since 2021-11-27 14:38:34
 */
@SuppressWarnings("serial")
@Data
@TableName("LS_Productcomm")
public class LsProductcomm extends Model<LsProductcomm> {

    private String id;

    @TableField("Goods_id")
    private String goodId;
    @TableField("Lx_bh")
    private String lxBh;
    @TableField("Shop_bh")
    private String shopbh;


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

