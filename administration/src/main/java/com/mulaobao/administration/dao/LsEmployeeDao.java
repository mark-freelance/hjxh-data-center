package com.mulaobao.administration.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.mulaobao.administration.entity.LsEmployee;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * (LsEmployee)表数据库访问层
 *
 * @author makejava
 * @since 2021-10-19 10:58:13
 */
@Mapper
public interface LsEmployeeDao extends BaseMapper<LsEmployee> {

	List<LsEmployee> listLsEmployee();
}

