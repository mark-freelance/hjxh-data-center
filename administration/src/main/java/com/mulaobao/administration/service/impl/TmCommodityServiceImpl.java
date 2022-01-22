package com.mulaobao.administration.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.mulaobao.administration.dao.TmCommodityDao;
import com.mulaobao.administration.entity.LsShop;
import com.mulaobao.administration.entity.TmCommodity;
import com.mulaobao.administration.service.LsShopService;
import com.mulaobao.administration.service.TmCommodityService;
import com.mulaobao.administration.util.UtilId;
import lombok.SneakyThrows;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * (TmCommodity)表服务实现类
 *
 * @author makejava
 * @since 2021-12-09 16:11:31
 */
@Service("tmCommodityService")
public class TmCommodityServiceImpl extends ServiceImpl<TmCommodityDao, TmCommodity> implements TmCommodityService {
    private final Logger LOG = LoggerFactory.getLogger(this.getClass());
    private static SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
    @Resource
    private LsShopService shopService;
    @SneakyThrows
    @Override
    public void settmCommodity(String lsea) {
        LOG.info(lsea);
        JSONObject jsonObject = JSONObject.fromObject(lsea);
        JSONArray tmCommodity = JSONArray.fromObject(jsonObject.getString("sycm_cc_item_rank"));
        LsShop one1 = shopService.getOne(new QueryWrapper<LsShop>().eq("PlatForm_bh", 102).eq("Shop_name", jsonObject.getString("shop_title")));
        if (tmCommodity.size()!=0){
            for (int i =0;i<tmCommodity.size();i++){
                Object o = tmCommodity.get(i);
                JSONObject jsonObject2 = JSONObject.fromObject(o);
                TmCommodity tmCommodity1 = new TmCommodity();
                tmCommodity1.setId(UtilId.getUUID());
                tmCommodity1.setShopBh(one1.getShopBh());
                tmCommodity1.setDateTime(simpleDateFormat.parse(jsonObject2.getString("统计日期")));
                tmCommodity1.setCommId(jsonObject2.getString("商品ID")); //商品ID
                tmCommodity1.setCommName(jsonObject2.getString("商品名称"));  // 商品名称
                tmCommodity1.setGoodsBh(jsonObject2.getString("货号")); //货号
                tmCommodity1.setCommState(jsonObject2.getString("商品状态")); //商品状态
                tmCommodity1.setCommVisitor(UtilId.getmuje(jsonObject2.getString("商品访客数"))); //商品访客数
                tmCommodity1.setCommBrowse(UtilId.getmuje(jsonObject2.getString("商品浏览量"))); //商品浏览量
                tmCommodity1.setStopTime(UtilId.getmuje(jsonObject2.getString("平均停留时长")));//平均停留时长
                tmCommodity1.setNumCommpiece(UtilId.getmuje(jsonObject2.getString("商品加购件数"))); //商品加购件数
                tmCommodity1.setPageOutrate(UtilId.getduoble(jsonObject2.getString("商品详情页跳出率"))); //商品详情页跳出率
                tmCommodity1.setNumCommcoll(UtilId.getmuje(jsonObject2.getString("商品收藏人数"))); //商品收藏人数
                tmCommodity1.setNumXdbuyers(UtilId.getmuje(jsonObject2.getString("下单买家数")));//下单买家数
                tmCommodity1.setNumXdpiece(UtilId.getmuje(jsonObject2.getString("下单件数")));//下单件数
                tmCommodity1.setXdJe(UtilId.getmuje(jsonObject2.getString("下单金额")));//下单金额
                tmCommodity1.setXdRate(UtilId.getduoble(jsonObject2.getString("下单转化率")));//下单转化率
                tmCommodity1.setVisitValue(UtilId.getmuje(jsonObject2.getString("访客平均价值"))); //访客平均价值
                tmCommodity1.setNumBuyers(UtilId.getmuje(jsonObject2.getString("支付买家数"))); //支付买家数
                tmCommodity1.setNumZfpiece(UtilId.getmuje(jsonObject2.getString("支付件数")));  //支付件数
                tmCommodity1.setZfJe(UtilId.getmuje(jsonObject2.getString("支付金额")));  //支付金额
                tmCommodity1.setZfRate(UtilId.getduoble(jsonObject2.getString("商品支付转化率"))); // 商品支付转化率
                tmCommodity1.setRefundamount(UtilId.getmuje(jsonObject2.getString("成功退款金额"))); //成功退款金额
                tmCommodity1.setSearchRate(UtilId.getduoble(jsonObject2.getString("搜索引导支付转化率"))); //搜索引导支付转化率
                tmCommodity1.setNumSeavis(UtilId.getmuje(jsonObject2.getString("搜索引导访客数"))); //搜索引导访客数
                tmCommodity1.setNumSeabuyers(UtilId.getmuje(jsonObject2.getString("搜索引导支付买家数"))); //搜索引导支付买家数
                if (jsonObject.getString("shop_title").indexOf("淘宝")==-1){
                    tmCommodity1.setCommLabel(jsonObject2.getString("商品标签"));  //商品标签
                    tmCommodity1.setNumCommpeo(UtilId.getmuje(jsonObject2.getString("商品加购人数")));//商品加购人数
                    tmCommodity1.setNumBuyersnew(UtilId.getmuje(jsonObject2.getString("支付新买家数")));//支付新买家数
                    tmCommodity1.setNumBuyersold(UtilId.getmuje(jsonObject2.getString("支付老买家数")));//支付老买家数
                    tmCommodity1.setZfJeold(UtilId.getmuje(jsonObject2.getString("老买家支付金额")));//老买家支付金额
                    tmCommodity1.setZfPolyje(UtilId.getmuje(jsonObject2.getString("聚划算支付金额")));//聚划算支付金额
                    tmCommodity1.setCompePf(jsonObject2.getString("竞争力评分"));//竞争力评分
                    tmCommodity1.setYearZfje(UtilId.getmuje(jsonObject2.getString("年累计支付金额"))); //年累计支付金额
                    tmCommodity1.setMonthZfje(UtilId.getmuje(jsonObject2.getString("月累计支付金额")));//月累计支付金额
                    tmCommodity1.setMonthZfpiece(UtilId.getmuje(jsonObject2.getString("月累计支付件数")));//月累计支付件数
                }
                baseMapper.insert(tmCommodity1);
            }
        }
    }
}

