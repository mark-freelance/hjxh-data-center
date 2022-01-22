package com.mulaobao.administration.listener;

import com.alibaba.excel.context.AnalysisContext;
import com.alibaba.excel.event.AnalysisEventListener;
import com.mulaobao.administration.entity.DyXssj;
import com.mulaobao.administration.service.DyXssjService;
import com.mulaobao.administration.util.UtilId;

import java.util.Date;
import java.util.Map;

public class DyXssjListener extends AnalysisEventListener<DyXssj> {
    private DyXssjService dyXssjService;
    private Map<String,Object> name;

    public DyXssjListener(DyXssjService dyXssjService, Map<String,Object> name){
        this.dyXssjService = dyXssjService;
        this.name = name;
    }

    @Override
    public void invoke(DyXssj dyXssj, AnalysisContext analysisContext) {
        DyXssj dyXssj1 = dyXssj;

        dyXssj1.setChannelLx("销售数据");

        dyXssj1.setDateTime((Date) name.get("DateTime"));

        dyXssj1.setPlatformBh((String) name.get("platformBh"));

        dyXssj1.setShopBh((String)name.get("ShopBh"));

        dyXssj1.setId(UtilId.getUUID());
        dyXssjService.save(dyXssj1);
    }

    @Override
    public void doAfterAllAnalysed(AnalysisContext analysisContext) {
    }
}
