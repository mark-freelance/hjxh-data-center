package com.mulaobao.administration.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.mulaobao.administration.entity.TmZwlxZwzh;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * (TmZwlxZwzh)表服务接口
 *
 * @author makejava
 * @since 2022-01-12 10:48:05
 */
public interface TmZwlxZwzhService extends IService<TmZwlxZwzh> {

    int getexel(MultipartFile multipartFile, TmZwlxZwzhService tmZwlxZwzhService);

    void getDaochu(String[] shop,String name, String[] datas, HttpServletResponse response, HttpServletRequest request);
}

