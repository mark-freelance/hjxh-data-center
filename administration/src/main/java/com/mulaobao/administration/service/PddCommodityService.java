package com.mulaobao.administration.service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.IService;
import com.mulaobao.administration.entity.PddCommodity;
import com.mulaobao.administration.entity.PddFxt;
import com.mulaobao.administration.entity.PddMxdp;

import java.util.List;

/**
 * (PddCommodity)表服务接口
 *
 * @author makejava
 * @since 2021-10-29 16:32:55
 */
public interface PddCommodityService extends IService<PddCommodity> {

    void add(String pddCommoditys);

}

