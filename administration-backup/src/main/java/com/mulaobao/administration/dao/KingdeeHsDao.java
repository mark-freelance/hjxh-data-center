package com.mulaobao.administration.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.mulaobao.administration.temporary.Dpckjs;
import com.mulaobao.administration.temporary.Dpckwjs;
import com.mulaobao.administration.temporary.Dxb;
import com.mulaobao.administration.temporary.Dxb2;
import com.mulaobao.administration.entity.KingdeeHs;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * (KingdeeHs)表数据库访问层
 *
 * @author makejava
 * @since 2021-12-22 10:14:01
 */
@Mapper
public interface KingdeeHsDao extends BaseMapper<KingdeeHs> {


    @Select("exec proc_Cw_dxb2 #{data1},#{data2}")
    List<Dxb> gets(@Param("data1") String data1, @Param("data2") String data2);

    @Select("exec proc_Cw_dxb #{data1},#{data2}")
    List<Dxb2> gets2(@Param("data1") String data1, @Param("data2") String data2);

    @Select("exec proc_Cw_dxb3 #{data1},#{data2}")
    List<Dxb> gets3(@Param("data1") String data1, @Param("data2") String data2);


}

