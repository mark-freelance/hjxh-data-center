package com.mulaobao.administration.listener;

import com.alibaba.excel.context.AnalysisContext;
import com.alibaba.excel.event.AnalysisEventListener;
import com.mulaobao.administration.entity.TmCjtg;
import com.mulaobao.administration.entity.TmCjzz;
import com.mulaobao.administration.service.TmCjtgService;
import com.mulaobao.administration.service.TmCjzzService;
import com.mulaobao.administration.util.UtilId;

import java.util.Date;
import java.util.Map;

public class TmCjtgListener extends AnalysisEventListener<TmCjtg> {
    private TmCjtgService tmCjtgService;
    private Map<String,Object> name;

    public TmCjtgListener(TmCjtgService tmCjtgService, Map<String,Object> name){
        this.tmCjtgService = tmCjtgService;
        this.name = name;
    }

    @Override
    public void invoke(TmCjtg tmCjtg, AnalysisContext analysisContext) {
        TmCjtg tmCjtg1 = tmCjtg;

        tmCjtg1.setChannelLx("超级推荐");

        tmCjtg1.setDateTime((Date) name.get("DateTime"));

        tmCjtg1.setPlatformBh((String) name.get("platformBh"));

        tmCjtg1.setShopBh((String)name.get("ShopBh"));

        tmCjtg1.setId(UtilId.getUUID()); //uuid
        tmCjtgService.save(tmCjtg1);
    }

    @Override
    public void doAfterAllAnalysed(AnalysisContext analysisContext) {

    }

}
