package com.mulaobao.administration.entity;

import java.util.Date;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import java.io.Serializable;
import lombok.Data;

/**
 * (DpCkwjs)表实体类
 *
 * @author makejava
 * @since 2022-01-04 15:59:44
 */
@SuppressWarnings("serial")
@Data
public class DpCkwjs extends Model<DpCkwjs> {

    private String id;
    //店铺编号
    private String shopBh;
    //子单原始单号
    private String ysDh;
    //退款前支付金额
    private Double tkJe;
    //发货时间
    private Date fsDatetime;


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

