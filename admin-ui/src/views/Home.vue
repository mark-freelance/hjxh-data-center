<template>
    <div class="box">
        <el-container>
            <el-aside class="nav-wrap" :width="isCollapse?'66px':'200px'">
                <div style="height: 100%">
                    <el-menu
                            router
                            unique-opened
                            text-color="#fff"
                            :collapse="isCollapse"
                            :collapse-transition="false"
                            active-text-color="#409EFF"
                            style="height: 100%"
                            :default-active="activePath"
                            background-color="#344a5f">
                        <div class="nav-head">
                            <img src="../assets/img/tp6.png"/>
                            <!--v-show  显示：true/隐藏：false-->
                            <div class="title" v-show="isCollapse?false:true">皇家小虎</div>
                        </div>
                        <el-submenu :index="index+''" v-for="(item,index) in routes" v-if="!item.hidden" :key="index">
                            <template slot="title">
                                <i style="color: #ffffff;margin-right: 5px" :class="item.iconCls"></i>
                                <span>{{item.name}}</span>
                            </template>
                            <el-menu-item :index="children.path"
                                          v-for="(children,indexj) in item.children"
                                          :key="indexj"
                                          @click="saveNavState(children.path)">
                                <i style="color: #ffffff;margin-right: 5px" :class="children.iconCls"></i>
                                {{children.name}}
                            </el-menu-item>
                        </el-submenu>
                    </el-menu>
                </div>
            </el-aside>
            <el-container>
                <el-header class="homeHeader">
                    <el-row style="width: 250px">
                        <el-col :span="4">
                            <div style="font-size: 25px;margin-left: -8px">
                                <i style="cursor: pointer;"
                                   :class="isCollapse?'el-icon-s-unfold':'el-icon-s-fold'"
                                   @click="icons">
                                </i>
                            </div>
                        </el-col>
                        <el-col :span="20">
                            <div style="margin-top: 9px">
                                <el-breadcrumb separator-class="el-icon-arrow-right"
                                               v-if="this.$router.currentRoute.path!='/home'">
                                    <el-breadcrumb-item :to="{ path: '/home' }">首页</el-breadcrumb-item>
                                    <el-breadcrumb-item>{{this.$router.currentRoute.name}}</el-breadcrumb-item>
                                </el-breadcrumb>
                            </div>
                        </el-col>
                    </el-row>
                    <el-row style="width: 250px">
                        <el-col :span="10">
                            <div style="line-height: 56px">
                                <span style="font-size: 25px;">
                                    <el-tooltip class="item" effect="dark" content="刷新" placement="bottom">
                                        <i style="cursor: pointer;margin-right: 8px;" class="el-icon-refresh"
                                           @click="ref"></i>
                                    </el-tooltip>
                                    <el-tooltip class="item" effect="dark" content="全屏" placement="bottom">
                                        <i style="cursor: pointer;margin-right: 8px" class="el-icon-full-screen"
                                           @click=""></i>
                                    </el-tooltip>
                                    <span class="lock-wrap" @click="lockChange">
                                        <el-tooltip class="item" effect="dark" :content="lockFlag?`点击锁定`:`点击解锁`"
                                                    placement="bottom">
                                            <i style="cursor: pointer;margin-right: 8px" class="el-icon-unlock"></i>
                                        </el-tooltip>
                                    </span>
                                </span>
                            </div>
                        </el-col>
                        <el-col :span="14">
                            <el-dropdown class="userInfo" @command="commandHandler">
                                <span class="nav-head">
                                    <i><img :src="require('@/assets/img/tp6.png')"></i>
                                    <span style="margin-left: 2px">
                                    {{user.name}}<i class="el-icon-arrow-down"></i>
                                    </span>
                                </span>
                                <el-dropdown-menu slot="dropdown">
                                    <el-dropdown-item command="userInfo">个人中心</el-dropdown-item>
                                    <el-dropdown-item command="setting">设置</el-dropdown-item>
                                    <el-dropdown-item command="logout">注销登录</el-dropdown-item>
                                </el-dropdown-menu>
                            </el-dropdown>
                        </el-col>
                    </el-row>
                </el-header>
                <el-main class="main-wrap">
                    <router-view class="homeRouterView"/>
                </el-main>
            </el-container>
        </el-container>
    </div>
</template>

<script>
    export default {
        name: "Home",
        data() {
            return {
                //菜单展开/收起
                isCollapse: false,
                breadList: [], // 路由集合
                user: {
                    name: '牧老板',
                    userFace: '',
                },
                // 被激活的链接地址
                activePath: '',
                lockFlag: true
            };
        },
        created() {
            //初始化菜单激活状态
            this.activePath = window.sessionStorage.getItem('activePath');
            let user =JSON.parse(window.sessionStorage.getItem("tokenStr"))
            this.user.name = user.account;
        },
        computed: {//数据初始化
            routes() {
                return this.$store.state.routes;
            }
        },
        methods: {
            //页面锁定事件
            lockChange() {
                if (this.lockFlag) {
                    localStorage.setItem('lockFlag', 0);
                    this.lockFlag = false;
                    this.$message({
                        type: 'success',
                        message: '页面锁定成功！'
                    });
                } else {
                    // const uInfo = JSON.parse(localStorage.getItem("userInfo")); // 用户
                    this.$prompt('', '请输入密码', {
                        inputType: 'password',
                        confirmButtonText: '确定',
                        cancelButtonText: '取消',
                        inputValidator: (value) => {
                            // let hash = md5(value)//密码
                            // return hash.toUpperCase()===uInfo.passwd
                        },
                        inputErrorMessage: '密码输入不正确'
                    }).then(({value}) => {
                        this.$message({
                            type: 'success',
                            message: '解锁成功'
                        });
                        // Message.error({message:'尚未登录，请登录'});
                        localStorage.setItem('lockFlag', 1);
                        this.lockFlag = true
                    }).catch(() => {
                    });
                }
            },
            //刷新页面
            ref() {
                this.$router.go(0)
            },
            //菜单展开/收起
            icons() {
                this.isCollapse = !this.isCollapse;
            },
            // 保存链接的激活状态
            saveNavState(activePath) {
                window.sessionStorage.setItem('activePath', activePath);
                this.activePath = activePath;
            },
            //回调事件
            commandHandler(cmd) {
                if (cmd == 'logout') {
                    this.$confirm('此操作将注销登录，是否继续？', '提示', {
                        confirmButtonText: '确定',
                        cancelButtonText: '取消',
                        type: 'warning'
                    }).then(() => {
                        //注销
                       // this.postRequest("/logout");
                        //清除用户信息
                        window.sessionStorage.removeItem("tokenStr");
                       // window.sessionStorage.removeItem("tokenStr");
                        //清空菜单
                        this.$store.commit('initRoutes', []);
                        //跳转登录页
                        this.$router.replace("/")
                    }).catch(() => {
                        this.$message({
                            type: 'info',
                            message: '已取消操作'
                        })
                    })
                }
                if (cmd == 'userInfo') {
                    this.$router.push('/userInfo');
                }
            }
        }
    }
</script>
<style lang="scss">
    .box {
        margin: -8px;
        padding: 0;
        height: 100%;
    }

    /*---- 侧边栏 start ----*/
    .nav-wrap {
        top: 0;
        left: 0;
        height: 100vh;
    }

    //头部背景
    .nav-head {
        display: flex;
        align-items: center;
        justify-content: space-between;
        padding: 0 15px;
        box-sizing: border-box;
        height: 60px;
    }

    //头部字体大小
    .nav-head .title {
        font-size: 14px;
        color: #fff;
    }

    //log
    .nav-head img {
        width: 48px;
        height: 48px;
        border-radius: 24px;
        margin-left: -8px;
    }

    //二级菜单背景色
    .el-menu-item {
        /*background-color: rgb(31,45,61) !important;*/
    }

    //鼠标悬浮背景色
    .el-menu-item:hover {
        outline: 0 !important;
        color: #409EFF !important;
    }

    //点击选择背景色
    .el-menu-item.is-active {
        color: #409EFF !important;
        background: rgb(31, 45, 61) !important;
    }

    /*---- 侧边栏 end ----*/

    /*---- 头部 start ----*/
    .homeHeader {
        -webkit-box-shadow: 0 3px 16px 0 rgba(0, 0, 0, .1);
        display: flex;
        align-items: center;
        justify-content: space-between;
        padding: 0 15px;
        box-sizing: border-box;
    }

    .homeHeader .userInfo {
        cursor: pointer;
    }

    /*---- 头部 end ----*/

    /*---- 内容 start ----*/
    .main-wrap {
        border: 20px solid #f7f7f7;
        border-bottom: none;
        -webkit-box-sizing: border-box
    }

    .homeRouterView {
        /*margin-top: 10px;*/
    }

    /*---- 内容 end ----*/

</style>
