package com.mulaobao.administration.listener;

import com.alibaba.excel.context.AnalysisContext;
import com.alibaba.excel.event.AnalysisEventListener;
import com.mulaobao.administration.entity.DyXssj;
import com.mulaobao.administration.entity.TtZtc;
import com.mulaobao.administration.service.DyXssjService;
import com.mulaobao.administration.service.TtZtcService;
import com.mulaobao.administration.util.UtilId;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

public class TtZtcListener extends AnalysisEventListener<TtZtc> {
    private TtZtcService ttZtcService;
    private Map<String,Object> name;

    public TtZtcListener(TtZtcService ttZtcService, Map<String,Object> name){
        this.ttZtcService = ttZtcService;
        this.name = name;
    }

    @Override
    public void invoke(TtZtc ttZtc, AnalysisContext analysisContext) {
        TtZtc ttZtc1 = ttZtc;

        ttZtc1.setChannelLx("直通车");

        ttZtc1.setHitsRate(UtilId.getduoble(ttZtc.getHitsRate1()));

           ttZtc1.setDateTime((Date)name.get("DateTime"));


       ttZtc1.setRate(UtilId.getduoble(UtilId.getnlll(ttZtc.getRate1())));
        ttZtc1.setPlatformBh((String) name.get("platformBh"));

        ttZtc1.setShopBh((String)name.get("ShopBh"));

        ttZtc1.setId(UtilId.getUUID()); //uuid
        ttZtcService.save(ttZtc1);
    }

    @Override
    public void doAfterAllAnalysed(AnalysisContext analysisContext) {

    }
}
