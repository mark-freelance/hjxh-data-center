package com.mulaobao.administration.listener;

import com.alibaba.excel.context.AnalysisContext;
import com.alibaba.excel.event.AnalysisEventListener;
import com.mulaobao.administration.entity.MgjXssj;
import com.mulaobao.administration.entity.TmCjzz;
import com.mulaobao.administration.service.MgjXssjService;
import com.mulaobao.administration.service.TmCjzzService;
import com.mulaobao.administration.util.UtilId;

import java.util.Date;
import java.util.Map;

public class MgjXssjListener4 extends AnalysisEventListener<MgjXssj> {
    private MgjXssjService mgjXssjService;
    private Map<String,Object> name;

    public MgjXssjListener4(MgjXssjService mgjXssjService, Map<String,Object> name){
        this.mgjXssjService = mgjXssjService;
        this.name = name;
    }

    @Override
    public void invoke(MgjXssj mgjXssj, AnalysisContext analysisContext) {
        MgjXssj mgjXssj1 = mgjXssj;

        mgjXssj1.setChannelLx("销售数据");

        mgjXssj1.setDateTime((Date) name.get("DateTime"));

        mgjXssj1.setPlatformBh((String) name.get("platformBh"));

        mgjXssj1.setShopBh((String)name.get("ShopBh"));

        mgjXssj1.setId(UtilId.getUUID()); //uuid
        mgjXssjService.save(mgjXssj1);
    }

    @Override
    public void doAfterAllAnalysed(AnalysisContext analysisContext) {

    }
}
