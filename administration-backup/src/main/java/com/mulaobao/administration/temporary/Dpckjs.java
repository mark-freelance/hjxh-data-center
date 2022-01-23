package com.mulaobao.administration.temporary;


import com.alibaba.excel.annotation.ExcelProperty;
import com.alibaba.excel.annotation.write.style.ColumnWidth;
import lombok.Data;

@Data
public class Dpckjs {
    @ExcelProperty(value = "状态",index = 0)
    private String zt;

    @ExcelProperty(value = "退款前支付金额",index = 1)
    @ColumnWidth(30)
    private Double tkje;
}
