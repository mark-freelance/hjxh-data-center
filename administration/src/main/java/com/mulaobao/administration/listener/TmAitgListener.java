package com.mulaobao.administration.listener;

import com.alibaba.excel.context.AnalysisContext;
import com.alibaba.excel.event.AnalysisEventListener;
import com.mulaobao.administration.entity.TmAitg;
import com.mulaobao.administration.entity.TmCjzz;
import com.mulaobao.administration.service.TmAitgService;
import com.mulaobao.administration.service.TmCjzzService;
import com.mulaobao.administration.util.UtilId;

import java.util.Date;
import java.util.Map;


public class TmAitgListener extends AnalysisEventListener<TmAitg> {
    private TmAitgService tmAitgService;
    private Map<String,Object> name;

    public TmAitgListener(TmAitgService tmAitgService, Map<String,Object> name){
        this.tmAitgService = tmAitgService;
        this.name = name;
    }

    @Override
    public void invoke(TmAitg tmAitg, AnalysisContext analysisContext) {
        TmAitg tmAitg1 = tmAitg;

        tmAitg1.setChannelLx("AI推广");

        tmAitg1.setPlatformBh((String) name.get("platformBh"));

        tmAitg1.setShopBh((String)name.get("ShopBh"));
        tmAitg1.setDateTime((Date)name.get("DateTime"));
        tmAitg1.setId(UtilId.getUUID()); //uuid

       tmAitgService.save(tmAitg1);
    }

    @Override
    public void doAfterAllAnalysed(AnalysisContext analysisContext) {

    }
}
