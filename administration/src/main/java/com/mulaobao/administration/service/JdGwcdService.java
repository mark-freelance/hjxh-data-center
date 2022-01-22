package com.mulaobao.administration.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.mulaobao.administration.entity.JdGwcd;
import com.mulaobao.administration.entity.LsShop;
import org.springframework.web.multipart.MultipartFile;

import java.util.Date;
import java.util.Map;

/**
 * (JdGwcd)表服务接口
 *
 * @author makejava
 * @since 2021-09-16 17:40:19
 */
public interface JdGwcdService extends IService<JdGwcd> {

    void getInformation(MultipartFile multipartFile, String ms, LsShop shop_name,Date data1);

    Map<String, Object> getNum(String shopBh, Date data1);

    void getInformation1(String file, String ms, LsShop shop_name, Date date2);
}

