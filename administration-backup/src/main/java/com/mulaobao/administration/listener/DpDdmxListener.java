package com.mulaobao.administration.listener;

import com.alibaba.excel.context.AnalysisContext;
import com.alibaba.excel.event.AnalysisEventListener;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.mulaobao.administration.entity.DpCkmx;
import com.mulaobao.administration.entity.DpDdmx;
import com.mulaobao.administration.entity.LsShop;
import com.mulaobao.administration.service.DpDdmxService;
import com.mulaobao.administration.service.DpXsckService;
import com.mulaobao.administration.service.LsShopService;
import com.mulaobao.administration.util.UtilId;
import lombok.SneakyThrows;

import java.util.ArrayList;
import java.util.List;

public class DpDdmxListener extends AnalysisEventListener<DpDdmx> {
    private DpDdmxService dpDdmxService ;
    private String name;
    private String fileName;
    private int a = 0;
    private List<DpDdmx> wdtCkmxes = new ArrayList<>();
    public DpDdmxListener(DpDdmxService dpDdmxService, String name,String fileName){
        this.dpDdmxService = dpDdmxService;
        this.fileName = fileName;
        this.name = name;
    }
    @Override
    @SneakyThrows
    public void invoke(DpDdmx dpDdmx, AnalysisContext analysisContext) {
             dpDdmx.setId(UtilId.getUUID());
            dpDdmx.setShopBh(name);
            dpDdmx.setFileName(fileName);
            wdtCkmxes.add(dpDdmx);
    }

    @SneakyThrows
    @Override
    public void doAfterAllAnalysed(AnalysisContext analysisContext) {
            dpDdmxService.saveBatch(wdtCkmxes,2100);
            System.out.println("成功");
    }
}
