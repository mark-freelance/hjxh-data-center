package com.mulaobao.administration.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import java.io.Serializable;
import java.util.List;

import lombok.Data;

/**
 * (CkWarehouse)表实体类
 *
 * @author makejava
 * @since 2021-09-23 16:49:21
 */
@SuppressWarnings("serial")
@Data
@TableName("CK_warehouse")
public class CkWarehouse extends Model<CkWarehouse> {
    
    private Integer id;
    
    private String named;
    
    private Integer fid;
private String shpn;
    private String type;

    @TableField(exist = false)
    private List<CkWarehouse> ckWarehouses;

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

