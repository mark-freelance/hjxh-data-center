package com.mulaobao.administration.listener;

import com.alibaba.excel.context.AnalysisContext;
import com.alibaba.excel.event.AnalysisEventListener;
import com.mulaobao.administration.entity.TmCjzz;
import com.mulaobao.administration.entity.TmZtc;
import com.mulaobao.administration.service.TmCjzzService;
import com.mulaobao.administration.service.TmZtcService;
import com.mulaobao.administration.util.UtilId;

import java.util.Date;
import java.util.Map;

public class TmZtcListener extends AnalysisEventListener<TmZtc> {
    private TmZtcService tmZtcService;
    private Map<String,Object> name;

    public TmZtcListener(TmZtcService tmZtcService, Map<String,Object> name){
        this.tmZtcService = tmZtcService;
        this.name = name;
    }

    @Override
    public void invoke(TmZtc tmZtc, AnalysisContext analysisContext) {
        TmZtc tmZtc1 = tmZtc;

        tmZtc1.setChannelLx("直通车");

        tmZtc1.setDateTime((Date) name.get("DateTime"));

        tmZtc1.setPlatformBh((String) name.get("platformBh"));

        tmZtc1.setShopBh((String)name.get("ShopBh"));

        tmZtc1.setId(UtilId.getUUID()); //uuid

        tmZtcService.save(tmZtc1);
    }

    @Override
    public void doAfterAllAnalysed(AnalysisContext analysisContext) {

    }
}
