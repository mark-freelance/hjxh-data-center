package com.mulaobao.administration.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.mulaobao.administration.dao.UserdMenuDao;
import com.mulaobao.administration.entity.UserdMenu;
import com.mulaobao.administration.service.UserdMenuService;
import org.springframework.stereotype.Service;

/**
 * (UserdMenu)表服务实现类
 *
 * @author makejava
 * @since 2021-09-16 16:21:42
 */
@Service("userdMenuService")
public class UserdMenuServiceImpl extends ServiceImpl<UserdMenuDao, UserdMenu> implements UserdMenuService {

}

