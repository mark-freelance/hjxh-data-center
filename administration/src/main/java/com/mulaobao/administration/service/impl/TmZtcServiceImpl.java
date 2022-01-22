package com.mulaobao.administration.service.impl;

import com.alibaba.excel.EasyExcel;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.mulaobao.administration.dao.TmZtcDao;
import com.mulaobao.administration.entity.LsShop;
import com.mulaobao.administration.entity.TmAitg;
import com.mulaobao.administration.entity.TmCjtg;
import com.mulaobao.administration.entity.TmZtc;
import com.mulaobao.administration.listener.TmCjtgListener;
import com.mulaobao.administration.listener.TmZtcListener;
import com.mulaobao.administration.service.TmCjtgService;
import com.mulaobao.administration.service.TmZtcService;
import com.mulaobao.administration.util.Csvs;
import com.mulaobao.administration.util.UtilId;
import org.apache.poi.ss.formula.functions.T;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * (TmZtc)表服务实现类
 *
 * @author makejava
 * @since 2021-09-16 17:43:52
 */
@Service("tmZtcService")
public class TmZtcServiceImpl extends ServiceImpl<TmZtcDao, TmZtc> implements TmZtcService {
    @Resource
    private TmZtcService tmZtcService;
    private static SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");

    @Override
    public void getInformation(MultipartFile multipartFile, String ms, LsShop shop_name,Date data1) {

        File csvFile = Csvs.uploadFile(multipartFile);
        // 将文件内容解析，存入List容器，List<String>为每一行内容的集合，20为CSV文件每行的总列数
        List<List<String>> lists = Csvs.readCSV(csvFile.getPath(), 41);
    for (int i =0;i<lists.size();i++){
    List<String> strings = lists.get(i);
    TmZtc tmZtc = new TmZtc();
    tmZtc.setPlanId(strings.get(0)); //计划id
    tmZtc.setPlanName(strings.get(1));  //计划名称
    tmZtc.setChannelLx(strings.get(2));
    tmZtc.setUnitId(strings.get(3)); //单元id
    tmZtc.setUnitName(strings.get(4)); //单元名称
    tmZtc.setShopId(strings.get(5));  //商品id
    tmZtc.setToshowNum(Double.parseDouble(UtilId.getnlll(strings.get(6)))); //展现量
    tmZtc.setHitsNum(Double.parseDouble(UtilId.getnlll(strings.get(7))));//点击量
    tmZtc.setSpend(Double.parseDouble(UtilId.getnlll(strings.get(8)))); //花费
    tmZtc.setHitsRate(Double.parseDouble(UtilId.getnlll(strings.get(9)))); //点击率
    tmZtc.setHitsSpend(Double.parseDouble(UtilId.getnlll(strings.get(10)))); //平均点击花费
    tmZtc.setToshowSpend(Double.parseDouble(UtilId.getnlll(strings.get(11)))); //千次展现花费
    tmZtc.setCollNum(Double.parseDouble(UtilId.getnlll(strings.get(12)))); //总收藏数
    tmZtc.setCollBaby(Double.parseDouble(UtilId.getnlll(strings.get(13))));//宝贝收藏数
    tmZtc.setCollShop(Double.parseDouble(UtilId.getnlll(strings.get(14))));     //店铺收藏数
    tmZtc.setShoppingNum(Double.parseDouble(UtilId.getnlll(strings.get(15))));  //总购物车数
    tmZtc.setShoppingzjNum(Double.parseDouble(UtilId.getnlll(strings.get(16))));    //直接购物车数
    tmZtc.setShoppingjjNum(Double.parseDouble(UtilId.getnlll(strings.get(17))));//间接购物车数
    tmZtc.setAddgCost(Double.parseDouble(UtilId.getnlll(strings.get(18))));//加购成本
    tmZtc.setCollbabyCost(Double.parseDouble(UtilId.getnlll(strings.get(19))));//宝贝收藏成本
    tmZtc.setCollbabyRate(Double.parseDouble(UtilId.getnlll(strings.get(20))));//宝贝收藏转化率
    tmZtc.setAddgRate(Double.parseDouble(UtilId.getnlll(strings.get(21))));//加购转化率
    tmZtc.setPresaleCjje(Double.parseDouble(UtilId.getnlll(strings.get(22))));//总预售成交金额
    tmZtc.setPresaleCjbs(Double.parseDouble(UtilId.getnlll(strings.get(23))));//总预售成交笔数
    tmZtc.setPresaleCjjezj(Double.parseDouble(UtilId.getnlll(strings.get(24))));//直接预售成交金额
    tmZtc.setPresaleCjbszj(Double.parseDouble(UtilId.getnlll(strings.get(25))));//直接预售成交笔数
    tmZtc.setPresaleCjjejj(Double.parseDouble(UtilId.getnlll(strings.get(26))));//间接预售成交金额
    tmZtc.setPresaleCjbsjj(Double.parseDouble(UtilId.getnlll(strings.get(27))));//间接预售成交笔数
    tmZtc.setTranJe(Double.parseDouble(UtilId.getnlll(strings.get(28))));//总成交金额
    tmZtc.setTranJezj(Double.parseDouble(UtilId.getnlll(strings.get(29))));//直接成交金额
    tmZtc.setTranJejj(Double.parseDouble(UtilId.getnlll(strings.get(30))));//间接成交金额
    tmZtc.setTranNum(Double.parseDouble(UtilId.getnlll(strings.get(31))));//总成交笔数
    tmZtc.setTranzjNum(Double.parseDouble(UtilId.getnlll(strings.get(32))));//直接成交笔数
    tmZtc.setTranjjNum(Double.parseDouble(UtilId.getnlll(strings.get(33))));  //间接成交笔数
    tmZtc.setInputOutputRatio(Double.parseDouble(UtilId.getnlll(strings.get(34))));  //投入产出比
    tmZtc.setClickRate(Double.parseDouble(UtilId.getnlll(strings.get(35))));  //点击转化率
    tmZtc .setClickRatezj(Double.parseDouble(UtilId.getnlll(strings.get(36))));  //直接点击转化率
    tmZtc.setRechargeNum(Double.parseDouble(UtilId.getnlll(strings.get(37))));//购物金充值笔数
    tmZtc.setRechargeJe(Double.parseDouble(UtilId.getnlll(strings.get(38))));//购物金充值金额
    tmZtc.setFlowExposure(Double.parseDouble(UtilId.getnlll(strings.get(39)))); //自然流量曝光
    tmZtc.setFlowJe(Double.parseDouble(UtilId.getnlll(strings.get(40))));//自然流量转化金额
    tmZtc.setId(UtilId.getUUID());
    tmZtc.setPlatformBh(shop_name.getPlatformBh());
    tmZtc.setShopBh(shop_name.getShopBh());

            tmZtc.setDateTime(data1);

        tmZtc.setChannelLx2("直通车");
    baseMapper.insert(tmZtc);
}

      //  csvFile.delete();
    }

    @Override
    public void getInformation1(String file, String ms, LsShop shop_name, Date date2) {
        File csvFile = new File(file);
        // 将文件内容解析，存入List容器，List<String>为每一行内容的集合，20为CSV文件每行的总列数
        List<List<String>> lists = Csvs.readCSV(csvFile.getPath(), 41);
        for (int i =0;i<lists.size();i++){
            List<String> strings = lists.get(i);
            TmZtc tmZtc = new TmZtc();
            tmZtc.setPlanId(strings.get(0)); //计划id
            tmZtc.setPlanName(strings.get(1));  //计划名称
            tmZtc.setChannelLx(strings.get(2));
            tmZtc.setUnitId(strings.get(3)); //单元id
            tmZtc.setUnitName(strings.get(4)); //单元名称
            tmZtc.setShopId(strings.get(5));  //商品id
            tmZtc.setToshowNum(Double.parseDouble(UtilId.getnlll(strings.get(6)))); //展现量
            tmZtc.setHitsNum(Double.parseDouble(UtilId.getnlll(strings.get(7))));//点击量
            tmZtc.setSpend(Double.parseDouble(UtilId.getnlll(strings.get(8)))); //花费
            tmZtc.setHitsRate(Double.parseDouble(UtilId.getnlll(strings.get(9)))); //点击率
            tmZtc.setHitsSpend(Double.parseDouble(UtilId.getnlll(strings.get(10)))); //平均点击花费
            tmZtc.setToshowSpend(Double.parseDouble(UtilId.getnlll(strings.get(11)))); //千次展现花费
            tmZtc.setCollNum(Double.parseDouble(UtilId.getnlll(strings.get(12)))); //总收藏数
            tmZtc.setCollBaby(Double.parseDouble(UtilId.getnlll(strings.get(13))));//宝贝收藏数
            tmZtc.setCollShop(Double.parseDouble(UtilId.getnlll(strings.get(14))));     //店铺收藏数
            tmZtc.setShoppingNum(Double.parseDouble(UtilId.getnlll(strings.get(15))));  //总购物车数
            tmZtc.setShoppingzjNum(Double.parseDouble(UtilId.getnlll(strings.get(16))));    //直接购物车数
            tmZtc.setShoppingjjNum(Double.parseDouble(UtilId.getnlll(strings.get(17))));//间接购物车数
            tmZtc.setAddgCost(Double.parseDouble(UtilId.getnlll(strings.get(18))));//加购成本
            tmZtc.setCollbabyCost(Double.parseDouble(UtilId.getnlll(strings.get(19))));//宝贝收藏成本
            tmZtc.setCollbabyRate(Double.parseDouble(UtilId.getnlll(strings.get(20))));//宝贝收藏转化率
            tmZtc.setAddgRate(Double.parseDouble(UtilId.getnlll(strings.get(21))));//加购转化率
            tmZtc.setPresaleCjje(Double.parseDouble(UtilId.getnlll(strings.get(22))));//总预售成交金额
            tmZtc.setPresaleCjbs(Double.parseDouble(UtilId.getnlll(strings.get(23))));//总预售成交笔数
            tmZtc.setPresaleCjjezj(Double.parseDouble(UtilId.getnlll(strings.get(24))));//直接预售成交金额
            tmZtc.setPresaleCjbszj(Double.parseDouble(UtilId.getnlll(strings.get(25))));//直接预售成交笔数
            tmZtc.setPresaleCjjejj(Double.parseDouble(UtilId.getnlll(strings.get(26))));//间接预售成交金额
            tmZtc.setPresaleCjbsjj(Double.parseDouble(UtilId.getnlll(strings.get(27))));//间接预售成交笔数
            tmZtc.setTranJe(Double.parseDouble(UtilId.getnlll(strings.get(28))));//总成交金额
            tmZtc.setTranJezj(Double.parseDouble(UtilId.getnlll(strings.get(29))));//直接成交金额
            tmZtc.setTranJejj(Double.parseDouble(UtilId.getnlll(strings.get(30))));//间接成交金额
            tmZtc.setTranNum(Double.parseDouble(UtilId.getnlll(strings.get(31))));//总成交笔数
            tmZtc.setTranzjNum(Double.parseDouble(UtilId.getnlll(strings.get(32))));//直接成交笔数
            tmZtc.setTranjjNum(Double.parseDouble(UtilId.getnlll(strings.get(33))));  //间接成交笔数
            tmZtc.setInputOutputRatio(Double.parseDouble(UtilId.getnlll(strings.get(34))));  //投入产出比
            tmZtc.setClickRate(Double.parseDouble(UtilId.getnlll(strings.get(35))));  //点击转化率
            tmZtc .setClickRatezj(Double.parseDouble(UtilId.getnlll(strings.get(36))));  //直接点击转化率
            tmZtc.setRechargeNum(Double.parseDouble(UtilId.getnlll(strings.get(37))));//购物金充值笔数
            tmZtc.setRechargeJe(Double.parseDouble(UtilId.getnlll(strings.get(38))));//购物金充值金额
            tmZtc.setFlowExposure(Double.parseDouble(UtilId.getnlll(strings.get(39)))); //自然流量曝光
            tmZtc.setFlowJe(Double.parseDouble(UtilId.getnlll(strings.get(40))));//自然流量转化金额
            tmZtc.setId(UtilId.getUUID());
            tmZtc.setPlatformBh(shop_name.getPlatformBh());
            tmZtc.setShopBh(shop_name.getShopBh());
            tmZtc.setDateTime(date2);

            tmZtc.setChannelLx2("直通车");
            baseMapper.insert(tmZtc);
        }

       // csvFile.delete();
    }

    @Override
    public Map<String, Object> getNum(String shopBh, Date data1) {
        QueryWrapper<TmZtc> ew = new QueryWrapper<>();
        ew.eq("Shop_bh", shopBh );
        ew.eq("Date_time",data1);
        ew.select("SUM(Spend) as MoreSearchfy ,SUM(Hits_num) as MoreSearchll");
        Map<String, Object> map = tmZtcService.getMap(ew);

        return map;
    }
}

