package com.mulaobao.administration.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.mulaobao.administration.entity.DdmcXssj;
import com.mulaobao.administration.entity.LsShop;
import org.springframework.web.multipart.MultipartFile;

import java.util.Date;
import java.util.Map;

/**
 * (DdmcXssj)表服务接口
 *
 * @author makejava
 * @since 2021-12-13 17:34:28
 */
public interface DdmcXssjService extends IService<DdmcXssj> {
    void getInformation(MultipartFile files, String ms, LsShop shop_name, Date data1);
    void getInformation1(String file, String ms, LsShop shop_name, Date date2);
    Map<String, Object> getNum(String shopBh, Date data1);
}

