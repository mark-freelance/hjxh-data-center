package com.mulaobao.administration.entity;

import java.util.Date;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import java.io.Serializable;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

/**
 * (SpHistory)表实体类
 *
 * @author makejava
 * @since 2021-11-06 16:01:07
 */
@SuppressWarnings("serial")
@Data
@TableName("SP_History")
public class SpHistory extends Model<SpHistory> {

    @TableId(value = "id",type = IdType.AUTO)
    private Integer id;

    private String accont;
    //模块

    private String modules;
    //类型
    @TableField("type")
    private String types;
    //内容
    @TableField("contents")
    private String content;
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
    private Date establish;

    @TableField(exist = false)
    private String [] datas ;


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

