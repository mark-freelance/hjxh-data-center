package com.mulaobao.administration.entity;

import com.baomidou.mybatisplus.extension.activerecord.Model;
import java.io.Serializable;
import lombok.Data;

/**
 * (UserdMenu)表实体类
 *
 * @author makejava
 * @since 2021-09-16 16:21:42
 */
@SuppressWarnings("serial")
@Data
public class UserdMenu extends Model<UserdMenu> {
    
    private Integer id;
    
    private Integer userdId;
    
    private Integer menuId;


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

