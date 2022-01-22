package com.mulaobao.administration.listener;

import com.alibaba.excel.context.AnalysisContext;
import com.alibaba.excel.event.AnalysisEventListener;
import com.mulaobao.administration.dao.KingdeeHsDao;
import com.mulaobao.administration.entity.JdXssj;
import com.mulaobao.administration.entity.KingdeeHs;
import com.mulaobao.administration.service.JdXssjService;
import com.mulaobao.administration.service.KingdeeHsService;
import com.mulaobao.administration.util.UtilId;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

public class KingdeeHsListener extends AnalysisEventListener<KingdeeHs> {
    private KingdeeHsDao kingdeeHsService;
    private Map<String,Object> name;


    public KingdeeHsListener(KingdeeHsDao kingdeeHsService, Map<String,Object> name){
        this.kingdeeHsService = kingdeeHsService;
        this.name = name;
    }

    @Override
    public void invoke(KingdeeHs kingdeeHs, AnalysisContext analysisContext) {


        if (kingdeeHs.getWlName()!= null||kingdeeHs.getHzLx()!=null){
            kingdeeHs.setId(UtilId.getUUID());
            kingdeeHs.setDateTime((Date) name.get("DateTime"));
            kingdeeHs.setWlBm(UtilId.getqd(kingdeeHs.getWlBm()));
            kingdeeHs.setWlName(UtilId.getqd(kingdeeHs.getWlName().trim()));
             kingdeeHsService.insert(kingdeeHs);
        }


    }

    @Override
    public void doAfterAllAnalysed(AnalysisContext analysisContext) {

    }
}
