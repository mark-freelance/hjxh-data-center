package com.mulaobao.administration.listener;

import com.alibaba.excel.context.AnalysisContext;
import com.alibaba.excel.event.AnalysisEventListener;
import com.mulaobao.administration.dao.KdWdtzdDao;
import com.mulaobao.administration.dao.WdtCkmxDao;
import com.mulaobao.administration.entity.KdWdtzd;
import com.mulaobao.administration.entity.WdtCkmx;
import com.mulaobao.administration.entity.WdtCkmx2;
import com.mulaobao.administration.util.UtilId;
import lombok.SneakyThrows;
import org.springframework.beans.BeanUtils;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

public class KdWdtzdListener extends AnalysisEventListener<KdWdtzd> {
    private KdWdtzdDao wdtCkmxDao ;
    private String name;
    private List<KdWdtzd> wdtCkmxes = new ArrayList<>();
    public KdWdtzdListener(KdWdtzdDao wdtCkmxDao,String name){
        this.wdtCkmxDao = wdtCkmxDao;
        this.name = name;
    }
    @Override
    public void invoke(KdWdtzd kdWdtzd, AnalysisContext analysisContext) {
        kdWdtzd.setId(UtilId.getUUID());
        kdWdtzd.setWlDh(UtilId.getqd(kdWdtzd.getWlDh()));
        kdWdtzd.setKdName(name.substring(6,name.indexOf("旺")));
        kdWdtzd.setDateTime(name.substring(0,6));
        if (kdWdtzd.getSjZl2().indexOf("NA")==-1){
            kdWdtzd.setSjZl(UtilId.doublelsnull(kdWdtzd.getSjZl2()));
            String[] s = kdWdtzd.getProvince().split(" ");
            if (s.length!=0){
                if (s.length==2){
                    kdWdtzd.setProvince(s[0]);
                    kdWdtzd.setCity(s[1]);
                }

                if (s.length==3){
                    kdWdtzd.setProvince(s[0]);
                    kdWdtzd.setCity(s[1]);
                    kdWdtzd.setCounty(s[2]);
                }

            }
        }


        wdtCkmxes.add(kdWdtzd);

    }

    @SneakyThrows
    @Override
    public void doAfterAllAnalysed(AnalysisContext analysisContext) {
        int count = 8;
        int batch = wdtCkmxes.size() / count;
        if (wdtCkmxes.size() % count != 0) {
            batch = batch + 1;
        }
        for (int i = 0; i < batch; i++) {
            List<KdWdtzd> subList = null;
            if (i == batch - 1) {
                subList = wdtCkmxes.subList(count * i, wdtCkmxes.size());
            } else {
                subList = wdtCkmxes.subList(count * i, count * (i + 1));
            }
            // System.out.println("1");
            wdtCkmxDao.insertBatch(subList);
        }
        System.out.println("成功");
    }
}
