package com.mulaobao.administration.service.impl;

import com.alibaba.excel.EasyExcel;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.mulaobao.administration.dao.DpDdmxDao;
import com.mulaobao.administration.entity.DpCkmx;
import com.mulaobao.administration.entity.DpDdmx;
import com.mulaobao.administration.entity.LsShop;
import com.mulaobao.administration.listener.DpDdmxListener;
import com.mulaobao.administration.listener.DpXsckListener;
import com.mulaobao.administration.service.DpDdmxService;
import com.mulaobao.administration.service.LsShopService;
import com.mulaobao.administration.temporary.Cwd;
import com.mulaobao.administration.temporary.Cwd2;
import com.mulaobao.administration.temporary.Dpckjs;
import com.mulaobao.administration.temporary.Dpckwjs;
import com.mulaobao.administration.util.Csvs;
import com.mulaobao.administration.util.UtilId;
import lombok.SneakyThrows;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.interceptor.TransactionAspectSupport;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

/**
 * (DpDdmx)表服务实现类
 *
 * @author makejava
 * @since 2021-12-12 18:12:03
 */
@Service("dpDdmxService")
public class DpDdmxServiceImpl extends ServiceImpl<DpDdmxDao, DpDdmx> implements DpDdmxService {
    @Resource
    private LsShopService shopServicel;


        @Override
        @SneakyThrows
        public int getexel(MultipartFile file,DpDdmxService dpDdmxService) {

            LsShop shop_name = shopServicel.getOne(new QueryWrapper<LsShop>().eq("Shop_name", file.getOriginalFilename().substring(0, file.getOriginalFilename().indexOf(")")+1)));
            try {
                EasyExcel.read(file.getInputStream(), DpDdmx.class,new DpDdmxListener(dpDdmxService,shop_name.getShopBh(),file.getOriginalFilename())).sheet().doRead();
                return 200;
            } catch (Exception e) {
                e.printStackTrace();
                return 500;
            }
          /*  File csvFile = Csvs.uploadFile(file);


            // 将文件内容解析，存入List容器，List<String>为每一行内容的集合，20为CSV文件每行的总列数
            List<List<String>> lists = Csvs.readCSV(csvFile.getPath(), 2);
            try {
            List<DpDdmx> dpDdmxes = new ArrayList<>();
            for (int i = 0; i < lists.size(); i++) {
                List<String> strings = lists.get(i);
                DpDdmx dpDdmx = new DpDdmx();
                    dpDdmx.setId(UtilId.getUUID());
                dpDdmx.setShopBh(shop_name.getShopBh());
                dpDdmx.setShDdh(strings.get(0).trim());
                dpDdmx.setDdZt(strings.get(1).trim());
                dpDdmxes.add(dpDdmx);
            }
            int count = 24;
            int batch = dpDdmxes.size() / count;
            if (dpDdmxes.size() % count != 0) {
                batch = batch + 1;
            }
            for (int i = 0; i < batch; i++) {
                List<DpDdmx> subList = null;
                if (i == batch - 1) {
                    subList = dpDdmxes.subList(count * i, dpDdmxes.size());
                } else {
                    subList = dpDdmxes.subList(count * i, count * (i + 1));
                }
                baseMapper.insertBatch(subList);
            }
            }catch (Exception e){
                //System.out.println(e);
                TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
            }

           */
        }

    @Override
    public List<Cwd2> gets2(String shops, String data1, String data2) {
        return baseMapper.gets2(shops, data1, data2);
    }

    @Override
    public List<Cwd> gets(String shop, String data1, String data2) {
        return baseMapper.gets(shop,data1,data2);
    }

    @Override
    public List<Dpckjs> gets4(String shops,String data1, String data2) {
        return baseMapper.gets4(shops,data1, data2);
    }

    @Override
    public List<Dpckwjs> gets5(String shops,String data1, String data2) {
        return baseMapper.gets5(shops,data1, data2);
    }
}
