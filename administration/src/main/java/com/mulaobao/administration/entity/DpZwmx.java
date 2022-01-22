package com.mulaobao.administration.entity;

import java.util.Date;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import java.io.Serializable;
import lombok.Data;

/**
 * (DpZwmx)表实体类
 *
 * @author makejava
 * @since 2021-12-13 13:41:49
 */
@SuppressWarnings("serial")
@Data
public class DpZwmx extends Model<DpZwmx> {

    private String id;

    private String shopBh;

    private String shDdh;

    private Date fsDatetime;

    private Double srJe;

    private Double zcJe;

    private String zwLx;

    private String bz;


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

