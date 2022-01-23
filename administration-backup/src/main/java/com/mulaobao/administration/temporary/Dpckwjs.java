package com.mulaobao.administration.temporary;


import com.alibaba.excel.annotation.ExcelProperty;
import com.alibaba.excel.annotation.write.style.ColumnWidth;
import lombok.Data;

@Data
public class Dpckwjs {
    @ExcelProperty(value = "单号" ,index = 0)
    @ColumnWidth(30)
    private String ysdh;
    @ExcelProperty(value = "退款前支付金额" ,index = 1)
    @ColumnWidth(30)
    private double tkje;
    @ExcelProperty(value = "发货时间" ,index = 2)
    @ColumnWidth(30)
    private String fsdatetime;
}
