package com.mulaobao.administration.dao;

import com.mulaobao.administration.entity.LsAchievements;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * (LsAchievements)表数据库访问层
 *
 * @author makejava
 * @since 2021-10-19 10:30:23
 */
@Mapper
public interface LsAchievementsDao {

	/**
	 * 通过ID查询单条数据
	 *
	 * @param id 主键
	 * @return 实例对象
	 */
	LsAchievements queryById(String id);

	/**
	 * 查询指定行数据
	 *
	 * @param lsAchievements 查询条件
	 * @param pageable         分页对象
	 * @return 对象列表
	 */


	/**
	 * 统计总行数
	 *
	 * @param lsAchievements 查询条件
	 * @return 总行数
	 */
	long count(LsAchievements lsAchievements);

	/**
	 * 新增数据
	 *
	 * @param lsAchievements 实例对象
	 * @return 影响行数
	 */
	int insert(LsAchievements lsAchievements);

	/**
	 * 批量新增数据（MyBatis原生foreach方法）
	 *
	 * @param entities List<LsAchievements> 实例对象列表
	 * @return 影响行数
	 */
	int insertBatch(@Param("entities") List<LsAchievements> entities);

	/**
	 * 批量新增或按主键更新数据（MyBatis原生foreach方法）
	 *
	 * @param entities List<LsAchievements> 实例对象列表
	 * @return 影响行数
	 * @throws org.springframework.jdbc.BadSqlGrammarException 入参是空List的时候会抛SQL语句错误的异常，请自行校验入参
	 */
	int insertOrUpdateBatch(@Param("entities") List<LsAchievements> entities);

	/**
	 * 修改数据
	 *
	 * @param lsAchievements 实例对象
	 * @return 影响行数
	 */
	int update(LsAchievements lsAchievements);

	/**
	 * 通过主键删除数据
	 *
	 * @param id 主键
	 * @return 影响行数
	 */
	int deleteById(String id);

	List<LsAchievements> addDep(@Param("date") String date);
}

