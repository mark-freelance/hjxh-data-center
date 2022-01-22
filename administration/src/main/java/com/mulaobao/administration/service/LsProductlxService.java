package com.mulaobao.administration.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.mulaobao.administration.entity.LsProductlx;
import com.mulaobao.administration.temporary.Maps;
import com.mulaobao.administration.temporary.Productlx;

import java.util.List;

/**
 * (LsProductlx)表服务接口
 *
 * @author makejava
 * @since 2021-11-27 14:38:02
 */
public interface LsProductlxService extends IService<LsProductlx> {

    List<Productlx> getlist(LsProductlx lsProductlx);

    List<Maps> getdyg();

    List<Maps> getshow();

    boolean addProductlxes(LsProductlx lsProductlx);
}

