package com.mulaobao.administration.service;

import com.mulaobao.administration.entity.LsAchievements;

import java.util.List;

/**
 * (LsAchievements)表服务接口
 *
 * @author makejava
 * @since 2021-10-19 10:30:23
 */
public interface LsAchievementsService {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    LsAchievements queryById(String id);

    /**
     * 分页查询
     *
     * @param lsAchievements 筛选条件
     * @param pageRequest      分页对象
     * @return 查询结果
     */

    /**
     * 新增数据
     *
     * @param lsAchievements 实例对象
     * @return 实例对象
     */
    LsAchievements insert(LsAchievements lsAchievements);

    /**
     * 修改数据
     *
     * @param lsAchievements 实例对象
     * @return 实例对象
     */
    int update(LsAchievements lsAchievements);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    boolean deleteById(String id);

    List<LsAchievements> addDep(String date);


}
