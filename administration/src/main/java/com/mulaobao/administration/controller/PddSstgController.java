package com.mulaobao.administration.controller;



import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.api.ApiController;
import com.baomidou.mybatisplus.extension.api.R;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.mulaobao.administration.entity.LsSale;
import com.mulaobao.administration.entity.LsShop;
import com.mulaobao.administration.entity.PddSstg;
import com.mulaobao.administration.service.LsShopService;
import com.mulaobao.administration.service.PddSstgService;
import com.mulaobao.administration.util.UtilId;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.io.Serializable;
import java.util.List;

/**
 * (PddSstg)表控制层
 *
 * @author makejava
 * @since 2021-09-16 17:42:12
 */
@RestController
@RequestMapping("pddSstg")
public class PddSstgController extends ApiController {
    /**
     * 服务对象
     */
    @Resource
    private PddSstgService pddSstgService;

    @Autowired
    private LsShopService shopService;





    @PostMapping("list/{current}/{limit}")
    public R selectAll(@PathVariable long current, @PathVariable long limit) {
        //创建page对象，传递当前页，每页记录数
        Page<PddSstg> pages = new Page<>(current,limit);
        QueryWrapper<PddSstg> lsSaleQueryWrapper = new QueryWrapper<>();
        lsSaleQueryWrapper.orderByDesc("Date_time");
        //调用方法实现分页查询
        IPage<PddSstg> pageHospitalSet = pddSstgService.page(pages,lsSaleQueryWrapper);
        pageHospitalSet.getRecords().stream().forEach(item->{
            QueryWrapper<LsShop> pper = new QueryWrapper<>();
            pper.eq("Shop_bh",item.getShopBh());
            LsShop one = shopService.getOne(pper);
            item.setName(one.getShopName());
        });
        return success(pageHospitalSet);
    }

    /**
     * 分页查询所有数据
     *
     * @param page 分页对象
     * @param pddSstg 查询实体
     * @return 所有数据
     */
    @GetMapping
    public R selectAll(Page<PddSstg> page, PddSstg pddSstg) {
        return success(this.pddSstgService.page(page, new QueryWrapper<>(pddSstg)));
    }

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("{id}")
    public R selectOne(@PathVariable Serializable id) {
        return success(this.pddSstgService.getById(id));
    }

    /**
     * 新增数据
     *
     * @param pddSstg 实体对象
     * @return 新增结果
     */
    @PostMapping
    public R insert(@RequestBody PddSstg pddSstg) {
        return success(this.pddSstgService.save(pddSstg));
    }

    /**
     * 修改数据
     *
     * @param pddSstg 实体对象
     * @return 修改结果
     */
    @PutMapping
    public R update(@RequestBody PddSstg pddSstg) {
        return success(this.pddSstgService.updateById(pddSstg));
    }

    /**
     * 删除数据
     *
     * @param idList 主键结合
     * @return 删除结果
     */
    @DeleteMapping
    public R delete(@RequestParam("idList") List<Long> idList) {
        return success(this.pddSstgService.removeByIds(idList));
    }


    /**
     * 删除数据单个
     *
     * @return 删除结果
     */
    @DeleteMapping("deleteId/{id}")
    public R deletedg(@PathVariable String id) {
        return success(pddSstgService.removeById(id));
    }
}

