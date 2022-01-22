package com.mulaobao.administration.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.mulaobao.administration.dao.JdJdkcDao;
import com.mulaobao.administration.entity.JdJdkc;
import com.mulaobao.administration.entity.LsShop;
import com.mulaobao.administration.entity.PddCjtg;
import com.mulaobao.administration.entity.TmZtc;
import com.mulaobao.administration.service.JdJdkcService;
import com.mulaobao.administration.service.TmZtcService;
import com.mulaobao.administration.util.Csvs;
import com.mulaobao.administration.util.UtilId;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import java.io.File;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * (JdJdkc)表服务实现类
 *
 * @author makejava
 * @since 2021-09-16 17:40:36
 */
@Service("jdJdkcService")
public class JdJdkcServiceImpl extends ServiceImpl<JdJdkcDao, JdJdkc> implements JdJdkcService {
    @Resource
    private JdJdkcService jdJdkcService;
    private static SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
    @Override
    public void getInformation(MultipartFile multipartFile, String ms, LsShop shop_name,Date data1) {

        File csvFile = Csvs.uploadFile(multipartFile);
        // 将文件内容解析，存入List容器，List<String>为每一行内容的集合，20为CSV文件每行的总列数
        List<List<String>> lists = Csvs.readCSV(csvFile.getPath(), 30);
        for (int i =0;i<lists.size();i++){
            List<String> strings = lists.get(i);
            JdJdkc jdJdkc = new JdJdkc();
            jdJdkc.setPromotionPlan(strings.get(0));//推广计划
            jdJdkc.setPlanId(strings.get(1)); //ID
            jdJdkc.setState(strings.get(2));//状态
            jdJdkc.setPromotionEq(strings.get(3));//推广设备
            jdJdkc.setPlanLx(strings.get(4));//计划类型
            jdJdkc.setPreKssj(strings.get(5));//时效开始时间
            jdJdkc.setPreJssj(strings.get(6));//时效结束时间
            jdJdkc.setTimeInter(strings.get(7));//时段
            jdJdkc.setDisCoeff(Double.parseDouble(strings.get(8)));//折扣系数
            jdJdkc.setBudgetDay(Double.parseDouble(strings.get(9)));//日预算
            jdJdkc.setToshowNum(Double.parseDouble(strings.get(10)));//展现数
            jdJdkc.setHitsNum(Double.parseDouble(strings.get(11)));//点击数
            jdJdkc.setHitsRate(Double.parseDouble(strings.get(12)));//点击率(%)
            jdJdkc.setTotalCost(Double.parseDouble(strings.get(13)));//总费用
            jdJdkc.setToshowSpend(Double.parseDouble(strings.get(14)));//千次展现成本
            jdJdkc.setHitsSpend(Double.parseDouble(strings.get(15)));//平均点击成本
            jdJdkc.setDirectDdh(Double.parseDouble(strings.get(16)));//直接订单行
           jdJdkc.setDirectDdje(Double.parseDouble(strings.get(17)));//直接订单金额
            jdJdkc.setIndirectDdh(Double.parseDouble(strings.get(18)));//间接订单行
            jdJdkc.setIndirectDdje(Double.parseDouble(strings.get(19)));//间接订单金额
            jdJdkc.setTotalDdh(Double.parseDouble(strings.get(20)));//总订单行
            jdJdkc.setTotalDdje(Double.parseDouble(strings.get(21)));//总订单金额
            jdJdkc.setPresaleDdh(Double.parseDouble(strings.get(22)));//预售订单行
            jdJdkc.setPresaleDdje(Double.parseDouble(strings.get(23)));//预售订单金额
            jdJdkc.setDirectAddnum(Double.parseDouble(strings.get(24)));//直接购物车数
            jdJdkc.setIndirectAddnum(Double.parseDouble(strings.get(25)));//间接购物车数
            jdJdkc.setTotalAddnum(Double.parseDouble(strings.get(26)));//总购物车数
            jdJdkc.setConRate(Double.parseDouble(strings.get(27)));//转化率(%)
            jdJdkc.setRoi(Double.parseDouble(strings.get(28))); //ROI
            jdJdkc.setCpa(Double.parseDouble(strings.get(29)));//CPA


            jdJdkc.setId(UtilId.getUUID());
            jdJdkc.setPlatformBh(shop_name.getPlatformBh());
            jdJdkc.setShopBh(shop_name.getShopBh());
                jdJdkc.setDateTime(data1);

           jdJdkc.setChannelLx("京东快车");

           baseMapper.insert(jdJdkc);
        }

      //  csvFile.delete();
    }

    @Override
    public void getInformation1(String file, String ms, LsShop shop_name, Date date2) {
        File csvFile =new File(file);
        // 将文件内容解析，存入List容器，List<String>为每一行内容的集合，20为CSV文件每行的总列数
        List<List<String>> lists = Csvs.readCSV(csvFile.getPath(), 30);
        for (int i =0;i<lists.size();i++){
            List<String> strings = lists.get(i);
            JdJdkc jdJdkc = new JdJdkc();
            jdJdkc.setPromotionPlan(strings.get(0));//推广计划
            jdJdkc.setPlanId(strings.get(1)); //ID
            jdJdkc.setState(strings.get(2));//状态
            jdJdkc.setPromotionEq(strings.get(3));//推广设备
            jdJdkc.setPlanLx(strings.get(4));//计划类型
            jdJdkc.setPreKssj(strings.get(5));//时效开始时间
            jdJdkc.setPreJssj(strings.get(6));//时效结束时间
            jdJdkc.setTimeInter(strings.get(7));//时段
            jdJdkc.setDisCoeff(Double.parseDouble(strings.get(8)));//折扣系数
            jdJdkc.setBudgetDay(Double.parseDouble(strings.get(9)));//日预算
            jdJdkc.setToshowNum(Double.parseDouble(strings.get(10)));//展现数
            jdJdkc.setHitsNum(Double.parseDouble(strings.get(11)));//点击数
            jdJdkc.setHitsRate(Double.parseDouble(strings.get(12)));//点击率(%)
            jdJdkc.setTotalCost(Double.parseDouble(strings.get(13)));//总费用
            jdJdkc.setToshowSpend(Double.parseDouble(strings.get(14)));//千次展现成本
            jdJdkc.setHitsSpend(Double.parseDouble(strings.get(15)));//平均点击成本
            jdJdkc.setDirectDdh(Double.parseDouble(strings.get(16)));//直接订单行
            jdJdkc.setDirectDdje(Double.parseDouble(strings.get(17)));//直接订单金额
            jdJdkc.setIndirectDdh(Double.parseDouble(strings.get(18)));//间接订单行
            jdJdkc.setIndirectDdje(Double.parseDouble(strings.get(19)));//间接订单金额
            jdJdkc.setTotalDdh(Double.parseDouble(strings.get(20)));//总订单行
            jdJdkc.setTotalDdje(Double.parseDouble(strings.get(21)));//总订单金额
            jdJdkc.setPresaleDdh(Double.parseDouble(strings.get(22)));//预售订单行
            jdJdkc.setPresaleDdje(Double.parseDouble(strings.get(23)));//预售订单金额
            jdJdkc.setDirectAddnum(Double.parseDouble(strings.get(24)));//直接购物车数
            jdJdkc.setIndirectAddnum(Double.parseDouble(strings.get(25)));//间接购物车数
            jdJdkc.setTotalAddnum(Double.parseDouble(strings.get(26)));//总购物车数
            jdJdkc.setConRate(Double.parseDouble(strings.get(27)));//转化率(%)
            jdJdkc.setRoi(Double.parseDouble(strings.get(28))); //ROI
            jdJdkc.setCpa(Double.parseDouble(strings.get(29)));//CPA

            jdJdkc.setId(UtilId.getUUID());
            jdJdkc.setPlatformBh(shop_name.getPlatformBh());
            jdJdkc.setShopBh(shop_name.getShopBh());
            jdJdkc.setDateTime(date2);
            jdJdkc.setChannelLx("京东快车");
            baseMapper.insert(jdJdkc);
        }
       // csvFile.delete();
    }

    @Override
    public Map<String, Object> getNum(String shopBh, Date data1) {
        QueryWrapper<JdJdkc> ew = new QueryWrapper<>();
        ew.eq("Shop_bh", shopBh );
        ew.eq("Date_time",data1);
        ew.select("sum(Total_cost) AS MoreSearchfy,sum(Hits_num) AS MoreSearchll");
        Map<String, Object> map = jdJdkcService.getMap(ew);
        return map;
    }
}

