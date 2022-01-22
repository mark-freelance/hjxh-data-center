package com.mulaobao.administration.listener;

import com.alibaba.excel.context.AnalysisContext;
import com.alibaba.excel.event.AnalysisEventListener;
import com.mulaobao.administration.entity.TmTktg;
import com.mulaobao.administration.service.TmTktgService;
import com.mulaobao.administration.util.UtilId;
import java.util.Date;
import java.util.Map;

public class TmTktgListener extends AnalysisEventListener<TmTktg> {
    private TmTktgService tmTktgService;
    private Map<String,Object> name;

    public TmTktgListener(TmTktgService tmTktgService, Map<String,Object> name){
        this.tmTktgService = tmTktgService;
        this.name = name;
    }

    @Override
    public void invoke(TmTktg tmTktg, AnalysisContext analysisContext) {
        TmTktg tmTktg1 = tmTktg;

        tmTktg1.setChannelLx("淘客推广");
        tmTktg1.setServiceRate(UtilId.getduoble(tmTktg.getServiceRate1()));
        tmTktg1.setCommRate(UtilId.getduoble(tmTktg1.getCommRate1()));
        tmTktg1.setDateTime((Date) name.get("DateTime"));

        tmTktg1.setPlatformBh((String) name.get("platformBh"));

        tmTktg1.setShopBh((String)name.get("ShopBh"));

        tmTktg1.setId(UtilId.getUUID()); //uuid

        tmTktgService.save(tmTktg1);
    }

    @Override
    public void doAfterAllAnalysed(AnalysisContext analysisContext) {

    }
}
