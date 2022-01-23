package com.mulaobao.administration.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;
import java.io.Serializable;

/**
 * (User)表实体类
 *
 * @author makejava
 * @since 2021-09-16 15:10:28
 */
@SuppressWarnings("serial")
@Data
@TableName("Userd")
public class User extends Model<User> {
    //主键
    private Integer id;
    //账号
    private String account;


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

