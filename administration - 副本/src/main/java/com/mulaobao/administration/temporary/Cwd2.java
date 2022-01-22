package com.mulaobao.administration.temporary;

import com.alibaba.excel.annotation.ExcelProperty;
import com.alibaba.excel.annotation.format.DateTimeFormat;
import com.alibaba.excel.annotation.write.style.ColumnWidth;
import lombok.Data;

import java.util.Date;

@Data
public class Cwd2 {
    @ColumnWidth(20)
    @ExcelProperty(value = "店铺",index = 0)
    private String shopname;
    @ColumnWidth(40)
    @ExcelProperty(value = "订单号",index = 1)
    private String shddh;

    @DateTimeFormat("yyyy-MM-dd")
    @ColumnWidth(20)
    @ExcelProperty(value = "发生时间",index = 2)
    private Date fsdatetime;

    @ColumnWidth(20)
    @ExcelProperty(value = "账务类型2",index = 3)
    private String zwlx;


    @ColumnWidth(30)
    @ExcelProperty(value = "收入金额（元）",index = 4)
    private Double srje;
    @ColumnWidth(30)
    @ExcelProperty(value = "支出金额（元）",index =5 )
    private Double zcje;
    @ColumnWidth(70)
    @ExcelProperty(value = "备注",index = 6)
    private String bz;
}
