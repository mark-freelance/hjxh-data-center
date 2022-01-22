package com.mulaobao.administration.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.mulaobao.administration.entity.DpZwmx;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * (DpZwmx)表服务接口
 *
 * @author makejava
 * @since 2021-12-13 13:41:49
 */
public interface DpZwmxService extends IService<DpZwmx> {

    void getexel(MultipartFile file);

    void getDaochu(String [] shop,String [] datas,HttpServletResponse response, HttpServletRequest request);
}

