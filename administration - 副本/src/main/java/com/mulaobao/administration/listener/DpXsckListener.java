package com.mulaobao.administration.listener;

import com.alibaba.excel.context.AnalysisContext;
import com.alibaba.excel.event.AnalysisEventListener;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.mulaobao.administration.dao.KdWdtzdDao;
import com.mulaobao.administration.entity.DpCkmx;
import com.mulaobao.administration.entity.KdWdtzd;
import com.mulaobao.administration.entity.LsShop;
import com.mulaobao.administration.service.DpXsckService;
import com.mulaobao.administration.service.LsShopService;
import com.mulaobao.administration.util.UtilId;
import lombok.SneakyThrows;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

public class DpXsckListener extends AnalysisEventListener<DpCkmx> {
    private DpXsckService dpXsckService ;
    private String name;
    private String fileName;
    private List<DpCkmx> wdtCkmxes = new ArrayList<>();
    private static SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
    public DpXsckListener(DpXsckService dpXsckService,String name,String fileName){
        this.dpXsckService = dpXsckService;
        this.name = name;
        this.fileName = fileName;
    }
    @Override
    @SneakyThrows
    public void invoke(DpCkmx dpCkmx, AnalysisContext analysisContext) {
                  if (dpCkmx.getYsDh().indexOf("合计")==-1){

                      dpCkmx.setId(UtilId.getUUID());
                      dpCkmx.setShopBh(name);
                      dpCkmx.setFileName(fileName);
                      dpCkmx.setTkJe(UtilId.doublelsnull(dpCkmx.getTkJe2()));
                      dpCkmx.setFsDatetime(simpleDateFormat.parse(dpCkmx.getFsDatetime2()));
                      wdtCkmxes.add(dpCkmx);
                  }

    }

    @SneakyThrows
    @Override
    public void doAfterAllAnalysed(AnalysisContext analysisContext) {
            dpXsckService.saveBatch(wdtCkmxes,2100);
            System.out.println("成功");
    }
}
