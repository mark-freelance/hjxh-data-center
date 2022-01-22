package com.mulaobao.administration.listener;

import com.alibaba.excel.context.AnalysisContext;
import com.alibaba.excel.event.AnalysisEventListener;
import com.mulaobao.administration.entity.TmPxb;
import com.mulaobao.administration.entity.TmTktg;
import com.mulaobao.administration.service.TmPxbService;
import com.mulaobao.administration.service.TmTktgService;
import com.mulaobao.administration.util.UtilId;

import java.util.Date;
import java.util.Map;


public class TmPxbListener extends AnalysisEventListener<TmPxb> {
    private TmPxbService tmPxbService;
    private Map<String,Object> name;

    public TmPxbListener(TmPxbService tmPxbService, Map<String,Object> name){
        this.tmPxbService = tmPxbService;
        this.name = name;
    }

    @Override
    public void invoke(TmPxb tmPxb, AnalysisContext analysisContext) {
        TmPxb tmPxb1 = tmPxb;

        tmPxb1.setChannelLx("品销宝");

        tmPxb1.setPlatformBh((String) name.get("platformBh"));

        tmPxb1.setShopBh((String)name.get("ShopBh"));
        tmPxb1.setDateTime((Date)name.get("DateTime"));
        tmPxb1.setId(UtilId.getUUID()); //uuid
        tmPxbService.save(tmPxb1);
    }

    @Override
    public void doAfterAllAnalysed(AnalysisContext analysisContext) {

    }
}
