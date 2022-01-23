package com.mulaobao.administration.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.mulaobao.administration.entity.Menu;

import java.util.List;

/**
 * (Menu)表服务接口
 *
 * @author makejava
 * @since 2021-09-16 16:22:00
 */
public interface MenuService extends IService<Menu> {
    List<Menu> getMenusId(Integer id);
    List<Menu> getMenusByAdminId(Integer id);
}

