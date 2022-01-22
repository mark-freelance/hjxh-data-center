package com.mulaobao.administration.service.impl;

import com.alibaba.excel.EasyExcel;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.mulaobao.administration.dao.PddFxtDao;
import com.mulaobao.administration.entity.LsShop;
import com.mulaobao.administration.entity.PddCjtg;
import com.mulaobao.administration.entity.PddFxt;
import com.mulaobao.administration.entity.PddSstg;
import com.mulaobao.administration.listener.PddFxtListener;
import com.mulaobao.administration.listener.PddSstgListener;
import com.mulaobao.administration.service.PddFxtService;
import com.mulaobao.administration.service.PddSstgService;
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
 * (PddFxt)表服务实现类
 *
 * @author makejava
 * @since 2021-09-23 10:37:46
 */
@Service("pddFxtService")
public class PddFxtServiceImpl extends ServiceImpl<PddFxtDao, PddFxt> implements PddFxtService {
    @Resource
    private PddFxtService pddFxtService;
    private static SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
    @Override
    public void getInformation(MultipartFile files, String ms, LsShop shop_name,Date data1) {

        Map<String, Object> stringObjectHashMap = new HashMap<>();
        stringObjectHashMap.put("platformBh",shop_name.getPlatformBh());
        stringObjectHashMap.put("ShopBh",shop_name.getShopBh());
        stringObjectHashMap.put("DateTime",data1);
        try {

            EasyExcel.read(files.getInputStream(), PddFxt.class,new PddFxtListener(pddFxtService,stringObjectHashMap)).sheet().doRead();
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

            EasyExcel.read(new File(file), PddFxt.class,new PddFxtListener(pddFxtService,stringObjectHashMap)).sheet().doRead();

    }

    @Override
    public Map<String, Object> getNum(String shopBh,Date data1) {
        QueryWrapper<PddFxt> ew = new QueryWrapper<>();
        ew.eq("Shop_bh", shopBh);
        ew.eq("Date_time",data1);
        ew.select("sum(Spend) AS RestAssuredPushfy");
        Map<String, Object> map = pddFxtService.getMap(ew);
        return map;
    }


    @Override
    public List<Map<String, Object>> getNum1(String shopBh) {
        QueryWrapper<PddFxt> ew = new QueryWrapper<>();
        ew.eq("Shop_bh", shopBh);
        ew.groupBy("Date_time");
        ew.select("sum(Spend) AS RestAssuredPushfy,Date_time");
        List<Map<String, Object>> maps = pddFxtService.listMaps(ew);
        return maps;
    }
}

