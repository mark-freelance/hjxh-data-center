package com.mulaobao.administration.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.mulaobao.administration.entity.DpCkmx;
import org.springframework.web.multipart.MultipartFile;

/**
 * (DpXsck)表服务接口
 *
 * @author makejava
 * @since 2021-12-28 17:45:08
 */
public interface DpXsckService extends IService<DpCkmx> {

    int getexel(MultipartFile file,DpXsckService dpXsckService);
}

