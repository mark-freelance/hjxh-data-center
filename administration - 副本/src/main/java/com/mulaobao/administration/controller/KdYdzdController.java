package com.mulaobao.administration.controller;



import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.api.ApiController;
import com.baomidou.mybatisplus.extension.api.R;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.mulaobao.administration.entity.KdYdzd;
import com.mulaobao.administration.service.KdYdzdService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.io.Serializable;
import java.util.List;

/**
 * (KdYdzd)表控制层
 *
 * @author makejava
 * @since 2022-01-10 09:20:16
 */
@RestController
@RequestMapping("kdYdzd")
public class KdYdzdController extends ApiController {
    /**
     * 服务对象
     */
    @Resource
    private KdYdzdService kdYdzdService;

    /**
     * 分页查询所有数据
     *
     * @param page 分页对象
     * @param kdYdzd 查询实体
     * @return 所有数据
     */
    @GetMapping
    public R selectAll(Page<KdYdzd> page, KdYdzd kdYdzd) {
        return success(this.kdYdzdService.page(page, new QueryWrapper<>(kdYdzd)));
    }

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("{id}")
    public R selectOne(@PathVariable Serializable id) {
        return success(this.kdYdzdService.getById(id));
    }

    /**
     * 新增数据
     *
     * @param kdYdzd 实体对象
     * @return 新增结果
     */
    @PostMapping
    public R insert(@RequestBody KdYdzd kdYdzd) {
        return success(this.kdYdzdService.save(kdYdzd));
    }

    /**
     * 修改数据
     *
     * @param kdYdzd 实体对象
     * @return 修改结果
     */
    @PutMapping
    public R update(@RequestBody KdYdzd kdYdzd) {
        return success(this.kdYdzdService.updateById(kdYdzd));
    }

    /**
     * 删除数据
     *
     * @param idList 主键结合
     * @return 删除结果
     */
    @DeleteMapping
    public R delete(@RequestParam("idList") List<Long> idList) {
        return success(this.kdYdzdService.removeByIds(idList));
    }
}

