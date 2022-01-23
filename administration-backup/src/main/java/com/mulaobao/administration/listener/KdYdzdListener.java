package com.mulaobao.administration.listener;

import com.alibaba.excel.context.AnalysisContext;
import com.alibaba.excel.event.AnalysisEventListener;
import com.mulaobao.administration.dao.KdWdtzdDao;
import com.mulaobao.administration.entity.KdWdtzd;
import com.mulaobao.administration.entity.KdYdzd;
import com.mulaobao.administration.service.KdYdzdService;
import com.mulaobao.administration.util.UtilId;
import lombok.SneakyThrows;

import java.util.ArrayList;
import java.util.List;

public class KdYdzdListener extends AnalysisEventListener<KdYdzd> {
    private KdYdzdService kdYdzdService ;
    private String name;
    private List<KdYdzd> wdtCkmxes = new ArrayList<>();
    public KdYdzdListener(KdYdzdService kdYdzdService, String name){
        this.kdYdzdService = kdYdzdService;
        this.name = name;
    }
    @Override
    public void invoke(KdYdzd kdYdzd, AnalysisContext analysisContext) {
                        kdYdzd.setId(UtilId.getUUID());
                        kdYdzd.setKdName(name.substring(6,name.indexOf("快")));
                        wdtCkmxes.add(kdYdzd);

    }

    @SneakyThrows
    @Override
    public void doAfterAllAnalysed(AnalysisContext analysisContext) {
       // kdYdzdService.saveBatch(wdtCkmxes,2100);
       // int count = 8;
      //  int batch = wdtCkmxes.size() / count;
      //  System.out.println(wdtCkmxes.size());
      //  if (wdtCkmxes.size() % count != 0) {
    //        batch = batch + 1;
    //    }
      /*  for (int i = 0; i < batch; i++) {
            List<KdYdzd> subList = null;
            if (i == batch - 1) {
                subList = wdtCkmxes.subList(count * i, wdtCkmxes.size());
            } else {
                subList = wdtCkmxes.subList(count * i, count * (i + 1));
            }
            // System.out.println("1");
            System.out.println(subList.size());
            kdYdzdService.saveBatch(subList);
        }

       */
        System.out.println("成功");
    }
}
