package com.mulaobao.administration.service.impl;

import com.mulaobao.administration.entity.LsAchievements;
import com.mulaobao.administration.dao.LsAchievementsDao;
import com.mulaobao.administration.service.LsAchievementsService;
import org.springframework.stereotype.Service;


import javax.annotation.Resource;
import java.util.List;

/**
 * (LsAchievements)表服务实现类
 *
 * @author makejava
 * @since 2021-10-19 10:30:23
 */
@Service("lsAchievementsService")
public class LsAchievementsServiceImpl implements LsAchievementsService {
    @Resource
    private LsAchievementsDao lsAchievementsDao;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public LsAchievements queryById(String id) {
        return this.lsAchievementsDao.queryById(id);
    }

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
    @Override
    public LsAchievements insert(LsAchievements lsAchievements) {
        this.lsAchievementsDao.insert(lsAchievements);
        return lsAchievements;
    }

    /**
     * 修改数据
     *
     * @param lsAchievements 实例对象
     * @return 实例对象
     */


    @Override
    public int update(LsAchievements lsAchievements) {
        return lsAchievementsDao.update(lsAchievements);
    }

    @Override
    public List<LsAchievements> addDep(String date) {
        return lsAchievementsDao.addDep(date);
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(String id) {
        return this.lsAchievementsDao.deleteById(id) > 0;
    }
}
