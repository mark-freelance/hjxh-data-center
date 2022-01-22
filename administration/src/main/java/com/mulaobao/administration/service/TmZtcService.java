package com.mulaobao.administration.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.mulaobao.administration.entity.LsShop;
import com.mulaobao.administration.entity.TmZtc;
import org.springframework.web.multipart.MultipartFile;

import java.util.Date;
import java.util.Map;

/**
 * (TmZtc)表服务接口
 *
 * @author makejava
 * @since 2021-09-16 17:43:52
 */
public interface TmZtcService extends IService<TmZtc> {

    void getInformation(MultipartFile multipartFile, String ms, LsShop shop_name,Date data1);

    Map<String, Object> getNum(String shopBh,Date data1);

    void getInformation1(String file, String ms, LsShop shop_name, Date date2);
}

