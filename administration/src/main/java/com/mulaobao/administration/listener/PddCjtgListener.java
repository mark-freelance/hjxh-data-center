package com.mulaobao.administration.listener;


import com.alibaba.excel.context.AnalysisContext;
import com.alibaba.excel.event.AnalysisEventListener;
import com.mulaobao.administration.entity.PddCjtg;
import com.mulaobao.administration.service.PddCjtgService;
import com.mulaobao.administration.util.UtilId;

import java.util.Date;
import java.util.Map;

public class PddCjtgListener extends AnalysisEventListener<PddCjtg> {

    private PddCjtgService pddSstgService;
    private Map<String,Object> name;

    public PddCjtgListener(PddCjtgService sstgListener,Map<String,Object> name){
        this.pddSstgService = sstgListener;
        this.name = name;
    }

    @Override
    public void invoke(PddCjtg pddCjtg1, AnalysisContext analysisContext) {
        PddCjtg pddCjtg = pddCjtg1;

        pddCjtg.setHitsRate(UtilId.getduoble(pddCjtg.getHitsRate1()));
        pddCjtg.setClickRate(UtilId.getduoble(pddCjtg.getClickRate1()));
        pddCjtg.setChannelLx("场景推广");
        pddCjtg.setDateTime((Date) name.get("DateTime"));

        pddCjtg.setPlatformBh((String) name.get("platformBh"));

        pddCjtg.setShopBh((String)name.get("ShopBh"));

        pddCjtg.setId(UtilId.getUUID()); //uuid
        pddSstgService.save(pddCjtg);
    }

    @Override
    public void doAfterAllAnalysed(AnalysisContext analysisContext) {

    }
}
