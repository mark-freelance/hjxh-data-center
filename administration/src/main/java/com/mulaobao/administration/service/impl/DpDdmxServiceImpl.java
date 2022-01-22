package com.mulaobao.administration.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.mulaobao.administration.dao.DpDdmxDao;
import com.mulaobao.administration.entity.DpDdmx;
import com.mulaobao.administration.entity.LsShop;
import com.mulaobao.administration.service.DpDdmxService;
import com.mulaobao.administration.service.LsShopService;
import com.mulaobao.administration.temporary.Cwd;
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
    private static SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");


        @Override
        @Transactional(rollbackFor = {Exception.class})
        public void getexel(MultipartFile file) {
            File csvFile = Csvs.uploadFile(file);

            LsShop shop_name = shopServicel.getOne(new QueryWrapper<LsShop>().eq("Shop_name", file.getOriginalFilename().substring(0, file.getOriginalFilename().indexOf(")")+1)));
            // 将文件内容解析，存入List容器，List<String>为每一行内容的集合，20为CSV文件每行的总列数
            List<List<String>> lists = Csvs.readCSV(csvFile.getPath(), 23);
            try {
            List<DpDdmx> dpDdmxes = new ArrayList<>();
            for (int i = 0; i < lists.size(); i++) {
                List<String> strings = lists.get(i);
                DpDdmx dpDdmx = new DpDdmx();
                dpDdmx.setId(UtilId.getUUID());
                dpDdmx.setShopBh(shop_name.getShopBh());
                dpDdmx.setGoodsName(strings.get(0).trim());
                dpDdmx.setShDdh(strings.get(1).trim());
                dpDdmx.setDdZt(strings.get(2).trim());
                dpDdmx.setGoodsZj(UtilId.getduoble(strings.get(3).trim()));
                dpDdmx.setDpyhZk(UtilId.getduoble(strings.get(4).trim()));
                dpDdmx.setPtyhZk(UtilId.getduoble(strings.get(5).trim()));
                dpDdmx.setYhsfJe(UtilId.getduoble(strings.get(6).trim()));
                dpDdmx.setSjssJe(UtilId.getduoble(strings.get(7).trim()));
                dpDdmx.setGoodsSl(Integer.parseInt(strings.get(8).trim()));
                if (!strings.get(9).trim().equals("")) {
                    dpDdmx.setFhDatetime(simpleDateFormat.parse(strings.get(9).trim()));
                }
                if (!strings.get(10).trim().equals("")) {
                    dpDdmx.setSfDatetime(simpleDateFormat.parse(strings.get(10).trim()));
                }
                dpDdmx.setGoodsId(strings.get(11).trim());
                dpDdmx.setGoodsGg(strings.get(12).trim());
                dpDdmx.setYsId(strings.get(13).trim());
                dpDdmx.setShZt(strings.get(15).trim());
                dpDdmx.setKdDh(strings.get(16).trim());
                dpDdmx.setKdGs(strings.get(17).trim());
                if (!strings.get(18).trim().equals("")) {
                    dpDdmx.setCjDatetime(simpleDateFormat.parse(UtilId.getnlll(strings.get(18).trim())));
                }
                dpDdmx.setSfFq(strings.get(19).trim());
                dpDdmx.setFqQs(strings.get(20).trim());
                dpDdmx.setSxfCdf(strings.get(21).trim());
                dpDdmx.setSxfRate(strings.get(22).trim());
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
        }

    @Override
    public List<Cwd> gets(String shop,String data1,String data2) {
        return baseMapper.gets(shop,data1,data2);
    }
}
