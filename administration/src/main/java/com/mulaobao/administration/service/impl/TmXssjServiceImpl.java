package com.mulaobao.administration.service.impl;

import com.alibaba.excel.EasyExcel;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.mulaobao.administration.dao.TmXssjDao;
import com.mulaobao.administration.entity.LsShop;
import com.mulaobao.administration.entity.PddCjtg;
import com.mulaobao.administration.entity.TmCjtg;
import com.mulaobao.administration.entity.TmXssj;
import com.mulaobao.administration.listener.TmCjtgListener;
import com.mulaobao.administration.listener.TmXssjListener;
import com.mulaobao.administration.service.TmCjtgService;
import com.mulaobao.administration.service.TmXssjService;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * (TmXssj)表服务实现类
 *
 * @author makejava
 * @since 2021-09-16 17:43:39
 */
@Service("tmXssjService")
public class TmXssjServiceImpl extends ServiceImpl<TmXssjDao, TmXssj> implements TmXssjService {
    @Resource
    private TmXssjService tmXssjService;
    private static SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");

    @Override
    public void getInformation(MultipartFile multipartFile, String ms, LsShop shop_name) {

        Map<String, Object> stringObjectHashMap = new HashMap<>();
        stringObjectHashMap.put("platformBh",shop_name.getPlatformBh());
        stringObjectHashMap.put("ShopBh",shop_name.getShopBh());

        try {

            EasyExcel.read(multipartFile.getInputStream(), TmXssj.class,new TmXssjListener(tmXssjService,stringObjectHashMap)).headRowNumber(6).sheet().doRead();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


    @Override
    public void getInformation1(String file, String ms, LsShop shop_name,Date date2) {
        Map<String, Object> stringObjectHashMap = new HashMap<>();
        stringObjectHashMap.put("platformBh",shop_name.getPlatformBh());
        stringObjectHashMap.put("ShopBh",shop_name.getShopBh());
        stringObjectHashMap.put("date",date2);
            EasyExcel.read(new File(file), TmXssj.class,new TmXssjListener(tmXssjService,stringObjectHashMap)).headRowNumber(6).sheet().doRead();

    }


    @Override
    public Map<String, Object> getNum(String shopBh, Date data1) {
        QueryWrapper<TmXssj> ew = new QueryWrapper<>();
        ew.eq("Date_time",data1);
        ew.eq("Shop_bh",shopBh);
        ew.select("SUM(Refund_je) as RefundAmount  ,SUM(Payment_je) as Sales ,SUM(Payment_num) as OrderQuantity ,SUM(Visitor_num) as TotalTraffic  ,SUM(Paybuy_num) as Num_Buyers ,SUM(Payment_rate) as PaymentRate  ,SUM(CustomerPrice) as CustomerPrice ");
        Map<String, Object> map = tmXssjService.getMap(ew);

        return map;
    }
}

