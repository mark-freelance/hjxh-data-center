package com.mulaobao.administration.temporary;

import com.alibaba.excel.annotation.ExcelProperty;
import com.alibaba.excel.annotation.format.DateTimeFormat;
import com.alibaba.excel.annotation.write.style.ColumnWidth;
import lombok.Data;

import java.util.Date;

@Data
public class TmCwd2 {

    @ColumnWidth(40)
    @DateTimeFormat("yyyy-MM-dd")
    @ExcelProperty(value = "入账数据",index =0)
    private Date rzsj;
    @ColumnWidth(20)
    @ExcelProperty(value = "账务类型",index = 1)
    private String zwlx;
    @ColumnWidth(20)
    @ExcelProperty(value = "收入金额",index = 2)
    private Double srje;
    @ColumnWidth(20)
    @ExcelProperty(value = "支出金额",index = 3)
    private Double zcje;
    @ColumnWidth(30)
    @ExcelProperty(value = "商品名称",index = 4)
    private String goodsname;
    @ColumnWidth(70)
    @ExcelProperty(value = "备注",index = 5)
    private String bz;
    @ColumnWidth(30)
    @ExcelProperty(value = "业务基础订单号",index =6 )
    private String ywjcddh;
}
