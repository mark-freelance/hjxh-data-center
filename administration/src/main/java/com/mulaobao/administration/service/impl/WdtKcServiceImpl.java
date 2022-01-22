package com.mulaobao.administration.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.mulaobao.administration.dao.WdtKcDao;
import com.mulaobao.administration.entity.DpDdmx;
import com.mulaobao.administration.entity.WdtKc;
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
    public void uploading(MultipartFile multipartFile) {
        InputStreamReader is = null;
        try {
            is = new InputStreamReader(multipartFile.getInputStream(),"GBK");
            String kc = multipartFile.getOriginalFilename().substring(0, multipartFile.getOriginalFilename().indexOf("库"));
            String date1 = "2021-"+kc.substring(0,2)+"-"+kc.substring(2,4);
            Date parse = simpleDateFormat.parse(date1);
            CSVParser csvParser = new CSVParserBuilder().build();
            CSVReader reader = new CSVReaderBuilder(is).withCSVParser(csvParser).build();
            List<String[]> strings = reader.readAll();
            for (int i=5;i<strings.size();i++){
                String[] strings1 = strings.get(i);
                if (strings1[0].indexOf("合计")==-1){
                    WdtKc wdtKc = new WdtKc();
                    wdtKc.setId(UtilId.getUUID());
                    wdtKc.setDateTime(parse);
                    wdtKc.setSjBm(UtilId.getqd(strings1[0]));
                    wdtKc.setGoodsBh(UtilId.getqd(strings1[1]));
                    wdtKc.setGoodsName(UtilId.getqd(strings1[2]));
                    wdtKc.setGoodsJc(UtilId.getqd(strings1[3]));
                   wdtKc.setGgName(UtilId.getqd(strings1[5]));
                   wdtKc.setLx(UtilId.getqd(strings1[6]));
                   wdtKc.setBrand(UtilId.getqd(strings1[7]));
                    wdtKc.setQqKc(UtilId.doublelsnull(strings1[8]));
                    wdtKc.setQcCost(UtilId.doublelsnull(strings1[9]));
                    wdtKc.setQcZe(UtilId.doublelsnull(strings1[10]));
                    wdtKc.setQmKc(UtilId.doublelsnull(strings1[11]));
                    wdtKc.setWarehouse(UtilId.getqd(strings1[12]));
                    wdtKc.setQmCost(UtilId.doublelsnull(strings1[13]));
                    wdtKc.setQmZe(UtilId.doublelsnull(strings1[14]));
                    wdtKc.setPjKc(UtilId.doublelsnull(strings1[15]));
                    wdtKc.setKcRate(UtilId.doublelsnull(strings1[16]));
                    wdtKc.setCkNum(UtilId.doublelsnull(strings1[17]));
                    baseMapper.insert(wdtKc);
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        } catch (ParseException e) {
            e.printStackTrace();
        }

    }
}

