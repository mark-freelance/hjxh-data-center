package com.mulaobao.administration.controller;

import com.baomidou.mybatisplus.extension.api.R;
import com.mulaobao.administration.entity.LsAchievements;
import com.mulaobao.administration.service.LsAchievementsService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

/**
 * (LsAchievements)表控制层
 *
 * @author makejava
 * @since 2021-10-19 10:30:23
 */
@RestController
@RequestMapping("lsAchievements")
public class LsAchievementsController {
    /**
     * 服务对象
     */
    @Resource
    private LsAchievementsService lsAchievementsService;

    /**
     * 分页查询
     *
     * @param lsAchievements 筛选条件
     * @param pageRequest      分页对象
     * @return 查询结果
     */


    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("{id}")
    public ResponseEntity<LsAchievements> queryById(@PathVariable("id") String id) {
        return ResponseEntity.ok(this.lsAchievementsService.queryById(id));
    }

    /**
     * 新增数据
     *
     * @param lsAchievements 实体
     * @return 新增结果
     */
    @PostMapping
    public ResponseEntity<LsAchievements> add(LsAchievements lsAchievements) {
        return ResponseEntity.ok(this.lsAchievementsService.insert(lsAchievements));
    }

    /**
     * 编辑数据
     *
     * @param lsAchievements 实体
     * @return 编辑结果
     */


    /**
     * 删除数据
     *
     * @param id 主键
     * @return 删除是否成功
     */
    @DeleteMapping
    public ResponseEntity<Boolean> deleteById(String id) {
        return ResponseEntity.ok(this.lsAchievementsService.deleteById(id));
    }

    @GetMapping("selt")
    public void shwo(){
        List<LsAchievements> lsAchievements = lsAchievementsService.addDep("2021-09-01");

        System.out.println(lsAchievements);
    }

}

