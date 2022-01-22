package com.mulaobao.administration.service.impl;

import com.alibaba.excel.EasyExcel;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.mulaobao.administration.dao.WdtKcDao;
import com.mulaobao.administration.entity.DpDdmx;
import com.mulaobao.administration.entity.KdWdtzd;
import com.mulaobao.administration.entity.WdtKc;
import com.mulaobao.administration.listener.KdWdtzdListener;
import com.mulaobao.administration.listener.KdYdzdListener;
import com.mulaobao.administration.listener.WdtCkmxListener;
import com.mulaobao.administration.listener.WdtKcListener;
import com.mulaobao.administration.service.WdtKcService;
import com.mulaobao.administration.util.Csvs;
import com.mulaobao.administration.util.UtilId;
import com.opencsv.CSVParser;
import com.opencsv.CSVParserBuilder;
import com.opencsv.CSVReader;
import com.opencsv.CSVReaderBuilder;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * (WdtKc)表服务实现类
 *
 * @author makejava
 * @since 2021-12-22 10:13:25
 */
@Service("wdtKcService")
public class WdtKcServiceImpl extends ServiceImpl<WdtKcDao, WdtKc> implements WdtKcService {
    private static SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
    @Override
    public int uploading(MultipartFile multipartFile,WdtKcService wdtKcService) {

        try {
        long time = new Date().getTime();
        EasyExcel.read(multipartFile.getInputStream(), WdtKc.class,new WdtKcListener(wdtKcService,multipartFile.getOriginalFilename())).sheet().doRead();
        long time2 = new Date().getTime();
        System.out.println("时间:"+(time2-time));
        return 200;
    } catch (Exception e) {
        e.printStackTrace();
        return 500;
    }


       /* InputStreamReader is = null;
        try {
            is = new InputStreamReader(multipartFile.getInputStream(),"GBK");
            String kc = multipartFile.getOriginalFilename().substring(0,multipartFile.getOriginalFilename().indexOf("库"));
            Date parse = simpleDateFormat.parse(kc);
            CSVParser csvParser = new CSVParserBuilder().build();
            CSVReader reader = new CSVReaderBuilder(is).withCSVParser(csvParser).build();
            List<String[]> strings = reader.readAll();
            for (int i=5;i<strings.size();i++){
                String[] strings1 = strings.get(i);
                if (strings1[0].indexOf("合计")==-1){
                    WdtKc wdtKc = new WdtKc();
                    wdtKc.setId(UtilId.getUUID());
                    wdtKc.setDateTime(parse);
                    wdtKc.setGoodsBh(UtilId.getqd(strings1[0]));
                    wdtKc.setGoodsName(UtilId.getqd(strings1[1]));
                    wdtKc.setLx(UtilId.getqd(strings1[2]));
                    wdtKc.setQmKc(UtilId.doublelsnull(strings1[3]));
                    wdtKc.setWarehouse(UtilId.getqd(strings1[4]));
                    baseMapper.insert(wdtKc);
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        } catch (ParseException e) {
            e.printStackTrace();
        }

        */

    }
}

