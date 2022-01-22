package com.mulaobao.administration.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import java.io.Serializable;
import java.util.List;

import lombok.Data;

/**
 * (Menu)表实体类
 *
 * @author makejava
 * @since 2021-09-16 16:22:00
 */
@SuppressWarnings("serial")
@Data
public class Menu extends Model<Menu> {
    
    private Integer mid;
    
    private String url;
    
    private String path;
    
    private String component;
    
    private String name;
    
    private Integer parentid;

    private String iconCls;
    
    private Integer keepalive;
    
    private Integer requireauth;
    
    private Integer enabled;

    @TableField(exist = false)
    private List<Menu> children;

}

