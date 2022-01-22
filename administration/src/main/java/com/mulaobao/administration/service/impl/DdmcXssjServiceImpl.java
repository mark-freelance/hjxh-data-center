package com.mulaobao.administration.service.impl;

import com.alibaba.excel.EasyExcel;
import com.alibaba.excel.read.metadata.ReadSheet;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.mulaobao.administration.dao.DdmcXssjDao;
import com.mulaobao.administration.entity.*;
import com.mulaobao.administration.listener.DdmcXssjListener;
import com.mulaobao.administration.service.CkWarehouseService;
import com.mulaobao.administration.service.DdmcXssjService;
import com.mulaobao.administration.service.UserService;
import lombok.SneakyThrows;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.interceptor.TransactionAspectSupport;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import java.io.File;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * (DdmcXssj)表服务实现类
 *
 * @author makejava
 * @since 2021-09-18 18:32:42
 */
@Service("ddmcXssjService")
public class DdmcXssjServiceImpl extends ServiceImpl<DdmcXssjDao, DdmcXssj> implements DdmcXssjService {
    @Resource
    private DdmcXssjService ddmcXssjService;

    @Resource
    private UserService userService;
    @Autowired
    private CkWarehouseService ckWarehouseService;
    private static SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");

    @SneakyThrows
    @Override
    public void getInformation(MultipartFile files, String ms, LsShop shop_name,Date data1) {


        Map<String, Object> stringObjectHashMap = new HashMap<>();
        stringObjectHashMap.put("platformBh",shop_name.getPlatformBh());

            stringObjectHashMap.put("DateTime",data1);
        InputStream inputStream = files.getInputStream();

        //实例化实现了AnalysisEventListener接口的类
        try {
            //这查询sheetlist的改变了流了类型
            List<ReadSheet> sheets = EasyExcel.read(inputStream).build().excelExecutor().sheetList();
            ReadSheet readSheet = sheets.get(0);
            EasyExcel.read(files.getInputStream(), DdmcXssj.class,new DdmcXssjListener(ddmcXssjService,stringObjectHashMap,ckWarehouseService)).sheet(readSheet.getSheetNo()).doRead();
        }catch (Exception e){
            System.out.println(e);
            TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
        }finally {
            inputStream.close();
        }

    }

    @Override
   // @Transactional(rollbackFor = {Exception.class})
    public void getInformation1(String file, String ms, LsShop shop_name, Date date2) {
        Map<String, Object> stringObjectHashMap = new HashMap<>();
        stringObjectHashMap.put("platformBh",shop_name.getPlatformBh());
        stringObjectHashMap.put("DateTime",date2);
        //实例化实现了AnalysisEventListener接口的类
        try {
            User user = new User();
            user.setAccount("12");
            user.setId(3);
            User user1 = new User();
            user1.setAccount("122");
            user1.setId(1);
            userService.save(user);
            userService.save(user1);
            //这查询sheetlist的改变了流了类型
            List<ReadSheet> sheets = EasyExcel.read(new File(file)).build().excelExecutor().sheetList();
            ReadSheet readSheet = sheets.get(0);
            EasyExcel.read(new File(file), DdmcXssj.class,new DdmcXssjListener(ddmcXssjService,stringObjectHashMap,ckWarehouseService)).sheet(readSheet.getSheetNo()).doRead();
        }catch (Exception e){
            //System.out.println(e);
            TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
        }
    }

    @Override
    public Map<String, Object> getNum(String shopBh,Date data1) {
        QueryWrapper<DdmcXssj> ew = new QueryWrapper<>();
        ew.eq("Shop_bh", shopBh);
        ew.eq("Date_time",data1);
        ew.select("sum(Bus_offer*Comm_num) AS Sales,sum(Comm_num) AS OrderQuantity");
        Map<String, Object> map = ddmcXssjService.getMap(ew);
        return map;
    }


}

