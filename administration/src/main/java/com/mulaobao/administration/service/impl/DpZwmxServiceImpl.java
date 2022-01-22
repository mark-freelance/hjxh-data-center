package com.mulaobao.administration.service.impl;

import com.alibaba.excel.EasyExcel;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.mulaobao.administration.dao.DpZwmxDao;
import com.mulaobao.administration.entity.DpDdmx;
import com.mulaobao.administration.entity.DpZwmx;
import com.mulaobao.administration.entity.LsShop;
import com.mulaobao.administration.service.DpDdmxService;
import com.mulaobao.administration.service.DpZwmxService;
import com.mulaobao.administration.service.LsShopService;
import com.mulaobao.administration.temporary.Cwd;
import com.mulaobao.administration.temporary.RowRangeDto;
import com.mulaobao.administration.util.BizMergeStrategy;
import com.mulaobao.administration.util.Csvs;
import com.mulaobao.administration.util.ExcelUtil;
import com.mulaobao.administration.util.UtilId;
import com.opencsv.CSVParser;
import com.opencsv.CSVParserBuilder;
import com.opencsv.CSVReader;
import com.opencsv.CSVReaderBuilder;
import com.opencsv.bean.HeaderColumnNameMappingStrategy;
import com.sun.org.apache.bcel.internal.generic.IF_ACMPEQ;
import lombok.SneakyThrows;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.interceptor.TransactionAspectSupport;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * (DpZwmx)表服务实现类
 *
 * @author makejava
 * @since 2021-12-13 13:41:49
 */
@Service("dpZwmxService")
public class DpZwmxServiceImpl extends ServiceImpl<DpZwmxDao, DpZwmx> implements DpZwmxService {
    @Resource
    private LsShopService shopServicel;
    @Resource
    private DpDdmxService daorutexts;
    private static SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm");

    @Override
    @Transactional(rollbackFor = {Exception.class})
    public void getexel(MultipartFile file) {

        //File csvFile = Csvs.uploadFile(file.get);
       // System.out.println(file.getOriginalFilename());
        try {
        LsShop shop_name = shopServicel.getOne(new QueryWrapper<LsShop>().eq("Shop_name", file.getOriginalFilename().substring(0,file.getOriginalFilename().indexOf(")")+1)));
        InputStreamReader is = new InputStreamReader(file.getInputStream(),"GBK");
        CSVParser csvParser = new CSVParserBuilder().build();
        CSVReader reader = new CSVReaderBuilder(is).withCSVParser(csvParser).build();
        List<String[]> strings = reader.readAll();

            List<DpZwmx> dpZwmxes = new ArrayList<>();
            //Long sc =
        for (int i=5;i<strings.size();i++){
            String[] strings1 = strings.get(i);
            if (strings1.length==6){
                DpZwmx dpZwmx = new DpZwmx();
                dpZwmx.setId(UtilId.getUUID());
                dpZwmx.setShopBh(shop_name.getShopBh());
                dpZwmx.setShDdh(strings1[0]);

                try {
                    if (!strings1[1].equals("")){
                        dpZwmx.setFsDatetime(simpleDateFormat.parse(strings1[1].trim()));
                        dpZwmx.setSrJe(Double.parseDouble(strings1[2].trim()));
                        dpZwmx.setZcJe(Double.parseDouble(strings1[3].trim()));
                        dpZwmx.setZwLx(strings1[4].trim());
                        dpZwmx.setBz(strings1[5].trim());
                        dpZwmxes.add(dpZwmx);
                    }

                } catch (ParseException e) {
                    e.printStackTrace();
                }

            }

        }
           // System.out.println(dpZwmxes.size());
            int count = 8;
            int batch = dpZwmxes.size() / count;
            if (dpZwmxes.size() % count != 0) {
                batch = batch + 1;
            }
            for (int i = 0; i < batch; i++) {
                List<DpZwmx> subList = null;
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
            //System.out.println(e);
            TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
        }
    }

    @Override
    public void getDaochu(String [] shop,String [] datas,HttpServletResponse response, HttpServletRequest request) {
//设置下载信息
        response.setContentType("application/vnd.ms-excel");
        response.setCharacterEncoding("utf-8");
        response.setHeader("Content-disposition", "attachment;filename=LsStaff.xlsx");
      String sc = "";
        for (int i =0;i<shop.length;i++){
            if (i==0){
                sc = sc+shop[i];
            }else {
                sc = sc+","+shop[i];
            }
        }
        List<Cwd> gets = daorutexts.gets(sc,datas[0],datas[1]);
        Map<String, List<RowRangeDto>> strategyMap = ExcelUtil.addMerStrategy(gets);

        try {
            EasyExcel.write(response.getOutputStream(), Cwd.class)
                    //注册合并策略
                    .registerWriteHandler(new BizMergeStrategy(strategyMap))
                    .sheet("Sheet1").doWrite(gets);
        } catch (IOException e) {
            e.printStackTrace();
            response.reset();
        }



    }
}

