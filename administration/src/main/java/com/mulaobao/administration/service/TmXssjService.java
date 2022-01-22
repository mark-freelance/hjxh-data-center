package com.mulaobao.administration.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.mulaobao.administration.entity.LsShop;
import com.mulaobao.administration.entity.TmXssj;
import org.springframework.web.multipart.MultipartFile;

import java.util.Date;
import java.util.Map;

/**
 * (TmXssj)表服务接口
 *
 * @author makejava
 * @since 2021-09-16 17:43:39
 */
public interface TmXssjService extends IService<TmXssj> {

    void getInformation(MultipartFile multipartFile, String ms, LsShop shop_name);

    Map<String, Object> getNum(String shopBh, Date data1);

    void getInformation1(String file, String ms, LsShop shop_name,Date date2);
}

