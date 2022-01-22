package com.mulaobao.administration.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.mulaobao.administration.dao.LsShopDao;
import com.mulaobao.administration.entity.LsSale;
import com.mulaobao.administration.entity.LsShop;
import com.mulaobao.administration.service.LsShopService;
import org.springframework.stereotype.Service;

/**
 * (LsShop)表服务实现类
 *
 * @author makejava
 * @since 2021-09-16 17:41:12
 */
@Service("lsShopService")
public class LsShopServiceImpl extends ServiceImpl<LsShopDao, LsShop> implements LsShopService {

}

