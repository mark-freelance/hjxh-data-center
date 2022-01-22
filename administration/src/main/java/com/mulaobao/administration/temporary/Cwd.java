package com.mulaobao.administration.temporary;


import com.alibaba.excel.annotation.ExcelProperty;
import com.alibaba.excel.annotation.write.style.ColumnWidth;
import lombok.Data;

@Data
public class Cwd {
    @ColumnWidth(20)
    @ExcelProperty(value = "店铺",index = 0)
    private String shopname;
    @ColumnWidth(20)
    @ExcelProperty(value = "账务类型2",index = 1)
    private String zwlx;
    @ColumnWidth(30)
    @ExcelProperty(value = "求和项:收入金额（+元）",index = 2)
    private Double srje;
    @ColumnWidth(30)
    @ExcelProperty(value = "求和项:支出金额（-元）",index =3 )
    private Double zcje;
}
