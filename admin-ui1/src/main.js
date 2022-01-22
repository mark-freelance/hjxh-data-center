import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import uploader from 'vue-simple-uploader'
//引用element-ui 以及样式
import ElementUI, {Message} from 'element-ui';
import 'element-ui/lib/theme-chalk/index.css';

import 'font-awesome/css/font-awesome.min.css'

import {postRequest} from "./utils/api";
import {putRequest} from "./utils/api";
import {getRequest} from "./utils/api";
import {deleteRequest} from "./utils/api";
import {initMenu} from "./utils/menus";
import TreeTable from 'vue-table-with-tree-grid';
//插件形式使用请求
Vue.prototype.postRequest = postRequest;
Vue.prototype.putRequest = putRequest;
Vue.prototype.getRequest = getRequest;
Vue.prototype.deleteRequest = deleteRequest;
Vue.use(uploader)
//使用钩子函数对路由进行权限跳转
router.beforeEach((to, from, next) => {
    //锁屏
    // const lockFlag = localStorage.getItem('lockFlag');
    // if (lockFlag === '0' && from.path !== "/") {
    //     Message.error({message:'请先解锁！'});
    //     next(false);
    //     // next({ path: '/' })
    // } else {
        if (to.path == '/') {
            next()
        } else {
            initMenu(router, store);
            next();
        }
    // }
});


// 安装ElementUI 配置全局
Vue.use(ElementUI, {size: 'small'});
Vue.component('tree-table',TreeTable)
Vue.config.productionTip = false;
//全局注册组件
new Vue({
    router,
    store,//引用
    render: h => h(App)
}).$mount('#app');
