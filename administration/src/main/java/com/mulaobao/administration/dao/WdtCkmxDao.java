package com.mulaobao.administration.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.mulaobao.administration.entity.WdtCkmx;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * (WdtCkmx)表数据库访问层
 *
 * @author makejava
 * @since 2021-12-26 17:49:31
 */
@Mapper
public interface WdtCkmxDao extends BaseMapper<WdtCkmx> {

	void insertBatch(@Param("entities") List<WdtCkmx> entities);
}

