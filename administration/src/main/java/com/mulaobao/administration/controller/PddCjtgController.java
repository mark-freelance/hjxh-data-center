package com.mulaobao.administration.controller;



import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.api.ApiController;
import com.baomidou.mybatisplus.extension.api.R;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.mulaobao.administration.entity.PddCjtg;
import com.mulaobao.administration.service.PddCjtgService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.io.Serializable;
import java.util.List;

/**
 * (PddCjtg)表控制层
 *
 * @author makejava
 * @since 2021-09-16 17:42:01
 */
@RestController
@RequestMapping("pddCjtg")
public class PddCjtgController extends ApiController {
    /**
     * 服务对象
     */
    @Resource
    private PddCjtgService pddCjtgService;

    /**
     * 分页查询所有数据
     *
     * @param page 分页对象
     * @param pddCjtg 查询实体
     * @return 所有数据
     */
    @GetMapping
    public R selectAll(Page<PddCjtg> page, PddCjtg pddCjtg) {
        return success(this.pddCjtgService.page(page, new QueryWrapper<>(pddCjtg)));
    }

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("{id}")
    public R selectOne(@PathVariable Serializable id) {
        return success(this.pddCjtgService.getById(id));
    }

    /**
     * 新增数据
     *
     * @param pddCjtg 实体对象
     * @return 新增结果
     */
    @PostMapping
    public R insert(@RequestBody PddCjtg pddCjtg) {
        return success(this.pddCjtgService.save(pddCjtg));
    }

    /**
     * 修改数据
     *
     * @param pddCjtg 实体对象
     * @return 修改结果
     */
    @PutMapping
    public R update(@RequestBody PddCjtg pddCjtg) {
        return success(this.pddCjtgService.updateById(pddCjtg));
    }

    /**
     * 删除数据
     *
     * @param idList 主键结合
     * @return 删除结果
     */
    @DeleteMapping
    public R delete(@RequestParam("idList") List<Long> idList) {
        return success(this.pddCjtgService.removeByIds(idList));
    }
}

