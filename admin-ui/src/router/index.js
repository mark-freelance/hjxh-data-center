import Vue from 'vue'
import VueRouter from 'vue-router'
import Login from '../views/Login.vue'
import Home from '../views/Home'
import Console from '../views/console/index'

Vue.use(VueRouter);

const routes = [
    {
        path: '/',
        name: 'Login',
        component: Login,
        hidden: true,//隐藏路由
    }, {
        path: '/home',//路径
        name: 'Home',//名字
        redirect: 'console',//重定向路由
        component: Home,//文件地址
        hidden: true,//隐藏路由
        children: [//子级菜单
            {
                path: '/console',
                name: '控制台',
                component: Console,
            }
        ]
    }
];

const router = new VueRouter({
    routes
});

export default router
