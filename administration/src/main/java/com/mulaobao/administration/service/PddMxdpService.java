package com.mulaobao.administration.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.mulaobao.administration.entity.PddMxdp;

import java.util.Date;
import java.util.Map;

/**
 * (PddMxdp)表服务接口
 *
 * @author makejava
 * @since 2021-12-02 15:44:06
 */
public interface PddMxdpService extends IService<PddMxdp> {

    Map<String, Object> getNum(String shopBh, Date datae);
}

