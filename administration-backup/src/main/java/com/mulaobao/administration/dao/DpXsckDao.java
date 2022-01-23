package com.mulaobao.administration.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.mulaobao.administration.entity.DpCkmx;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * (DpXsck)表数据库访问层
 *
 * @author makejava
 * @since 2021-12-28 17:45:08
 */
@Mapper
public interface DpXsckDao extends BaseMapper<DpCkmx> {
    void insertBatch(@Param("entities") List<DpCkmx> entities);
}

