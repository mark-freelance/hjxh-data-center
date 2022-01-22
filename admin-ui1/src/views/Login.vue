<template>
    <div class="background">
        <el-form :rules="rules"
                 ref="loginForm"
                 :model="loginForm"
                 class="loginContainer">
            <h3 class="logonTitle">系统登录</h3>
            <el-form-item prop="userName">
                <el-input prefix-icon="iconfont el-icon-user" @keyup.enter.native="submitLogin" type="text" v-model="loginForm.userName"
                          auto-complete="false"
                          placeholder="请输入用户名"></el-input>
            </el-form-item>
            <el-button
                    type="primary"
                    style="width: 100%"
                    v-loading="loading"
                    element-loading-text="正在登录..."
                    element-loading-spinner="el-icon-loading"
                    element-loading-background="rgba(0, 0, 0, 0.8)"
                    @click="submitLogin">登录
            </el-button>
        </el-form>
    </div>
</template>

<script>
    export default {
        name: "Login",
        data() {
            return {
                //获取验证码
                captchaUrl: '/captcha?time=' + new Date(),
                loginForm: {
                    userName: '',

                },
                loading: false,//加载条
                checked: true,
                rules: {//错误提示信息
                    userName: [
                        {required: true, message: '请输入用户名', trigger: 'blur'}
                    ],
                }
            }
        },
        created() {
        },
        methods: {
            //获取验证码
            updateCaptcha() {
                this.captchaUrl = '/captcha?time=' + new Date();
            },
            //登录事件
            submitLogin() {
                this.$refs.loginForm.validate((valid) => {
                    if (valid) {
                        this.loading = true;
                        this.postRequest('/Userlogin/login?acount='+this.loginForm.userName,).then(resp => {
                            if (resp.data!=404) {
                                this.loading = false;
                                //存储用户token
                                // const tokenStr = resp.data.tokenHead + resp.data.token;
                                 window.sessionStorage.setItem('tokenStr', JSON.stringify(resp.data));
                                //清空菜单
                                 this.$store.commit('initRoutes', []);

                                //页面跳转
                                let path = this.$route.query.redirect;
                                this.$router.replace((path == '/' || path == undefined) ? '/home' : path);
                                // this.$router.replace('/home');
                            } else {
                                this.$message.error('账号错误');
                                this.loading = false;
                            }
                        })
                    } else {
                        this.$message.error('请输入所有字段');
                        return false;
                    }
                })
            },
        }
    }
</script>

<style>
    .background {
        background-image: url("../assets/img/demo-1-bg.jpg");
        /*大小设置为100%*/
        width: 100%;
        height: 100%;
        position: fixed;
        background-size: 100% 100%;
    }

    .loginContainer {
        border-radius: 15px;
        background-clip: padding-box;
        margin: 180px auto;
        width: 350px;
        padding: 15px 35px 15px 35px;
        background: #fff;
        border: 1px solid #eaeaea;
        box-shadow: 0 0 25px #cac6c6;
    }

    .logonTitle {
        margin: 0 auto 40px auto;
        text-align: center;
        color: #505458;
    }

    .loginRemember {
        text-align: left;
        margin: 0 0 15px 0;
    }

    .el-form-item__content {
        display: flex;
        align-items: center;
    }
</style>
