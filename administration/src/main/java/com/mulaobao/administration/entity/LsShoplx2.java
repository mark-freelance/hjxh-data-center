package com.mulaobao.administration.entity;

import java.util.Date;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import java.io.Serializable;
import java.util.List;

import lombok.Data;

/**
 * (LsShoplx2)表实体类
 *
 * @author makejava
 * @since 2021-10-20 11:14:12
 */
@SuppressWarnings("serial")
@Data
@TableName("LS_Shoplx2")
public class LsShoplx2 extends Model<LsShoplx2> {
    
    private String id;

    @TableField("Shop_lxbh")
    private String shopLxbh;
    @TableField("Shop_lxname")
    private String shopLxname;
    @TableField("Date_time")
    private Date dateTime;
    @TableField(exist = false)
    private List<LsShop> children;

}

