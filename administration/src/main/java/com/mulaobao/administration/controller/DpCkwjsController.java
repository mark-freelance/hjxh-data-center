package com.mulaobao.administration.controller;



import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.api.ApiController;
import com.baomidou.mybatisplus.extension.api.R;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.mulaobao.administration.entity.DpCkwjs;
import com.mulaobao.administration.service.DpCkwjsService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.io.Serializable;
import java.util.List;

/**
 * (DpCkwjs)表控制层
 *
 * @author makejava
 * @since 2022-01-04 15:59:44
 */
@RestController
@RequestMapping("dpCkwjs")
public class DpCkwjsController extends ApiController {
    /**
     * 服务对象
     */
    @Resource
    private DpCkwjsService dpCkwjsService;

    /**
     * 分页查询所有数据
     *
     * @param page 分页对象
     * @param dpCkwjs 查询实体
     * @return 所有数据
     */
    @GetMapping
    public R selectAll(Page<DpCkwjs> page, DpCkwjs dpCkwjs) {
        return success(this.dpCkwjsService.page(page, new QueryWrapper<>(dpCkwjs)));
    }

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("{id}")
    public R selectOne(@PathVariable Serializable id) {
        return success(this.dpCkwjsService.getById(id));
    }

    /**
     * 新增数据
     *
     * @param dpCkwjs 实体对象
     * @return 新增结果
     */
    @PostMapping
    public R insert(@RequestBody DpCkwjs dpCkwjs) {
        return success(this.dpCkwjsService.save(dpCkwjs));
    }

    /**
     * 修改数据
     *
     * @param dpCkwjs 实体对象
     * @return 修改结果
     */
    @PutMapping
    public R update(@RequestBody DpCkwjs dpCkwjs) {
        return success(this.dpCkwjsService.updateById(dpCkwjs));
    }

    /**
     * 删除数据
     *
     * @param idList 主键结合
     * @return 删除结果
     */
    @DeleteMapping
    public R delete(@RequestParam("idList") List<Long> idList) {
        return success(this.dpCkwjsService.removeByIds(idList));
    }
}

