package com.mulaobao.administration.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.mulaobao.administration.entity.DpZwmx;
import com.mulaobao.administration.entity.KdWdtzd;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * (KdWdtzd)表数据库访问层
 *
 * @author makejava
 * @since 2022-01-07 17:39:22
 */
@Mapper
public interface KdWdtzdDao extends BaseMapper<KdWdtzd> {
    void insertBatch(@Param("entities") List<KdWdtzd> entities);
}

