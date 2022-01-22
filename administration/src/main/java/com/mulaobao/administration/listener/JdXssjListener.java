package com.mulaobao.administration.listener;

import com.alibaba.excel.context.AnalysisContext;
import com.alibaba.excel.event.AnalysisEventListener;
import com.mulaobao.administration.entity.JdXssj;
import com.mulaobao.administration.entity.TmCjzz;
import com.mulaobao.administration.service.JdXssjService;
import com.mulaobao.administration.service.TmCjzzService;
import com.mulaobao.administration.util.UtilId;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

public class JdXssjListener extends AnalysisEventListener<JdXssj> {
    private JdXssjService jdXssjService;
    private Map<String,Object> name;
    private static SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");

    public JdXssjListener(JdXssjService jdXssjService, Map<String,Object> name){
        this.jdXssjService = jdXssjService;
        this.name = name;
    }

    @Override
    public void invoke(JdXssj jdXssj, AnalysisContext analysisContext) {
        JdXssj jdXssj1 = jdXssj;

        jdXssj1.setChannelLx("销售数据");
        String substring = jdXssj.getDateTime1();
        String year = substring.substring(0,4);
        String month = substring.substring(4,6);
        String day = substring.substring(6,8);
        String da = year+"-"+month+"-"+day;
        try {
            jdXssj1.setDateTime(simpleDateFormat.parse(da));
        } catch (ParseException e) {
            e.printStackTrace();
        }

          jdXssj1.setBrowseNumhb(UtilId.getduoble(jdXssj.getBrowseNumhb1()));//浏览量环比
        jdXssj1.setVisHb(UtilId.getduoble(jdXssj.getVisHb1()));//访客数环比
        jdXssj1.setBrowseRjhb(UtilId.getduoble(jdXssj.getBrowseNumhb1()));// 人均浏览量环比
       jdXssj1.setStopTimepjhb(UtilId.getduoble(jdXssj.getStopTimepjhb1())); // 平均停留时间环比
        jdXssj1.setJumplossRatehb(UtilId.getduoble(jdXssj.getJumplossRatehb1()));// 跳失率//跳失率环比
       jdXssj1.setDealKhshb(UtilId.getduoble(jdXssj.getDealKhshb1()));// 成交客户数环比
        jdXssj1.setJumplossRate(UtilId.getduoble(jdXssj.getJumplossRate1()));
        jdXssj1.setDealNumhb(UtilId.getduoble(jdXssj.getDealNumhb1()));// 成交单量环比
        jdXssj1.setDealJehb(UtilId.getduoble(jdXssj.getDealJehb1()));// 成交金额环比
        jdXssj1.setCustomerpriceHb(UtilId.getduoble(jdXssj.getCustomerpriceHb1()));// 客单价环比
        jdXssj1.setDealspNumhb(UtilId.getduoble(jdXssj.getDealspNumhb1()));// 成交商品件数环比
       jdXssj1.setDealRate(UtilId.getduoble(jdXssj.getDealRate1())); // 成交转化率
        jdXssj1.setDealRatehb(UtilId.getduoble(jdXssj.getDealRatehb1()));// 成交转化率环比
        jdXssj1.setPlaorderKhshb(UtilId.getduoble(jdXssj.getPlaorderKhshb1()));// 下单客户数环比
        jdXssj1.setPlaorderNumhb(UtilId.getduoble(jdXssj.getPlaorderNumhb1()));// 下单单量环比
       jdXssj1.setPlaorderJehb(UtilId.getduoble(jdXssj.getPlaorderJehb1())); //下单金额环比
       jdXssj1.setPlaorderRatehb(UtilId.getduoble(jdXssj.getPlaorderRatehb1())); // 下单商品件数环比
       jdXssj1.setPlaorderCjrate(UtilId.getduoble(jdXssj.getPlaorderCjrate1())); // 下单转化率环比
       jdXssj1.setPlaorderCjratehb(UtilId.getduoble(jdXssj.getPlaorderCjratehb1())); // 下单成交转化率环比
        jdXssj1.setPlaorderspNumhb(UtilId.getduoble(jdXssj.getPlaorderspNumhb1()));
jdXssj1.setPlaorderRate(UtilId.getduoble(jdXssj.getPlaorderRate1()));
jdXssj1.setDateTime((Date) name.get("DateTime"));
        jdXssj1.setPlatformBh((String) name.get("platformBh"));

        jdXssj1.setShopBh((String)name.get("ShopBh"));

        jdXssj1.setId(UtilId.getUUID()); //uuid
        jdXssjService.save(jdXssj1);
    }

    @Override
    public void doAfterAllAnalysed(AnalysisContext analysisContext) {

    }
}
