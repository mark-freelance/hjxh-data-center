package com.mulaobao.administration.listener;

import com.alibaba.excel.context.AnalysisContext;
import com.alibaba.excel.event.AnalysisEventListener;
import com.mulaobao.administration.dao.KingdeeHsDao;
import com.mulaobao.administration.entity.KdYdzd;
import com.mulaobao.administration.entity.KingdeeHs;
import com.mulaobao.administration.service.KingdeeHsService;
import com.mulaobao.administration.util.UtilId;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

public class KingdeeHsListener extends AnalysisEventListener<KingdeeHs> {
    private KingdeeHsService kingdeeHsService;
    private Map<String,Object> name;
    private List<KingdeeHs> wdtCkmxes = new ArrayList<>();

    public KingdeeHsListener(KingdeeHsService kingdeeHsService, Map<String,Object> name){
        this.kingdeeHsService = kingdeeHsService;
        this.name = name;
    }

    @Override
    public void invoke(KingdeeHs kingdeeHs, AnalysisContext analysisContext) {


        if (kingdeeHs.getWlName()!= null||kingdeeHs.getHzLx()!=null){
            kingdeeHs.setId(UtilId.getUUID());
            kingdeeHs.setFileName(name.get("fileName")+"");
            kingdeeHs.setDateTime((Date) name.get("DateTime"));
            kingdeeHs.setWlBm(UtilId.getqd(kingdeeHs.getWlBm()));
            kingdeeHs.setWlName(UtilId.getqd(kingdeeHs.getWlName().trim()));
            wdtCkmxes.add(kingdeeHs);
        }


    }

    @Override
    public void doAfterAllAnalysed(AnalysisContext analysisContext) {
            kingdeeHsService.saveBatch(wdtCkmxes,2100);
    }
}
