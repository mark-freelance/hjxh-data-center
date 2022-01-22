package com.mulaobao.administration.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.mulaobao.administration.dao.WdtCkDao;
import com.mulaobao.administration.entity.WdtCk;
import com.mulaobao.administration.entity.WdtKc;
import com.mulaobao.administration.service.WdtCkService;
import com.mulaobao.administration.util.UtilId;
import com.opencsv.CSVParser;
import com.opencsv.CSVParserBuilder;
import com.opencsv.CSVReader;
import com.opencsv.CSVReaderBuilder;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.io.InputStreamReader;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * (WdtCk)表服务实现类
 *
 * @author makejava
 * @since 2021-12-22 10:12:59
 */
@Service("wdtCkService")
public class WdtCkServiceImpl extends ServiceImpl<WdtCkDao, WdtCk> implements WdtCkService {
    private static SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
    @Override
    public void uploading(MultipartFile multipartFile) {
        InputStreamReader is = null;
        try {
            is = new InputStreamReader(multipartFile.getInputStream(),"GBK");
            String kc = multipartFile.getOriginalFilename().substring(0, multipartFile.getOriginalFilename().indexOf("库"));
            String date1 = "2021-"+kc.substring(0,2)+"-"+kc.substring(2,4);
            Date parse = simpleDateFormat.parse(date1);
            CSVParser csvParser = new CSVParserBuilder().build();
            CSVReader reader = new CSVReaderBuilder(is).withCSVParser(csvParser).build();
            List<String[]> strings = reader.readAll();
            for (int i=5;i<strings.size();i++){
                String[] strings1 = strings.get(i);
                if (strings1[0].indexOf("合计")==-1){
                    WdtCk wdtCk = new WdtCk();
                    wdtCk.setId(UtilId.getUUID());
                    wdtCk.setDateTime(parse);
                    wdtCk.setSjBm(UtilId.getqd(strings1[0]));
                    wdtCk.setGoodsBh(UtilId.getqd(strings1[1]));
                    wdtCk.setGoodsName(UtilId.getqd(strings1[2]));
                    wdtCk.setGgName(UtilId.getqd(strings1[3]));
                    wdtCk.setGoodsLx(UtilId.getqd(strings1[5]));
                    wdtCk.setNum(UtilId.doublelsnull(strings1[6]));
                    wdtCk.setTotal(UtilId.doublelsnull(strings1[7]));
                    wdtCk.setCost(UtilId.doublelsnull(strings1[8]));
                    baseMapper.insert(wdtCk);
                    //System.out.println(wdtCk);

                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        } catch (ParseException e) {
            e.printStackTrace();
        }
    }
}

