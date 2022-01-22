package com.mulaobao.administration.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;

import com.baomidou.mybatisplus.extension.api.ApiController;
import com.baomidou.mybatisplus.extension.api.R;
import com.mulaobao.administration.entity.Menu;
import com.mulaobao.administration.entity.User;
import com.mulaobao.administration.service.MenuService;
import com.mulaobao.administration.service.UserService;
import com.mulaobao.administration.util.UtilId;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.websocket.server.PathParam;
import java.util.List;

@RestController
@RequestMapping("Userlogin")
public class login extends ApiController {

    @Autowired
    private UserService userService;

    @Autowired
    private MenuService menuService;


    //登录
    @PostMapping("login")
    public R loginshow(@PathParam("acount") String acount){
        User account = userService.getOne(new QueryWrapper<User>().eq("account", acount));
        if (account==null){
            return success("404");
        }
        return success(account);
    }


    //菜单栏
        @GetMapping("menu/{id}")
    public R showMenu(@PathVariable int id){

            List<Menu> menusByAdminId = menuService.getMenusByAdminId(id);
            return success(menusByAdminId);
        }




}
