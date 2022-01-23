package com.mulaobao.administration.service.impl;

import com.alibaba.excel.EasyExcel;
import com.alibaba.excel.ExcelWriter;
import com.alibaba.excel.write.metadata.WriteSheet;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.mulaobao.administration.dao.DpZwmxDao;
import com.mulaobao.administration.entity.DpZwmx;
import com.mulaobao.administration.entity.KingdeeHs;
import com.mulaobao.administration.entity.LsShop;
import com.mulaobao.administration.listener.DpZwmxListener;
import com.mulaobao.administration.listener.KingdeeHsListener;
import com.mulaobao.administration.service.DpDdmxService;
import com.mulaobao.administration.service.DpZwmxService;
import com.mulaobao.administration.service.LsShopService;
import com.mulaobao.administration.temporary.*;
import com.mulaobao.administration.util.BizMergeStrategy;
import com.mulaobao.administration.util.ExcelUtil;
import com.mulaobao.administration.util.UtilId;
import com.opencsv.CSVParser;
import com.opencsv.CSVParserBuilder;
import com.opencsv.CSVReader;
import com.opencsv.CSVReaderBuilder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.interceptor.TransactionAspectSupport;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.InputStreamReader;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
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
    public int getexel(MultipartFile file,DpZwmxService dpZwmxService) {

        try {
            LsShop shop_name = shopServicel.getOne(new QueryWrapper<LsShop>().eq("Shop_name", file.getOriginalFilename().substring(0, file.getOriginalFilename().indexOf(")") + 1)));
            EasyExcel.read(file.getInputStream(), DpZwmx.class,new DpZwmxListener(dpZwmxService,shop_name.getShopBh(),file.getOriginalFilename())).headRowNumber(5).sheet().doRead();
            return 200;
        } catch (Exception e) {
            e.printStackTrace();
            return 500;
        }


      /*  try {
            LsShop shop_name = shopServicel.getOne(new QueryWrapper<LsShop>().eq("Shop_name", file.getOriginalFilename().substring(0, file.getOriginalFilename().indexOf(")") + 1)));
            InputStreamReader is = new InputStreamReader(file.getInputStream(), "GBK");
            CSVParser csvParser = new CSVParserBuilder().build();
            CSVReader reader = new CSVReaderBuilder(is).withCSVParser(csvParser).build();
            List<String[]> strings = reader.readAll();

            List<DpZwmx> dpZwmxes = new ArrayList<>();
            //Long sc =
            for (int i = 5; i < strings.size(); i++) {
                String[] strings1 = strings.get(i);
                if (strings1.length == 6) {
                    DpZwmx dpZwmx = new DpZwmx();
                    dpZwmx.setId(UtilId.getUUID());
                    dpZwmx.setShopBh(shop_name.getShopBh());
                    dpZwmx.setShDdh(strings1[0]);

                    try {
                        if (!strings1[1].equals("")) {
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
        } catch (Exception e) {
            //System.out.println(e);
            TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
        }
                return 400;

       */
    }

    @Override
    public void getDaochu(String [] shop,String [] datas,HttpServletResponse response, HttpServletRequest request) {
//设置下载信息
                int a =0;
      String sc = "";
        for (int i =0;i<shop.length;i++){
            if (i==0){
                sc = sc+shop[i];
            }else {
                sc = sc+","+shop[i];
            }
        }
        List<Cwd> gets = daorutexts.gets(sc,datas[0],datas[1]);
        List<Cwd2> gets2 = daorutexts.gets2(sc,datas[0],datas[1]);
        List<Dpckjs> dpckjs = daorutexts.gets4(sc,datas[0], datas[1]);

        List<Dpckwjs> dpckwjs = daorutexts.gets5(sc,datas[0], datas[1]);
        Map<String, List<RowRangeDto>> strategyMap = ExcelUtil.addMerStrategy(gets);
        Map<String, List<RowRangeDto>> strategyMap2 = ExcelUtil.addMerStrategy2(gets2);
        try {
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
            String filename = "财务类型";
            String fileName = new String(filename.getBytes(), "iso8859-1") + dateFormat.format(new Date().getTime()) + ".xlsx";
            response.setContentType("application/vnd.ms-excel");
            response.setCharacterEncoding("utf-8");
            response.setHeader("Content-disposition", "attachment;filename="+fileName);
            ExcelWriter excelWriter = EasyExcel.write(response.getOutputStream()).build();
            WriteSheet writeSheet1 = EasyExcel.writerSheet(a, "账务类型汇总").head(Cwd.class).registerWriteHandler(new BizMergeStrategy(strategyMap)).build();
            excelWriter.write(gets, writeSheet1);
                a=a+1;
            if (gets2.size()!=0){
                WriteSheet writeSheet2 = EasyExcel.writerSheet(a, "待确定账务类型").head(Cwd2.class).registerWriteHandler(new BizMergeStrategy(strategyMap2)).build();
                excelWriter.write(gets2, writeSheet2);
                a=a+1;
            }

            if (dpckjs.size()!=0){
                double tkje = dpckjs.get(0).getTkje();
                double tkje1 = dpckjs.get(1).getTkje();
                double hj = tkje+tkje1;
                Dpckjs dpckjs1 = new Dpckjs();
                dpckjs1.setZt("合计");
                dpckjs1.setTkje(hj);
                dpckjs.add(dpckjs1);
                WriteSheet writeSheet3 = EasyExcel.writerSheet(a, "出库结算").head(Dpckjs.class).build();
                excelWriter.write(dpckjs, writeSheet3);
                a=a+1;
            }


            if (dpckwjs.size()!=0){
                WriteSheet writeSheet4 = EasyExcel.writerSheet(a, "未结算订单").head(Dpckwjs.class).build();
                excelWriter.write(dpckwjs, writeSheet4);
            }



            excelWriter.finish();
        } catch (IOException e) {
            e.printStackTrace();
            response.reset();
        }



    }
}

