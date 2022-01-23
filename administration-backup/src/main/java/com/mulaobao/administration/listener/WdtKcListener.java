package com.mulaobao.administration.listener;

import com.alibaba.excel.context.AnalysisContext;
import com.alibaba.excel.event.AnalysisEventListener;
import com.mulaobao.administration.dao.KdWdtzdDao;
import com.mulaobao.administration.entity.KdWdtzd;
import com.mulaobao.administration.entity.WdtKc;
import com.mulaobao.administration.service.WdtKcService;
import com.mulaobao.administration.util.UtilId;
import lombok.SneakyThrows;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class WdtKcListener extends AnalysisEventListener<WdtKc> {
    private WdtKcService wdtKcService ;
    private String name;
    private List<WdtKc> wdtCkmxes = new ArrayList<>();
    private static SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
    public WdtKcListener(WdtKcService wdtKcService, String name){
        this.wdtKcService = wdtKcService;
        this.name = name;
    }
    @Override
    @SneakyThrows
    public void invoke(WdtKc wdtKc, AnalysisContext analysisContext) {
        wdtKc.setId(UtilId.getUUID());
        if (wdtKc.getGoodsBh().indexOf("合计")==-1){
            String kc = name.substring(0,name.indexOf("库"));
            String sc = kc.substring(0,4)+"-"+kc.substring(4,6)+"-"+kc.substring(6,8);
            Date parse = null;
            try {
                parse = simpleDateFormat.parse(sc);
            } catch (ParseException e) {
                e.printStackTrace();
            }
            wdtKc.setDateTime(parse);
            wdtKc.setFileName(name);
            wdtKc.setGoodsBh(UtilId.getqd(wdtKc.getGoodsBh()));
            wdtKc.setGoodsName(UtilId.getqd(wdtKc.getGoodsName()));
            wdtKc.setLx(UtilId.getqd(wdtKc.getLx()));
            wdtKc.setWarehouse(UtilId.getqd(wdtKc.getWarehouse()));
            wdtCkmxes.add(wdtKc);
        }

    }

    @SneakyThrows
    @Override
    public void doAfterAllAnalysed(AnalysisContext analysisContext) {
                wdtKcService.saveBatch(wdtCkmxes,2100);
        System.out.println("成功");
    }
}
