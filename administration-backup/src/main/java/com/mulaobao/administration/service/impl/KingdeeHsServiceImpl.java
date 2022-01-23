package com.mulaobao.administration.service.impl;

import com.alibaba.excel.EasyExcel;
import com.alibaba.excel.EasyExcelFactory;
import com.alibaba.excel.ExcelWriter;
import com.alibaba.excel.metadata.Table;
import com.alibaba.excel.write.metadata.WriteSheet;
import com.alibaba.excel.write.metadata.WriteTable;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.google.common.collect.Lists;
import com.mulaobao.administration.dao.KingdeeHsDao;
import com.mulaobao.administration.temporary.*;
import com.mulaobao.administration.entity.KingdeeHs;
import com.mulaobao.administration.listener.KingdeeHsListener;
import com.mulaobao.administration.service.KingdeeHsService;
import org.apache.poi.ss.usermodel.Sheet;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * (KingdeeHs)表服务实现类
 *
 * @author makejava
 * @since 2021-12-22 10:14:01
 */
@Service("kingdeeHsService")
public class KingdeeHsServiceImpl extends ServiceImpl<KingdeeHsDao, KingdeeHs> implements KingdeeHsService {

    private static SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
    @Override
    public int uploading(MultipartFile multipartFile,KingdeeHsService kingdeeHsService) {
        Map<String, Object> stringObjectHashMap = new HashMap<>();
        String s = multipartFile.getOriginalFilename();
        String date1 = s.substring(0,4)+"-"+s.substring(4,6)+"-"+s.substring(6,8);
        try {
            stringObjectHashMap.put("DateTime",simpleDateFormat.parse(date1));
            stringObjectHashMap.put("fileName",s);
            EasyExcel.read(multipartFile.getInputStream(), KingdeeHs.class,new KingdeeHsListener(kingdeeHsService,stringObjectHashMap)).headRowNumber(4).sheet().doRead();
       return 200;
        } catch (Exception e) {
            e.printStackTrace();
            return 500;
        }
    }




    @Override
    public void getDaochuSS(String[] datas, HttpServletResponse response, HttpServletRequest request) {
//设置下载信息



        List<Dxb2> gets11 = new ArrayList<>(); //动销不是o
        List<Dxb2> gets22 = new ArrayList<>(); //动销为o
        Dxb2 dxb = null;


         List<Dxb2> gets2 = baseMapper.gets2(datas[0],datas[1]);
        try {
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
//重要点
            String filename = "动销";
            String fileName = new String(filename.getBytes(), "iso8859-1") + dateFormat.format(new Date().getTime()) + ".xlsx";
            response.setContentType("application/vnd.ms-excel");
            response.setCharacterEncoding("utf-8");
            response.setHeader("Content-disposition", "attachment;filename="+fileName);
            ExcelWriter excelWriter = EasyExcel.write(response.getOutputStream()).build();


            if (gets2.size()!=0){
                for (int i =0;i<gets2.size();i++){
                    if (gets2.get(i).getGoodsbh().equals("N/A")){
                        dxb = gets2.get(i);
                        gets2.get(i).setGoodsbh("合计");
                        gets2.get(i).setGoodsname("");
                        gets2.remove(i);
                        break;
                    }

                    if (gets2.get(i).getZcr()!=null){
                        gets11.add(gets2.get(i));
                    }else {
                        gets22.add(gets2.get(i));
                    }
                }

                Collections.sort(gets11, new Comparator<Dxb2>() {
                    @Override
                    public int compare(Dxb2 o1, Dxb2 o2) {
                        int i =Integer.parseInt(new java.text.DecimalFormat("0").format(o2.getZcr()*100 - o1.getZcr()*100));
                        if(i == 0){
                            return Integer.parseInt(new java.text.DecimalFormat("0").format(o2.getQmkc()*100 - o1.getQmkc()*100));
                        }
                        return i;
                    }
                });

                Collections.sort(gets22, new Comparator<Dxb2>() {
                    @Override
                    public int compare(Dxb2 o1, Dxb2 o2) {
                        int i =Integer.parseInt(new java.text.DecimalFormat("0").format(o2.getQmkc()*100 - o1.getQmkc()*100));
                        return i;
                    }
                });

                gets11.addAll(gets22);
                gets11.add(dxb);
                List<List<String>> headTitles = Lists.newArrayList();
                String basicInfo [] =  new String[]{"货品编码","货品名称","期末库存","库存数排名",
                        datas[0].substring(5,datas[0].length()).replace("-","/")+"-"+datas[1].substring(5,datas[0].length()).replace("-","/")+"动销"
                        ,"日销量","支撑销售日","支撑销售日最大仓","支撑销售日最小仓"};
                for (int i =0;i<basicInfo.length;i++){
                    headTitles.add(Lists.newArrayList(basicInfo[i]));
                }


                // 写数据
                WriteSheet writeSheet1 = EasyExcel.writerSheet(0, "汇总").head(headTitles).registerWriteHandler(new ExcelWidthStyleStrategy()).build();
                excelWriter.write(gets11, writeSheet1);
            }

            List<Dxb> gets = baseMapper.gets(datas[0],datas[1]);  //分类
            if (gets.size()!=0){
                List<Dxb> gets33 = new ArrayList<>(); //动销不是o
                List<Dxb> gets44 = new ArrayList<>(); //动销为o
                List<Dxb> gets4 = new ArrayList<>();
                HashMap<String, List<Dxb>> stringListHashMap = new HashMap<>();
                HashMap<String, Dxb> stringDxbHashMap = new HashMap<>();
                ArrayList<Integer> integers = new ArrayList<>();
                for (int i =0;i<gets.size();i++ ){
                    if (gets.get(i).getGoodsbh().equals("N/A")){
                        gets.get(i).setGoodsbh("合计");
                        gets.get(i).setGoodsname("");
                        ArrayList<Dxb> dxbs = new ArrayList<>();
                        stringListHashMap.put(gets.get(i).getWarehouse(),dxbs);
                        stringDxbHashMap.put(gets.get(i).getWarehouse(),gets.get(i));
                        gets4.add(gets.get(i));
                        integers.add(i);
                        continue;
                    }
                    if (gets.get(i).getZcr()!=null){
                        gets33.add(gets.get(i));
                    }else {
                        gets44.add(gets.get(i));
                    }
                }
                Collections.sort(gets33, new Comparator<Dxb>() {
                    @Override
                    public int compare(Dxb o1, Dxb o2) {
                        int i =Integer.parseInt(new java.text.DecimalFormat("0").format(o2.getZcr()*100 - o1.getZcr()*100));
                        if(i == 0){
                            return Integer.parseInt(new java.text.DecimalFormat("0").format(o2.getQmkc()*100 - o1.getQmkc()*100));
                        }
                        return i;
                    }
                });
                Collections.sort(gets44, new Comparator<Dxb>() {
                    @Override
                    public int compare(Dxb o1, Dxb o2) {
                        int i =Integer.parseInt(new java.text.DecimalFormat("0").format(o2.getQmkc()*100 - o1.getQmkc()*100));
                        return i;
                    }
                });
                gets33.addAll(gets44);
                for (int i =0;i<gets33.size();i++ ){
                    List<Dxb> dxbs = stringListHashMap.get(gets33.get(i).getWarehouse());
                    dxbs.add(gets33.get(i));
                }
                List<List<String>> headTitles1 = Lists.newArrayList();
                String [] sc = new String[]{"货品编码","货品名称","期末库存","库存数排名",datas[0].substring(5,datas[0].length()).replace("-","/")+"-"+datas[1].substring(5,datas[0].length()).replace("-","/")+"动销","日销量","支撑销售日"};
                for (int i =0;i<sc.length;i++){
                    headTitles1.add(Lists.newArrayList(sc[i]));
                }
                for (int i =0;i<gets4.size();i++){
                    List<Dxb> dxbs = stringListHashMap.get(gets4.get(i).getWarehouse());
                    dxbs.add(stringDxbHashMap.get(gets4.get(i).getWarehouse()));
                    WriteSheet writeSheet2 = EasyExcel.writerSheet(i+1, dxbs.get(0).getWarehouse()).head(headTitles1).registerWriteHandler(new ExcelWidthStyleStrategy()).build();
                    excelWriter.write(dxbs, writeSheet2);
                }
            }
            excelWriter.finish();
        } catch (IOException e) {
            e.printStackTrace();
            response.reset();
        }
    }

    @Override
    public List<Dxb> gets(String data1, String data2) {
        return baseMapper.gets(data1,data2);
    }

    @Override
    public List<Dxb2> gets2(String data1, String data2) {
        return baseMapper.gets2(data1, data2);
    }

    @Override
    public List<Dxb> gets3(String data1, String data2) {
        return baseMapper.gets3(data1, data2);
    }


}

