package com.mulaobao.administration.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.mulaobao.administration.dao.MenuDao;
import com.mulaobao.administration.entity.Menu;
import com.mulaobao.administration.service.MenuService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * (Menu)表服务实现类
 *
 * @author makejava
 * @since 2021-09-16 16:22:00
 */
@Service("menuService")
public class MenuServiceImpl extends ServiceImpl<MenuDao, Menu> implements MenuService {


    @Override
    public List<Menu> getMenusId(Integer id) {
        return baseMapper.getMenusId(id);
    }

    @Override
    public List<Menu> getMenusByAdminId(Integer id) {
        return baseMapper.getMenusByAdminId(id);
    }
}

