package com.mulaobao.administration.listener;

import com.alibaba.excel.context.AnalysisContext;
import com.alibaba.excel.event.AnalysisEventListener;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.mulaobao.administration.entity.CkWarehouse;
import com.mulaobao.administration.entity.MtXssj;
import com.mulaobao.administration.entity.PddCjtg;
import com.mulaobao.administration.service.CkWarehouseService;
import com.mulaobao.administration.service.MtXssjService;
import com.mulaobao.administration.service.PddCjtgService;
import com.mulaobao.administration.util.UtilId;

import java.util.Date;
import java.util.Map;

public class MtSsxjListener extends AnalysisEventListener<MtXssj> {
    private MtXssjService mtXssjService;
    private Map<String,Object> name;
    private CkWarehouseService ckWarehouseService;

    public MtSsxjListener(MtXssjService mtXssjService, Map<String,Object> name, CkWarehouseService ckWarehouseService){
        this.mtXssjService = mtXssjService;
        this.name = name;
        this.ckWarehouseService = ckWarehouseService;

    }

    @Override
    public void invoke(MtXssj mtXssj, AnalysisContext analysisContext) {
        MtXssj mtXssj1 = mtXssj;
        mtXssj1.setChannelLx("销售数据");
        QueryWrapper<CkWarehouse> ck = new QueryWrapper<>();

        if (mtXssj.getDeliveryc().substring(mtXssj.getDeliveryc().length()-10,mtXssj.getDeliveryc().length()-8).equals("家庄")){
            ck.eq("named",mtXssj.getDeliveryc().substring(mtXssj.getDeliveryc().length()-11,mtXssj.getDeliveryc().length()-8));
        }else {
            int i = mtXssj.getDeliveryc().indexOf("（");
            ck.eq("named",mtXssj.getDeliveryc().substring(i+1,i+3));
        }
        ck.eq("type",2);
        ck.eq("shpn",0);
        CkWarehouse one = ckWarehouseService.getOne(ck);
        if (one!=null){
            mtXssj1.setShopBh(ckWarehouseService.getById(one.getFid()).getShpn());
            mtXssj1.setPlatformBh((String) name.get("platformBh"));
            mtXssj1.setId(UtilId.getUUID()); //uuid
            mtXssjService.save(mtXssj1);
        }

    }

    @Override
    public void doAfterAllAnalysed(AnalysisContext analysisContext) {

    }
}
