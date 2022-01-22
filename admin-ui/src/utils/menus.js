import {getRequest} from "./api";
import {Message} from "element-ui";
import router from "../router";

export const initMenu = (router, store) => {
    if (store.state.routes.length > 0) {
        return;
    }
    //查询菜单栏
     let user =JSON.parse(window.sessionStorage.getItem("tokenStr"))
  if (user!=null){
      getRequest(`/Userlogin/menu/${user.id}`).then(data => {
          if (data) {
              //格式化Router
              let fmtRoutes = formatRoutes(data.data);
              // console.log(fmtRoutes);
              //添加到router
              router.addRoutes(fmtRoutes);
              //将数据存入vuex
              store.commit('initRoutes', fmtRoutes);
          }
      })
  }else {
      Message.error({message:'请先登录！'})
      router.replace('/');
  }

};

export const formatRoutes = (routes) => {
    let fmtRoutes = [];
    routes.forEach(router => {
        let {
            path,
            component,
            name,
            iconCls,
            children,
        } = router;
        if (children && children instanceof Array) {
            //递归
            children = formatRoutes(children);
        }
        let fmRouter = {
            path: path,
            name: name,
            iconCls: iconCls,
            children: children,
            //这里注意了，数据库里的路径要对页面的路径，不能出错了
            component: () => import(`../views/${component}.vue`)
            // component(resolve) {
            // if (component.startsWith("Home")) {
            //     require(['../views/' + component + '.vue'], resolve);
            // } else if (component.startsWith('system')) {
            //     require(['../views/' + component + '.vue'], resolve);
            // } else if (component.startsWith('tools')) {
            //     require(['../views/' + component + '.vue'], resolve);
            // } else if (component.startsWith('product')) {
            //     require(['../views/' + component + '.vue'], resolve);
            // }
            // }
        };
        fmtRoutes.push(fmRouter);
    });
    return fmtRoutes;
};
