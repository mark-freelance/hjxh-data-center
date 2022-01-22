package com.mulaobao.administration.listener;

import com.alibaba.excel.context.AnalysisContext;
import com.alibaba.excel.event.AnalysisEventListener;
import com.mulaobao.administration.dao.WdtCkmxDao;
import com.mulaobao.administration.entity.WdtCkmx;
import com.mulaobao.administration.entity.WdtCkmx2;
import com.mulaobao.administration.service.WdtCkmxService;
import com.mulaobao.administration.util.UtilId;
import lombok.SneakyThrows;
import org.springframework.beans.BeanUtils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class WdtCkmxListener extends AnalysisEventListener<WdtCkmx> {
    private WdtCkmxService wdtCkmxDao ;
    private String name;
    private List<WdtCkmx> wdtCkmxes1 = new ArrayList<>();
    private static SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm");
    public WdtCkmxListener(WdtCkmxService wdtCkmxDao,String name){
        this.wdtCkmxDao = wdtCkmxDao;
        this.name = name;
    }
    @Override
    @SneakyThrows
    public void invoke(WdtCkmx wdtCkmx, AnalysisContext analysisContext) {
                if (wdtCkmx.getCkDh().indexOf("合计")==-1){
                  //  System.out.println(wdtCkmx);
                    wdtCkmx.setId(UtilId.getUUID());
                    wdtCkmx.setWlDh(UtilId.getqd(wdtCkmx.getWlDh()));
                    wdtCkmx.setFileName(name);
                        wdtCkmx.setCkDatetime(simpleDateFormat.parse(wdtCkmx.getCkdaTetime1()));
                        wdtCkmx.setDateTime(new Date());
                    wdtCkmxes1.add(wdtCkmx);
                }

    }

    @SneakyThrows
    @Override
    public void doAfterAllAnalysed(AnalysisContext analysisContext) {
            wdtCkmxDao.saveBatch(wdtCkmxes1,2100);
       /* int count = 11;
        int batch = wdtCkmxes1.size() / count;
        if (wdtCkmxes1.size() % count != 0) {
            batch = batch + 1;
        }
        for (int i = 0; i < batch; i++) {
            List<WdtCkmx> subList = null;
            if (i == batch - 1) {
                subList = wdtCkmxes1.subList(count * i, wdtCkmxes1.size());
            } else {
                subList = wdtCkmxes1.subList(count * i, count * (i + 1));
            }
            wdtCkmxDao.insertBatch(subList);
        }
        System.out.println("成功");

        */

    }
}
