package com.mulaobao.administration.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.mulaobao.administration.dao.WdtCkmxDao;
import com.mulaobao.administration.entity.DpDdmx;
import com.mulaobao.administration.entity.DpZwmx;
import com.mulaobao.administration.entity.WdtCkmx;
import com.mulaobao.administration.entity.WdtKc;
import com.mulaobao.administration.service.WdtCkmxService;
import com.mulaobao.administration.util.UtilId;
import com.opencsv.CSVParser;
import com.opencsv.CSVParserBuilder;
import com.opencsv.CSVReader;
import com.opencsv.CSVReaderBuilder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.interceptor.TransactionAspectSupport;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.io.InputStreamReader;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * (WdtCkmx)表服务实现类
 *
 * @author makejava
 * @since 2021-12-26 17:49:31
 */
@Service("wdtCkmxService")
public class WdtCkmxServiceImpl extends ServiceImpl<WdtCkmxDao, WdtCkmx> implements WdtCkmxService {
    private static SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
    private static SimpleDateFormat simpleDateFormat1 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
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
           List<WdtCkmx> wdtCkmxes = new ArrayList<>();

            for (int i=1;i<strings.size();i++){
                String[] strings1 = strings.get(i);
                if (strings1[0].indexOf("合计")==-1){
                    WdtCkmx wdtKc = new WdtCkmx();
                    wdtKc.setId(UtilId.getUUID());
                    wdtKc.setCkDh(UtilId.getqd(strings1[0].trim()));
                    wdtKc.setWarehouse(UtilId.getqd(strings1[1].trim()));
                    wdtKc.setPerson(UtilId.getqd(strings1[2].trim()));
                    wdtKc.setYDh(UtilId.getqd(strings1[4].trim()));
                    wdtKc.setWlDh(UtilId.getqd(strings1[6].trim()));
                    wdtKc.setSjBm(UtilId.getqd(strings1[7].trim()));
                    wdtKc.setGoodsBm(UtilId.getqd(strings1[9].trim()));
                    wdtKc.setGoodsName(UtilId.getqd(strings1[10].trim()));
                    wdtKc.setBrand(UtilId.getqd(strings1[12].trim()));
                    wdtKc.setNum(UtilId.getduoble(strings1[14].trim()));
                    wdtKc.setCkHw(UtilId.getqd(strings1[16].trim()));
                    wdtKc.setPrice(UtilId.getduoble(strings1[18].trim()));
                    wdtKc.setHjJe(UtilId.getduoble(strings1[19].trim()));
                    wdtKc.setCostPrice(UtilId.getduoble(strings1[20].trim()));
                    wdtKc.setCost(UtilId.getduoble(strings1[21].trim()));
                    wdtKc.setCkDatetime(simpleDateFormat1.parse(UtilId.getqd(strings1[24].trim())));
                    wdtKc.setDateTime(parse);
                    wdtCkmxes.add(wdtKc);
               }

            }
            int count = 18;
            int batch = wdtCkmxes.size() / count;
            if (wdtCkmxes.size() % count != 0) {
                batch = batch + 1;
            }
            for (int i = 0; i < batch; i++) {
                List<WdtCkmx> subList = null;
                if (i == batch - 1) {
                    subList = wdtCkmxes.subList(count * i, wdtCkmxes.size());
                } else {
                    subList = wdtCkmxes.subList(count * i, count * (i + 1));
                }
                // System.out.println("1");
                baseMapper.insertBatch(subList);
            }
        } catch (IOException e) {
            e.printStackTrace();
            TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
        } catch (ParseException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void insertBatch(List<WdtCkmx> entities) {
        baseMapper.insertBatch(entities);
    }
}

