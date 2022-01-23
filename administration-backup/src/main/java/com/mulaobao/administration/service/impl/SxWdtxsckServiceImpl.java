package com.mulaobao.administration.service.impl;

import com.alibaba.excel.EasyExcel;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.mulaobao.administration.dao.SxWdtxsckDao;
import com.mulaobao.administration.entity.KingdeeHs;
import com.mulaobao.administration.entity.SxWdtxsck;
import com.mulaobao.administration.listener.KingdeeHsListener;
import com.mulaobao.administration.service.SxWdtxsckService;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.util.HashMap;
import java.util.Map;

/**
 * (SxWdtxsck)表服务实现类
 *
 * @author makejava
 * @since 2022-01-20 16:51:26
 */
@Service("sxWdtxsckService")
public class SxWdtxsckServiceImpl extends ServiceImpl<SxWdtxsckDao, SxWdtxsck> implements SxWdtxsckService {
    @Override
    public int uploading(MultipartFile multipartFile, SxWdtxsckService sxWdtxsckService) {
        Map<String, Object> stringObjectHashMap = new HashMap<>();
        String s = multipartFile.getOriginalFilename();
        String date1 = s.substring(0,4)+"-"+s.substring(4,6)+"-"+s.substring(6,8);
        try {
            stringObjectHashMap.put("fileName",s);
            EasyExcel.read(multipartFile.getInputStream(), KingdeeHs.class,new KingdeeHsListener(sxWdtxsckService,stringObjectHashMap)).headRowNumber(4).sheet().doRead();
            return 200;
        } catch (Exception e) {
            e.printStackTrace();
            return 500;
        }
    }
}

