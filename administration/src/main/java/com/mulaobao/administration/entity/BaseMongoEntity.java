package com.mulaobao.administration.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import java.util.Date;

@Data
public class BaseMongoEntity {

    @TableField("PlatForm_bh")
    private String platformBh;//平台BH
    @TableField("Shop_bh")
    private String shopBh;//店铺BH
    @TableField("Channel_lx")
    private String channelLx;//搜索推广
    @TableField("Date_time")
    @JsonFormat(pattern = "yyyy-MM-dd",timezone="GMT+8")
    private Date dateTime;// 时间


}
