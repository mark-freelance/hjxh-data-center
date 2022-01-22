package com.mulaobao.administration.controller;



import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.api.ApiController;
import com.baomidou.mybatisplus.extension.api.R;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.mulaobao.administration.entity.LsProductlx;
import com.mulaobao.administration.service.LsProductlxService;
import com.mulaobao.administration.temporary.Maps;
import com.mulaobao.administration.temporary.Productlx;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 * (LsProductlx)表控制层
 *
 * @author makejava
 * @since 2021-11-27 14:38:02
 */
@RestController
@RequestMapping("lsProductlx")
public class LsProductlxController extends ApiController {
    /**
     * 服务对象
     */
    @Resource
    private LsProductlxService lsProductlxService;

    @PostMapping("list")
    public R getlist(@RequestBody LsProductlx lsProductlx){
          List<Productlx> productlxes = lsProductlxService.getlist(lsProductlx);
        return success(productlxes);
    }





        @GetMapping("getdyg")
    public R getdyg(){
          List<Maps> mapsList= lsProductlxService.getdyg();
        return success(mapsList);
    }

    @GetMapping("getsan")
    public R getshow(){  //三级
        List<Maps> productlxes = lsProductlxService.getshow();
        return success(productlxes);
    }

    @PostMapping()
    public R addProductlxes(@RequestBody LsProductlx lsProductlx ){

        return success(lsProductlxService.addProductlxes(lsProductlx));
    }
}

