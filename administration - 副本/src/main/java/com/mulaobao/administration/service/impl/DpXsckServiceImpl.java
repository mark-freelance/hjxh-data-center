package com.mulaobao.administration.service.impl;

import com.alibaba.excel.EasyExcel;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.mulaobao.administration.dao.DpXsckDao;
import com.mulaobao.administration.entity.DpCkmx;
import com.mulaobao.administration.entity.DpZwmx;
import com.mulaobao.administration.entity.LsShop;
import com.mulaobao.administration.listener.DpXsckListener;
import com.mulaobao.administration.listener.DpZwmxListener;
import com.mulaobao.administration.service.DpXsckService;
import com.mulaobao.administration.service.DpZwmxService;
import com.mulaobao.administration.service.LsShopService;
import com.mulaobao.administration.util.UtilId;
import com.opencsv.CSVParser;
import com.opencsv.CSVParserBuilder;
import com.opencsv.CSVReader;
import com.opencsv.CSVReaderBuilder;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import java.io.InputStreamReader;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

/**
 * (DpXsck)表服务实现类
 *
 * @author makejava
 * @since 2021-12-28 17:45:08
 */
@Service("dpXsckService")
public class DpXsckServiceImpl extends ServiceImpl<DpXsckDao, DpCkmx> implements DpXsckService {
    @Resource
    private LsShopService shopServicel;
    private static SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
    @Override
    public int getexel(MultipartFile file,DpXsckService dpXsckService) {

        try {
            String[] split = file.getOriginalFilename().split("-");
            LsShop shop_name = shopServicel.getOne(new QueryWrapper<LsShop>().eq("Shop_name",split[0]));
            EasyExcel.read(file.getInputStream(), DpCkmx.class,new DpXsckListener(dpXsckService,shop_name.getShopBh(),file.getOriginalFilename())).sheet().doRead();
            return 200;
        } catch (Exception e) {
            e.printStackTrace();
            return 500;
        }


        //File csvFile = Csvs.uploadFile(file.get);
        // System.out.println(file.getOriginalFilename());
      /*  try {
            InputStreamReader is = new InputStreamReader(file.getInputStream(),"GBK");
            CSVParser csvParser = new CSVParserBuilder().build();
            CSVReader reader = new CSVReaderBuilder(is).withCSVParser(csvParser).build();
            List<String[]> strings = reader.readAll();

            List<DpCkmx> dpZwmxes = new ArrayList<>();
            String[] strings12 = strings.get(1);
            LsShop shop_name = shopServicel.getOne(new QueryWrapper<LsShop>().eq("Shop_name",strings12[1]));

            //Long sc =
            for (int i=1;i<strings.size();i++) {
                String[] strings1 = strings.get(i);
                if (strings1[0].indexOf("合计") == -1) {
                    DpCkmx dpCkmx = new DpCkmx();
                    dpCkmx.setId(UtilId.getUUID());
                    dpCkmx.setYsDh(UtilId.getqd(strings1[0]));
                    dpCkmx.setShopBh(shop_name.getShopBh());
                    dpCkmx.setTkJe(Double.parseDouble(strings1[2]));
                    dpCkmx.setFsDatetime(simpleDateFormat.parse(UtilId.getqd(strings1[3].trim())));
                    dpZwmxes.add(dpCkmx);
                }
            }

            int count = 5;
            int batch = dpZwmxes.size() / count;
            if (dpZwmxes.size() % count != 0) {
                batch = batch + 1;
            }
            for (int i = 0; i < batch; i++) {
                List<DpCkmx> subList = null;
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
       return 200;

       */
    }

}

