package com.mulaobao.administration.service.impl;

import com.alibaba.excel.EasyExcel;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.mulaobao.administration.dao.WdtCkmxDao;
import com.mulaobao.administration.entity.*;
import com.mulaobao.administration.listener.WdtCkmxListener;
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

    @Override
    public int uploading(MultipartFile multipartFile,WdtCkmxService wdtCkmxService) {
        try {
            long time = new Date().getTime();
            EasyExcel.read(multipartFile.getInputStream(), WdtCkmx.class,new WdtCkmxListener(wdtCkmxService,multipartFile.getOriginalFilename())).sheet().doRead();
            long time2 = new Date().getTime();
            System.out.println("时间:"+(time2-time));
            return 200;
        } catch (Exception e) {
            e.printStackTrace();
            return 500;
        }
      /*  try {
            InputStreamReader is = new InputStreamReader(multipartFile.getInputStream(),"GBK");
            CSVParser csvParser = new CSVParserBuilder().build();
            CSVReader reader = new CSVReaderBuilder(is).withCSVParser(csvParser).build();
            List<String[]> strings = reader.readAll();

            List<WdtCkmx> dpZwmxes = new ArrayList<>();
            String[] strings12 = strings.get(1);

            //Long sc =
            for (int i=1;i<strings.size();i++) {
                String[] strings1 = strings.get(i);
                if (strings1[0].indexOf("合计") == -1) {

                    WdtCkmx dpCkmx = new WdtCkmx();
                        dpCkmx.setId(UtilId.getUUID());
                        dpCkmx.setCkDh(UtilId.getqd(strings1[0]));
                        dpCkmx.setWarehouse(UtilId.getqd(strings1[1]));
                        dpCkmx.setPerson(UtilId.getqd(strings1[2]));
                        dpCkmx.setYsDh(UtilId.getqd(strings1[3]));
                        dpCkmx.setWlDh(UtilId.getqd(strings1[4]));
                        dpCkmx.setSjBm(UtilId.getqd(strings1[5]));
                        dpCkmx.setGoodsBm(UtilId.getqd(strings1[6]));
                        dpCkmx.setGoodsName(UtilId.getqd(strings1[7]));
                        dpCkmx.setNum(UtilId.doublelsnull(UtilId.getqd(strings1[8])));
                        dpCkmx.setCkDatetime(simpleDateFormat.parse(UtilId.getqd(strings1[13])));
                        dpZwmxes.add(dpCkmx);
                }
            }

            int count = 15;
            int batch = dpZwmxes.size() / count;
            if (dpZwmxes.size() % count != 0) {
                batch = batch + 1;
            }
            for (int i = 0; i < batch; i++) {
                List<WdtCkmx> subList = null;
                if (i == batch - 1) {
                    subList = dpZwmxes.subList(count * i, dpZwmxes.size());
                } else {
                    subList = dpZwmxes.subList(count * i, count * (i + 1));
                }
                // System.out.println("1");
                baseMapper.insertBatch(subList);
            }
            is.close();
        }catch (Exception e){
            e.printStackTrace();
            // TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
        }

       */
    }

    @Override
    public void insertBatch(List<WdtCkmx> entities) {
        baseMapper.insertBatch(entities);

    }
}

