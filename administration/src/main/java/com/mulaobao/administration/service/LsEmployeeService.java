package com.mulaobao.administration.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.mulaobao.administration.entity.LsEmployee;

import java.util.List;

/**
 * (LsEmployee)表服务接口
 *
 * @author makejava
 * @since 2021-10-19 10:58:13
 */
public interface LsEmployeeService extends IService<LsEmployee> {
    List<LsEmployee> listLsEmployee();

    List<LsEmployee> getlistE();
}

