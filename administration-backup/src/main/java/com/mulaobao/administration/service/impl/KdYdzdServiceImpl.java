package com.mulaobao.administration.service.impl;

import com.alibaba.excel.EasyExcel;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.mulaobao.administration.dao.KdYdzdDao;
import com.mulaobao.administration.entity.KdWdtzd;
import com.mulaobao.administration.entity.KdYdzd;
import com.mulaobao.administration.listener.KdWdtzdListener;
import com.mulaobao.administration.listener.KdYdzdListener;
import com.mulaobao.administration.service.KdYdzdService;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.Date;

/**
 * (KdYdzd)表服务实现类
 *
 * @author makejava
 * @since 2022-01-10 09:20:16
 */
@Service("kdYdzdService")
public class KdYdzdServiceImpl extends ServiceImpl<KdYdzdDao, KdYdzd> implements KdYdzdService {
    @Override
    public int uploading(MultipartFile multipartFile, KdYdzdService kdYdzdService) {
        try {
            long time = new Date().getTime();
            EasyExcel.read(multipartFile.getInputStream(), KdYdzd.class,new KdYdzdListener(kdYdzdService,multipartFile.getOriginalFilename())).sheet().doRead();
            long time2 = new Date().getTime();
            System.out.println("时间:"+(time2-time));
            return 200;
        } catch (IOException e) {
            e.printStackTrace();
            return 500;
        }
    }
}

