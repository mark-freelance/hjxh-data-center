package com.mulaobao.administration.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.mulaobao.administration.entity.DpCkmx;
import com.mulaobao.administration.entity.DpCkwjs;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * (DpCkwjs)表数据库访问层
 *
 * @author makejava
 * @since 2022-01-04 16:02:54
 */
@Mapper
public interface DpCkwjsDao extends BaseMapper<DpCkwjs> {
    void insertBatch(@Param("entities") List<DpCkwjs> entities);
}

