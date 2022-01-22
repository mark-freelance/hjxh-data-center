package com.mulaobao.administration.temporary;


import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import java.util.Date;
import java.util.List;

@Data
public class CostType {
    private Integer gs;
    private String ids;
    private Integer id;
    private String bh; //编号
    private String name; //名字
    private Double cb;  //成本
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
    private Date dateTime;  //时间
    private List<CostType> costTypes;
}
