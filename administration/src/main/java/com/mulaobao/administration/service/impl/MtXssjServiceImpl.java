package com.mulaobao.administration.service.impl;

import com.alibaba.excel.EasyExcel;
import com.alibaba.excel.ExcelReader;
import com.alibaba.excel.read.builder.ExcelReaderSheetBuilder;
import com.alibaba.excel.read.metadata.ReadSheet;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.mulaobao.administration.dao.MtXssjDao;
import com.mulaobao.administration.entity.LsShop;
import com.mulaobao.administration.entity.MtXssj;
import com.mulaobao.administration.entity.PddSstg;

import com.mulaobao.administration.listener.MtSsxjListener;
import com.mulaobao.administration.listener.PddSstgListener;
import com.mulaobao.administration.service.CkWarehouseService;
import com.mulaobao.administration.service.MtXssjService;
import lombok.SneakyThrows;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * (MtXssj)表服务实现类
 *
 * @author makejava
 * @since 2021-09-16 17:41:50
 */
@Service("mtXssjService")
public class MtXssjServiceImpl extends ServiceImpl<MtXssjDao, MtXssj> implements MtXssjService {

    @Resource
    private MtXssjService mtXssjService;
    @Autowired
    private CkWarehouseService ckWarehouseService;
    private static SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
    @SneakyThrows
    @Override
    public void getInformation(MultipartFile files, String ms, LsShop shop_name,Date data1) {
        ExcelReader excelReader = null;
        Map<String, Object> stringObjectHashMap = new HashMap<>();
        stringObjectHashMap.put("platformBh",shop_name.getPlatformBh());

     //   try {
        //

      //  } catch (IOException e) {
        //    e.printStackTrace();
     //   }
        InputStream inputStream = files.getInputStream();

        //实例化实现了AnalysisEventListener接口的类
        try {
            //这查询sheetlist的改变了流了类型
            List<ReadSheet> sheets = EasyExcel.read(inputStream).build().excelExecutor().sheetList();
            ReadSheet readSheet = sheets.get(0);
            EasyExcel.read(files.getInputStream(), MtXssj.class,new MtSsxjListener(mtXssjService,stringObjectHashMap,ckWarehouseService)).sheet(readSheet.getSheetNo()).headRowNumber(2).doRead();
        }catch (Exception e){
            System.out.println(e);
        }finally {
            inputStream.close();
        }

    }

    @Override
    public Map<String, Object> getNum(String shopBh, Date data1) {
        QueryWrapper<MtXssj> ew = new QueryWrapper<>();
        ew.eq("Shop_bh", shopBh );
        ew.eq("Xs_datetime",data1);
        ew.select("sum(Loan_je) AS Sales,sum(Sale_num) AS OrderQuantity");
        Map<String, Object> map = mtXssjService.getMap(ew);

        return map;
    }

    @Override
    public void getInformation1(String file, String ms, LsShop shop_name, Date date2) {
        ExcelReader excelReader = null;
        Map<String, Object> stringObjectHashMap = new HashMap<>();
        stringObjectHashMap.put("platformBh",shop_name.getPlatformBh());



        //实例化实现了AnalysisEventListener接口的类
        try {
            //这查询sheetlist的改变了流了类型
            List<ReadSheet> sheets = EasyExcel.read(new File(file)).build().excelExecutor().sheetList();
            ReadSheet readSheet = sheets.get(0);
            EasyExcel.read(new File(file), MtXssj.class,new MtSsxjListener(mtXssjService,stringObjectHashMap,ckWarehouseService)).sheet(readSheet.getSheetNo()).headRowNumber(2).doRead();
        }catch (Exception e){
            System.out.println(e);
        }
    }
}

