package com.mulaobao.administration.service.impl;

import com.alibaba.excel.EasyExcel;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.mulaobao.administration.dao.MgjXssjDao;
import com.mulaobao.administration.entity.LsShop;
import com.mulaobao.administration.entity.MgjXssj;
import com.mulaobao.administration.entity.PddSstg;
import com.mulaobao.administration.entity.TmAitg;
import com.mulaobao.administration.listener.MgjXssjListener4;
import com.mulaobao.administration.listener.PddSstgListener;
import com.mulaobao.administration.service.MgjXssjService;
import com.mulaobao.administration.service.PddSstgService;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * (MgjXssj)表服务实现类
 *
 * @author makejava
 * @since 2021-09-16 17:41:38
 */
@Service("mgjXssjService")
public class MgjXssjServiceImpl extends ServiceImpl<MgjXssjDao, MgjXssj> implements MgjXssjService {
    @Resource
    private MgjXssjService mgjXssjService;
    private static SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
    @Override
    public void getInformation(MultipartFile files, String ms, LsShop shop_name,Date data1) {

        Map<String, Object> stringObjectHashMap = new HashMap<>();
        stringObjectHashMap.put("platformBh",shop_name.getPlatformBh());
        stringObjectHashMap.put("ShopBh",shop_name.getShopBh());

            stringObjectHashMap.put("DateTime",data1);

        try {
            EasyExcel.read(files.getInputStream(), MgjXssj.class,new MgjXssjListener4(mgjXssjService,stringObjectHashMap)).sheet().doRead();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void getInformation1(String file, String ms, LsShop shop_name, Date date2) {
        Map<String, Object> stringObjectHashMap = new HashMap<>();
        stringObjectHashMap.put("platformBh",shop_name.getPlatformBh());
        stringObjectHashMap.put("ShopBh",shop_name.getShopBh());

        stringObjectHashMap.put("DateTime",date2);

            EasyExcel.read(new File(file), MgjXssj.class,new MgjXssjListener4(mgjXssjService,stringObjectHashMap)).sheet().doRead();

    }

    @Override
    public Map<String, Object> getNum(String shopBh,Date data1) {
        QueryWrapper<MgjXssj> ew = new QueryWrapper<>();
        ew.eq("Shop_bh", shopBh );
        ew.eq("Date_time",data1);
        List<MgjXssj> list = mgjXssjService.list(ew);
        Map<String, Object> jectHashMap = new HashMap<>();
        for (int i = 0;i<list.size();i++){
            if (list.get(i).getZbmc().equals("成交金额")){
                jectHashMap.put("Sales",list.get(i).getDqsj());
            }
            if (list.get(i).getZbmc().equals("成交商品件数")){
                jectHashMap.put("OrderQuantity",list.get(i).getDqsj());
            }
            if (list.get(i).getZbmc().equals("成交人数")){
                jectHashMap.put("Num_Buyers",list.get(i).getDqsj());
            }
            if (list.get(i).getZbmc().equals("退货退款金额")){
                jectHashMap.put("RefundAmount",list.get(i).getDqsj());
            }
            if (list.get(i).getZbmc().equals("成交转化率")){
                jectHashMap.put("PaymentRate",list.get(i).getDqsj());
            }

            if (list.get(i).getZbmc().equals("客单价")){
                jectHashMap.put("CustomerPrice",list.get(i).getDqsj());
            }
            if (list.get(i).getZbmc().equals("流量")){
                jectHashMap.put("TotalTraffic",list.get(i).getDqsj());
            }

        }


        return jectHashMap;
    }
}

