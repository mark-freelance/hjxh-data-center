package com.mulaobao.administration.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.mulaobao.administration.entity.LsShop;
import com.mulaobao.administration.entity.PddCjtg;
import org.springframework.web.multipart.MultipartFile;

import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * (PddCjtg)表服务接口
 *
 * @author makejava
 * @since 2021-09-16 17:42:01
 */
public interface PddCjtgService extends IService<PddCjtg> {

    void getInformation(MultipartFile files, String ms, LsShop shop_name, Date data1);


  Map<String, Object> getNum(String shopBh, Date data1);

    void getInformation1(String file, String ms, LsShop shop_name, Date date2);

    List<Map<String, Object>> getNum1(String shopBh);
}

