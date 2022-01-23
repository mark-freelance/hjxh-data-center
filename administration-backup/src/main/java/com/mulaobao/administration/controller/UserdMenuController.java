package com.mulaobao.administration.controller;



import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.api.ApiController;
import com.baomidou.mybatisplus.extension.api.R;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.mulaobao.administration.entity.UserdMenu;
import com.mulaobao.administration.service.UserdMenuService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.io.Serializable;
import java.util.List;

/**
 * (UserdMenu)表控制层
 *
 * @author makejava
 * @since 2021-09-16 16:21:42
 */
@RestController
@RequestMapping("userdMenu")
public class UserdMenuController extends ApiController {
    /**
     * 服务对象
     */
    @Resource
    private UserdMenuService userdMenuService;

    /**
     * 分页查询所有数据
     *
     * @param page 分页对象
     * @param userdMenu 查询实体
     * @return 所有数据
     */
    @GetMapping
    public R selectAll(Page<UserdMenu> page, UserdMenu userdMenu) {
        return success(this.userdMenuService.page(page, new QueryWrapper<>(userdMenu)));
    }

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("{id}")
    public R selectOne(@PathVariable Serializable id) {
        return success(this.userdMenuService.getById(id));
    }

    /**
     * 新增数据
     *
     * @param userdMenu 实体对象
     * @return 新增结果
     */
    @PostMapping
    public R insert(@RequestBody UserdMenu userdMenu) {
        return success(this.userdMenuService.save(userdMenu));
    }

    /**
     * 修改数据
     *
     * @param userdMenu 实体对象
     * @return 修改结果
     */
    @PutMapping
    public R update(@RequestBody UserdMenu userdMenu) {
        return success(this.userdMenuService.updateById(userdMenu));
    }

    /**
     * 删除数据
     *
     * @param idList 主键结合
     * @return 删除结果
     */
    @DeleteMapping
    public R delete(@RequestParam("idList") List<Long> idList) {
        return success(this.userdMenuService.removeByIds(idList));
    }
}

