package com.mulaobao.administration.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.mulaobao.administration.entity.TmCommodity;

/**
 * (TmCommodity)表服务接口
 *
 * @author makejava
 * @since 2021-12-09 16:11:31
 */
public interface TmCommodityService extends IService<TmCommodity> {

    void settmCommodity(String lsea);
}

