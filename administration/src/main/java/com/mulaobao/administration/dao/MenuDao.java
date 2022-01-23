package com.mulaobao.administration.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.mulaobao.administration.entity.Menu;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * (Menu)表数据库访问层
 *
 * @author makejava
 * @since 2021-09-16 16:22:00
 */
@Mapper
public interface MenuDao extends BaseMapper<Menu> {

	List<Menu> getMenusId(Integer id);

	List<Menu> getMenusByAdminId(Integer id);
}

