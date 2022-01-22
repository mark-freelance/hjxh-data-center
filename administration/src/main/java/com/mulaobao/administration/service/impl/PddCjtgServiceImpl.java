package com.mulaobao.administration.service.impl;

import com.alibaba.excel.EasyExcel;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.mulaobao.administration.dao.PddCjtgDao;
import com.mulaobao.administration.entity.LsShop;
import com.mulaobao.administration.entity.PddCjtg;
import com.mulaobao.administration.listener.PddCjtgListener;
import com.mulaobao.administration.service.PddCjtgService;
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
 * (PddCjtg)表服务实现类
 *
 * @author makejava
 * @since 2021-09-16 17:42:01
 */
@Service("pddCjtgService")
public class PddCjtgServiceImpl extends ServiceImpl<PddCjtgDao, PddCjtg> implements PddCjtgService {
    @Resource
    private PddCjtgService pddCjtgService;

    private static SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
    @Override
    public void getInformation(MultipartFile files, String ms, LsShop shop_name,Date data1) {


        Map<String, Object> stringObjectHashMap = new HashMap<>();
        stringObjectHashMap.put("platformBh",shop_name.getPlatformBh());
        stringObjectHashMap.put("ShopBh",shop_name.getShopBh());
        stringObjectHashMap.put("DateTime",data1);
        try {

            EasyExcel.read(files.getInputStream(), PddCjtg.class,new PddCjtgListener(pddCjtgService,stringObjectHashMap)).sheet().doRead();
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

            EasyExcel.read(new File(file), PddCjtg.class,new PddCjtgListener(pddCjtgService,stringObjectHashMap)).sheet().doRead();

    }

    @Override
    public Map<String, Object> getNum(String shopBh,Date data1) {
        QueryWrapper<PddCjtg> ew = new QueryWrapper<>();
        ew.eq("Shop_bh", shopBh);
        ew.eq("Date_time",data1);
        ew.select("sum(Hits) AS giveNum,sum(Spend) AS SpendNum");
        Map<String, Object> map = pddCjtgService.getMap(ew);
        return map;
    }

    @Override
    public List<Map<String, Object>> getNum1(String shopBh) {
        QueryWrapper<PddCjtg> ew = new QueryWrapper<>();
        ew.eq("Shop_bh", shopBh);
        ew.groupBy("Date_time");
        ew.select("sum(Hits) AS giveNum,sum(Spend) AS SpendNum,Date_time");
        List<Map<String, Object>> maps = pddCjtgService.listMaps(ew);
        return maps;
    }
}

