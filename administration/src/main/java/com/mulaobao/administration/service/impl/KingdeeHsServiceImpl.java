package com.mulaobao.administration.service.impl;

import com.alibaba.excel.EasyExcel;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.mulaobao.administration.dao.KingdeeHsDao;
import com.mulaobao.administration.entity.KingdeeHs;
import com.mulaobao.administration.entity.TmPxb;
import com.mulaobao.administration.listener.KingdeeHsListener;
import com.mulaobao.administration.listener.TmPxbListener;
import com.mulaobao.administration.service.KingdeeHsService;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Map;

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
    public void uploading(MultipartFile multipartFile) {
        Map<String, Object> stringObjectHashMap = new HashMap<>();
        String[] s = multipartFile.getOriginalFilename().split("_");
        String date1 = s[1].substring(0,4)+"-"+s[1].substring(4,6)+"-"+s[1].substring(6,8);
        try {
            stringObjectHashMap.put("DateTime",simpleDateFormat.parse(date1));
            EasyExcel.read(multipartFile.getInputStream(), KingdeeHs.class,new KingdeeHsListener(baseMapper,stringObjectHashMap)).headRowNumber(4).sheet().doRead();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (ParseException e) {
            e.printStackTrace();
        }
    }
}

