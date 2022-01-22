package com.mulaobao.administration.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.mulaobao.administration.entity.LsSale;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.Date;
import java.util.List;

/**
 * (LsSale)表数据库访问层
 *
 * @author makejava
 * @since 2021-09-22 16:36:02
 */
@Mapper
public interface LsSaleDao extends BaseMapper<LsSale> {
            List<LsSale> pddlists(@Param("shop") String shop);
    List<LsSale> pddlists1(@Param("shop") String shop);
            List<LsSale> tjblists(@Param("shop") String shop);
            List<LsSale> jdlists(@Param("shop") String shop);
            List<LsSale> tmlists(@Param("shop") String shop);
            List<LsSale> qtlists(@Param("shop") String shop);
            List<LsSale> dylists(@Param("shop") String shop);
            List<LsSale> mgjlists(@Param("shop") String shop);
            List<LsSale> zhzlists();
          LsSale xgzhzlists(@Param("shop") Date shop);
          List<LsSale> qitiaolists();
          List<LsSale>  getdaochu(@Param("datas1") String datas1,@Param("datas2") String datas2,@Param("shops") String [] shops);
}

