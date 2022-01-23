package com.mulaobao.administration.service.impl;

import com.alibaba.excel.EasyExcel;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.mulaobao.administration.dao.DpCkwjsDao;
import com.mulaobao.administration.entity.*;
import com.mulaobao.administration.listener.KdYdzdListener;
import com.mulaobao.administration.service.DpCkwjsService;
import com.mulaobao.administration.service.LsShopService;
import com.mulaobao.administration.util.UtilId;
import com.opencsv.CSVParser;
import com.opencsv.CSVParserBuilder;
import com.opencsv.CSVReader;
import com.opencsv.CSVReaderBuilder;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import java.io.IOException;
import java.io.InputStreamReader;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * (DpCkwjs)表服务实现类
 *
 * @author makejava
 * @since 2022-01-04 16:02:54
 */
@Service("dpCkwjsService")
public class DpCkwjsServiceImpl extends ServiceImpl<DpCkwjsDao, DpCkwjs> implements DpCkwjsService {

    private static SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");



    @Override
    public int uploading(MultipartFile multipartFile,DpCkwjsService dpCkwjsService) {

        //File csvFile = Csvs.uploadFile(file.get);
        // System.out.println(file.getOriginalFilename());
       /* try {
            InputStreamReader is = new InputStreamReader(multipartFile.getInputStream(),"GBK");
            CSVParser csvParser = new CSVParserBuilder().build();
            CSVReader reader = new CSVReaderBuilder(is).withCSVParser(csvParser).build();
            List<String[]> strings = reader.readAll();

            List<DpCkwjs> dpZwmxes = new ArrayList<>();
            String[] strings12 = strings.get(1);

try {
            long time = new Date().getTime();
            EasyExcel.read(multipartFile.getInputStream(), KdYdzd.class,new KdYdzdListener(kdYdzdService,multipartFile.getOriginalFilename())).sheet().doRead();
            long time2 = new Date().getTime();
            System.out.println("时间:"+(time2-time));
            return 200;
        } catch (IOException e) {
            e.printStackTrace();
            return 500;
        }

            //Long sc =
            for (int i=1;i<strings.size();i++) {
                String[] strings1 = strings.get(i);
                if (strings1[0].indexOf("合计") == -1) {
                    DpCkwjs dpCkmx = new DpCkwjs();
                    dpCkmx.setId(UtilId.getUUID());
                    dpCkmx.setYsDh(UtilId.getqd(strings1[0]));
                    dpCkmx.setShopBh(shop_name.getShopBh());
                    dpCkmx.setTkJe(Double.parseDouble(strings1[2]));
                    dpCkmx.setFsDatetime(simpleDateFormat.parse(UtilId.getqd(strings1[3].trim().replace("/","-"))));
                    dpZwmxes.add(dpCkmx);
                }
            }

            int count = 5;
            int batch = dpZwmxes.size() / count;
            if (dpZwmxes.size() % count != 0) {
                batch = batch + 1;
            }
            for (int i = 0; i < batch; i++) {
                List<DpCkwjs> subList = null;
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
        return 400;
    }
}

