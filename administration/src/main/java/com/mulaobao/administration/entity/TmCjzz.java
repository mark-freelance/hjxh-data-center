package com.mulaobao.administration.entity;

import java.util.Date;

import com.alibaba.excel.annotation.ExcelProperty;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import java.io.Serializable;
import lombok.Data;

/**
 * (TmCjzz)表实体类
 *
 * @author makejava
 * @since 2021-09-16 17:43:05
 */
@SuppressWarnings("serial")
@Data
@TableName("TM_Cjzz")
public class TmCjzz extends BaseMongoEntity {
    
    private String id;

    @TableField("Plan_lx")
    @ExcelProperty(index = 0)
    private String planLx;//计划类型
    @TableField("Toshowpeo_num")
    @ExcelProperty(index = 1)
    private Double toshowpeoNum;//展现人数
    @TableField("Consume")
    @ExcelProperty(index = 2)
    private Double consume;//消耗
    @TableField("Toshow_spend")
    @ExcelProperty(index = 3)
    private Double toshowSpend;//千次展现成本(元)
    @TableField("Toshow_num")
    @ExcelProperty(index = 4)
    private Double toshowNum;//展现量
    @TableField("Shallpro_num")
    @ExcelProperty(index = 5)
    private Double shallproNum;//浅层兴趣行为人数
    @TableField("Shallpro_spend")
    @ExcelProperty(index = 6)
    private Double shallproSpend;//浅层兴趣平均行动成本
    @TableField("Deepentry_num")
    @ExcelProperty(index = 7)
    private Double deepentryNum;//深度进店量
    @TableField("Duration")
    @ExcelProperty(index = 8)
    private Double duration;//访问时长
    @TableField("Pages_num")
    @ExcelProperty(index = 9)
    private Double pagesNum;//访问页面数
    @TableField("Hits_rate")
    @ExcelProperty(index = 10)
    private Double hitsRate;//点击率
    @TableField("Hits_num")
    @ExcelProperty(index = 11)
    private Double hitsNum;//点击量
    @TableField("Seaback_num")
    @ExcelProperty(index = 12)
    private Double seabackNum;//回搜量
    @TableField("Seaback_spend")
    @ExcelProperty(index = 13)
    private Double seabackSpend;//回搜成本
    @TableField("Retvis_num")
    @ExcelProperty(index = 14)
    private Double retvisNum;//回访量
    @TableField("Retvis_spend")
    @ExcelProperty(index = 15)
    private Double retvisSpend;//回访成本
    @TableField("Hits_price")
    @ExcelProperty(index = 16)
    private Double hitsPrice;//点击单价(元)
    @TableField("Depthpeo_num")
    @ExcelProperty(index = 17)
    private Double depthpeoNum;//深度兴趣行为人数
    @TableField("Depthpro_spend")
    @ExcelProperty(index = 18)
    private Double depthproSpend;//深度兴趣平均行动成本
    @TableField("Coll_baby")
    @ExcelProperty(index = 19)
    private Double collBaby;//收藏宝贝量
    @TableField("Coll_shop")
    @ExcelProperty(index = 20)
    private Double collShop;//收藏店铺量
    @TableField("Shopping_num")
    @ExcelProperty(index = 21)
    private Double shoppingNum;//添加购物车量
    @TableField("Shder_num")
    @ExcelProperty(index = 22)
    private Double shderNum;//拍下订单量
    @TableField("Shder_je")
    @ExcelProperty(index = 23)
    private Double shderJe;//拍下订单金额
    @TableField("Plaorder_rate")
    @ExcelProperty(index = 24)
    private Double plaorderRate;//下单投资回报率
    @TableField("Colladdg_cost")
    @ExcelProperty(index = 25)
    private Double colladdgCost;//收藏加购成本
    @TableField("Join_num")
    @ExcelProperty(index = 26)
    private Double joinNum;//入会量
    @TableField("Ww_zxl")
    @ExcelProperty(index = 27)
    private Double wwZxl;//旺旺咨询量
    @TableField("Order_num")
    @ExcelProperty(index = 28)
    private Double orderNum;//预售订单量
    @TableField("Presale_je")
    @ExcelProperty(index = 29)
    private Double presaleJe;//预售成交金额
    @TableField("Purpeo_num")
    @ExcelProperty(index = 30)
    private Double purpeoNum;//购买行为人数
    @TableField("Purpeo_cost")
    @ExcelProperty(index = 31)
    private Double purpeoCost;//购买平均行动成本
    @TableField("Click_rate")
    @ExcelProperty(index = 32)
    private Double clickRate;//点击转化率
    @TableField("Return_rate")
    @ExcelProperty(index = 33)
    private Double returnRate;//投资回报率
    @TableField("Ordercj_num")
    @ExcelProperty(index = 34)
    private Double ordercjNum;//成交订单量
    @TableField("Ordercj_je")
    @ExcelProperty(index = 35)
    private Double ordercjJe;//成交订单金额


    /**
     * 获取主键值
     *
     * @return 主键值
     */

    protected Serializable pkVal() {
        return this.id;
    }
    }

