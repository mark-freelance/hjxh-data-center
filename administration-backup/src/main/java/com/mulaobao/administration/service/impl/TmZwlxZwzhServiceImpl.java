package com.mulaobao.administration.service.impl;

import com.alibaba.excel.EasyExcel;
import com.alibaba.excel.ExcelReader;
import com.alibaba.excel.ExcelWriter;
import com.alibaba.excel.read.builder.ExcelReaderBuilder;
import com.alibaba.excel.read.metadata.ReadSheet;
import com.alibaba.excel.write.metadata.WriteSheet;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.mulaobao.administration.dao.TmZwlxZwzhDao;
import com.mulaobao.administration.entity.KingdeeHs;
import com.mulaobao.administration.entity.LsShop;
import com.mulaobao.administration.entity.TmZwlxZwzh;
import com.mulaobao.administration.listener.KingdeeHsListener;
import com.mulaobao.administration.listener.TmZwlxZwzhListener;
import com.mulaobao.administration.service.LsShopService;
import com.mulaobao.administration.service.TmZwlxZwzhService;
import com.mulaobao.administration.temporary.*;
import com.mulaobao.administration.util.BizMergeStrategy;
import com.mulaobao.administration.util.ExcelUtil;
import com.mulaobao.administration.util.UtilId;
import org.apache.poi.ss.usermodel.Workbook;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * (TmZwlxZwzh)表服务实现类
 *
 * @author makejava
 * @since 2022-01-12 10:48:05
 */
@Service("tmZwlxZwzhService")
public class TmZwlxZwzhServiceImpl extends ServiceImpl<TmZwlxZwzhDao, TmZwlxZwzh> implements TmZwlxZwzhService {
    @Resource
    private LsShopService shopService;

    @Override
    public int getexel(MultipartFile multipartFile, TmZwlxZwzhService tmZwlxZwzhService) {
        try {
            String[] split = multipartFile.getOriginalFilename().split("-");
            String substring = split[0];
            LsShop shop_bh = shopService.getOne(new QueryWrapper<LsShop>().eq("Shop_name", substring));
            ExcelReaderBuilder excelReaderBuilder = EasyExcel.read(multipartFile.getInputStream());
            ExcelReader excelReader = excelReaderBuilder.build();
            List<ReadSheet> sheets = excelReader.excelExecutor().sheetList();
            long time = new Date().getTime();
              for (int i =0;i<sheets.size();i++){
                 if (i==0){
                     EasyExcel.read(multipartFile.getInputStream(),TmZwlxZwzh.class,new TmZwlxZwzhListener(tmZwlxZwzhService,shop_bh.getShopBh(),multipartFile.getOriginalFilename())).headRowNumber(3).sheet(i).doRead();
                  }else {
                      EasyExcel.read(multipartFile.getInputStream(),TmZwlxZwzh.class,new TmZwlxZwzhListener(tmZwlxZwzhService,shop_bh.getShopBh(),multipartFile.getOriginalFilename())).headRowNumber(0).sheet(i).doRead();
                  }
             }
            long time2 = new Date().getTime();
            System.out.println("时间:"+(time2-time));
            return 200;
        } catch (Exception e) {
            e.printStackTrace();
            return 500;
        }
    }

    @Override
    public void getDaochu(String[] shop, String name,String[] datas, HttpServletResponse response, HttpServletRequest request) {
            int a =0;
        List<TmCwd> gets = baseMapper.gets(shop[0],datas[0],datas[1]);
        List<TmCwd2> gets2 = baseMapper.gets2(shop[0],datas[0],datas[1]);
        List<Dpckjs> dpckjs = baseMapper.gets4(shop[0],datas[0], datas[1]);

        List<Dpckwjs> dpckwjs = baseMapper.gets5(shop[0],datas[0], datas[1]);
        try {
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
            String filename = name+"财务类型";
            String fileName = new String(filename.getBytes(), "iso8859-1") + dateFormat.format(new Date().getTime()) + ".xlsx";
            response.setContentType("application/vnd.ms-excel");
            response.setCharacterEncoding("utf-8");
            response.setHeader("Content-disposition", "attachment;filename="+fileName);
            ExcelWriter excelWriter = EasyExcel.write(response.getOutputStream()).build();
            WriteSheet writeSheet1 = EasyExcel.writerSheet(a, "账务类型汇总").head(TmCwd.class).build();
            excelWriter.write(gets, writeSheet1);
            a=a+1;
            if (gets2.size()!=0){
                WriteSheet writeSheet2 = EasyExcel.writerSheet(a, "待确定账务类型").head(TmCwd2.class).build();
                excelWriter.write(gets2, writeSheet2);
                a=a+1;
            }
    if (dpckjs.size()!=0){

        WriteSheet writeSheet3 = EasyExcel.writerSheet(a, "出库结算").head(Dpckjs.class).build();
        excelWriter.write(dpckjs, writeSheet3);
        a=a+1;
    }

                if (dpckwjs.size()!=0){
                    WriteSheet writeSheet4 = EasyExcel.writerSheet(a, "未结算订单").head(Dpckwjs.class).build();
                    excelWriter.write(dpckwjs, writeSheet4);
                    a=a+1;
                }



            excelWriter.finish();
        } catch (IOException e) {
            e.printStackTrace();
            response.reset();
        }

    }
}

