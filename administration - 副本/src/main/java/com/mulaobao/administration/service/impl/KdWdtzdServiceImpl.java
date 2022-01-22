package com.mulaobao.administration.service.impl;

import com.alibaba.excel.EasyExcel;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.mulaobao.administration.dao.KdWdtzdDao;
import com.mulaobao.administration.entity.KdWdtzd;
import com.mulaobao.administration.listener.KdWdtzdListener;
import com.mulaobao.administration.service.KdWdtzdService;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.*;

/**
 * (KdWdtzd)表服务实现类
 *
 * @author makejava
 * @since 2022-01-07 17:39:22
 */
@Service("kdWdtzdService")
public class KdWdtzdServiceImpl extends ServiceImpl<KdWdtzdDao, KdWdtzd> implements KdWdtzdService {
    @Override
    public int uploading(MultipartFile file) {

        try {
            long time = new Date().getTime();
            EasyExcel.read(file.getInputStream(), KdWdtzd.class,new KdWdtzdListener(baseMapper,file.getOriginalFilename())).sheet().doRead();
            long time2 = new Date().getTime();
            System.out.println("时间:"+(time2-time));
            return 200;
        } catch (IOException e) {
            e.printStackTrace();
            return 500;
        }


      /*  try {
            InputStreamReader is = new InputStreamReader(file.getInputStream(),"utf-8");
            CSVParser csvParser = new CSVParserBuilder().build();
            CSVReader reader = new CSVReaderBuilder(is).withCSVParser(csvParser).build();
            List<String[]> strings = reader.readAll();
            String fileName = file.getOriginalFilename();
            HashMap<String, Integer> stringStringHashMap = new HashMap<>();
            String[] strings2 = strings.get(0);
            for (int i =0;i<strings2.length;i++){
                stringStringHashMap.put(strings2[i],i);
            }
            int ia = strings.size() / 5000;
            if (strings.size() % 5000 != 0) {
                ia = ia + 1;
            }
            for (int i = 0; i <strings.size() ; i++) {
                List<String[]> strings1 = null;
                if (i == ia - 1) {
                    strings1 = strings.subList(ia * i, strings.size());
                } else {
                    strings1 = strings.subList(ia * i, ia * (i + 1));
                }
               new Thread(new Thread1(strings1,baseMapper,stringStringHashMap,fileName)).start();
            }
            is.close();
        }catch (Exception e){
            System.out.println(e);
            //  TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
        }
   */

    }
}

