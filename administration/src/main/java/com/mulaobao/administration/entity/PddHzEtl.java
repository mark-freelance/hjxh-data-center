package com.mulaobao.administration.entity;

import java.util.Date;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import java.io.Serializable;
import lombok.Data;

/**
 * (PddHzEtl)表实体类
 *
 * @author makejava
 * @since 2021-09-22 14:33:38
 */
@SuppressWarnings("serial")
@Data
public class PddHzEtl extends Model<PddHzEtl> {
    
    private String id;
    
    private String platformBh;
    
    private String shopBh;
    
    private Date dateTime;
    
    private Double sales;
    
    private Double orderquantity;
    
    private Double numBuyers;
    
    private Double refundamount;
    
    private Double totaltraffic;
    
    private Double moresearchll;
    
    private Double manyscenesll;
    
    private Double restassuredpushll;
    
    private Double taokepromotionll;
    
    private Double aipromotionll;
    
    private Double pinxiaobaoll;
    
    private Double moresearchfy;
    
    private Double manyscenesfy;
    
    private Double restassuredpushfy;
    
    private Double taokepromotionfy;
    
    private Double aipromotionfy;
    
    private Double pinxiaobaofy;
    
    private Double otherexpenses;


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

