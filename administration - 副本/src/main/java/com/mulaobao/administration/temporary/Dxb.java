package com.mulaobao.administration.temporary;

import com.alibaba.excel.annotation.ExcelIgnore;
import com.alibaba.excel.annotation.ExcelProperty;
import com.alibaba.excel.annotation.write.style.ColumnWidth;
import lombok.Data;

@Data
public class Dxb  {
    @ColumnWidth(30)
    @ExcelProperty(value = "货品编码",index = 0)
    private String goodsbh;
    @ColumnWidth(30)
    @ExcelProperty(value = "货品名称",index = 1)
    private String goodsname;
    @ColumnWidth(30)
    @ExcelProperty(value = "期末库存",index = 2)
    private Double qmkc;
    @ColumnWidth(30)
    @ExcelProperty(value = "库存数排名",index = 3)
    private Integer rank1;
    @ExcelProperty(value = "动销",index = 4)
    private Double num;
    @ExcelProperty(value = "日销量",index = 5)
    private Double rxl;
    @ColumnWidth(30)
    @ExcelProperty(value = "支撑销售日",index = 6)
    private Double zcr;
    @ExcelIgnore
    private String warehouse;





}
