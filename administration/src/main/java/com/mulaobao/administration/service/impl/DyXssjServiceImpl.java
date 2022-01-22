package com.mulaobao.administration.service.impl;

import com.alibaba.excel.EasyExcel;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.mulaobao.administration.dao.DyXssjDao;
import com.mulaobao.administration.entity.DyXssj;
import com.mulaobao.administration.entity.LsShop;
import com.mulaobao.administration.listener.DyXssjListener;
import com.mulaobao.administration.service.DyXssjService;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * (DyXssj)表服务实现类
 *
 * @author makejava
 * @since 2021-09-16 15:04:37
 */
@Service("dyXssjService")
public class DyXssjServiceImpl extends ServiceImpl<DyXssjDao, DyXssj> implements DyXssjService {
    @Resource
    private DyXssjService dyXssjService;
    private static SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
    @Override
    public void getInformation(MultipartFile files, String ms, LsShop shop_name,Date data1) {

        Map<String, Object> stringObjectHashMap = new HashMap<>();
        stringObjectHashMap.put("platformBh",shop_name.getPlatformBh());
        stringObjectHashMap.put("ShopBh",shop_name.getShopBh());

        stringObjectHashMap.put("DateTime",data1);

        try {
            EasyExcel.read(files.getInputStream(), DyXssj.class,new DyXssjListener(dyXssjService,stringObjectHashMap)).sheet().doRead();
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

            EasyExcel.read(new File(file), DyXssj.class,new DyXssjListener(dyXssjService,stringObjectHashMap)).sheet().doRead();

    }

    @Override
    public Map<String, Object> getNum(String shopBh, Date data1) {
        QueryWrapper<DyXssj> ew = new QueryWrapper<>();
        ew.eq("Shop_bh", shopBh );
        ew.eq("Date_time",data1);
        ew.select("SUM(Tran_je) as Sales,SUM(Tran_num) as OrderQuantity,sum(Tran_rs) as Num_Buyers ,sum(Tran_jetc) as ActualSales ,sum(Refund_je) as RefundAmount");
        Map<String, Object> map = dyXssjService.getMap(ew);
        return map;
    }
}

