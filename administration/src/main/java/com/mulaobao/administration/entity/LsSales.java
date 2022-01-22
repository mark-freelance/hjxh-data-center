package com.mulaobao.administration.entity;

import com.alibaba.excel.annotation.ExcelProperty;
import com.alibaba.excel.annotation.format.DateTimeFormat;
import com.alibaba.excel.annotation.write.style.ColumnWidth;
import com.alibaba.excel.annotation.write.style.ContentRowHeight;
import com.alibaba.excel.annotation.write.style.HeadRowHeight;
import com.baomidou.mybatisplus.annotation.TableField;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import java.util.Date;

@Data
@HeadRowHeight(30)
public class LsSales {
    @ColumnWidth(20)
    @ExcelProperty(value = "店铺名称",index = 0)

    private String shopBh1;
    @ColumnWidth(20)
    @ExcelProperty(value = "数据时间",index = 1)
    @DateTimeFormat("yyyy-MM-dd")
    private Date dateTime;
    @ColumnWidth(20)
    @ExcelProperty(value = "全店销售额",index = 2)
    private Double sales;
    @ColumnWidth(20)
    @ExcelProperty(value = "订单量",index = 3)
    private Double orderquantity;
    @ColumnWidth(20)
    @ExcelProperty(value = "支付买家数",index = 4)
    private Double numBuyers;
    @ColumnWidth(20)
    @ExcelProperty(value = "销售额增长率",index = 5)
    private String sales1;
    @ColumnWidth(20)
    @ExcelProperty(value = "退款金额",index = 6)
    private Double refundamount;
    @ExcelProperty(value = "退款率",index = 7)
    private String refundrate1;
    @ColumnWidth(20)
    @ExcelProperty(value = "实际销售额",index = 8)
    private Double actualsales;
    @ColumnWidth(20)
    @ExcelProperty(value = "支付转化率",index = 9)
    private String paymentrate1;
    @ColumnWidth(20)
    @ExcelProperty(value = "客单价",index = 10)
    private Double customerprice;
    @ColumnWidth(20)
    @ExcelProperty(value = "店铺总流量",index = 11)
    private Double totaltraffic;
    @ColumnWidth(20)
    @ExcelProperty(value = "免费流量",index = 12)
    private Double freetraffic;
    @ColumnWidth(20)
    @ExcelProperty(value = "免费流量占比",index = 13)
    private String freetrafficzb1;
    @ExcelProperty(value = "多多搜索/直通车/京东快车（流量）",index = 14)
    @ColumnWidth(45)
    private Double moresearchll;
    @ExcelProperty(value = "多多场景/超级推荐/京东展位（流量）",index = 15)
    @ColumnWidth(45)
    private Double manyscenesll;
    @ExcelProperty(value = "放心推/钻石展位/京东直投（流量）",index = 16)
    @ColumnWidth(40)
    private Double restassuredpushll;
    @ColumnWidth(20)
    @ExcelProperty(value = "淘客推广（流量）",index = 17)
    private Double taokepromotionll;
    @ColumnWidth(20)
    @ExcelProperty(value = "AI推广（流量）",index = 18)
    private Double aipromotionll;
    @ColumnWidth(20)
    @ExcelProperty(value = "品销宝/明星店铺(流量)",index = 19)
    private Double pinxiaobaoll;
    @ColumnWidth(20)
    @ExcelProperty(value = "推广总流量",index = 20)
    private Double promotionflow;
    @ColumnWidth(20)
    @ExcelProperty(value = "推广流量占比",index = 21)
    private String promotionflowzb1;
    @ColumnWidth(45)
    @ExcelProperty(value = "多多搜索/直通车/京东快车（费用）",index = 22)
    private Double moresearchfy;
    @ColumnWidth(45)
    @ExcelProperty(value = "多多场景/超级推荐/京东展位（费用）",index = 23)
    private Double manyscenesfy;
    @ColumnWidth(45)
    @ExcelProperty(value = "放心推/钻石展位/京东直投（费用）",index = 24)
    private Double restassuredpushfy;
    @ColumnWidth(20)
    @ExcelProperty(value = "淘客推广(费用)",index = 25)
    private Double taokepromotionfy;
    @ColumnWidth(20)
    @ExcelProperty(value = "AI推广(费用)",index = 26)
    private Double aipromotionfy;
    @ColumnWidth(20)
    @ExcelProperty(value = "品销宝/明星店铺(费用)",index = 27)
    private Double pinxiaobaofy;
    @ColumnWidth(20)
    @ExcelProperty(value = "推广总费用",index = 28)
    private Double promotioncost;
    @ColumnWidth(20)
    @ExcelProperty(value = "推广费用占比",index = 29)
    private String promotioncostzb1;
    @ColumnWidth(20)
    @ExcelProperty(value = "平台扣点",index = 30)
    private Double platformbuckle;
    @ColumnWidth(20)
        @ExcelProperty(value = "其他费用",index = 31)
    private Double otherexpenses;
    @ColumnWidth(20)
    @ExcelProperty(value = "合计总费用",index = 32)
    private Double totalcost;
    @ExcelProperty(value = "费销比",index = 33)
    private String costratio1;




}
