package com.mulaobao.administration.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.mulaobao.administration.entity.DpDdmx;
import com.mulaobao.administration.entity.DpZwmx;
import com.mulaobao.administration.temporary.Cwd;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * (DpDdmx)表数据库访问层
 *
 * @author makejava
 * @since 2021-12-13 17:27:52
 */
@Mapper
public interface DpDdmxDao extends BaseMapper<DpDdmx> {
    void insertBatch(@Param("entities") List<DpDdmx> entities);

    @Select("exec proc_Dp_Zwmx #{shops},#{data1},#{data2}")
    List<Cwd> gets(@Param("shops") String shops,@Param("data1") String data1,@Param("data2") String data2);
}

