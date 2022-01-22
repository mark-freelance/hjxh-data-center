package com.mulaobao.administration.service.impl;

import com.alibaba.excel.EasyExcel;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.mulaobao.administration.dao.TmTktgDao;
import com.mulaobao.administration.entity.LsShop;
import com.mulaobao.administration.entity.TmCjtg;
import com.mulaobao.administration.entity.TmCjzz;
import com.mulaobao.administration.entity.TmTktg;
import com.mulaobao.administration.listener.TmCjtgListener;
import com.mulaobao.administration.listener.TmTktgListener;
import com.mulaobao.administration.service.TmCjtgService;
import com.mulaobao.administration.service.TmTktgService;
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
 * (TmTktg)表服务实现类
 *
 * @author makejava
 * @since 2021-09-16 17:43:26
 */
@Service("tmTktgService")
public class TmTktgServiceImpl extends ServiceImpl<TmTktgDao, TmTktg> implements TmTktgService {
    @Resource
    private TmTktgService tmTktgService;
    private static SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");

    @Override
    public void getInformation(MultipartFile multipartFile, String ms, LsShop shop_name,Date data1) {
        Map<String, Object> stringObjectHashMap = new HashMap<>();
        stringObjectHashMap.put("platformBh",shop_name.getPlatformBh());
        stringObjectHashMap.put("ShopBh",shop_name.getShopBh());
        stringObjectHashMap.put("DateTime",data1);

        try {

            EasyExcel.read(multipartFile.getInputStream(), TmTktg.class,new TmTktgListener(tmTktgService,stringObjectHashMap)).sheet().doRead();
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
            EasyExcel.read(new File(file), TmTktg.class,new TmTktgListener(tmTktgService,stringObjectHashMap)).sheet().doRead();

    }

    @Override
    public Map<String, Object> getNum(String shopBh, Date data1) {
        QueryWrapper<TmTktg> ew = new QueryWrapper<>();
        ew.eq("Shop_bh", shopBh );
        ew.eq("Date_time",data1);
        ew.select("SUM(Zc_je) as TaokePromotionfy ,SUM(Hits_num) as TaokePromotionll");
        Map<String, Object> map = tmTktgService.getMap(ew);
        return map;
    }
}

