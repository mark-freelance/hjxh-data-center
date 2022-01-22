package com.mulaobao.administration.temporary;


import com.alibaba.excel.annotation.ExcelProperty;
import com.alibaba.excel.annotation.write.style.ColumnWidth;
import lombok.Data;

@Data
public class TmCwd {
    @ColumnWidth(30)
    @ExcelProperty(value = "账务分类",index = 0)
    private String lx;
    @ColumnWidth(30)
    @ExcelProperty(value = "收入（+元）",index = 1)
    private Double srje;
    @ExcelProperty(value = "支出（-元）",index = 2)
    @ColumnWidth(30)
    private Double zcje;
}
