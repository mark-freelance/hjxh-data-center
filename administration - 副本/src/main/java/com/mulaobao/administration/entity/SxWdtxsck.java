package com.mulaobao.administration.entity;

import java.util.Date;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import java.io.Serializable;
import lombok.Data;

/**
 * (SxWdtxsck)表实体类
 *
 * @author makejava
 * @since 2022-01-20 16:51:26
 */
@SuppressWarnings("serial")
@Data
@TableName("Sx_Wdtxsck")
public class SxWdtxsck extends Model<SxWdtxsck> {

    private String id;
    //物流单号
    @TableField("Wl_dh")
    private String wlDh;
    //物流公司
    @TableField("")
    private String wlGs;
    //店铺名称
    @TableField("")
    private String shopName;
    //仓库
    @TableField("")
    private String warehouse;
    //省
    @TableField("")
    private String province;
    //市
    @TableField("")
    private String city;
    //县
    @TableField("")
    private String county;
    //支付时间
    @TableField("")
    private Date zfDatetime;
    //文件名
    @TableField("")
    private String fileName;
    //数据导入时间
    @TableField("")
    private Date createTime;


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

