package com.mulaobao.administration.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.mulaobao.administration.entity.CkWarehouse;
import com.mulaobao.administration.temporary.DDmc;
import com.mulaobao.administration.temporary.Maps;

import java.util.List;

/**
 * (CkWarehouse)表服务接口
 *
 * @author makejava
 * @since 2021-09-23 16:49:21
 */
public interface CkWarehouseService extends IService<CkWarehouse> {
    List<CkWarehouse> getckWarehouse();

    List<Maps> getckSheng();

    void setDDmcCk(DDmc dDmc);

    void setDDmcCks(DDmc dDmc);

    List<CkWarehouse> getckWarehousemt();

    List<Maps> getckShengmt();

    void setmtCk(DDmc dDmc);

    void setmts(DDmc dDmc);
}

