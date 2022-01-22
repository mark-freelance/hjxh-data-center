package com.mulaobao.administration.service.impl;

import com.alibaba.excel.EasyExcel;
import com.alibaba.excel.write.handler.SheetWriteHandler;
import com.alibaba.excel.write.metadata.holder.WriteSheetHolder;
import com.alibaba.excel.write.metadata.holder.WriteWorkbookHolder;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.mulaobao.administration.dao.LsSaleDao;
import com.mulaobao.administration.entity.*;
import com.mulaobao.administration.service.*;
import com.mulaobao.administration.util.UtilId;
import io.swagger.annotations.Example;
import lombok.SneakyThrows;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.crypto.Data;
import java.awt.print.Pageable;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * (LsSale)表服务实现类
 *
 * @author makejava
 * @since 2021-09-22 16:36:04
 */
@Service("lsSaleService")
public class LsSaleServiceImpl extends ServiceImpl<LsSaleDao, LsSale> implements LsSaleService {
    private final Logger LOG = LoggerFactory.getLogger(this.getClass());
    private static SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
    @Autowired
    private LsShopService lsShopService;

    @Autowired
    private LsSaleService lsSaleService;


    @Autowired
    private PddCjtgService cjtgService;

    @Autowired
    private PddFxtService fxtService;

    @Autowired
    private PddSstgService sstgService;

    @Resource
    private PddMxdpService pddMxdpService;

    @Resource
    private TmZtcService tmZtcService;


    @Resource
    private TmPxbService tmPxbService;


    @Resource
    private TmCjtgService tmCjtgService;

    @Resource
    private TmCjzzService tmCjzzService;

    @Resource
    private TmAitgService tmAitgService;


    @Resource
    private TtZtcService ttZtcService;

    @Resource
    private JdGwcdService jdGwcdService;

    @Resource
    private JdJdkcService jdJdkcService;

    @Resource
    private JdCjtgService jdCjtgService;

    @Resource
    private JdXssjService jdXssjService;


    @Resource
    private JdCommodityService jdCommodityService;

    @Resource
    private PddCommodityService commodityService;

    @Resource
    private TmCommodityService tmCommodityService;


    @Override
    public void addLsSale(LsSale lsSale) {
        lsSale.setId(UtilId.getUUID());
        LsShop shop_bh = lsShopService.getOne(new QueryWrapper<LsShop>().eq("Shop_bh", lsSale.getShopBh()));

        //平台扣点
        if (lsSale.getPlatformBh().equals("101")){
            lsSale.setPlatformbuckle(lsSale.getActualsales()*0.006);  //拼多多平台

        }
        if (lsSale.getPlatformBh().equals("102")){
            if (shop_bh.getShopName().substring(shop_bh.getShopName().length()-4,shop_bh.getShopName().length()-1).equals("特价版")){
                lsSale.setPlatformbuckle(lsSale.getActualsales()*0.02); //淘特
            }
            if (shop_bh.getShopName().substring(shop_bh.getShopName().length()-3,shop_bh.getShopName().length()-1).equals("天猫")){
                lsSale.setPlatformbuckle(lsSale.getActualsales()*0.025);//天猫
            }
            if (shop_bh.getShopName().substring(shop_bh.getShopName().length()-3,shop_bh.getShopName().length()-1).equals("淘宝")){
                lsSale.setPlatformbuckle(0.0);//天猫
            }
        }
        if (lsSale.getPlatformBh().equals("103")){
            lsSale.setPlatformbuckle(lsSale.getActualsales()*0.05);//京东
        }

        if (lsSale.getPlatformBh().equals("104")){
            lsSale.setActualsales(lsSale.getSales()-lsSale.getRefundamount());
            lsSale.setPlatformbuckle(lsSale.getActualsales()*0.0115);//多多买菜
        }
        if (lsSale.getPlatformBh().equals("105")){

            if (shop_bh.getShopName().substring(shop_bh.getShopName().length()-4,shop_bh.getShopName().length()-1).equals("蘑菇街")){
                lsSale.setActualsales(lsSale.getSales()-lsSale.getRefundamount());
                lsSale.setPlatformbuckle(lsSale.getActualsales()*0.14);
            }else {
                lsSale.setActualsales(lsSale.getSales()-lsSale.getRefundamount());
                lsSale.setPlatformbuckle(lsSale.getActualsales()*0.02);
            }

        }
        //推广流量
        lsSale.setMoresearchfy(UtilId.getnlllduoble(lsSale.getMoresearchfy()));
        lsSale.setMoresearchll(UtilId.getnlllduoble( lsSale.getMoresearchll()));
        lsSale.setManyscenesfy(UtilId.getnlllduoble(lsSale.getManyscenesfy()));
        lsSale.setManyscenesll(UtilId.getnlllduoble(lsSale.getManyscenesll()));
        lsSale.setRestassuredpushfy(UtilId.getnlllduoble(lsSale.getRestassuredpushfy()));
        lsSale.setRestassuredpushll(UtilId.getnlllduoble( lsSale.getRestassuredpushll()));
        lsSale.setAipromotionfy(UtilId.getnlllduoble(lsSale.getAipromotionfy()));
        lsSale.setAipromotionll(UtilId.getnlllduoble(lsSale.getAipromotionll()));
        lsSale.setPinxiaobaofy(UtilId.getnlllduoble( lsSale.getPinxiaobaofy()));
        lsSale.setPinxiaobaoll(UtilId.getnlllduoble( lsSale.getPinxiaobaoll()));
        lsSale.setTaokepromotionfy(UtilId.getnlllduoble(lsSale.getTaokepromotionfy()));
        lsSale.setTaokepromotionll(UtilId.getnlllduoble(lsSale.getTaokepromotionll()));

        lsSale.setPromotionflow(UtilId.getnlllduoble(lsSale.getMoresearchll())+UtilId.getnlllduoble(lsSale.getManyscenesll())+UtilId.getnlllduoble(lsSale.getRestassuredpushll())+
                UtilId.getnlllduoble(lsSale.getTaokepromotionll())+UtilId.getnlllduoble(lsSale.getAipromotionll())+UtilId.getnlllduoble(lsSale.getPinxiaobaoll()));

        //推广费用
        lsSale.setPromotioncost(UtilId.getnlllduoble(lsSale.getMoresearchfy())+UtilId.getnlllduoble(lsSale.getManyscenesfy())+UtilId.getnlllduoble(lsSale.getRestassuredpushfy())+
                UtilId.getnlllduoble(lsSale.getTaokepromotionfy())+UtilId.getnlllduoble(lsSale.getAipromotionfy())+UtilId.getnlllduoble(lsSale.getPinxiaobaofy()));
        //推广流量占比
        if (lsSale.getPlatformBh().equals("104")){
            lsSale.setPromotionflowzb(0.0);
            lsSale.setTotaltraffic(0.0);
        }else {
            if (UtilId.getnlllduoble(lsSale.getPromotionflowzb())==1.1){
                lsSale.setPromotionflowzb(0.0);
            }else {
                lsSale.setPromotionflowzb(UtilId.getnlllduoble(lsSale.getPromotionflow())/UtilId.getnlllduoble(lsSale.getTotaltraffic()));
            }
        }


        //推广费用占比
        lsSale.setPromotioncostzb(UtilId.getnlllduoble(lsSale.getPromotioncost())/UtilId.getnlllduoble(lsSale.getSales()));

//合计总费用
        lsSale.setTotalcost(UtilId.getnlllduoble(lsSale.getPromotioncost())+UtilId.getnlllduoble(lsSale.getPlatformbuckle())+UtilId.getnlllduoble(lsSale.getOtherexpenses()));

        //费销比
        lsSale.setCostratio(UtilId.getnlllduoble(lsSale.getTotalcost())/UtilId.getnlllduoble(lsSale.getSales()));


        //免费流量
        lsSale.setFreetraffic(UtilId.getnlllduoble(lsSale.getTotaltraffic())-UtilId.getnlllduoble(lsSale.getPromotionflow()));

        //免费流量占比
        if (lsSale.getPlatformBh().equals("104")){
            lsSale.setFreetrafficzb(0.0);
        }else {
            if (UtilId.getnlllduoble(lsSale.getFreetrafficzb())==1.1){
                lsSale.setFreetrafficzb(0.0);
            }else {
                lsSale.setFreetrafficzb(UtilId.getnlllduoble(lsSale.getFreetraffic())/UtilId.getnlllduoble(lsSale.getTotaltraffic()));
            }
        }

        if (lsSale.getPlatformBh().equals("105")){
            if (!shop_bh.getShopName().substring(shop_bh.getShopName().length()-4,shop_bh.getShopName().length()-1).equals("蘑菇街")){
                lsSale.setTotaltraffic(0.0);
                lsSale.setFreetrafficzb(0.0);
                lsSale.setPromotioncostzb(0.0);

            }
        }
        baseMapper.insert(lsSale);
    }



    //总的
    @Override
    public void generalSummary(Date parse ,LsSale one1) {
        LsSale one = one1;

        QueryWrapper<LsSale> ew = new QueryWrapper<>();
        ew.eq("Date_time",parse);
        ew.ne("shop_bh",10);
        ew.select("sum(sales) as sales, sum(OrderQuantity) as OrderQuantity,sum(Num_Buyers) as Num_Buyers ,sum(RefundAmount) as RefundAmount ,sum(RefundRate) as RefundRate ,sum(ActualSales) as ActualSales,sum(PaymentRate) as PaymentRate,sum(CustomerPrice) as CustomerPrice,sum(TotalTraffic) as TotalTraffic,sum(FreeTraffic) as FreeTraffic,sum(FreeTrafficzb) as FreeTrafficzb,sum(MoreSearchll) as MoreSearchll,sum(ManyScenesll) as ManyScenesll,sum(RestAssuredPushll) as RestAssuredPushll,\n" +
                "sum(TaokePromotionll) as TaokePromotionll,sum(AIPromotionll) as AIPromotionll,sum(Pinxiaobaoll) as Pinxiaobaoll,sum(PromotionFlow) as PromotionFlow,sum(PromotionFlowzb) as PromotionFlowzb,sum(MoreSearchfy) as MoreSearchfy,sum(ManyScenesfy) as ManyScenesfy,sum(RestAssuredPushfy) as RestAssuredPushfy,sum(TaokePromotionfy) as TaokePromotionfy,sum(AIPromotionfy) as AIPromotionfy,sum(Pinxiaobaofy) as Pinxiaobaofy,sum(PromotionCost) as PromotionCost,sum(PromotionCostzb) as PromotionCostzb,sum(PlatformBuckle) as PlatformBuckle,sum(OtherExpenses) as OtherExpenses, sum(TotalCost) as TotalCost,sum(CostRatio) as CostRatio");
        one = lsSaleService.getOne(ew);

        QueryWrapper<LsSale> ew1 = new QueryWrapper<>();
        ew1.eq("Date_time",parse);
        ew1.ne("shop_bh",10);
        ew1.select("sum(Num_Buyers) as numbuyers");
        Map<String, Object> map = lsSaleService.getMap(ew1);
        one.setDateTime(parse);
        one.setShopBh("10");
        one.setPlatformBh("10");
        one.setNumBuyers(Double.parseDouble(map.get("numbuyers").toString()));
        one.setRefundrate(UtilId.sting2double(one.getRefundamount()/one.getSales())); //退款率
        one.setPaymentrate(UtilId.sting2double(one.getNumBuyers()/one.getTotaltraffic()));//支付转化率
        one.setFreetrafficzb(UtilId.sting2double(one.getFreetraffic()/one.getTotaltraffic()));//免费流量占比
        one.setPromotioncostzb(UtilId.sting2double(one.getPromotioncost()/one.getSales()));//推广费用占比
        one.setPromotionflowzb(UtilId.sting2double(one.getPromotionflow()/one.getTotaltraffic()));//推广流量占比
        one.setCostratio(UtilId.sting2double(one.getTotalcost()/one.getSales()));//费销比
        one.setId(one1.getId());
        baseMapper.updateById(one);
    }

    @Override
    public List<LsSale> pddlists(String shop) {
        return baseMapper.pddlists(shop);
    }

    @Override
    public List<LsSale> tjblists(String shop) {
        return baseMapper.tjblists(shop);
    }

    @Override
    public List<LsSale> jdlists(String shop) {
        return baseMapper.jdlists(shop);
    }

    @Override
    public List<LsSale> tmlists(String shop) {
        return baseMapper.tmlists(shop);
    }

    @Override
    public List<LsSale> qtlists(String shop) {
        return baseMapper.qtlists(shop);
    }

    @Override
    public List<LsSale> mgjlists(String shop) {
        return baseMapper.mgjlists(shop);
    }

    @Override
    public List<LsSale> dylists(String shop) {
        return baseMapper.dylists(shop);
    }

    @Override
    public List<LsSale> zhzlists() {
        return baseMapper.zhzlists();
    }

    @Override
    public LsSale xgzhzlists(Date shop) {
        return baseMapper.xgzhzlists(shop);
    }

    @Override
    public List<LsSale> qitiaolists() {
        return baseMapper.qitiaolists();
    }

    @Override
    public List<LsSale> pddlists1(String shop) {
        return baseMapper.pddlists1(shop);
    }


    //拼多多的商品概况
    @Override

    public void setLsae(String lsae) {
        LOG.info(lsae);
        JSONObject jsonObject = JSONObject.fromObject(lsae);
        LsShop one1 = lsShopService.getOne(new QueryWrapper<LsShop>().eq("PlatForm_bh", 101).eq("Shop_name", jsonObject.getString("shop_title")+"(拼多多)"));
        LsSale one = baseMapper.selectOne(new QueryWrapper<LsSale>().eq("PlatForm_bh", 101).eq("Shop_bh",one1.getShopBh()).eq("Date_time",jsonObject.getString("stat_date")));
        LsSale lsSale = new LsSale();
        lsSale.setId(UtilId.getUUID());
        lsSale.setPlatformBh("101");
        lsSale.setShopBh(one1.getShopBh());
        Date datae = null;
        try {
            datae = simpleDateFormat.parse(jsonObject.getString("stat_date"));
        } catch (ParseException e) {
            e.printStackTrace();
        }
        lsSale.setDateTime(datae);

        if (lsae.indexOf("quality")==-1) {
            if (one == null) {
                String goods_detail = jsonObject.getString("visitor_dashboard");
                JSONObject jsonObject1 = JSONObject.fromObject(goods_detail);
                lsSale.setSales(UtilId.getMl(jsonObject1.getString("shop_pay_amt"))); //全店销售额
                lsSale.setNumBuyers(UtilId.getMl(jsonObject1.getString("shop_pay_ordr_usr_cnt"))); //支付买家数
                lsSale.setOrderquantity(UtilId.getMl(jsonObject1.getString("shop_pay_ordr_cnt")));  //订单量
                lsSale.setTotaltraffic(UtilId.getMl(jsonObject1.getString("shop_uv")));  //店铺总流量
                lsSale.setRefundamount(0.0); //退款金额
                if (lsSale.getNumBuyers()!=0){
                    lsSale.setCustomerprice(lsSale.getSales() / lsSale.getNumBuyers()); //客单价
                }else {
                    lsSale.setCustomerprice(0.0);
                }
                if (lsSale.getSales()!=0){
                    lsSale.setRefundrate(UtilId.sting2double(lsSale.getRefundamount() / lsSale.getSales())); //退款率
                }
                lsSale.setActualsales(lsSale.getSales() - lsSale.getRefundamount());  //实际销售额
                if(lsSale.getTotaltraffic()!=0){
                    lsSale.setPaymentrate(UtilId.sting2double(lsSale.getNumBuyers() / lsSale.getTotaltraffic())); //支付转化率
                }

                lsSale.setFreetraffic(lsSale.getTotaltraffic()); //免费流量
                if (lsSale.getFreetraffic()==0){
                    lsSale.setFreetrafficzb(0.0); //免费流量占比
                }else {
                    lsSale.setFreetrafficzb(1.0); //免费流量占比
                }

                lsSale.setPromotioncostzb(0.0); //推广费用占比
                lsSale.setPromotionflowzb(0.0); //推广流量占比
                lsSale.setOtherexpenses(0.0);
                lsSale.setPlatformbuckle(lsSale.getActualsales() * 0.006); //平台扣点
                lsSale.setTotalcost(lsSale.getPlatformbuckle()); //合计总费用
                if(lsSale.getSales()!=0){
                    lsSale.setCostratio(UtilId.sting2double(lsSale.getTotalcost() / lsSale.getSales())); //费销比
                }

                baseMapper.insert(lsSale);
            } else {
                String goods_detail = jsonObject.getString("visitor_dashboard");
                JSONObject jsonObject1 = JSONObject.fromObject(goods_detail);
                one.setSales(UtilId.getMl(jsonObject1.getString("shop_pay_amt"))); //全店销售额
                one.setNumBuyers(UtilId.getMl(jsonObject1.getString("shop_pay_ordr_usr_cnt"))); //支付买家数
                one.setOrderquantity(UtilId.getMl(jsonObject1.getString("shop_pay_ordr_cnt")));  //订单量
                one.setTotaltraffic(UtilId.getMl(jsonObject1.getString("shop_uv")));  //店铺总流量
                if(one.getNumBuyers()!=0){
                    one.setCustomerprice(one.getSales() / one.getNumBuyers()); //客单价
                }else {
                    lsSale.setCustomerprice(0.0);
                }

                if(one.getSales()!=0){
                    one.setRefundrate(UtilId.sting2double(one.getRefundamount() / one.getSales())); //退款率
                }

                one.setActualsales(one.getSales() - one.getRefundamount());  //实际销售额
                if(one.getTotaltraffic()!=0){
                    one.setPaymentrate(UtilId.sting2double(one.getNumBuyers() / one.getTotaltraffic())); //支付转化率
                }

                lsSale.setOtherexpenses(0.0);
                //多多场景

                Map<String, Object> stat_date = cjtgService.getNum(one.getShopBh(), datae);
                if (stat_date!=null) {
                    if (stat_date.size() != 0) {
                        one.setManyscenesll(UtilId.sting2double(Double.parseDouble(stat_date.get("giveNum") + "")));
                        one.setManyscenesfy(UtilId.sting2double(Double.parseDouble(stat_date.get("SpendNum") + "")));
                    } else {
                        one.setManyscenesfy(0.0);
                        one.setManyscenesll(0.0);
                    }
                }
                //搜索场景
                Map<String, Object> stat_date1 = sstgService.getNum(one.getShopBh(), datae);
                if (stat_date1!=null){


                    if (stat_date1.size() != 0) {
                        one.setMoresearchll(UtilId.sting2double(Double.parseDouble(stat_date1.get("giveNum") + "")));
                        one.setMoresearchfy(UtilId.sting2double(Double.parseDouble(stat_date1.get("SpendNum") + "")));
                    } else {
                        one.setMoresearchfy(0.0);
                        one.setMoresearchll(0.0);
                    }
                }
                //放心推
                Map<String, Object> stat_date2 = fxtService.getNum(one.getShopBh(), datae);
                if (stat_date2!=null) {
                    if (stat_date2.size() != 0) {
                        one.setRestassuredpushfy(UtilId.sting2double(Double.parseDouble(stat_date2.get("RestAssuredPushfy") + "".trim())));
                    } else {
                        one.setRestassuredpushfy(0.0);
                    }
                }
                if (one.getTotaltraffic() != null) {
                    if (one.getTotaltraffic() != 0) {
                        one.setPromotionflow(UtilId.getnlllduoble(one.getMoresearchll()) + UtilId.getnlllduoble(one.getManyscenesll()));//推广总流量
                        one.setPromotionflowzb(UtilId.sting2double(one.getPromotionflow() / one.getTotaltraffic()));
                        one.setFreetraffic(one.getTotaltraffic()-one.getPromotionflow());
                        one.setFreetrafficzb(UtilId.sting2double(one.getFreetraffic()/one.getTotaltraffic()));
                    }
                }

                if (one.getSales() != null) {
                    if (one.getSales() != 0) {
                        one.setPromotioncost(UtilId.getnlllduoble(one.getMoresearchfy()) + UtilId.getnlllduoble(one.getManyscenesfy()) + UtilId.getnlllduoble(one.getRestassuredpushfy()));//推广总费用                }
                        one.setPromotioncostzb(UtilId.sting2double(one.getPromotioncost() / one.getSales()));
                    }
                }

                one.setPlatformbuckle(one.getActualsales() * 0.006); //平台扣点

                one.setTotalcost(one.getPromotioncost() + one.getPlatformbuckle() + one.getOtherexpenses());
                if (one.getSales()!=0){
                    one.setCostratio(UtilId.sting2double(one.getTotalcost() / one.getSales())); //费销比
                }

                baseMapper.updateById(one);
            }
        }else{
            String succ_rtn_ordr_amt_1d = jsonObject.getString("quality");
            JSONObject jsonObject12 = JSONObject.fromObject(succ_rtn_ordr_amt_1d);
            String string = jsonObject12.getString("succ_rtn_ordr_amt_1d");

            if (string != null || string.equals("")) {
                if (one==null){
                    lsSale.setRefundamount(UtilId.getMl(string)); //退款金额
                    baseMapper.insert(lsSale);
                }else {
                    one.setRefundamount(UtilId.getMl(string)); //退款金额
                    if (one.getSales()!=0){
                        one.setRefundrate(UtilId.sting2double(one.getRefundamount() / one.getSales())); //退款率
                    }

                    one.setActualsales(one.getSales() - one.getRefundamount());  //实际销售额
                    one.setPlatformbuckle(one.getActualsales() * 0.006); //平台扣点
                    one.setTotalcost(one.getPlatformbuckle()); //合计总费用
                    if (one.getSales()!=0){
                        one.setCostratio(UtilId.sting2double(one.getTotalcost() / one.getSales())); //费销比
                    }

                    baseMapper.updateById(one);
                }
            }
        }
    }
    //美团的商品概况
    @Override
    public void setLsaemt(String lsae) {
        JSONObject jsonObject = JSONObject.fromObject(lsae);
        LsShop one1 = lsShopService.getOne(new QueryWrapper<LsShop>().eq("PlatForm_bh", 104).eq("Shop_name", jsonObject.getString("shop_title")+"(拼多多)"));
        LsSale one = baseMapper.selectOne(new QueryWrapper<LsSale>().eq("PlatForm_bh", 104).eq("Shop_bh",one1.getShopBh()).eq("Date_time",jsonObject.getString("stat_date")));
        if (one == null){
            String goods_detail = jsonObject.getString("overview");
            JSONObject jsonObject1 = JSONObject.fromObject(goods_detail);
            LsSale lsSale = new LsSale();
            lsSale.setId(UtilId.getUUID());
            lsSale.setPlatformBh("104");
            lsSale.setShopBh(one1.getShopBh());
            try {
                lsSale.setDateTime(simpleDateFormat.parse(jsonObject.getString("stat_date")));
            } catch (ParseException e) {
                e.printStackTrace();
            }
            lsSale.setSales(UtilId.getMl(jsonObject1.getString("shop_pay_amt"))); //全店销售额
            lsSale.setNumBuyers(UtilId.getMl(jsonObject1.getString("shop_pay_ordr_usr_cnt"))); //支付买家数
            lsSale.setOrderquantity(UtilId.getMl(jsonObject1.getString("shop_pay_ordr_cnt")));  //订单量
            lsSale.setTotaltraffic(UtilId.getMl(jsonObject1.getString("shop_uv")));  //店铺总流量
            lsSale.setRefundamount(UtilId.getMl(jsonObject1.getString("shop_rtn_ordr_amt_1d"))); //退款金额
            lsSale.setRefundrate(UtilId.sting2double(lsSale.getRefundamount()/lsSale.getSales())); //退款率
            lsSale.setActualsales(lsSale.getSales()-lsSale.getRefundamount());  //实际销售额
            lsSale.setCustomerprice(lsSale.getSales()/lsSale.getNumBuyers()); //客单价
            lsSale.setPaymentrate(UtilId.sting2double(lsSale.getNumBuyers()/lsSale.getTotaltraffic())); //支付转化率
            lsSale.setFreetraffic(lsSale.getTotaltraffic()); //免费流量
            lsSale.setFreetrafficzb(1.0); //免费流量占比
            lsSale.setPromotioncostzb(0.0); //推广费用占比
            lsSale.setPromotionflowzb(0.0); //推广流量占比
            lsSale.setPlatformbuckle(lsSale.getActualsales()*0.006); //平台扣点
            lsSale.setTotalcost(lsSale.getPlatformbuckle()); //合计总费用
            lsSale.setCostratio(UtilId.sting2double(lsSale.getTotalcost()/lsSale.getSales())); //费销比
            baseMapper.insert(lsSale);
        }
    }

    //拼多多的表格数据
    @Override
    public void setPddxlsx(String lsea) {
        LOG.info(lsea);
        JSONObject jsonObject = JSONObject.fromObject(lsea);
        LsShop one1 = lsShopService.getOne(new QueryWrapper<LsShop>().eq("PlatForm_bh", 101).eq("Shop_name", jsonObject.getString("shop_title")+"(拼多多)"));
        Date datae = null;
        try {
            datae = simpleDateFormat.parse(jsonObject.getString("stat_date"));
        } catch (ParseException e) {
            e.printStackTrace();
        }
        JSONArray pddcjtgArray = JSONArray.fromObject(jsonObject.getString("report_scene"));
        if (pddcjtgArray.size()!=0){
            for (int i = 0; i < pddcjtgArray.size(); i++) {
                PddCjtg pddCjtg = new PddCjtg();
                Object o = pddcjtgArray.get(i);
                JSONObject jsonObject2 = JSONObject.fromObject(o);
                pddCjtg.setId(UtilId.getUUID());
                pddCjtg.setPlatformBh(one1.getPlatformBh());
                pddCjtg.setShopBh(one1.getShopBh());
                pddCjtg.setGoodsName(jsonObject2.getString("goodsName"));
                pddCjtg.setChannelLx("场景推广");
                pddCjtg.setPromotionPlan(jsonObject2.getString("planName"));
                pddCjtg.setState(jsonObject2.getString("adStatus"));
                pddCjtg.setPromotionUnit(jsonObject2.getString("goodsId"));
                pddCjtg.setExposure(UtilId.getnlllduoble(UtilId.sting2double(Double.parseDouble(jsonObject2.getString("impression")))));
                pddCjtg.setHits(UtilId.getnlllduoble(UtilId.sting2double(Double.parseDouble(jsonObject2.getString("click")))));
                pddCjtg.setHitsRate(UtilId.getnlllduoble(UtilId.sting2double(Double.parseDouble(jsonObject2.getString("ctr")))));
                pddCjtg.setSpend(UtilId.getnlllduoble(UtilId.sting2double(Double.parseDouble(jsonObject2.getString("spend")))));
                pddCjtg.setInputOutputRatio(UtilId.getnlllduoble(UtilId.sting2double(Double.parseDouble(jsonObject2.getString("roi")))));
                pddCjtg.setTranCost(UtilId.getnlllduoble(UtilId.sting2double(Double.parseDouble(jsonObject2.getString("transactionCost")))));
                pddCjtg.setNumTran(UtilId.getnlllduoble(UtilId.sting2double(Double.parseDouble(jsonObject2.getString("orderNum")))));
                pddCjtg.setTranAmount(UtilId.getnlllduoble(UtilId.sting2double(Double.parseDouble(jsonObject2.getString("avgPayAmount")))));
                pddCjtg.setClickRate(UtilId.getnlllduoble(UtilId.sting2double(Double.parseDouble(jsonObject2.getString("cvr")))));
                pddCjtg.setClickCost(UtilId.getnlllduoble(UtilId.sting2double(Double.parseDouble(jsonObject2.getString("cpc")))));
                pddCjtg.setAturnover(UtilId.getnlllduoble(UtilId.sting2double(Double.parseDouble(jsonObject2.getString("gmv")))));
                pddCjtg.setExposureCost(UtilId.getnlllduoble(UtilId.sting2double(Double.parseDouble(jsonObject2.getString("cpm")))));
                pddCjtg.setNumCollection(UtilId.getnlllduoble(UtilId.sting2double(Double.parseDouble(jsonObject2.getString("goodsFavNum")))));
                pddCjtg.setNumConcerns(UtilId.getnlllduoble(UtilId.sting2double(Double.parseDouble(jsonObject2.getString("mallFavNum")))));
                pddCjtg.setDateTime(datae);

                cjtgService.save(pddCjtg);
            }
        }
        JSONArray fxtArray = JSONArray.fromObject(jsonObject.getString("report_cpa"));
        if (fxtArray.size()!=0){
            for (int i = 0; i < fxtArray.size(); i++) {
                PddFxt pddFxt = new PddFxt();
                Object o = fxtArray.get(i);
                JSONObject jsonObject2 = JSONObject.fromObject(o);
                pddFxt.setId(UtilId.getUUID());
                pddFxt.setChannelLx("放心推");
                pddFxt.setCommName(jsonObject2.getString("goodsName"));
                pddFxt.setPlatformBh(one1.getPlatformBh());
                pddFxt.setShopBh(one1.getShopBh());
                pddFxt.setCommId(jsonObject2.getString("goodsId"));
                pddFxt.setExposure(UtilId.getnlllduoble(UtilId.sting2double(Double.parseDouble(jsonObject2.getString("impression")))));
                pddFxt.setNumTran(UtilId.getnlllduoble(UtilId.sting2double(Double.parseDouble(jsonObject2.getString("orderNum")))));
                pddFxt.setAturnover(UtilId.getnlllduoble(UtilId.sting2double(Double.parseDouble(jsonObject2.getString("gmv")))));
                pddFxt.setSpend(UtilId.getnlllduoble(UtilId.sting2double(Double.parseDouble(jsonObject2.getString("spend")))));
                pddFxt.setInputOutputRatio(UtilId.getnlllduoble(UtilId.sting2double(Double.parseDouble(jsonObject2.getString("roi")))));
                pddFxt.setDateTime(datae);
                fxtService.save(pddFxt);
            }
        }
        JSONArray sstgArray = JSONArray.fromObject(jsonObject.getString("report_search"));
        if (sstgArray.size()!=0){
            for (int i = 0; i < sstgArray.size(); i++) {
                PddSstg pddSstg = new PddSstg();
                Object o = sstgArray.get(i);
                JSONObject jsonObject2 = JSONObject.fromObject(o);
                pddSstg.setId(UtilId.getUUID());
                pddSstg.setChannelLx("搜索推广");
                pddSstg.setPlatformBh(one1.getPlatformBh());
                pddSstg.setShopBh(one1.getShopBh());
                pddSstg.setGoodsName(jsonObject2.getString("goodsName"));
                pddSstg.setPromotionPlan(jsonObject2.getString("planName"));
                pddSstg.setState(jsonObject2.getString("adStatus"));
                pddSstg.setPromotionUnit(jsonObject2.getString("goodsId"));
                pddSstg.setExposure(UtilId.getnlllduoble(UtilId.sting2double(Double.parseDouble(jsonObject2.getString("impression")))));
                pddSstg.setHits(UtilId.getnlllduoble(UtilId.sting2double(Double.parseDouble(jsonObject2.getString("click")))));
                pddSstg.setHitsRate(UtilId.getnlllduoble(UtilId.sting2double(Double.parseDouble(jsonObject2.getString("ctr")))));
                pddSstg.setSpend(UtilId.getnlllduoble(UtilId.sting2double(Double.parseDouble(jsonObject2.getString("spend")))));
                pddSstg.setInputOutputRatio(UtilId.getnlllduoble(UtilId.sting2double(Double.parseDouble(jsonObject2.getString("roi")))));
                pddSstg.setTranCost(UtilId.getnlllduoble(UtilId.sting2double(Double.parseDouble(jsonObject2.getString("transactionCost")))));
                pddSstg.setTranAmount(UtilId.getnlllduoble(UtilId.sting2double(Double.parseDouble(jsonObject2.getString("avgPayAmount")))));
                pddSstg.setNumTran(UtilId.getnlllduoble(UtilId.sting2double(Double.parseDouble(jsonObject2.getString("orderNum")))));
                pddSstg.setClickCost(UtilId.getnlllduoble(UtilId.sting2double(Double.parseDouble(jsonObject2.getString("cpc")))));
                pddSstg.setClickRate(UtilId.getnlllduoble(UtilId.sting2double(Double.parseDouble(jsonObject2.getString("cvr")))));
                pddSstg.setAturnover(UtilId.getnlllduoble(UtilId.sting2double(Double.parseDouble(jsonObject2.getString("gmv")))));
                pddSstg.setExposureCost(UtilId.getnlllduoble(UtilId.sting2double(Double.parseDouble(jsonObject2.getString("cpm")))));
                pddSstg.setNumConcerns(UtilId.getnlllduoble(UtilId.sting2double(Double.parseDouble(jsonObject2.getString("mallFavNum")))));
                pddSstg.setNumCollection(UtilId.getnlllduoble(UtilId.sting2double(Double.parseDouble(jsonObject2.getString("goodsFavNum")))));
                pddSstg.setInquiryQuantity(UtilId.getnlllduoble(UtilId.sting2double(Double.parseDouble(jsonObject2.getString("inquiryNum")))));
                pddSstg.setDateTime(datae);
                sstgService.save(pddSstg);
            }
        }

        JSONArray mxdpArray = JSONArray.fromObject(jsonObject.getString("report_star"));
        if (mxdpArray.size()!=0){
            for (int i =0;i<mxdpArray.size();i++){
                PddMxdp pddMxdp = new PddMxdp();
                Object o = mxdpArray.get(i);
                JSONObject jsonObject2 = JSONObject.fromObject(o);
                pddMxdp.setId(UtilId.getUUID());
                pddMxdp.setPlatformBh(one1.getPlatformBh());
                pddMxdp.setShopBh(one1.getShopBh());
                pddMxdp.setChannellx("明星店铺");
                pddMxdp.setDateTime(datae);
                pddMxdp.setPromotionPlan(jsonObject2.getString("planStatus"));
                pddMxdp.setState(jsonObject2.getString("planName"));
                pddMxdp.setExposure(UtilId.getnlllduoble(UtilId.sting2double(Double.parseDouble(jsonObject2.getString("impression")))));
                pddMxdp.setHits(UtilId.getnlllduoble(UtilId.sting2double(Double.parseDouble(jsonObject2.getString("click")))));
                pddMxdp.setHitsRate(UtilId.getnlllduoble(UtilId.sting2double(Double.parseDouble(jsonObject2.getString("ctr")))));
                pddMxdp.setSpend(UtilId.getnlllduoble(UtilId.sting2double(Double.parseDouble(jsonObject2.getString("spend")))));
                pddMxdp.setInputOutputRatio(UtilId.getnlllduoble(UtilId.sting2double(Double.parseDouble(jsonObject2.getString("roi")))));
                pddMxdp.setTranCost(UtilId.getnlllduoble(UtilId.sting2double(Double.parseDouble(jsonObject2.getString("transactionCost")))));
                pddMxdp.setYsRxe(UtilId.getnlllduoble(UtilId.sting2double(Double.parseDouble(jsonObject2.getString("avgPayAmount")))));
                pddMxdp.setNumTran(UtilId.getnlllduoble(UtilId.sting2double(Double.parseDouble(jsonObject2.getString("orderNum")))));
                pddMxdp.setClickCost(UtilId.getnlllduoble(UtilId.sting2double(Double.parseDouble(jsonObject2.getString("cpc")))));
                pddMxdp.setClickRate(UtilId.getnlllduoble(UtilId.sting2double(Double.parseDouble(jsonObject2.getString("cvr")))));
                pddMxdp.setAturnover(UtilId.getnlllduoble(UtilId.sting2double(Double.parseDouble(jsonObject2.getString("gmv")))));
                pddMxdp.setExposureCost(UtilId.getnlllduoble(UtilId.sting2double(Double.parseDouble(jsonObject2.getString("cpm")))));
                pddMxdp.setNumConcerns(UtilId.getnlllduoble(UtilId.sting2double(Double.parseDouble(jsonObject2.getString("mallFavNum")))));
                pddMxdp.setNumCollection(UtilId.getnlllduoble(UtilId.sting2double(Double.parseDouble(jsonObject2.getString("goodsFavNum")))));
                pddMxdpService.save(pddMxdp);
            }
        }

        LsSale one = baseMapper.selectOne(new QueryWrapper<LsSale>().eq("PlatForm_bh", 101).eq("Shop_bh",one1.getShopBh()).eq("Date_time",jsonObject.getString("stat_date")));

        if (one!=null) {
            //多多场景
            Map<String, Object> stat_date = cjtgService.getNum(one.getShopBh(),datae);
            if (stat_date!=null){
                if (stat_date.size() != 0 ) {
                    one.setManyscenesll(UtilId.getnlllduoble(UtilId.sting2double(Double.parseDouble(stat_date.get("giveNum") + ""))));
                    one.setManyscenesfy(UtilId.getnlllduoble(UtilId.sting2double(Double.parseDouble(stat_date.get("SpendNum") + ""))));
                } else {
                    one.setManyscenesfy(0.0);
                    one.setManyscenesll(0.0);
                }
            }else {
                one.setManyscenesfy(0.0);
                one.setManyscenesll(0.0);
            }
            //搜索场景
            Map<String, Object> stat_date1 = sstgService.getNum(one.getShopBh(), datae);
            if (stat_date1!=null){
                if (stat_date1.size() != 0) {
                    one.setMoresearchll(UtilId.getnlllduoble(UtilId.sting2double(Double.parseDouble(stat_date1.get("giveNum") + ""))));
                    one.setMoresearchfy(UtilId.getnlllduoble(UtilId.sting2double(Double.parseDouble(stat_date1.get("SpendNum") + ""))));
                } else {
                    one.setMoresearchfy(0.0);
                    one.setMoresearchll(0.0);
                }
            }else {
                one.setMoresearchfy(0.0);
                one.setMoresearchll(0.0);
            }
            //明星店铺
            Map<String, Object> stat_date3 = pddMxdpService.getNum(one.getShopBh(), datae);
            if ( stat_date3!=null){
            if (stat_date3.size()!=0){
                one.setPinxiaobaofy(UtilId.getnlllduoble(UtilId.sting2double(Double.parseDouble(stat_date3.get("SpendNumfy") + ""))));
                one.setPinxiaobaoll(UtilId.getnlllduoble(UtilId.sting2double(Double.parseDouble(stat_date3.get("giveNumll") + ""))));
            }else {
                one.setPinxiaobaofy(0.0);
                one.setPinxiaobaoll(0.0);
            }
            }else {
                one.setPinxiaobaofy(0.0);
                one.setPinxiaobaoll(0.0);
            }
            //放心推
            Map<String, Object> stat_date2 = fxtService.getNum(one.getShopBh(), datae);
            if(stat_date2!=null){
                if (stat_date2.size() != 0) {
                    one.setRestassuredpushfy(UtilId.getnlllduoble(UtilId.sting2double(Double.parseDouble(stat_date2.get("RestAssuredPushfy") + ""))));
                } else {
                    one.setRestassuredpushfy(0.0);
                }
            }else {
                one.setRestassuredpushfy(0.0);
            }

            if (one.getTotaltraffic() != null) {
                if (one.getTotaltraffic() != 0) {
                    one.setPromotionflow(UtilId.getnlllduoble(UtilId.getnlllduoble(one.getMoresearchll()) + UtilId.getnlllduoble(one.getManyscenesll())+one.getPinxiaobaoll()));//推广总流量
                    one.setPromotionflowzb(UtilId.getnlllduoble(UtilId.sting2double(one.getPromotionflow() / one.getTotaltraffic())));
                    one.setFreetraffic(one.getTotaltraffic()-one.getPromotionflow());
                    if (one.getFreetraffic()==0){
                        one.setFreetrafficzb(0.0); //免费流量占比
                    }else {
                        one.setFreetrafficzb(UtilId.getnlllduoble(UtilId.sting2double(one.getFreetraffic()/one.getTotaltraffic())));
                    }
                }
            }
            if (one.getSales() != null) {
                if (one.getSales() != 0) {
                    one.setPromotioncost(UtilId.getnlllduoble(UtilId.getnlllduoble(one.getMoresearchfy()) + UtilId.getnlllduoble(one.getManyscenesfy()) + UtilId.getnlllduoble(one.getRestassuredpushfy())+one.getPinxiaobaofy()));//推广总费用                }
                    one.setPromotioncostzb(UtilId.getnlllduoble(UtilId.sting2double(one.getPromotioncost() / one.getSales())));
                    one.setTotalcost(one.getPromotioncost() + one.getPlatformbuckle() + one.getOtherexpenses());
                    one.setCostratio(UtilId.getnlllduoble(UtilId.sting2double(one.getTotalcost() / one.getSales())));
                    lsSaleService.updateById(one);
                }
            }

        }
    }

    @Override
    public List<LsSale> getdaochu(String datas1, String datas2, String[] shops) {
        return baseMapper.getdaochu(datas1, datas2, shops);
    }


    //导出
    @Override
    public void getDaochu(HttpServletResponse response, HttpServletRequest request) {
        HttpSession session = request.getSession();
        LsSaleAcotn lsSaleAcotn1 = (LsSaleAcotn) session.getAttribute("lsSaleAcotn");
        QueryWrapper<LsSale> lsSaleQueryWrapper = new QueryWrapper<>();
        lsSaleQueryWrapper.orderByAsc("Shop_bh,Date_time");
        if (lsSaleAcotn1!=null) {
            if (lsSaleAcotn1.getDa1().length!=0) {
                lsSaleQueryWrapper.apply(
                        "(CONVERT([varchar](10),Date_time,(120)))>= "+"'"+lsSaleAcotn1.getDa1()[0]+"'")
                        .apply(
                                "(CONVERT([varchar](10),Date_time,(120))) <="+ "'"+lsSaleAcotn1.getDa1()[1]+"'");
            }
            if (lsSaleAcotn1.getName().length!=0) {
                lsSaleQueryWrapper.in("Shop_bh",lsSaleAcotn1.getName());;
            }
            if (lsSaleAcotn1.getValue()!=null) {
                if (!lsSaleAcotn1.getValue().equals("")){
                    lsSaleQueryWrapper.eq("Platform_bh",lsSaleAcotn1.getValue());
                }

            }
        }
        List<LsSale> list = lsSaleService.list(lsSaleQueryWrapper);
        List<LsSales> lsSaleAcotns = new ArrayList<>();
        HashMap<String, Double> stringHashMap = new HashMap<>();
        if (lsSaleAcotn1.getDa1().length!=0){
            List<LsSale> getdaochu = lsSaleService.getdaochu(lsSaleAcotn1.getDa1()[0], lsSaleAcotn1.getDa1()[1], lsSaleAcotn1.getName());
            for (int i=0;i<getdaochu.size();i++){
                stringHashMap.put(getdaochu.get(i).getShopBh()+getdaochu.get(i).getDateTime(),getdaochu.get(i).getSales());
            }
            for(LsSale dict:list) {
                LsSales dictEeVo = new LsSales();
                BeanUtils.copyProperties(dict,dictEeVo);
                dictEeVo.setSales1(UtilId.stringred(stringHashMap.get(dict.getShopBh()+dict.getDateTime())));
                QueryWrapper<LsShop> pper = new QueryWrapper<>();
                pper.eq("Shop_bh",dict.getShopBh());
                LsShop one = lsShopService.getOne(pper);
                dictEeVo.setShopBh1(one.getShopName());
                dictEeVo.setRefundrate1(UtilId.stringred(UtilId.getnlllduoble(dict.getRefundrate())));
                dictEeVo.setPaymentrate1(UtilId.stringred(UtilId.getnlllduoble(dict.getPaymentrate())));
                dictEeVo.setFreetrafficzb1(UtilId.stringred(UtilId.getnlllduoble(dict.getFreetrafficzb())));
                dictEeVo.setPromotionflowzb1(UtilId.stringred(UtilId.getnlllduoble(dict.getPromotionflowzb())));
                dictEeVo.setPromotioncostzb1(UtilId.stringred(UtilId.getnlllduoble(dict.getPromotioncostzb())));
                dictEeVo.setCostratio1(UtilId.stringred(UtilId.getnlllduoble(dict.getCostratio()))  );
                lsSaleAcotns.add(dictEeVo);
            }
        }


        try {
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
//重要点
            String filename = "汇总";
            String fileName = new String(filename.getBytes(), "iso8859-1") + dateFormat.format(new Date().getTime()) + ".xlsx";
            response.setContentType("application/vnd.ms-excel");
            response.setCharacterEncoding("utf-8");
            response.setHeader("Content-disposition", "attachment;filename="+fileName);
            EasyExcel.write(response.getOutputStream(), LsSales.class).sheet("Sheet1").registerWriteHandler(new SheetWriteHandler() { //冻结表头
                @Override
                public void beforeSheetCreate(WriteWorkbookHolder writeWorkbookHolder, WriteSheetHolder writeSheetHolder) {

                }

                @Override
                public void afterSheetCreate(WriteWorkbookHolder writeWorkbookHolder, WriteSheetHolder writeSheetHolder) {
                    // 冻结首行
                    writeSheetHolder.getSheet().createFreezePane(0, 1, 0, 1);
                }
            })
                    .doWrite(lsSaleAcotns);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    //天猫生意参谋
    @Override

    public void settmsycm(String lsea) {
        LOG.info(lsea);
        JSONObject jsonObject = JSONObject.fromObject(lsea);
        String sycm_summary = jsonObject.getString("sycm_summary");
        JSONObject jsonObject1 = JSONObject.fromObject(sycm_summary);
        LsSale lsSale = new LsSale();
        lsSale.setId(UtilId.getUUID()); //id
        LsShop one1 = lsShopService.getOne(new QueryWrapper<LsShop>().eq("PlatForm_bh", 102).eq("Shop_name", jsonObject.getString("shop_title")));
        Date datae = null;
        try {
            datae = simpleDateFormat.parse(jsonObject.getString("stat_date"));
        } catch (ParseException e) {
            e.printStackTrace();
        }
        LsSale one = lsSaleService.getOne(new QueryWrapper<LsSale>().eq("Shop_bh", one1.getShopBh()).eq("Platform_bh", "102").eq("Date_time", datae));
    if (one==null){
        lsSale.setDateTime(datae);
        lsSale.setShopBh(one1.getShopBh());
        lsSale.setPlatformBh("102"); //平台
        lsSale.setTaokepromotionfy(UtilId.sting2double(Double.valueOf(jsonObject1.getString("shop_tk_expend_amt"))));
        lsSale.setTaokepromotionll(0.0);
        lsSale.setPromotioncost(lsSale.getTaokepromotionfy());
        lsSale.setSales(UtilId.sting2double(Double.valueOf(jsonObject1.getString("shop_pay_amt")))); //全店销售额
        lsSale.setOrderquantity(Double.valueOf(jsonObject1.getString("shop_pay_item_cnt"))); //订单量
        lsSale.setRefundamount(UtilId.sting2double(Double.valueOf(jsonObject1.getString("succ_rtn_ordr_amt_1d")))); //退款金额
        lsSale.setActualsales(UtilId.sting2double(lsSale.getSales()-lsSale.getRefundamount())); //实际销售额
        lsSale.setNumBuyers(Double.valueOf(jsonObject1.getString("shop_pay_ordr_usr_cnt"))); //支付买家数
        lsSale.setCustomerprice(UtilId.sting2double(Double.valueOf(jsonObject1.getString("shop_pay_ordr_atv")))); //客单价
        lsSale.setTotaltraffic(UtilId.sting2double(Double.valueOf(jsonObject1.getString("shop_uv")))); //店铺总量
        if (lsSale.getRefundamount()!=0 && lsSale.getSales()!=0){
            lsSale.setRefundrate(UtilId.sting2double(lsSale.getRefundamount()/lsSale.getSales())); // 退款率
        }
        lsSale.setPaymentrate(UtilId.sting2double(Double.valueOf(jsonObject1.getString("shop_pay_uv_rto")))); //支付转化率
        lsSale.setPlatformbuckle(lsSale.getActualsales()*0.025); //平台扣点
        lsSale.setTotalcost(lsSale.getPlatformbuckle());
        lsSale.setFreetraffic(0.0);
        lsSale.setPromotionflow(0.0);
        lsSaleService.save(lsSale);
    }
    }

    //天猫直通车
    @Override
    public void settmztc(String lsea) {
        LOG.info(lsea);
        JSONObject jsonObject = JSONObject.fromObject(lsea);
         LsShop one1 = lsShopService.getOne(new QueryWrapper<LsShop>().eq("PlatForm_bh", 102).eq("Shop_name", jsonObject.getString("shop_title")));
          Date datae = null;
         try {
            datae = simpleDateFormat.parse(jsonObject.getString("stat_date"));
         } catch (ParseException e) {
             e.printStackTrace();
          }
        JSONArray tmztc = JSONArray.fromObject(jsonObject.getString("subway_report_adgroup"));
        if (tmztc.size()!=0){
            for (int i = 0; i < tmztc.size(); i++) {
                Object o = tmztc.get(i);
                JSONObject jsonObject2 = JSONObject.fromObject(o);
                TmZtc tmZtc = new TmZtc();
                tmZtc.setId(UtilId.getUUID());
                tmZtc.setShopBh(one1.getShopBh());
                tmZtc.setDateTime(datae);
                tmZtc.setPlatformBh("102");
                tmZtc.setChannelLx2("直通车");
                tmZtc.setUnitName(jsonObject2.getString("goods_name")); //单元名称
                tmZtc.setShopId(jsonObject2.getString("item_id"));  //商品id

                if (!jsonObject2.getString("impression").equals("null")){
                    tmZtc.setToshowNum(Double.parseDouble(jsonObject2.getString("impression"))); //展现量
                }

                if (!jsonObject2.getString("click").equals("null")){
                    tmZtc.setHitsNum(UtilId.sting2double(Double.valueOf(jsonObject2.getString("click")))); //点击量
                }

                if (!jsonObject2.getString("cost").equals("null")){
                    tmZtc.setSpend(UtilId.sting2double(Double.valueOf(jsonObject2.getString("cost")))); //花费
                }

                if (!jsonObject2.getString("ctr").equals("null")){
                    tmZtc.setHitsRate(UtilId.sting2double(Double.valueOf(jsonObject2.getString("ctr"))));  // 点击率
                }
                if (!jsonObject2.getString("cpc").equals("null")){
                    tmZtc.setHitsSpend(UtilId.sting2double(Double.valueOf(jsonObject2.getString("cpc")))); //平均点击花费
                }

                if (!jsonObject2.getString("cpm").equals("null")){
                    tmZtc.setToshowSpend(UtilId.getnlllduoble(UtilId.sting2double(Double.valueOf(jsonObject2.getString("cpm"))))); //千次展现花费
                }

                if (!jsonObject2.getString("total_transaction_amount").equals("null")){
                    tmZtc.setTranJe(UtilId.sting2double(Double.valueOf(jsonObject2.getString("total_transaction_amount")))); //总成交金额
                }

                if (!jsonObject2.getString("total_transaction_number").equals("null")){
                    tmZtc.setTranNum(UtilId.sting2double(Double.valueOf(jsonObject2.getString("total_transaction_number")))); //总成交笔数
                }

                if (!jsonObject2.getString("roi").equals("null")){
                    tmZtc.setInputOutputRatio(UtilId.sting2double(Double.valueOf(jsonObject2.getString("roi")))); //投入产出比
                }

                if (!jsonObject2.getString("cvr").equals("null")){
                    tmZtc.setClickRate(UtilId.sting2double(Double.valueOf(jsonObject2.getString("cvr")))); //点击转化率
                }
                tmZtcService.save(tmZtc);
            }
        }
        LsSale one = lsSaleService.getOne(new QueryWrapper<LsSale>().eq("Shop_bh", one1.getShopBh()).eq("Platform_bh", "102").eq("Date_time", datae));
        if (one!=null){
            Map<String, Object> num = tmZtcService.getNum(one1.getShopBh(), datae);
            if (num!=null){
                //System.out.println(num);
                if (num.size()!=0){
                    one.setMoresearchfy(UtilId.sting2double(UtilId.doublelsnull(num.get("MoreSearchfy")+"")));
                    one.setMoresearchll(UtilId.sting2double(UtilId.doublelsnull(num.get("MoreSearchll")+"")));
                   one.setPromotioncost(one.getPromotioncost()+one.getMoresearchfy()); //推广费用
                   one.setPromotionflow(one.getPromotionflow()+one.getMoresearchll()); //推广流量
                   one.setFreetraffic(one.getTotaltraffic()-one.getPromotionflow()); //免费流量
                   one.setFreetrafficzb(UtilId.sting2double(one.getFreetraffic()/one.getTotaltraffic()));  //免费流量占比
                   one.setPromotioncostzb(UtilId.sting2double(one.getPromotioncost()/one.getSales())); //推广费用占比
                   one.setPromotionflowzb(UtilId.sting2double(one.getPromotionflow()/one.getTotaltraffic())); //推广流量占比
                   one.setTotalcost(one.getPromotioncost()+one.getPlatformbuckle()); //合计总费用
                   one.setCostratio(UtilId.sting2double(one.getTotalcost()/one.getSales()));  //费销比
                }else {
                    one.setMoresearchfy(0.0);
                    one.setMoresearchll(0.0);
                }
            }else {
                one.setMoresearchfy(0.0);
                one.setMoresearchll(0.0);
            }
            lsSaleService.updateById(one);
        }

    }
    //天猫品销宝
    @Override
    public void gettmpxb(String lsea) {
        LOG.info(lsea);
        JSONObject jsonObject = JSONObject.fromObject(lsea);
        LsShop one1 = lsShopService.getOne(new QueryWrapper<LsShop>().eq("PlatForm_bh", 102).eq("Shop_name", jsonObject.getString("shop_title")));
        Date datae = null;
        try {
            datae = simpleDateFormat.parse(jsonObject.getString("stat_date"));
        } catch (ParseException e) {
            e.printStackTrace();
        }
        String branding_report_star = jsonObject.getString("branding_report_star");
        JSONObject jsonObject3 = JSONObject.fromObject(branding_report_star);
        String summary = jsonObject3.getString("summary");
        JSONObject jsonObject1 = JSONObject.fromObject(summary);
        TmPxb tmPxb = new TmPxb();
        tmPxb.setId(UtilId.getUUID());
        tmPxb.setShopBh(one1.getShopBh());
        tmPxb.setDateTime(datae);
        tmPxb.setPlatformBh("102");
        tmPxb.setChannelLx("品销宝");
        JSONArray tmpxb = JSONArray.fromObject(jsonObject3.getString("details"));
        tmPxb.setFlowExposure(UtilId.sting2double(UtilId.doublelsnull(jsonObject1.getString("search_impression")))); //自然流量增量曝光
        tmPxb.setFlowexpNum(UtilId.sting2double(UtilId.doublelsnull(jsonObject1.getString("search_txn_total"))));//自然流量增量成交
        tmPxb.setJuhitsPrice(UtilId.sting2double(UtilId.doublelsnull(jsonObject1.getString("cpc"))));//跳转点击单价
        tmPxb.setVistouchNum(UtilId.sting2double(UtilId.doublelsnull(jsonObject1.getString("uv"))));//触达访客数
        if (tmpxb.size()!=0){
            for (int i =0;i<tmpxb.size();i++){
                Object o = tmpxb.get(i);
                JSONObject jsonObject2 = JSONObject.fromObject(o);
                tmPxb.setToshowNum(UtilId.sting2double(UtilId.doublelsnull(jsonObject2.getString("impression"))));  //展现量
                tmPxb.setConsume(UtilId.sting2double(UtilId.doublelsnull(jsonObject2.getString("cost"))));  //消耗
                tmPxb.setHitsNum(UtilId.sting2double(UtilId.doublelsnull(jsonObject2.getString("click"))));//点击量
                tmPxb.setHitsRate(UtilId.sting2double(UtilId.doublelsnull(jsonObject2.getString("ctr"))));//点击率
                tmPxb.setDealNum(UtilId.sting2double(UtilId.doublelsnull(jsonObject2.getString("txn_shipping_total"))));//成交笔数
                tmPxb.setDealJe(UtilId.sting2double(UtilId.doublelsnull(jsonObject2.getString("txn_total"))));//成交金额
                tmPxb.setReturnRate(UtilId.sting2double(UtilId.doublelsnull(jsonObject2.getString("roi"))));//回报率
                tmPxb.setConverRate(UtilId.sting2double(UtilId.doublelsnull(jsonObject2.getString("cvr"))));//转化率
                tmPxbService.save(tmPxb);
            }
        }
        LsSale one = lsSaleService.getOne(new QueryWrapper<LsSale>().eq("Shop_bh", one1.getShopBh()).eq("Platform_bh", "102").eq("Date_time", datae));
        if (one!=null){
            Map<String, Object> num = tmPxbService.getNum(one1.getShopBh(), datae);
            if (num!=null){
                if (num.size()!=0){
                    one.setPinxiaobaofy(UtilId.sting2double(UtilId.doublelsnull(num.get("Pinxiaobaofy")+"")));
                    one.setPinxiaobaoll(UtilId.sting2double(UtilId.doublelsnull(num.get("Pinxiaobaoll")+"")));
                    one.setPromotioncost(one.getPromotioncost()+one.getPinxiaobaofy()); //推广费用
                    one.setPromotionflow(one.getPromotionflow()+one.getPinxiaobaoll()); //推广流量
                    one.setFreetraffic(one.getTotaltraffic()-one.getPromotionflow()); //免费流量
                    one.setFreetrafficzb(UtilId.sting2double(one.getFreetraffic()/one.getTotaltraffic()));  //免费流量占比
                    one.setPromotioncostzb(UtilId.sting2double(one.getPromotioncost()/one.getSales())); //推广费用占比
                    one.setPromotionflowzb(UtilId.sting2double(one.getPromotionflow()/one.getTotaltraffic())); //推广流量占比
                    one.setTotalcost(one.getPromotioncost()+one.getPlatformbuckle()); //合计总费用
                    one.setCostratio(UtilId.sting2double(one.getTotalcost()/one.getSales()));  //费销比
                }else {
                    one.setPinxiaobaoll(0.0);
                    one.setPinxiaobaofy(0.0);
                }
            }else {
                one.setPinxiaobaoll(0.0);
                one.setPinxiaobaofy(0.0);
            }
            lsSaleService.updateById(one);
        }
    }

    //天猫超级推荐
    @Override
    public void gettmcjtj(String lsea) {
        LOG.info(lsea);
        JSONObject jsonObject = JSONObject.fromObject(lsea);
        LsShop one1 = lsShopService.getOne(new QueryWrapper<LsShop>().eq("PlatForm_bh", 102).eq("Shop_name", jsonObject.getString("shop_title")));
        Date datae = null;
        try {
            datae = simpleDateFormat.parse(jsonObject.getString("stat_date"));
        } catch (ParseException e) {
            e.printStackTrace();
        }
        JSONArray tmcjtj = JSONArray.fromObject(jsonObject.getString("tuijian_report_item"));
        if (tmcjtj.size()!=0){
            for (int i =0;i<tmcjtj.size();i++){
                Object o = tmcjtj.get(i);
                JSONObject jsonObject2 = JSONObject.fromObject(o);
                TmCjtg tmCjtg = new TmCjtg();
                tmCjtg.setId(UtilId.getUUID());
                tmCjtg.setShopBh(one1.getShopBh());
                tmCjtg.setDateTime(datae);
                tmCjtg.setChannelLx("超级推荐");
                tmCjtg.setPlatformBh("102");
                tmCjtg.setPromotionPlan(jsonObject2.getString("campaignName").trim()); //推广计划
                tmCjtg.setPromotionUnit(jsonObject2.getString("adgroupName").trim());  //推广单元
                tmCjtg.setToshow(Double.valueOf(jsonObject2.getString("adPv").trim()));  //有效展现
                tmCjtg.setHitsNum(UtilId.sting2double(UtilId.doublelsnull(jsonObject2.getString("click").trim())));  //有效点击数
                tmCjtg.setHitsRate(UtilId.sting2double(UtilId.doublelsnull(jsonObject2.getString("ctr").trim())));  //点击率
                tmCjtg.setConsume(UtilId.sting2double(UtilId.doublelsnull(jsonObject2.getString("charge").trim())));  //消耗
                tmCjtg.setOrdercjNum(UtilId.doublelsnull(jsonObject2.getString("txn_ordr_num").trim()));  //成交订单量
                tmCjtg.setOrdercjJe(UtilId.sting2double(UtilId.doublelsnull(jsonObject2.getString("txn_ordr_amt").trim()))); //成交订单金额
                tmCjtg.setClickRate(UtilId.sting2double(UtilId.doublelsnull(jsonObject2.getString("cvr").trim())));  //点击转化率
                tmCjtg.setReturnRate(UtilId.sting2double(UtilId.doublelsnull(jsonObject2.getString("roi").trim())));  //投资回报率
                tmCjtgService.save(tmCjtg);
            }
        }
        LsSale one = lsSaleService.getOne(new QueryWrapper<LsSale>().eq("Shop_bh", one1.getShopBh()).eq("Platform_bh", "102").eq("Date_time", datae));
        if (one!=null){
            Map<String, Object> num = tmCjtgService.getNum(one1.getShopBh(), datae);
            if (num!=null){
                if (num.size()!=0){
                    one.setManyscenesll(UtilId.sting2double(UtilId.doublelsnull(num.get("ManyScenesll")+"")));
                    one.setManyscenesfy(UtilId.sting2double(UtilId.doublelsnull(num.get("ManyScenesfy")+"")));
                    one.setPromotioncost(one.getPromotioncost()+one.getManyscenesfy()); //推广费用
                    one.setPromotionflow(one.getMoresearchll()+one.getManyscenesll()); //推广流量
                    one.setFreetraffic(one.getTotaltraffic()-one.getPromotionflow()); //免费流量
                    one.setFreetrafficzb(UtilId.sting2double(one.getFreetraffic()/one.getTotaltraffic()));  //免费流量占比
                    one.setPromotioncostzb(UtilId.sting2double(one.getPromotioncost()/one.getSales())); //推广费用占比
                    one.setPromotionflowzb(UtilId.sting2double(one.getPromotionflow()/one.getTotaltraffic())); //推广流量占比
                    one.setTotalcost(one.getPromotioncost()+one.getPlatformbuckle()); //合计总费用
                    one.setCostratio(UtilId.sting2double(one.getTotalcost()/one.getSales()));  //费销比
                }else {
                    one.setManyscenesll(0.0);
                    one.setManyscenesfy(0.0);
                }
            }else {
                one.setManyscenesll(0.0);
                one.setManyscenesfy(0.0);
            }
            lsSaleService.updateById(one);
        }
    }

    //天猫超级钻展
    @Override
    public void gettmcjzz(String lsea) {
        LOG.info(lsea);
        JSONObject jsonObject = JSONObject.fromObject(lsea);
        LsShop one1 = lsShopService.getOne(new QueryWrapper<LsShop>().eq("PlatForm_bh", 102).eq("Shop_name", jsonObject.getString("shop_title")));
        Date datae = null;
        try {
            datae = simpleDateFormat.parse(jsonObject.getString("stat_date"));
        } catch (ParseException e) {
            e.printStackTrace();
        }
        String zszwreportwhole = jsonObject.getString("zszw_report_whole");
        JSONObject jsonObject1 = JSONObject.fromObject(zszwreportwhole);
        String sc [] = new String[]{"未知人群探索","泛兴趣人群拉新","兴趣人群收割","自定义","全店竞价推广","淘外视频推广","单品推广","内容推广","直播推广"};
        for (int i =0;i<sc.length;i++){
            String wzrq = jsonObject1.getString(sc[i]);
            JSONObject jsonObject2 = JSONObject.fromObject(wzrq);
            if (!jsonObject2.equals("null")){
                TmCjzz tmCjzz = new TmCjzz();
                tmCjzz.setId(UtilId.getUUID());
                tmCjzz.setChannelLx("超级钻展");
                tmCjzz.setDateTime(datae);
                tmCjzz.setPlatformBh("102");
                tmCjzz.setShopBh(one1.getShopBh());
                tmCjzz.setPlanLx(sc[i]);
                tmCjzz.setConsume(UtilId.doublelsnull(jsonObject2.getString("charge"))); //消耗
                tmCjzz.setToshowSpend(UtilId.doublelsnull(jsonObject2.getString("cpm")));//千次展现成本(元)
                tmCjzz.setToshowNum(UtilId.doublelsnull(jsonObject2.getString("adPv")));//展现量
                tmCjzz.setHitsRate(UtilId.doublelsnull(jsonObject2.getString("ctr")));//点击率
                tmCjzz.setHitsNum(UtilId.doublelsnull(jsonObject2.getString("click")));//点击量
                tmCjzz.setRetvisSpend(UtilId.doublelsnull(jsonObject2.getString("return_visit_cost")));//回访成本
                tmCjzz.setHitsPrice(UtilId.doublelsnull(jsonObject2.getString("cpc")));//点击单价(元)
                tmCjzz.setCollBaby(UtilId.doublelsnull(jsonObject2.getString("fav_item_num")));//收藏宝贝量
                tmCjzz.setCollShop(UtilId.doublelsnull(jsonObject2.getString("fav_shop_num")));//收藏店铺量
                tmCjzz.setShoppingNum(UtilId.doublelsnull(jsonObject2.getString("cart_num")));//添加购物车量
                tmCjzz.setColladdgCost(UtilId.doublelsnull(jsonObject2.getString("fav_cost")));//收藏加购成本
                tmCjzz.setClickRate(UtilId.doublelsnull(jsonObject2.getString("cvr")));//点击转化率
                tmCjzz.setReturnRate(UtilId.doublelsnull(jsonObject2.getString("roi")));//投资回报率
                tmCjzz.setOrdercjNum(UtilId.doublelsnull(jsonObject2.getString("txn_ordr_amt")));//成交订单量
                tmCjzz.setOrdercjJe(UtilId.doublelsnull(jsonObject2.getString("txn_ordr_num")));//成交订单金额
                tmCjzzService.save(tmCjzz);
            }
        }
        LsSale one = lsSaleService.getOne(new QueryWrapper<LsSale>().eq("Shop_bh", one1.getShopBh()).eq("Platform_bh", "102").eq("Date_time", datae));
        if (one!=null){
            Map<String, Object> num = tmCjzzService.getNum(one1.getShopBh(), datae);
            if (num!=null){
                if (num.size()!=0){
                    one.setRestassuredpushfy(UtilId.sting2double(UtilId.doublelsnull(num.get("RestAssuredPushfy")+"")));
                    one.setRestassuredpushll(UtilId.sting2double(UtilId.doublelsnull(num.get("RestAssuredPushll")+"")));
                    one.setPromotioncost(one.getPromotioncost()+one.getRestassuredpushfy()); //推广费用
                    one.setPromotionflow(one.getPromotionflow()+one.getRestassuredpushll()); //推广流量
                    one.setFreetraffic(one.getTotaltraffic()-one.getPromotionflow()); //免费流量
                    one.setFreetrafficzb(UtilId.sting2double(one.getFreetraffic()/one.getTotaltraffic()));  //免费流量占比
                    one.setPromotioncostzb(UtilId.sting2double(one.getPromotioncost()/one.getSales())); //推广费用占比
                    one.setPromotionflowzb(UtilId.sting2double(one.getPromotionflow()/one.getTotaltraffic())); //推广流量占比
                    one.setTotalcost(one.getPromotioncost()+one.getPlatformbuckle()); //合计总费用
                    one.setCostratio(UtilId.sting2double(one.getTotalcost()/one.getSales()));  //费销比
                }else {
                    one.setMoresearchfy(0.0);
                    one.setMoresearchll(0.0);
                }
            }else {
                one.setMoresearchfy(0.0);
                one.setMoresearchll(0.0);
            }
            lsSaleService.updateById(one);
        }
    }

    //天猫ai推广
    @Override
    public void gettmaitg(String lsea) {
        LOG.info(lsea);
            JSONObject jsonObject = JSONObject.fromObject(lsea);
        LsShop one1 = lsShopService.getOne(new QueryWrapper<LsShop>().eq("PlatForm_bh", 102).eq("Shop_name", jsonObject.getString("shop_title")));
        Date datae = null;
        try {
            datae = simpleDateFormat.parse(jsonObject.getString("stat_date"));
        } catch (ParseException e) {
            e.printStackTrace();
        }
        String zszwreportwhole = jsonObject.getString("adbrain_overview");
        JSONObject jsonObject1 = JSONObject.fromObject(zszwreportwhole);
        JSONArray tmaitg = JSONArray.fromObject(jsonObject1.getString("lxk"));
        TmAitg tmAitg = new TmAitg();
        tmAitg.setShopBh(one1.getShopBh());
        tmAitg.setDateTime(datae);
        tmAitg.setPlatformBh("102");
        tmAitg.setChannelLx("Ai推广");
        for (int i =0;i<tmaitg.size();i++){
                Object o = tmaitg.get(i);
                JSONObject jsonObject2 = JSONObject.fromObject(o);
            tmAitg.setId(UtilId.getUUID());
            tmAitg.setOptimobj(jsonObject2.getString("marketAim")); //优化目标
            tmAitg.setConsume(UtilId.doublelsnull(jsonObject2.getString("charge"))); //消耗
            tmAitg.setHitsNum(UtilId.doublelsnull(jsonObject2.getString("click")));//点击量
            tmAitg.setHitsRate(UtilId.doublelsnull(jsonObject2.getString("ctr")));//点击率
            tmAitg.setHitsSpend(UtilId.doublelsnull(jsonObject2.getString("cpc")));//点击成本
            tmAitg.setTranJe(UtilId.doublelsnull(jsonObject2.getString("txn_ordr_amt")));//成交金额
            tmAitg.setTranNum(UtilId.doublelsnull(jsonObject2.getString("txn_ordr_num")));//成交笔数
            tmAitg.setTranRate(UtilId.doublelsnull(jsonObject2.getString("cvr")));//成交转化率
            tmAitg.setRoi(UtilId.doublelsnull(jsonObject2.getString("roi")));//ROI
           tmAitgService.save(tmAitg);
        }
        JSONArray tmaitg2 = JSONArray.fromObject(jsonObject1.getString("hpjs"));
        for (int i =0;i<tmaitg2.size();i++){
            Object o = tmaitg2.get(i);
            JSONObject jsonObject2 = JSONObject.fromObject(o);
            tmAitg.setId(UtilId.getUUID());
            tmAitg.setOptimobj(jsonObject2.getString("marketAim"));
            tmAitg.setConsume(UtilId.doublelsnull(jsonObject2.getString("charge")));
            tmAitg.setHitsNum(UtilId.doublelsnull(jsonObject2.getString("click")));
            tmAitg.setHitsRate(UtilId.doublelsnull(jsonObject2.getString("ctr")));
            tmAitg.setHitsSpend(UtilId.doublelsnull(jsonObject2.getString("cpc")));
            tmAitg.setTranJe(UtilId.doublelsnull(jsonObject2.getString("txn_ordr_amt")));
            tmAitg.setTranNum(UtilId.doublelsnull(jsonObject2.getString("txn_ordr_num")));
            tmAitg.setTranRate(UtilId.doublelsnull(jsonObject2.getString("cvr")));
            tmAitg.setRoi(UtilId.doublelsnull(jsonObject2.getString("roi")));
            //System.out.println(tmAitg);
            tmAitgService.save(tmAitg);
        }
        LsSale one = lsSaleService.getOne(new QueryWrapper<LsSale>().eq("Shop_bh", one1.getShopBh()).eq("Platform_bh", "102").eq("Date_time", datae));
        if (one!=null){
            Map<String, Object> num = tmAitgService.getNum(one1.getShopBh(), datae);

            if (num!=null){
                if (num.size()!=0){
                    one.setAipromotionfy(UtilId.sting2double(UtilId.doublelsnull(num.get("AIPromotionfy")+"")));
                    one.setAipromotionll(UtilId.sting2double(UtilId.doublelsnull(num.get("AIPromotionll")+"")));
                    one.setPromotioncost(one.getPromotioncost()+one.getAipromotionfy()); //推广费用
                    one.setPromotionflow(one.getPromotionflow()+one.getAipromotionll()); //推广流量
                    one.setFreetraffic(one.getTotaltraffic()-one.getAipromotionll()); //免费流量
                    one.setFreetrafficzb(UtilId.sting2double(one.getFreetraffic()/one.getTotaltraffic()));  //免费流量占比
                    one.setPromotioncostzb(UtilId.sting2double(one.getPromotioncost()/one.getSales())); //推广费用占比
                    one.setPromotionflowzb(UtilId.sting2double(one.getPromotionflow()/one.getTotaltraffic())); //推广流量占比
                    one.setTotalcost(one.getPromotioncost()+one.getPlatformbuckle()); //合计总费用
                    one.setCostratio(UtilId.sting2double(one.getTotalcost()/one.getSales()));  //费销比
                }else {
                    one.setAipromotionll(0.0);
                    one.setAipromotionfy(0.0);
                }
            }else {
                one.setAipromotionll(0.0);
                one.setAipromotionfy(0.0);
            }
            lsSaleService.updateById(one);
        }
    }

    //删除全部
    @Override
    public boolean removeqb(String id) {

        if (id.indexOf(",")==-1) {
            LsSale id1 = lsSaleService.getOne(new QueryWrapper<LsSale>().eq("id", id));
            //拼多多
            if (id1.getPlatformBh().equals("101")) {
                List<PddMxdp> list = pddMxdpService.list(new QueryWrapper<PddMxdp>().eq("Shop_bh", id1.getShopBh()).eq("Date_time", id1.getDateTime()));
                for (int i = 0; i < list.size(); i++) {
                    pddMxdpService.removeById(list.get(i).getId());
                }
                List<PddCjtg> list1 = cjtgService.list(new QueryWrapper<PddCjtg>().eq("Shop_bh", id1.getShopBh()).eq("Date_time", id1.getDateTime()));
                for (int i = 0; i < list1.size(); i++) {
                    cjtgService.removeById(list1.get(i).getId());
                }
                List<PddSstg> list2 = sstgService.list(new QueryWrapper<PddSstg>().eq("Shop_bh", id1.getShopBh()).eq("Date_time", id1.getDateTime()));
                for (int i = 0; i < list2.size(); i++) {
                    sstgService.removeById(list2.get(i).getId());
                }
                List<PddFxt> list3 = fxtService.list(new QueryWrapper<PddFxt>().eq("Shop_bh", id1.getShopBh()).eq("Date_time", id1.getDateTime()));
                for (int i = 0; i < list3.size(); i++) {
                    fxtService.removeById(list3.get(i).getId());
                }
                List<PddCommodity> list4 = commodityService.list(new QueryWrapper<PddCommodity>().eq("Shop_bh", id1.getShopBh()).eq("Date_time", id1.getDateTime()));
                for (int i = 0; i < list4.size(); i++) {
                    commodityService.removeById(list4.get(i).getId());
                }
            }


            //淘系
            if (id1.getPlatformBh().equals("102")) {
                LsShop shop_bh = lsShopService.getOne(new QueryWrapper<LsShop>().eq("Shop_bh", id1.getShopBh()));
                List<TmCommodity> list1 = tmCommodityService.list(new QueryWrapper<TmCommodity>().eq("Shop_bh", id1.getShopBh()).eq("Date_time", id1.getDateTime()));
                for (int i = 0; i < list1.size(); i++) {
                    tmCommodityService.removeById(list1.get(i).getId());
                }
                if (shop_bh.getShopName().indexOf("特价版") == -1) {
                    List<TmCjtg> list = tmCjtgService.list(new QueryWrapper<TmCjtg>().eq("Shop_bh", id1.getShopBh()).eq("Date_time", id1.getDateTime()));
                    for (int i = 0; i < list.size(); ) {
                        tmCjtgService.removeById(list.get(i).getId());
                    }
                    List<TmCjzz> list2 = tmCjzzService.list(new QueryWrapper<TmCjzz>().eq("Shop_bh", id1.getShopBh()).eq("Date_time", id1.getDateTime()));
                    for (int i = 0; i < list2.size(); ) {
                        tmCjzzService.removeById(list2.get(i).getId());
                    }

                    List<TmAitg> list3 = tmAitgService.list(new QueryWrapper<TmAitg>().eq("Shop_bh", id1.getShopBh()).eq("Date_time", id1.getDateTime()));
                    for (int i = 0; i < list3.size(); ) {
                        tmAitgService.removeById(list3.get(i).getId());
                    }
                    List<TmPxb> list4 = tmPxbService.list(new QueryWrapper<TmPxb>().eq("Shop_bh", id1.getShopBh()).eq("Date_time", id1.getDateTime()));

                    for (int i = 0; i < list4.size(); ) {
                        tmPxbService.removeById(list4.get(i).getId());
                    }
                    List<TmZtc> list5 = tmZtcService.list(new QueryWrapper<TmZtc>().eq("Shop_bh", id1.getShopBh()).eq("Date_time", id1.getDateTime()));
                    for (int i = 0; i < list5.size(); ) {
                        tmZtcService.removeById(list5.get(i).getId());
                    }

                } else {
                    List<TtZtc> list = ttZtcService.list(new QueryWrapper<TtZtc>().eq("Shop_bh", id1.getShopBh()).eq("Date_time", id1.getDateTime()));
                    for (int i = 0; i < list.size(); i++) {
                        ttZtcService.removeById(list.get(i).getId());
                    }
                }
            }

            //京东
            if (id1.getPlatformBh().equals("103")) {
                List<JdGwcd> list = jdGwcdService.list(new QueryWrapper<JdGwcd>().eq("Shop_bh", id1.getShopBh()).eq("Date_time", id1.getDateTime()));
                for (int i = 0; i < list.size(); i++) {
                    jdGwcdService.removeById(list.get(i).getId());
                }
                List<JdJdkc> list1 = jdJdkcService.list(new QueryWrapper<JdJdkc>().eq("Shop_bh", id1.getShopBh()).eq("Date_time", id1.getDateTime()));
                for (int i = 0; i < list1.size(); i++) {
                    jdJdkcService.removeById(list1.get(i).getId());
                }
                List<JdCjtg> list2 = jdCjtgService.list(new QueryWrapper<JdCjtg>().eq("Shop_bh", id1.getShopBh()).eq("Date_time", id1.getDateTime()));
                for (int i = 0; i < list2.size(); i++) {
                    jdCjtgService.removeById(list2.get(i).getId());
                }
                List<JdXssj> list3 = jdXssjService.list(new QueryWrapper<JdXssj>().eq("Shop_bh", id1.getShopBh()).eq("Date_time", id1.getDateTime()));
                for (int i = 0; i < list3.size(); i++) {
                    jdXssjService.removeById(list3.get(i).getId());
                }
                List<JdCommodity> list4 = jdCommodityService.list(new QueryWrapper<JdCommodity>().eq("Shop_bh", id1.getShopBh()).eq("date_time", id1.getDateTime()));
                for (int i = 0; i < list4.size(); i++) {
                    jdCommodityService.removeById(list4.get(i).getId());
                }
            }
            lsSaleService.removeById(id);
        }else {

            String[] split = id.split(",");
            for (int ic =0;ic<split.length;ic++){
                //拼多多
                LsSale id1 = lsSaleService.getOne(new QueryWrapper<LsSale>().eq("id", split[ic]));
                if (id1.getPlatformBh().equals("101")) {
                    List<PddMxdp> list = pddMxdpService.list(new QueryWrapper<PddMxdp>().eq("Shop_bh", id1.getShopBh()).eq("Date_time", id1.getDateTime()));
                    for (int i = 0; i < list.size(); i++) {
                        pddMxdpService.removeById(list.get(i).getId());
                    }
                    List<PddCjtg> list1 = cjtgService.list(new QueryWrapper<PddCjtg>().eq("Shop_bh", id1.getShopBh()).eq("Date_time", id1.getDateTime()));
                    for (int i = 0; i < list1.size(); i++) {
                        cjtgService.removeById(list1.get(i).getId());
                    }
                    List<PddSstg> list2 = sstgService.list(new QueryWrapper<PddSstg>().eq("Shop_bh", id1.getShopBh()).eq("Date_time", id1.getDateTime()));
                    for (int i = 0; i < list2.size(); i++) {
                        sstgService.removeById(list2.get(i).getId());
                    }
                    List<PddFxt> list3 = fxtService.list(new QueryWrapper<PddFxt>().eq("Shop_bh", id1.getShopBh()).eq("Date_time", id1.getDateTime()));
                    for (int i = 0; i < list3.size(); i++) {
                        fxtService.removeById(list3.get(i).getId());
                    }
                    List<PddCommodity> list4 = commodityService.list(new QueryWrapper<PddCommodity>().eq("Shop_bh", id1.getShopBh()).eq("Date_time", id1.getDateTime()));
                    for (int i = 0; i < list4.size(); i++) {
                        commodityService.removeById(list4.get(i).getId());
                    }
                }

                //淘系
                if (id1.getPlatformBh().equals("102")) {
                    LsShop shop_bh = lsShopService.getOne(new QueryWrapper<LsShop>().eq("Shop_bh", id1.getShopBh()));
                    List<TmCommodity> list1 = tmCommodityService.list(new QueryWrapper<TmCommodity>().eq("Shop_bh", id1.getShopBh()).eq("Date_time", id1.getDateTime()));
                    for (int i = 0; i < list1.size(); i++) {
                        tmCommodityService.removeById(list1.get(i).getId());
                    }
                    if (shop_bh.getShopName().indexOf("特价版") == -1) {
                        List<TmCjtg> list = tmCjtgService.list(new QueryWrapper<TmCjtg>().eq("Shop_bh", id1.getShopBh()).eq("Date_time", id1.getDateTime()));
                        for (int i = 0; i < list.size(); ) {
                            tmCjtgService.removeById(list.get(i).getId());
                        }
                        List<TmCjzz> list2 = tmCjzzService.list(new QueryWrapper<TmCjzz>().eq("Shop_bh", id1.getShopBh()).eq("Date_time", id1.getDateTime()));
                        for (int i = 0; i < list2.size(); ) {
                            tmCjzzService.removeById(list2.get(i).getId());
                        }

                        List<TmAitg> list3 = tmAitgService.list(new QueryWrapper<TmAitg>().eq("Shop_bh", id1.getShopBh()).eq("Date_time", id1.getDateTime()));
                        for (int i = 0; i < list3.size(); ) {
                            tmAitgService.removeById(list3.get(i).getId());
                        }
                        List<TmPxb> list4 = tmPxbService.list(new QueryWrapper<TmPxb>().eq("Shop_bh", id1.getShopBh()).eq("Date_time", id1.getDateTime()));

                        for (int i = 0; i < list4.size(); ) {
                            tmPxbService.removeById(list4.get(i).getId());
                        }
                        List<TmZtc> list5 = tmZtcService.list(new QueryWrapper<TmZtc>().eq("Shop_bh", id1.getShopBh()).eq("Date_time", id1.getDateTime()));
                        for (int i = 0; i < list5.size(); ) {
                            tmZtcService.removeById(list5.get(i).getId());
                        }
                    } else {
                        List<TtZtc> list = ttZtcService.list(new QueryWrapper<TtZtc>().eq("Shop_bh", id1.getShopBh()).eq("Date_time", id1.getDateTime()));
                        for (int i = 0; i < list.size(); i++) {
                            ttZtcService.removeById(list.get(i).getId());
                        }
                    }
                }

                //京东
                if (id1.getPlatformBh().equals("103")) {
                    List<JdGwcd> list = jdGwcdService.list(new QueryWrapper<JdGwcd>().eq("Shop_bh", id1.getShopBh()).eq("Date_time", id1.getDateTime()));
                    for (int i = 0; i < list.size(); i++) {
                        jdGwcdService.removeById(list.get(i).getId());
                    }
                    List<JdJdkc> list1 = jdJdkcService.list(new QueryWrapper<JdJdkc>().eq("Shop_bh", id1.getShopBh()).eq("Date_time", id1.getDateTime()));
                    for (int i = 0; i < list1.size(); i++) {
                        jdJdkcService.removeById(list1.get(i).getId());
                    }
                    List<JdCjtg> list2 = jdCjtgService.list(new QueryWrapper<JdCjtg>().eq("Shop_bh", id1.getShopBh()).eq("Date_time", id1.getDateTime()));
                    for (int i = 0; i < list2.size(); i++) {
                        jdCjtgService.removeById(list2.get(i).getId());
                    }
                    List<JdXssj> list3 = jdXssjService.list(new QueryWrapper<JdXssj>().eq("Shop_bh", id1.getShopBh()).eq("Date_time", id1.getDateTime()));
                    for (int i = 0; i < list3.size(); i++) {
                        jdXssjService.removeById(list3.get(i).getId());
                    }
                    List<JdCommodity> list4 = jdCommodityService.list(new QueryWrapper<JdCommodity>().eq("Shop_bh", id1.getShopBh()).eq("date_time", id1.getDateTime()));
                    for (int i = 0; i < list4.size(); i++) {
                        jdCommodityService.removeById(list4.get(i).getId());
                    }

                }
                lsSaleService.removeById(split[ic]);
            }
        }
        return true;
    }



    @SneakyThrows
    @Override
    public void getttztc(String lsea) {
        LOG.info(lsea);
        JSONObject jsonObject = JSONObject.fromObject(lsea);
        LsShop one1 = lsShopService.getOne(new QueryWrapper<LsShop>().eq("PlatForm_bh", 102).eq("Shop_name", jsonObject.getString("shop_title")));
        String zsZwRePorYwHoLe = jsonObject.getString("tjtg_extend");
        JSONObject jsonObject1 = JSONObject.fromObject(zsZwRePorYwHoLe);

        JSONArray ttztc = JSONArray.fromObject(jsonObject1.getString("unit_report"));
        if (ttztc!=null){
            if (ttztc.size()!=0){
        for (int i =0;i<ttztc.size();i++){
            Object o = ttztc.get(i);
            JSONObject jsonObject2 = JSONObject.fromObject(o);
            TtZtc ttZtc = new TtZtc();
            ttZtc.setId(UtilId.getUUID());
            ttZtc.setShopBh(one1.getShopBh());
            ttZtc.setPlatformBh("102");
            ttZtc.setChannelLx("直通车");
            ttZtc.setDateTime(simpleDateFormat.parse(jsonObject2.getString("日期")));//  日期
            ttZtc.setUnitId(jsonObject2.getString("单元ID"));// 单元id
            ttZtc.setUnitName(jsonObject2.getString("单元名称"));// 单元名称
            ttZtc.setPlanId(jsonObject2.getString("计划ID"));//  计划ID
            ttZtc.setPlanName(jsonObject2.getString("计划名称"));//  计划名称
            ttZtc.setHitsNum(UtilId.doublelsnull(jsonObject2.getString("点击量")));// 点击量
            ttZtc.setSpend(UtilId.doublelsnull(jsonObject2.getString("消耗(元)")));//  消耗(元)
            ttZtc.setOrderNum(UtilId.doublelsnull(jsonObject2.getString("订单量")));//  订单量
            ttZtc.setOrderJe(UtilId.doublelsnull(jsonObject2.getString("订单金额")));//  订单金额
            ttZtc.setHitsRate(UtilId.getduoble(jsonObject2.getString("点击率")));//  点击率
            ttZtc.setRate(UtilId.getduoble(jsonObject2.getString("转化率")));//  转化率
            ttZtc.setInputOutputRatio(UtilId.getduoble(jsonObject2.getString("投入产出比")));//投入产出比
            ttZtcService.save(ttZtc);
        }
        }
        }

        LsSale one = lsSaleService.getOne(new QueryWrapper<LsSale>().eq("Shop_bh", one1.getShopBh()).eq("Platform_bh", "102").eq("Date_time", jsonObject.getString("stat_date")));
        if (one!=null){
            Map<String, Object> stat_date = ttZtcService.getNum(one1.getShopBh(), simpleDateFormat.parse(jsonObject.getString("stat_date")));
           if (stat_date!=null){
               if (stat_date.size()!=0){
                one.setMoresearchll(UtilId.doublelsnull(stat_date.get("MoreSearchll")+""));
                one.setMoresearchfy(UtilId.doublelsnull(stat_date.get("MoreSearchfy")+""));
               }else {
                   one.setMoresearchll(0.0);
                   one.setMoresearchfy(0.0);
               }
               one.setPromotionflow(one.getMoresearchll());  //推广总流量
               one.setPromotionflowzb(one.getPromotionflow()/one.getTotaltraffic());  //推广流量占比
               one.setPromotioncost(one.getMoresearchfy());  // 推广总费用
               one.setPromotioncostzb(one.getMoresearchfy()/one.getSales());  //推广费用占比
               one.setFreetraffic(one.getTotaltraffic()-one.getPromotionflow());  // 免费流量
               one.setFreetrafficzb(one.getFreetraffic()/one.getTotaltraffic());  //   免费流量占比
               one.setTotalcost(one.getPromotioncost()+one.getPlatformbuckle());
               one.setCostratio(one.getTotalcost()/one.getSales());
               lsSaleService.updateById(one);
           }else {
               one.setMoresearchll(0.0);
               one.setMoresearchfy(0.0);
               one.setPromotionflow(one.getMoresearchll());  //推广总流量
               one.setPromotionflowzb(0.0);  //推广流量占比
               one.setPromotioncost(one.getMoresearchfy());  // 推广总费用
               one.setPromotioncostzb(0.0);  //推广费用占比
               one.setFreetraffic(one.getTotaltraffic()-one.getPromotionflow());  // 免费流量
               one.setFreetrafficzb(one.getFreetraffic()/one.getTotaltraffic());  //   免费流量占比
               one.setTotalcost(one.getPromotioncost()+one.getPlatformbuckle());
               if (one.getSales()!=0.0){
                   one.setCostratio(one.getTotalcost()/one.getSales());
               }

               lsSaleService.updateById(one);
           }
        }



    }

    @Override
    public void getttxssj(String lsea) {
        LOG.info(lsea);
        JSONObject jsonObject = JSONObject.fromObject(lsea);
        String zszwreportwhole = jsonObject.getString("sycm_summary");
        JSONObject jsonObject1 = JSONObject.fromObject(zszwreportwhole);
        LsShop one1 = lsShopService.getOne(new QueryWrapper<LsShop>().eq("PlatForm_bh", 102).eq("Shop_name", jsonObject.getString("shop_title")));
        LsSale one = lsSaleService.getOne(new QueryWrapper<LsSale>().eq("Shop_bh", one1.getShopBh()).eq("Date_time", jsonObject.getString("stat_date")));
        if (one==null){
            String summary = jsonObject1.getString("summary");
            JSONObject jsonObject2 = JSONObject.fromObject(summary);
            LsSale lsSale = new LsSale();
            lsSale.setId(UtilId.getUUID());
            lsSale.setShopBh(one1.getShopBh());
            try {
                lsSale.setDateTime(simpleDateFormat.parse(jsonObject.getString("stat_date")));
            } catch (ParseException e) {
                e.printStackTrace();
            }
            lsSale.setPlatformBh("102");
            lsSale.setSales(UtilId.doublelsnull(jsonObject2.getString("shop_pay_amt"))); //全店销售额
            lsSale.setOrderquantity(UtilId.doublelsnull(jsonObject2.getString("shop_pay_ordr_cnt"))); //订单量
            lsSale.setNumBuyers(UtilId.doublelsnull(jsonObject2.getString("shop_pay_ordr_usr_cnt")));  //支付买家数
            lsSale.setTotaltraffic(UtilId.doublelsnull(jsonObject2.getString("shop_uv")));  //店铺总流量
            lsSale.setRefundamount(UtilId.doublelsnull(jsonObject2.getString("shop_succ_rtn_ordr_amt_1d")));  //退款金额
            lsSale.setCustomerprice(UtilId.doublelsnull(jsonObject2.getString("shop_pct")));
            lsSale.setPaymentrate(UtilId.doublelsnull(jsonObject2.getString("shop_pay_rto")));
            lsSale.setActualsales(lsSale.getSales()-lsSale.getRefundamount());
            if (lsSale.getSales()!=0.0){
                lsSale.setRefundrate(lsSale.getRefundamount()/lsSale.getSales());
            }else {
                lsSale.setRefundrate(0.0);
            }
            lsSale.setPlatformbuckle(lsSale.getActualsales()*0.02);
            lsSaleService.save(lsSale);
        }

        JSONArray ttCommodity = JSONArray.fromObject(jsonObject1.getString("details"));
        if (ttCommodity!=null){
            if (ttCommodity.size()!=0){
        for (int i =0;i<ttCommodity.size();i++){
            Object o = ttCommodity.get(i);
            JSONObject jsonObject2 = JSONObject.fromObject(o);
            TmCommodity tmCommodity = new TmCommodity();
            tmCommodity.setId(UtilId.getUUID());
            tmCommodity.setShopBh(one1.getShopBh());
            tmCommodity.setCommId(jsonObject2.getString("goods_id"));
            tmCommodity.setCommName(jsonObject2.getString("goods_name"));
            tmCommodity.setCommBrowse(UtilId.doublelsnull(jsonObject2.getString("goods_pv")));
            tmCommodity.setCommVisitor(UtilId.doublelsnull(jsonObject2.getString("goods_uv")));
            tmCommodity.setNumBuyers(UtilId.doublelsnull(jsonObject2.getString("pay_usr_cnt")));
            tmCommodity.setNumZfpiece(UtilId.doublelsnull(jsonObject2.getString("pay_qty")));
            tmCommodity.setZfJe(UtilId.doublelsnull(jsonObject2.getString("pay_ordr_amt")));
            tmCommodity.setZfRate(UtilId.doublelsnull(jsonObject2.getString("pay_uv_rto")));
            try {
                tmCommodity.setDateTime(simpleDateFormat.parse(jsonObject.getString("stat_date")));
            } catch (ParseException e) {
                e.printStackTrace();
            }
            tmCommodityService.save(tmCommodity);
        }
            }
        }
    }

    @SneakyThrows
    @Override
    public void getJdKc(String lsea) {
        LOG.info(lsea);
        JSONObject jsonObject = JSONObject.fromObject(lsea);
        LsShop one1 = lsShopService.getOne(new QueryWrapper<LsShop>().eq("PlatForm_bh", 103).eq("Shop_name", jsonObject.getString("shop_title")));
        JSONArray ttCommodity = JSONArray.fromObject(jsonObject.getString("jdkc_report_account"));
        for (int i =0;i<ttCommodity.size();i++){
            Object o = ttCommodity.get(i);
            JSONObject jsonObject1 = JSONObject.fromObject(o);
            JdJdkc jdJdkc = new JdJdkc();
            jdJdkc.setId(UtilId.getUUID());
            jdJdkc.setChannelLx("京东快车");
            jdJdkc.setPlatformBh("103");
            jdJdkc.setShopBh(one1.getShopBh());
            jdJdkc.setDateTime(simpleDateFormat.parse(jsonObject.getString("stat_date")));
            jdJdkc.setPromotionPlan(jsonObject1.getString("推广计划"));
            jdJdkc.setPlanId(jsonObject1.getString("计划ID"));
            jdJdkc.setPlanLx(jsonObject1.getString("计划类型"));
            jdJdkc.setToshowNum(UtilId.doublelsnull(jsonObject1.getString("展现量")));
            jdJdkc.setHitsNum(UtilId.doublelsnull(jsonObject1.getString("点击量")));
            jdJdkc.setHitsRate(UtilId.getduoble(jsonObject1.getString("点击率"))/100);
            jdJdkc.setTotalCost(UtilId.doublelsnull(jsonObject1.getString("总费用")));
            jdJdkc.setToshowSpend(UtilId.doublelsnull(jsonObject1.getString("千次展现成本")));
            jdJdkc.setHitsSpend(UtilId.doublelsnull(jsonObject1.getString("平均点击成本")));
            jdJdkc.setDirectDdh(UtilId.doublelsnull(jsonObject1.getString("直接订单行")));
            jdJdkc.setDirectDdje(UtilId.doublelsnull(jsonObject1.getString("直接订单金额")));
            jdJdkc.setIndirectDdh(UtilId.doublelsnull(jsonObject1.getString("间接订单行")));
            jdJdkc.setIndirectDdje(UtilId.doublelsnull(jsonObject1.getString("间接订单金额")));
            jdJdkc.setTotalDdh(UtilId.doublelsnull(jsonObject1.getString("总订单行")));
            jdJdkc.setTotalDdje(UtilId.doublelsnull(jsonObject1.getString("总订单金额")));
            jdJdkc.setPresaleDdh(UtilId.doublelsnull(jsonObject1.getString("预售订单行")));
            jdJdkc.setPresaleDdje(UtilId.doublelsnull(jsonObject1.getString("预售订单金额")));
            jdJdkc.setDirectAddnum(UtilId.doublelsnull(jsonObject1.getString("直接加购数")));
            jdJdkc.setIndirectAddnum(UtilId.doublelsnull(jsonObject1.getString("间接加购数")));
            jdJdkc.setTotalAddnum(UtilId.doublelsnull(jsonObject1.getString("总加购数")));
            jdJdkc.setConRate(UtilId.doublelsnull(jsonObject1.getString("转化率"))/100);
            jdJdkc.setRoi(UtilId.doublelsnull(jsonObject1.getString("ROI")));
            jdJdkc.setCpa(UtilId.doublelsnull(jsonObject1.getString("CPA")));
            jdJdkc.setState("");
            jdJdkcService.save(jdJdkc);
        }


        LsSale one = lsSaleService.getOne(new QueryWrapper<LsSale>().eq("Shop_bh", one1.getShopBh()).eq("Date_time", jsonObject.getString("stat_date")));
     if (one!=null){
        Map<String, Object> stat_date = jdJdkcService.getNum(one1.getShopBh(), simpleDateFormat.parse(jsonObject.getString("stat_date")));
        if (stat_date!=null){
           if (stat_date.size()!=0){
                    one.setMoresearchfy(UtilId.doublelsnull(stat_date.get("MoreSearchfy")+""));
                    one.setMoresearchll(UtilId.doublelsnull(stat_date.get("MoreSearchll")+""));
           }else {
               one.setMoresearchfy(0.0);
               one.setMoresearchll(0.0);
           }
       }else {
            one.setMoresearchfy(0.0);
            one.setMoresearchll(0.0);
       }
         one.setPromotioncost(one.getPromotioncost()+one.getMoresearchfy()); //推广费用
         one.setPromotionflow(one.getPromotionflow()+one.getMoresearchll()); //推广流量
         one.setFreetraffic(one.getTotaltraffic()-one.getPromotionflow()); //免费流量
         one.setFreetrafficzb(UtilId.sting2double(one.getFreetraffic()/one.getTotaltraffic()));  //免费流量占比
         one.setPromotioncostzb(UtilId.sting2double(one.getPromotioncost()/one.getSales())); //推广费用占比
         one.setPromotionflowzb(UtilId.sting2double(one.getPromotionflow()/one.getTotaltraffic())); //推广流量占比
         one.setTotalcost(one.getPromotioncost()+one.getTotalcost()); //合计总费用
         one.setCostratio(UtilId.sting2double(one.getTotalcost()/one.getSales()));  //费销比
         lsSaleService.updateById(one);
     }
    }

    @SneakyThrows
    @Override
    public void getjdGwcd(String lsea) {
        LOG.info(lsea);
        JSONObject jsonObject = JSONObject.fromObject(lsea);
        LsShop one1 = lsShopService.getOne(new QueryWrapper<LsShop>().eq("PlatForm_bh", 103).eq("Shop_name", jsonObject.getString("shop_title")));
        JSONArray ttCommodity = JSONArray.fromObject(jsonObject.getString("touch_point_report_account"));
        for (int i =0;i<ttCommodity.size();i++) {
            Object o = ttCommodity.get(i);
            JSONObject jsonObject1 = JSONObject.fromObject(o);
            JdGwcd jdGwcd = new JdGwcd();
            jdGwcd.setId(UtilId.getUUID());
            jdGwcd.setPlatformBh("103");
            jdGwcd.setShopBh(one1.getShopBh());
            jdGwcd.setChannelLx("购物触点");
            jdGwcd.setDateTime(simpleDateFormat.parse(jsonObject.getString("stat_date")));
            jdGwcd.setToshowNum(UtilId.doublelsnull(jsonObject1.getString("展现量")));
            jdGwcd.setHitsNum(UtilId.doublelsnull(jsonObject1.getString("点击量")));
            jdGwcd.setHitsRate(UtilId.doublelsnull(jsonObject1.getString("点击率")));
            jdGwcd.setTotalCost(UtilId.doublelsnull(jsonObject1.getString("总费用")));
            jdGwcd.setToshowSpend(UtilId.doublelsnull(jsonObject1.getString("千次展现成本")));
            jdGwcd.setHitsSpend(UtilId.doublelsnull(jsonObject1.getString("平均点击成本")));
            jdGwcd.setDirectDdh(UtilId.doublelsnull(jsonObject1.getString("直接订单行")));
            jdGwcd.setDirectDdje(UtilId.doublelsnull(jsonObject1.getString("直接订单金额")));
            jdGwcd.setIndirectDdh(UtilId.doublelsnull(jsonObject1.getString("间接订单行")));
            jdGwcd.setTotalDdh(UtilId.doublelsnull(jsonObject1.getString("间接订单金额")));
            jdGwcd.setTotalDdje(UtilId.doublelsnull(jsonObject1.getString("总订单行")));
            jdGwcd.setPresaleDdh(UtilId.doublelsnull(jsonObject1.getString("总订单金额")));
            jdGwcd.setPresaleDdje(UtilId.doublelsnull(jsonObject1.getString("预售订单行")));
            jdGwcd.setDirectAddnum(UtilId.doublelsnull(jsonObject1.getString("预售订单金额")));
            jdGwcd.setIndirectAddnum(UtilId.doublelsnull(jsonObject1.getString("直接加购数")));
            jdGwcd.setTotalAddnum(UtilId.doublelsnull(jsonObject1.getString("间接加购数")));
            jdGwcd.setConRate(UtilId.doublelsnull(jsonObject1.getString("总加购数")));
            jdGwcd.setRoi(UtilId.doublelsnull(jsonObject1.getString("ROI")));
            jdGwcd.setGgfkNum(UtilId.doublelsnull(jsonObject1.getString("广告访客数")));
            jdGwcd.setFwymNum(UtilId.doublelsnull(jsonObject1.getString("访问页面数")));
            jdGwcd.setDuration(UtilId.doublelsnull(jsonObject1.getString("页面平均访问时长")));
            jdGwcd.setDeepentryNum(UtilId.doublelsnull(jsonObject1.getString("深度进店数")));
            jdGwcd.setShopgzNum(UtilId.doublelsnull(jsonObject1.getString("商品关注数")));
            jdGwcd.setFollowNum(jsonObject1.getString("店铺关注数"));
            jdGwcd.setMakeNum(UtilId.doublelsnull(jsonObject1.getString("预约数")));
            jdGwcd.setVolumeNum(UtilId.doublelsnull(jsonObject1.getString("领劵数")));
            jdGwcd.setCpa(UtilId.doublelsnull(jsonObject1.getString("CPA")));
            jdGwcd.setFabulousNum(jsonObject1.getString("点赞数"));
            jdGwcd.setCommentNum(jsonObject1.getString("评论数"));
            jdGwcd.setShareNum(jsonObject1.getString("分享数"));
            jdGwcd.setFollowNum(jsonObject1.getString("关注数"));
            jdGwcd.setInterNum(jsonObject1.getString("互动数"));
            jdGwcd.setInterRate(jsonObject1.getString("互动率"));
            jdGwcd.setWatchNum(jsonObject1.getString("观看次数"));
            jdGwcd.setWatchTime(jsonObject1.getString("观看时长"));
            jdGwcd.setWatchPjtime(jsonObject1.getString("平均观看时长"));
            jdGwcdService.save(jdGwcd);
        }
        LsSale one = lsSaleService.getOne(new QueryWrapper<LsSale>().eq("Shop_bh", one1.getShopBh()).eq("Date_time", jsonObject.getString("stat_date")));
        if (one!=null){
            Map<String, Object> stat_date = jdGwcdService.getNum(one1.getShopBh(), simpleDateFormat.parse(jsonObject.getString("stat_date")));
            if (stat_date!=null){
                if (stat_date.size()!=0){
                    one.setRestassuredpushfy(UtilId.doublelsnull(stat_date.get("RestAssuredPushfy")+""));
                    one.setRestassuredpushll(UtilId.doublelsnull(stat_date.get("RestAssuredPushll")+""));
                }else {
                    one.setRestassuredpushfy(0.0);
                    one.setRestassuredpushll(0.0);
                }
            }else {
                one.setRestassuredpushfy(0.0);
                one.setRestassuredpushll(0.0);
            }
            one.setPromotioncost(one.getPromotioncost()+one.getRestassuredpushfy()); //推广费用
            one.setPromotionflow(one.getPromotionflow()+one.getRestassuredpushll()); //推广流量
            one.setFreetraffic(one.getTotaltraffic()-one.getPromotionflow()); //免费流量
            one.setFreetrafficzb(UtilId.sting2double(one.getFreetraffic()/one.getTotaltraffic()));  //免费流量占比
            one.setPromotioncostzb(UtilId.sting2double(one.getPromotioncost()/one.getSales())); //推广费用占比
            one.setPromotionflowzb(UtilId.sting2double(one.getPromotionflow()/one.getTotaltraffic())); //推广流量占比
            one.setTotalcost(one.getPromotioncost()+one.getTotalcost()); //合计总费用
            one.setCostratio(UtilId.sting2double(one.getTotalcost()/one.getSales()));  //费销比
            lsSaleService.updateById(one);
        }

    }

    @Override
    public void getjdtkje(String lsea) {
        LOG.info(lsea);
        JSONObject jsonObject = JSONObject.fromObject(lsea);
        String zszwreportwhole = jsonObject.getString("service_analysis");
        JSONObject jsonObject1 = JSONObject.fromObject(zszwreportwhole);
        LsShop one1 = lsShopService.getOne(new QueryWrapper<LsShop>().eq("PlatForm_bh", 103).eq("Shop_name", jsonObject.getString("shop_title")));
if (one1!=null){
    LsSale one = lsSaleService.getOne(new QueryWrapper<LsSale>().eq("Shop_bh", one1.getShopBh()).eq("Date_time", jsonObject.getString("stat_date")));
    if (one!=null){
        one.setRefundamount(UtilId.doublelsnull(jsonObject1.getString("shop_succ_rtn_ordr_amt_1d")));
        one.setActualsales(one.getSales()-one.getRefundamount());
        one.setRefundrate(one.getRefundamount()/one.getSales());
        one.setPlatformbuckle(one.getActualsales()*0.05);
        one.setTotalcost(one.getPlatformbuckle());
        lsSaleService.updateById(one);
    }

}

    }

    @Override
    public void getjdCommodity(String lsea) {
        LOG.info(lsea);
        JSONObject jsonObject = JSONObject.fromObject(lsea);
        LsShop one1 = lsShopService.getOne(new QueryWrapper<LsShop>().eq("PlatForm_bh", 103).eq("Shop_name", jsonObject.getString("shop_title")));
        Date datae = null;
        try {
            datae = simpleDateFormat.parse(jsonObject.getString("stat_date"));
        } catch (ParseException e) {
            e.printStackTrace();
        }
        JSONArray jdCommodity = JSONArray.fromObject(jsonObject.getString("product_details"));
        if (jdCommodity!=null){
            if (jdCommodity.size()!=0){
                for (int i =0;i<jdCommodity.size();i++){
                    Object o = jdCommodity.get(i);
                    JSONObject jsonObject2 = JSONObject.fromObject(o);
                    JdCommodity jdCommodity1 = new JdCommodity();
                    jdCommodity1.setId(UtilId.getUUID());
                    jdCommodity1.setShopBh(one1.getShopBh());
                    jdCommodity1.setProductId(jsonObject2.getString("商品ID"));
                    jdCommodity1.setProductName(jsonObject2.getString("商品名称"));
                    jdCommodity1.setPageView(Double.parseDouble(jsonObject2.getString("访客数")));
                    jdCommodity1.setPurchased(UtilId.doublelsnull2(jsonObject2.getString("浏览量")));
                    jdCommodity1.setNumberPurchase(UtilId.doublelsnull2(jsonObject2.getString("加购商品件数")));
                    jdCommodity1.setItemsPurchased(UtilId.doublelsnull2(jsonObject2.getString("加购人数")));
                    jdCommodity1.setNumberCustomers(UtilId.doublelsnull2(jsonObject2.getString("成交客户数")));
                    jdCommodity1.setAmountSingle(UtilId.doublelsnull2(jsonObject2.getString("成交单量")));
                    jdCommodity1.setItemsTraded(UtilId.doublelsnull2(jsonObject2.getString("成交商品件数")));
                    jdCommodity1.setTradingVolume(Double.parseDouble(jsonObject2.getString("成交金额")));
                    jdCommodity1.setTurnoverRate(Double.parseDouble(jsonObject2.getString("成交转化率")));
                    jdCommodity1.setDateTime(datae);
                    jdCommodityService.save(jdCommodity1);
                }
            }
        }
    }

    @SneakyThrows
    @Override
    public void getjdxssj(String lsea) {
        LOG.info(lsea);
        JSONObject jsonObject = JSONObject.fromObject(lsea);
        LsShop one1 = lsShopService.getOne(new QueryWrapper<LsShop>().eq("PlatForm_bh", 103).eq("Shop_name", jsonObject.getString("shop_title")));
        String zszwreportwhole = jsonObject.getString("deal_summary");
        JSONObject jsonObject1 = JSONObject.fromObject(zszwreportwhole);
        LsSale one = lsSaleService.getOne(new QueryWrapper<LsSale>().eq("Shop_bh", one1.getShopBh()).eq("Date_time", jsonObject.getString("stat_date")));
if (one==null){
    LsSale lsSale = new LsSale();
    lsSale.setId(UtilId.getUUID());
    lsSale.setShopBh(one1.getShopBh());
    lsSale.setDateTime(simpleDateFormat.parse(jsonObject.getString("stat_date")));
    lsSale.setPlatformBh("103");
    lsSale.setSales(UtilId.doublelsnull(jsonObject1.getString("成交金额")));  //全店销售额
    lsSale.setOrderquantity(UtilId.doublelsnull(jsonObject1.getString("成交商品件数")));  //订单量
    lsSale.setNumBuyers(UtilId.doublelsnull(jsonObject1.getString("成交客户数")));  //支付买家数
    lsSale.setTotaltraffic(UtilId.doublelsnull(jsonObject1.getString("访客数")));  //店铺总流量
    lsSale.setCustomerprice(UtilId.doublelsnull(jsonObject1.getString("客单价"))); //客单价
    lsSale.setPaymentrate(UtilId.getduoble(jsonObject1.getString("成交转化率"))); //支付转化率
    lsSale.setPromotioncost(0.0); //推广费用
    lsSale.setPromotionflow(0.0); //推广流量
    lsSaleService.save(lsSale);
}

        JdXssj jdXssj = new JdXssj();
        jdXssj.setId(UtilId.getUUID());
        jdXssj.setPlatformBh("103");
        jdXssj.setShopBh(one1.getShopBh());
        jdXssj.setDateTime(simpleDateFormat.parse(jsonObject.getString("stat_date")));
        jdXssj.setBrowseNum(UtilId.doublelsnull(jsonObject1.getString("浏览量")));
        jdXssj.setBrowseNumhb(UtilId.getduoble(jsonObject1.getString("浏览量环比")));
        jdXssj.setVisNum(UtilId.doublelsnull(jsonObject1.getString("访客数")));
        jdXssj.setVisHb(UtilId.getduoble(jsonObject1.getString("访客数环比")));
        jdXssj.setBrowseRj(UtilId.doublelsnull(jsonObject1.getString("人均浏览量")));
        jdXssj.setBrowseRjhb(UtilId.getduoble(jsonObject1.getString("人均浏览量环比")));
        jdXssj.setStopTimepj(UtilId.doublelsnull(jsonObject1.getString("平均停留时间")));
        jdXssj.setStopTimepjhb(UtilId.getduoble(jsonObject1.getString("平均停留时间环比")));
        jdXssj.setJumplossRate(UtilId.getduoble(jsonObject1.getString("跳失率")));
        jdXssj.setJumplossRatehb(UtilId.getduoble(jsonObject1.getString("跳失率环比")));
        jdXssj.setDealKhs(UtilId.doublelsnull(jsonObject1.getString("成交客户数")));
        jdXssj.setDealKhshb(UtilId.getduoble(jsonObject1.getString("成交客户数环比")));
        jdXssj.setDealNum(UtilId.doublelsnull(jsonObject1.getString("成交单量")));
        jdXssj.setDealNumhb(UtilId.getduoble(jsonObject1.getString("成交单量环比")));
        jdXssj.setDealJe(UtilId.doublelsnull(jsonObject1.getString("成交金额")));
        jdXssj.setDealJehb(UtilId.getduoble(jsonObject1.getString("成交金额环比")));
        jdXssj.setCustomerprice(UtilId.doublelsnull(jsonObject1.getString("客单价")));
        jdXssj.setCustomerpriceHb(UtilId.getduoble(jsonObject1.getString("客单价环比")));
        jdXssj.setDealspNum(UtilId.doublelsnull(jsonObject1.getString("成交商品件数")));
        jdXssj.setDealspNumhb(UtilId.getduoble(jsonObject1.getString("成交商品件数环比")));
        jdXssj.setDealRate(UtilId.getduoble(jsonObject1.getString("成交转化率")));
        jdXssj.setDealRatehb(UtilId.getduoble(jsonObject1.getString("成交转化率环比")));
        jdXssj.setPlaorderKhs(UtilId.doublelsnull(jsonObject1.getString("下单客户数")));
        jdXssj.setPlaorderKhshb(UtilId.getduoble(jsonObject1.getString("下单客户数环比")));
        jdXssj.setPlaorderNum(UtilId.doublelsnull(jsonObject1.getString("下单单量")));
        jdXssj.setPlaorderNumhb(UtilId.getduoble(jsonObject1.getString("下单单量环比")));
        jdXssj.setPlaorderJe(UtilId.doublelsnull(jsonObject1.getString("下单金额")));
        jdXssj.setPlaorderJehb(UtilId.getduoble(jsonObject1.getString("下单金额环比")));
        jdXssj.setPlaorderspNum(UtilId.doublelsnull(jsonObject1.getString("下单商品件数")));
        jdXssj.setPlaorderspNumhb(UtilId.getduoble(jsonObject1.getString("下单商品件数环比")));
        jdXssj.setPlaorderRate(UtilId.getduoble(jsonObject1.getString("下单转化率")));
        jdXssj.setPlaorderRatehb(UtilId.getduoble(jsonObject1.getString("下单转化率环比")));
        jdXssj.setPlaorderCjrate(UtilId.getduoble(jsonObject1.getString("下单成交转化率")));
        jdXssj.setPlaorderCjratehb(UtilId.getduoble(jsonObject1.getString("下单成交转化率环比")));
        jdXssjService.save(jdXssj);
    }

    @SneakyThrows
    @Override
    public void getjdJst(String lsea) {
        LOG.info(lsea);
        JSONObject jsonObject = JSONObject.fromObject(lsea);

        LsShop one1 = lsShopService.getOne(new QueryWrapper<LsShop>().eq("PlatForm_bh", 103).eq("Shop_name", jsonObject.getString("shop_title")));
        JSONArray ttCommodity = JSONArray.fromObject(jsonObject.getString("jdzw_report_account"));
        for (int i =0;i<ttCommodity.size();i++) {
            Object o = ttCommodity.get(i);
            JSONObject jsonObject1 = JSONObject.fromObject(o);
       if (jsonObject1!=null) {
           if (jsonObject1.size() != 0) {
               JdCjtg jdCjtg = new JdCjtg();
               jdCjtg.setId(UtilId.getUUID());
               jdCjtg.setPlatformBh("103");
               jdCjtg.setShopBh(one1.getShopBh());
               jdCjtg.setChannelLx("京速推");
               jdCjtg.setDateTime(simpleDateFormat.parse(jsonObject.getString("stat_date")));
               jdCjtg.setToshowNum(UtilId.doublelsnull(jsonObject1.getString("展现数")));
               jdCjtg.setHitsNum(UtilId.doublelsnull(jsonObject1.getString("点击数")));
               jdCjtg.setTotalCost(UtilId.doublelsnull(jsonObject1.getString("总费用")));
               jdCjtg.setToshowSpend(UtilId.doublelsnull(jsonObject1.getString("千次展现成本")));
               jdCjtg.setHitsSpend(UtilId.doublelsnull(jsonObject1.getString("平均点击成本")));
               jdCjtg.setDirectDdh(UtilId.doublelsnull(jsonObject1.getString("直接订单行")));
               jdCjtg.setDirectDdje(UtilId.doublelsnull(jsonObject1.getString("直接订单金额")));
               jdCjtg.setIndirectDdh(UtilId.doublelsnull(jsonObject1.getString("间接订单行")));
               jdCjtg.setIndirectDdje(UtilId.doublelsnull(jsonObject1.getString("间接订单金额")));
               jdCjtg.setTotalDdh(UtilId.doublelsnull(jsonObject1.getString("总订单行")));
               jdCjtg.setTotalDdje(UtilId.doublelsnull(jsonObject1.getString("总订单金额")));
               jdCjtg.setPresaleDdh(UtilId.doublelsnull(jsonObject1.getString("预售订单行")));
               jdCjtg.setPresaleDdje(UtilId.doublelsnull(jsonObject1.getString("预售订单金额")));
               jdCjtg.setDirectAddnum(UtilId.doublelsnull(jsonObject1.getString("直接加购数")));
               jdCjtg.setIndirectAddnum(UtilId.doublelsnull(jsonObject1.getString("间接加购数")));
               jdCjtg.setConRate(UtilId.doublelsnull(jsonObject1.getString("转化率")));
               jdCjtgService.save(jdCjtg);
           }
       }
       }
        LsSale one = lsSaleService.getOne(new QueryWrapper<LsSale>().eq("Shop_bh", one1.getShopBh()).eq("Date_time", jsonObject.getString("stat_date")));
        if (one!=null){
            Map<String, Object> stat_date = jdCjtgService.getNum(one1.getShopBh(), simpleDateFormat.parse(jsonObject.getString("stat_date")));
            if (stat_date!=null){
                if (stat_date.size()!=0){
                    one.setManyscenesfy(UtilId.doublelsnull(stat_date.get("ManyScenesfy")+""));
                    one.setManyscenesll(UtilId.doublelsnull(stat_date.get("ManyScenesll")+""));
                }else {
                    one.setManyscenesfy(0.0);
                    one.setManyscenesll(0.0);
                }
            }else {
                one.setManyscenesfy(0.0);
                one.setManyscenesll(0.0);
            }
            one.setPromotioncost(one.getPromotioncost()+one.getManyscenesfy()); //推广费用
            one.setPromotionflow(one.getPromotionflow()+one.getManyscenesll()); //推广流量
            one.setFreetraffic(one.getTotaltraffic()-one.getPromotionflow()); //免费流量
            one.setFreetrafficzb(UtilId.sting2double(one.getFreetraffic()/one.getTotaltraffic()));  //免费流量占比
            one.setPromotioncostzb(UtilId.sting2double(one.getPromotioncost()/one.getSales())); //推广费用占比
            one.setPromotionflowzb(UtilId.sting2double(one.getPromotionflow()/one.getTotaltraffic())); //推广流量占比
            one.setTotalcost(one.getPromotioncost()+one.getTotalcost()); //合计总费用
            one.setCostratio(UtilId.sting2double(one.getTotalcost()/one.getSales()));  //费销比
            lsSaleService.updateById(one);
        }

    }
}


