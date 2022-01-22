package com.mulaobao.administration.listener;


import com.alibaba.excel.context.AnalysisContext;
import com.alibaba.excel.event.AnalysisEventListener;

import com.mulaobao.administration.entity.TmCjzz;

import com.mulaobao.administration.service.TmCjzzService;
import com.mulaobao.administration.util.UtilId;

import java.util.Date;
import java.util.Map;

public class TmCjzzListener extends AnalysisEventListener<TmCjzz> {
    private TmCjzzService tmCjzzService;
    private Map<String,Object> name;

    public TmCjzzListener(TmCjzzService tmCjzzService, Map<String,Object> name){
        this.tmCjzzService = tmCjzzService;
        this.name = name;
    }

    @Override
    public void invoke(TmCjzz tmCjzz, AnalysisContext analysisContext) {
        TmCjzz tmCjzz1 = tmCjzz;

        tmCjzz1.setChannelLx("超级钻展");

        tmCjzz1.setDateTime((Date) name.get("DateTime"));

        tmCjzz1.setPlatformBh((String) name.get("platformBh"));

        tmCjzz1.setShopBh((String)name.get("ShopBh"));

        tmCjzz1.setId(UtilId.getUUID()); //uuid
        tmCjzzService.save(tmCjzz1);
    }

    @Override
    public void doAfterAllAnalysed(AnalysisContext analysisContext) {

    }
}
