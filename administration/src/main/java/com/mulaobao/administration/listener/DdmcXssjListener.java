package com.mulaobao.administration.listener;

import com.alibaba.excel.context.AnalysisContext;
import com.alibaba.excel.event.AnalysisEventListener;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.mulaobao.administration.entity.CkWarehouse;
import com.mulaobao.administration.entity.DdmcXssj;
import com.mulaobao.administration.service.CkWarehouseService;
import com.mulaobao.administration.service.DdmcXssjService;
import com.mulaobao.administration.util.UtilId;

import java.util.Date;
import java.util.Map;

public class DdmcXssjListener extends AnalysisEventListener<DdmcXssj> {
    private DdmcXssjService ddmcXssjService;
    private CkWarehouseService ckWarehouseService;
    private Map<String,Object> name;

    public DdmcXssjListener(DdmcXssjService ddmcXssjService, Map<String,Object> name,CkWarehouseService ckWarehouseService){
        this.ddmcXssjService = ddmcXssjService;
        this.ckWarehouseService = ckWarehouseService;
        this.name = name;
    }

    @Override
    public void invoke(DdmcXssj ddmcXssj, AnalysisContext analysisContext) {
        DdmcXssj ddmcXssj1 = ddmcXssj;
        ddmcXssj1.setChannelLx("销售数据");
        ddmcXssj1.setDateTime((Date) name.get("DateTime"));
        ddmcXssj1.setPlatformBh((String) name.get("platformBh"));
        QueryWrapper<CkWarehouse> ck = new QueryWrapper<>();
        ck.eq("named",ddmcXssj.getWarehouse());
        ck.eq("type",1);
        ck.eq("shpn",0);
        CkWarehouse one = ckWarehouseService.getOne(ck);
        if (one!=null){
            ddmcXssj1.setShopBh(ckWarehouseService.getById(one.getFid()).getShpn());
            ddmcXssj1.setId(UtilId.getUUID()); //uuid
           // ddmcXssjService.save(ddmcXssj1);
        }
    }

    @Override
    public void doAfterAllAnalysed(AnalysisContext analysisContext) {

    }
}
