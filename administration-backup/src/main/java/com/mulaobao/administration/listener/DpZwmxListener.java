package com.mulaobao.administration.listener;

import com.alibaba.excel.context.AnalysisContext;
import com.alibaba.excel.event.AnalysisEventListener;
import com.mulaobao.administration.dao.KdWdtzdDao;
import com.mulaobao.administration.entity.DpZwmx;
import com.mulaobao.administration.entity.KdWdtzd;
import com.mulaobao.administration.service.DpZwmxService;
import com.mulaobao.administration.util.UtilId;
import lombok.SneakyThrows;

import java.util.ArrayList;
import java.util.List;

public class DpZwmxListener extends AnalysisEventListener<DpZwmx> {
    private DpZwmxService dpZwmxService ;
    private String name;
    private String name2;
    private List<DpZwmx> wdtCkmxes = new ArrayList<>();
    public DpZwmxListener(DpZwmxService dpZwmxService, String name,String name2){
        this.dpZwmxService = dpZwmxService;
        this.name = name;
        this.name2 = name2;
    }
    @SneakyThrows
    @Override
    public void invoke(DpZwmx dpZwmx, AnalysisContext analysisContext) {
        if (dpZwmx.getZcJe()!=null && dpZwmx.getSrJe()!=null){
            dpZwmx.setId(UtilId.getUUID());
            dpZwmx.setShopBh(name);
           // dpZwmx.set
            dpZwmx.setFileName(name2);
            wdtCkmxes.add(dpZwmx);
        }

    }

    @SneakyThrows
    @Override
    public void doAfterAllAnalysed(AnalysisContext analysisContext) {
            dpZwmxService.saveBatch(wdtCkmxes,2100);
        System.out.println("成功");
    }
}
