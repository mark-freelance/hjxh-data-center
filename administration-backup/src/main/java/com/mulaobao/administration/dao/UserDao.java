package com.mulaobao.administration.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.mulaobao.administration.entity.User;
import org.apache.ibatis.annotations.Mapper;

/**
 * (User)表数据库访问层
 *
 * @author makejava
 * @since 2021-09-16 15:10:28
 */
@Mapper
public interface UserDao extends BaseMapper<User> {

}

