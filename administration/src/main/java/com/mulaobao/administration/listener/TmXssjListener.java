package com.mulaobao.administration.listener;

import com.alibaba.excel.context.AnalysisContext;
import com.alibaba.excel.event.AnalysisEventListener;
import com.mulaobao.administration.entity.TmXssj;
import com.mulaobao.administration.entity.TmZtc;
import com.mulaobao.administration.service.TmXssjService;
import com.mulaobao.administration.service.TmZtcService;
import com.mulaobao.administration.util.UtilId;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

public class TmXssjListener extends AnalysisEventListener<TmXssj> {
    private TmXssjService tmXssjService;
    private Map<String,Object> name;

    public TmXssjListener(TmXssjService tmXssjService, Map<String,Object> name){
        this.tmXssjService = tmXssjService;
        this.name = name;
    }

    @Override
    public void invoke(TmXssj tmXssj, AnalysisContext analysisContext) {
        TmXssj tmXssj1 = tmXssj;

        tmXssj1.setChannelLx("销售数据");

        tmXssj1.setAddpurRate(UtilId.getduoble(tmXssj.getAddpurRate1()));
        tmXssj1.setCollRate(UtilId.getduoble(tmXssj.getCollRate1()));
        tmXssj1.setJumpoutRate(UtilId.getduoble(tmXssj.getJumpoutRate1()));
        tmXssj1.setPaymentRate(UtilId.getduoble(tmXssj.getPaymentRate1()));
        tmXssj1.setPlaorderRate(UtilId.getduoble(tmXssj.getPlaorderRate1()));

        tmXssj1.setPaymentJe(UtilId.getMl(tmXssj.getPaymentJe1())); //支付金额
        tmXssj1.setPayoldJe(UtilId.getMl(tmXssj.getPayoldJe1()));  //老买家支付金额
        tmXssj1.setRefundJe(UtilId.getMl(tmXssj.getRefundJe1()));  //成功退货退款金额
        tmXssj1.setPlaorderJe(UtilId.getMl(tmXssj.getPlaorderJe1())); //下单金额
        tmXssj1.setPaybuyNum(UtilId.getMl(tmXssj.getPaybuyNum1())); //支付买家数
        tmXssj1.setPaymentNum(UtilId.getMl(tmXssj.getPaymentNum1()));  //支付件数
        tmXssj1.setPeoaddNum(UtilId.getMl(tmXssj.getPeoaddNum1()));  //商品加购人数
        tmXssj1.setCommaddNum(UtilId.getMl(tmXssj.getCommaddNum1())); //商品加购件数
        tmXssj1.setProductViews(UtilId.getMl(tmXssj.getProductViews1())); //商品浏览量
        tmXssj1.setVisitorNum(UtilId.getMl(tmXssj.getVisitorNum1())); //商品访客数
        tmXssj1.setDetvisNum(UtilId.getMl(tmXssj.getDetvisNum1()));  //商品微详情访客数
        tmXssj1.setCommcollNum(UtilId.getMl(tmXssj.getCommcollNum1()));  //商品收藏人数
        tmXssj1.setPlaorderNum(UtilId.getMl(tmXssj.getPlaorderNum1())); //下单买家数
        tmXssj1.setLowsingNum(UtilId.getMl(tmXssj.getLowsingNum1()));  //下单件数
        tmXssj1.setPaynewNum(UtilId.getMl(tmXssj.getPaynewNum1()));  //支付新买家数
        tmXssj1.setPayoldNum(UtilId.getMl(tmXssj.getPayoldNum1())); //支付老买家数



        tmXssj1.setPlatformBh((String) name.get("platformBh"));

        tmXssj1.setShopBh((String)name.get("ShopBh"));
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
        tmXssj1.setId(UtilId.getUUID()); //uuid
        if (df.format(name.get("date")).equals(df.format(tmXssj1.getDateTime()))){
            tmXssjService.save(tmXssj1);
        }
    }

    @Override
    public void doAfterAllAnalysed(AnalysisContext analysisContext) {

    }
}
