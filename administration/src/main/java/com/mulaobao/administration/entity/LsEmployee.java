package com.mulaobao.administration.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import java.io.Serializable;
import java.util.List;

import lombok.Data;

/**
 * (LsEmployee)表实体类
 *
 * @author makejava
 * @since 2021-10-19 10:58:13
 */
@SuppressWarnings("serial")
@Data
@TableName("LS_Employee")
public class LsEmployee extends Model<LsEmployee> {
    
    private String id;

    @TableField("Person_bh")
    private String personBh;
    @TableField("Person")
    private String person;
    @TableField("fperson_bh")
    private String fpersonBh;
    @TableField("fz")
    private String fz;
    @TableField(exist = false)
    private List<LsEmployee> lsEmployees;
    @TableField(exist = false)
    private String name;
    @TableField(exist = false)
    private String xsdate;


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

