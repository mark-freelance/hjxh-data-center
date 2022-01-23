package com.mulaobao.administration.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.mulaobao.administration.entity.DpZwmx;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * (DpZwmx)表数据库访问层
 *
 * @author makejava
 * @since 2021-12-13 13:41:49
 */
@Mapper
public interface DpZwmxDao extends BaseMapper<DpZwmx> {

	void insertBatch(@Param("entities") List<DpZwmx> entities);
}

