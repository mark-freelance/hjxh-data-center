import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex);

export default new Vuex.Store({
    state: {
        routes:[]
    },
    //同步执行操作
    mutations: {
        //初始化
        initRoutes(state,data){
            state.routes = data;
        }
    },
    //异步执行操作
    actions: {},
    modules: {}
})
