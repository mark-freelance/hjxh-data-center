package com.mulaobao.administration.controller;



import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.api.ApiController;
import com.baomidou.mybatisplus.extension.api.R;
import com.mulaobao.administration.entity.CkWarehouse;
import com.mulaobao.administration.temporary.DDmc;
import com.mulaobao.administration.temporary.Maps;
import com.mulaobao.administration.service.CkWarehouseService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.io.Serializable;
import java.util.List;

/**
 * (CkWarehouse)表控制层
 *
 * @author makejava
 * @since 2021-09-23 16:49:21
 */
@RestController
@RequestMapping("ckWarehouse")
public class CkWarehouseController extends ApiController {
    /**
     * 服务对象
     */
    @Resource
    private CkWarehouseService ckWarehouseService;

    /**
     * 得到所有多多买菜的仓库
     *

     */
    @GetMapping("gets")
    public R selectAll() {
        List<CkWarehouse> list = ckWarehouseService.getckWarehouse();
      return success(list);
    }

    /**
     * 得到所有美团的仓库
     *

     */
    @GetMapping("getsmt")
    public R selectAll11() {
        List<CkWarehouse> list = ckWarehouseService.getckWarehousemt();
        return success(list);
    }

    /**
     * 得到所有的省
     *

     */
    @GetMapping("getsheng")
    public R selectAll1() {
        List<Maps> list = ckWarehouseService.getckSheng();
        return success(list);
    }

    /**
     * 得到美团所有的省
     *

     */
    @GetMapping("getshengmt")
    public R selectAll1mt() {
        List<Maps> list = ckWarehouseService.getckShengmt();
        return success(list);
    }

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("{id}")
    public R selectOne(@PathVariable Serializable id) {
        return success(this.ckWarehouseService.getById(id));
    }

    /**
     * 新增仓库

     */
    @PostMapping("addDdmcCK")
    public R insert(@RequestBody DDmc dDmc) {
        CkWarehouse one = ckWarehouseService.getOne(new QueryWrapper<CkWarehouse>().eq("named", dDmc.getCk()).eq("type", 1).eq("shpn", 0));
        if (one==null){
            ckWarehouseService.setDDmcCk(dDmc);
            return success(true);
        }
         return success(false);
    }


    /**
     * 新增仓库

     */
    @PostMapping("addmtCK")
    public R insertmt(@RequestBody DDmc dDmc) {
        CkWarehouse one = ckWarehouseService.getOne(new QueryWrapper<CkWarehouse>().eq("named", dDmc.getCk()).eq("type", 2).eq("shpn", 0));
            if (one==null){
                ckWarehouseService.setmtCk(dDmc);
                return success(true);
            }
        return  success(false);
    }


    /**
     * 新增省

     */
    @PostMapping("addDdmcSheng")
    public R inserts(@RequestBody DDmc dDmc) {
        CkWarehouse one = ckWarehouseService.getOne(new QueryWrapper<CkWarehouse>().eq("named", dDmc.getSheng()).eq("type", 1).eq("fid", 0));
        if (one==null){
            ckWarehouseService.setDDmcCks(dDmc);
            return success(true);
        }
       return success(false);
    }

    /**
     * 新增美团省

     */
    @PostMapping("addmtSheng")
    public R insertsmt(@RequestBody DDmc dDmc) {
        CkWarehouse one = ckWarehouseService.getOne(new QueryWrapper<CkWarehouse>().eq("named", dDmc.getSheng()).eq("type", 2).eq("fid", 0));
        if (one ==null){
            ckWarehouseService.setmts(dDmc);
            return success(true);
        }
      return success(false);
    }

    /**
     * 修改数据
     *
     * @param ckWarehouse 实体对象
     * @return 修改结果
     */
    @PutMapping
    public R update(@RequestBody CkWarehouse ckWarehouse) {
        return success(this.ckWarehouseService.updateById(ckWarehouse));
    }

    /**
     * 删除数据
     *
     * @param idList 主键结合
     * @return 删除结果
     */
    @DeleteMapping
    public R delete(@RequestParam("idList") List<Long> idList) {
        return success(this.ckWarehouseService.removeByIds(idList));
    }

    //删除仓库
    @DeleteMapping("deleteck/{id}")
    public R deleteck(@PathVariable String id) {
        return success(ckWarehouseService.removeById(id));
    }



}

