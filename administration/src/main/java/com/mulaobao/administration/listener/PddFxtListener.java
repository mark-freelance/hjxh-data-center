package com.mulaobao.administration.listener;

import com.alibaba.excel.context.AnalysisContext;
import com.alibaba.excel.event.AnalysisEventListener;
import com.mulaobao.administration.entity.PddCjtg;
import com.mulaobao.administration.entity.PddFxt;
import com.mulaobao.administration.service.PddCjtgService;
import com.mulaobao.administration.service.PddFxtService;
import com.mulaobao.administration.util.UtilId;

import java.util.Date;
import java.util.Map;

public class PddFxtListener extends AnalysisEventListener<PddFxt> {
    private PddFxtService pddFxtService;
    private Map<String,Object> name;

    public PddFxtListener(PddFxtService fxtService,Map<String,Object> name){
        this.pddFxtService = fxtService;
        this.name = name;
    }

    @Override
    public void invoke(PddFxt pddFxt, AnalysisContext analysisContext) {
        PddFxt pddFxt1 = pddFxt;


        pddFxt1.setChannelLx("放心推");

        pddFxt1.setDateTime((Date) name.get("DateTime"));

        pddFxt1.setPlatformBh((String) name.get("platformBh"));

        pddFxt1.setShopBh((String)name.get("ShopBh"));

        pddFxt1.setId(UtilId.getUUID()); //uuid
        pddFxtService.save(pddFxt1);
    }

    @Override
    public void doAfterAllAnalysed(AnalysisContext analysisContext) {

    }
}
