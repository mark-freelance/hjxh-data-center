<template>
    <div>


        <el-tabs v-model="activeName">

            <el-tab-pane label="导入" name="second">
               请选择时间：<el-date-picker
                        v-model="value2"
                        align="right"
                        type="date"
                        value-format="yyyy-MM-dd"
                        placeholder="选择日期"
                        @blur="datarq"
                        :picker-options="pickerOptions">
                </el-date-picker>
                <h2 style="color: green">方式1.文件上传</h2>
                <div class="block">

                </div>
                <el-autocomplete
                    class="search-input"
                    prefix-icon="el-icon-search"
                    v-model="state"
                    :fetch-suggestions="query"
                    placeholder="输入商铺名字"
            >
            </el-autocomplete>
                <el-upload
                        class="upload-demo"
                        :action="uRl()"
                        :data="ms1"
                        :before-upload="beforeUpload"
                        :before-remove="beforeRemove"
                        multiple
                        :file-list="fileList">
                    <el-button size="small" type="primary">点击上传</el-button>
                </el-upload>


                <h2 style="color: green">方式2.文件夹拖拽上传</h2>

                <uploader :options="optionss" class="uploader-example">
                    <uploader-unsupport></uploader-unsupport>
                    <uploader-drop>
                        <h2>拖拽上传到此处</h2>
                    </uploader-drop>
                    <uploader-list></uploader-list>
                </uploader>


                <div v-if="ac==2">
                <h2 style="color: green">方式3.自动上传（测试版目前不能用）</h2>

                <el-button type="success" @click="dsrw">定时开始</el-button>
                <el-button type="success" @click="dsgb">定时关闭</el-button>
                <h2 style="color: green">其他</h2>
                </div>

            </el-tab-pane>
            <el-tab-pane label="店铺汇总" name="s">

                        <el-form  :inline="true"  label-width="260px">
                            <el-form-item label="日期" prop="">
                                <div class="block">
                                    <el-date-picker
                                            v-model="value2"
                                            align="right"
                                            type="date"
                                            value-format="yyyy-MM-dd"
                                            placeholder="选择日期"
                                            :picker-options="pickerOptions">
                                    </el-date-picker>
                                </div>
                            </el-form-item>

                            <el-form-item label="店铺" prop="Shop_name" >
                                <el-autocomplete
                                        class="search-input"
                                        v-model="state1"
                                        :fetch-suggestions="query"
                                        @select="handle"
                                        placeholder="输入商铺名字"
                                >
                                </el-autocomplete>
                            </el-form-item>
                            <el-form-item label="全店销售额" prop="name" >
                                    <el-input type="age" v-if="hzs1.sales!=1" @blur="zfzhl" placeholder="请填写" v-model="hz.sales"  ></el-input>
                                <el-input type="age" placeholder="请填写" v-if="hzs1.sales==1" disabled="disabled" v-model.number="hz.sales"  ></el-input>

                            </el-form-item>
                            <el-form-item label="订单量" prop="name" >
                                    <el-input type="age" v-if="hzs1.orderquantity!=1"  v-model="hz.orderquantity" ></el-input>
                                <el-input type="age" v-if="hzs1.orderquantity==1" disabled="disabled" v-model.number="hz.orderquantity" ></el-input>

                            </el-form-item>
                            <el-form-item label="支付买家数" prop="name" >
                                    <el-input type="age" v-if="hzs1.numBuyers==1" disabled="disabled" v-model.number="hz.numBuyers"  ></el-input>
                                    <el-input type="age" v-if="hzs1.numBuyers!=1" @blur="zfzhl"   v-model="hz.numBuyers"  ></el-input>

                            </el-form-item>

                            <el-form-item label="退款金额" >
                                <el-input type="age"  v-if="hzs1.refundamount==1" disabled="disabled" v-model.number="hz.refundamount" ></el-input>
                                <el-input type="age" @blur="zfzhl" v-if="hzs1.refundamount!=1"  v-model="hz.refundamount" ></el-input>

                            </el-form-item>
                            <el-form-item label="退款率" >
                                <el-input type="age"   disabled="disabled"  v-model.number="hz.refundrate" ></el-input>

                            </el-form-item>

                            <el-form-item label="实际销售额"  >
                                <el-input type="age" v-if="hzs1.actualsales!=1" @blur="zfzhl"  v-model="hz.actualsales"  ></el-input>
                                <el-input type="age" v-if="hzs1.actualsales==1" disabled="disabled" v-model.number="hz.actualsales"  ></el-input>
                            </el-form-item>

                            <el-form-item label="支付转化率" >
                                <el-input type="age" v-if="hz.platformBh==105"  v-model="hz.paymentrate"  ></el-input>
                                <el-input type="age" v-if="hz.platformBh!=105"  disabled="disabled"  v-model.number="hz.paymentrate"  ></el-input>
                            </el-form-item>

                            <el-form-item label="客单价">
                                <el-input type="age" v-if="hzs1.customerprice!=1"    v-model="hz.customerprice"  ></el-input>
                                <el-input type="age"  v-if="hzs1.customerprice==1"  disabled="disabled" v-model="hz.customerprice"  ></el-input>
                            </el-form-item>

                            <el-form-item label="店铺总流量" prop="name" >
                                <el-input type="age" v-if="hzs1.totaltraffic!=1" @blur="zfzhl"  v-model="hz.totaltraffic"  ></el-input>
                                <el-input type="age"   v-if="hzs1.totaltraffic==1" disabled="disabled" v-model.number="hz.totaltraffic"  ></el-input>

                            </el-form-item>


                            <el-form-item label="多多搜索/直通车/京东快车（流量）" >
                                <el-input type="age" v-if="hzs1.moresearchll!=1" v-model="hz.moresearchll "  ></el-input>
                                <el-input type="age" v-if="hzs1.moresearchll==1" disabled="disabled" v-model.number="hz.moresearchll "  ></el-input>
                            </el-form-item>
                            <el-form-item label="多多场景/超级推荐/京东展位（流量）" >
                                <el-input type="age" v-if="hzs1.manyscenesll!=1"  v-model="hz.manyscenesll "  ></el-input>
                                <el-input type="age" v-if="hzs1.manyscenesll==1" disabled="disabled" v-model.number="hz.manyscenesll "  ></el-input>
                            </el-form-item>
                            <el-form-item label="放心推/钻石展位/京东直投（流量）" prop="name" >
                                <el-input type="age"   v-if="hzs1.restassuredpushll!=1"  v-model="hz.restassuredpushll "  ></el-input>
                                <el-input type="age" v-if="hzs1.restassuredpushll==1" disabled="disabled" v-model.number="hz.restassuredpushll "  ></el-input>

                            </el-form-item>

                            <el-form-item label="淘客推广(流量)" prop="name" >
                                <el-input type="age" v-if="hzs1.taokepromotionll!=1"   v-model="hz.taokepromotionll"  ></el-input>
                                <el-input type="age" v-if="hzs1.taokepromotionll==1" disabled="disabled" v-model.number="hz.taokepromotionll"  ></el-input>
                            </el-form-item>
                            <el-form-item label="AI推广(流量)" prop="name" >
                                <el-input type="age" v-if="hzs1.aipromotionll!=1"   v-model="hz.aipromotionll"  ></el-input>
                                <el-input type="age" v-if="hzs1.aipromotionll==1" disabled="disabled" v-model.number="hz.aipromotionll"  ></el-input>
                            </el-form-item>
                            <el-form-item label="品销宝(流量)" prop="name" >
                                <el-input type="age" v-if="hzs1.pinxiaobaoll!=1"   v-model="hz.pinxiaobaoll"  ></el-input>
                                <el-input type="age" v-if="hzs1.pinxiaobaoll==1" disabled="disabled" v-model.number="hz.pinxiaobaoll"  ></el-input>
                            </el-form-item>
                            <el-form-item label="多多搜索/直通车/京东快车(费用)"  >

                                <el-input type="age" v-if="hzs1.moresearchfy!=1"  v-model="hz.moresearchfy "  ></el-input>
                                <el-input type="age" v-if="hzs1.moresearchfy==1"  disabled="disabled" v-model.number="hz.moresearchfy "  ></el-input>
                            </el-form-item>
                            <el-form-item label="多多场景/超级推荐/京东展位(费用)" >
                                <el-input type="age" v-if="hzs1.manyscenesfy!=1"  v-model="hz.manyscenesfy  "  ></el-input>
                                <el-input type="age" v-if="hzs1.manyscenesfy==1" disabled="disabled" v-model.number="hz.manyscenesfy  "  ></el-input>
                            </el-form-item>

                            <el-form-item label="放心推/钻石展位/京东直投(费用)" prop="name" >
                                <el-input type="age" v-if="hzs1.restassuredpushfy!=1"   v-model="hz.restassuredpushfy "  ></el-input>
                                <el-input type="age" v-if="hzs1.restassuredpushfy==1" disabled="disabled" v-model.number="hz.restassuredpushfy "  ></el-input>
                            </el-form-item>
                            <el-form-item label="淘客推广(费用)" prop="name" >
                                <el-input type="age" v-if="hzs1.taokepromotionfy!=1"   v-model="hz.taokepromotionfy "  ></el-input>
                                <el-input type="age" v-if="hzs1.taokepromotionfy==1" disabled="disabled" v-model.number="hz.taokepromotionfy "  ></el-input>
                            </el-form-item>
                            <el-form-item label="AI推广(费用)" prop="name" >
                                <el-input type="age" v-if="hzs1.aipromotionfy!=1"   v-model.number="hz.aipromotionfy"  ></el-input>
                                <el-input type="age" v-if="hzs1.aipromotionfy==1" disabled="disabled" v-model="hz.aipromotionfy"  ></el-input>
                            </el-form-item>
                            <el-form-item label="品销宝(费用)" prop="name" >
                                <el-input type="age" v-if="hzs1.pinxiaobaofy!=1"   v-model.number="hz.pinxiaobaofy"  ></el-input>
                                <el-input type="age" v-if="hzs1.pinxiaobaofy==1" disabled="disabled" v-model="hz.pinxiaobaofy"  ></el-input>
                            </el-form-item>
                            <el-form-item label="其他费用" prop="name" >
                                <el-input type="age" v-if="hzs1.otherexpenses==1" disabled="disabled" v-model.number="hz.otherexpenses "  ></el-input>
                                <el-input type="age" v-if="hzs1.otherexpenses!=1"  v-model="hz.otherexpenses "  ></el-input>
                            </el-form-item>

                        </el-form>
                <el-button type="success" @click="hzButton" style="margin-left: 50%;margin-top: 50px;width: 100px">汇总</el-button>
            </el-tab-pane>
        </el-tabs>
    </div>
</template>

<script>
    export default {
        name: "daorulist",
        data() {
            return {
                pickerOptions: {
                    disabledDate(time) {
                        return time.getTime() > Date.now();
                    },
                    shortcuts: [{
                        text: '今天',
                        onClick(picker) {
                            picker.$emit('pick', new Date());
                        }
                    }, {
                        text: '昨天',
                        onClick(picker) {
                            const date = new Date();
                            date.setTime(date.getTime() - 3600 * 1000 * 24);
                            picker.$emit('pick', date);
                        }
                    }, {
                        text: '一周前',
                        onClick(picker) {
                            const date = new Date();
                            date.setTime(date.getTime() - 3600 * 1000 * 24 * 7);
                            picker.$emit('pick', date);
                        }
                    }]
                },
                optionss: {
                    target: '/daoru/information2',
                    testChunks: false,
                    query:{
                        //form data里的参数 根据实际需要
                        data1:1
                    },
                    chunkSize: 1024*1024*10000,  //1MB
                    simultaneousUploads: 10000, //并发上传数
                },
                attrs: {
                    accept: 'image/*'
                },
                ac:'',
                activeName: 'second',
                fileList: [],
                options: [],
                state: '',
                state1: '',
                value2: '',
                ms1:{
                ms:'',
                    data1:''
                },
                hzs1:{
                    aipromotionfy: 1,
                    aipromotionll: 1,
                    actualsales:1,
                    manyscenesfy: 1,
                    manyscenesll: 1,
                    moresearchfy: 1,
                    moresearchll: 1,
                    numBuyers: 1,
                    orderquantity: 1,
                    otherexpenses: 1,
                    pinxiaobaofy: 1,
                    pinxiaobaoll: 1,
                    platformBh: 1,
                    customerprice:1,
                    paymentrate:1,
                    refundamount: 1,
                    restassuredpushfy: 1,
                    restassuredpushll: 1,
                    sales:1,
                    taokepromotionfy: 1,
                    taokepromotionll:1,
                    totaltraffic: 1,
                    refundrate:1
                },
                hz:{
                    aipromotionfy: '',
                    aipromotionll: '',
                    actualsales:'',
                    manyscenesfy: '',
                    manyscenesll: '',
                    moresearchfy: '',
                    moresearchll: '',
                    shopBh:'',
                    numBuyers: '',
                    orderquantity: '',
                    otherexpenses: '',
                    pinxiaobaofy: '',
                    pinxiaobaoll: '',
                    platformBh: '',
                    customerprice:'',
                    paymentrate:'',
                    refundamount: '',
                    restassuredpushfy: '',
                    restassuredpushll: '',
                    sales: '',
                    taokepromotionfy: '',
                    taokepromotionll:'',
                    totaltraffic: '',
                    refundrate:'',
                    dateTime1:''
                },

            };
        },
        created() {
            let user =JSON.parse(window.sessionStorage.getItem("tokenStr"));
            this.ac = user.id;
        },
        mounted() {

        },
        methods: {
            beforeUpload(file) {
                let filename = file.name
                let arr = filename.split('.')
                if (this.state==null || this.state==''){
                    this.$message({
                        message: '请输入商铺名',
                        type: 'error'
                    });
                    return false
                }
                return arr
            }
            ,
            uRl(){
                    this.ms1.ms = this.state
                this.ms1.data1 = this.value2;
                return '/daoru/information'
            },
            ss(file, fileList) {
                this.$message({
                    message: '成功',
                    type: 'success'
                });
            },
            //定时开始
            dsrws(){
                this.getRequest('/jp').then(req=>{

                })
            },
            //定时关闭
            dsgb(){
                this.getRequest("/dshz").then(req=>{

                })
            },
            datarq(){
              this.optionss.query.data1 = this.value2;
            },
            zfzhl(){
                let je = this.jes(this.hz.sales);
                let ActualSales1 = this.jes(this.hz.actualsales);
                let Num_Buyers = this.hz.numBuyers;

if (Num_Buyers!=null && this.hz.totaltraffic){
        this.hz.paymentrate = (this.jes(Num_Buyers)/this.jes(this.hz.totaltraffic)).toFixed(4);
}
                if (je !=null && this.hz.refundamount){
                    this.hz.actualsales = this.jes(je)-this.jes(this.hz.refundamount);
                }
                if (je !=null && this.hz.refundamount!=null){  //退款率
                    this.hz.refundrate = (this.jes(this.hz.refundamount)/this.jes(je)).toFixed(4);
                }

                if (je !=null && Num_Buyers!=null){  //客单价
                    this.hz.customerprice = (this.jes(je)/this.jes(Num_Buyers)).toFixed(4);
                }
            },
            handle(){
                if (this.value2==null || this.value2==''){
                    this.$message('请选择时间');
                }else {
                    this.getRequest(`/daoru/hzName/${this.state1}/${this.value2}`).then(req=>{
                        if (req.data==404){
                            this.$message('没有数据');
                        }else {

                            this.hz =req.data[0];
                            const zs = req.data[0];
                            if (this.hz. aipromotionfy==null){
                                this.hzs1. aipromotionfy=0;
                            }else{
                                this.hzs1. aipromotionfy=1;
                            }
                            if (this.hz. aipromotionll==null){
                                this.hzs1. aipromotionll=0;
                            }else{
                                this.hzs1. aipromotionll=1;
                            }
                            if (this.hz.actualsales==null){
                                this.hzs1.actualsales=0;
                            }else{
                                this.hzs1.actualsales=1;
                            }

                            if (this.hz.manyscenesfy==null){
                                this.hzs1.manyscenesfy=0;
                            }else{
                                this.hzs1.manyscenesfy=1;
                            }

                            if (this.hz.manyscenesll==null){
                                this.hzs1.manyscenesll=0;
                            }else{
                                this.hzs1.manyscenesll=1;
                            }

                            if (this.hz.moresearchfy==null){
                                this.hzs1.moresearchfy=0;
                            }else{
                                this.hzs1.moresearchfy=1;
                            }
                            if (this.hz.moresearchll==null){
                                this.hzs1.moresearchll=0;
                            }else{
                                this.hzs1.moresearchll=1;
                            }
                            if (this.hz.numBuyers==null){
                                this.hzs1.numBuyers=0;
                            }else{
                                this.hzs1.numBuyers=1;
                            }
                            if (this.hz.orderquantity==null){
                                this.hzs1.orderquantity=0;
                            }else{
                                this.hzs1.orderquantity=1;
                            }
                            if (this.hz.otherexpenses==null){
                                this.hzs1.otherexpenses=0;
                            }else{
                                this.hzs1.otherexpenses=1;
                            }
                            if (this.hz.pinxiaobaofy==null){
                                this.hzs1.pinxiaobaofy=0;
                            }else{
                                this.hzs1.pinxiaobaofy=1;
                            }
                            if (this.hz.pinxiaobaoll==null){
                                this.hzs1.pinxiaobaoll=0;
                            }else{
                                this.hzs1.pinxiaobaoll=1;
                            }
                            if (this.hz.platformBh==null){
                                this.hzs1.platformBh=0;
                            }else{
                                this.hzs1.platformBh=1;
                            }
                            if (this.hz.customerprice==null){
                                this.hzs1.customerprice=0;
                            }else{
                                this.hzs1.customerprice=1;
                            }
                            if (this.hz.paymentrate==null){
                                this.hzs1.paymentrate=0;
                            }else{
                                this.hzs1.paymentrate=1;
                            }
                            if (this.hz.refundamount==null){
                                this.hzs1.refundamount=0;
                            }else{
                                this.hzs1.refundamount=1;
                            }
                            if (this.hz.restassuredpushfy==null){
                                this.hzs1.restassuredpushfy=0;
                            }else{
                                this.hzs1.restassuredpushfy=1;
                            }
                            if (this.hz.restassuredpushll==null){
                                this.hzs1.restassuredpushll=0;
                            }else{
                                this.hzs1.restassuredpushll=1;
                            }

                            if (this.hz.sales==null){
                                this.hzs1.sales=0;
                            }else{
                                this.hzs1.sales=1;
                            }
                            if (this.hz.taokepromotionfy==null){
                                this.hzs1.taokepromotionfy=0;
                            }else{
                                this.hzs1.taokepromotionfy=1;
                            }
                            if (this.hz.taokepromotionll==null){
                                this.hzs1.taokepromotionll=0;
                            }else{
                                this.hzs1.taokepromotionll=1;
                            }
                            if (this.hz.totaltraffic==null){
                                this.hzs1.totaltraffic=0;
                            }else{
                                this.hzs1.totaltraffic=1;
                            }
                            if (this.hz.refundrate==null){
                                this.hzs1.refundrate=0;
                            }else{
                                this.hzs1.refundrate=1;
                            }

                        }

                    })
                }

            },
            query(queryString, cb) {
                this.fileList = []
                if (queryString == '') {
                    this.getRequest('/lsShop/showlist?name=' + queryString).then(req => {
                        clearTimeout(this.timeout);
                        this.timeout = setTimeout(() => {
                            cb(req.data);
                        }, 3000 * Math.random());
                    })
                }else {
                    this.getRequest('/lsShop/showlist?name=' + queryString).then(req => {
                        cb(req.data)
                    })
                }
            },

            jes(je1){
                let d = je1+''
                let dd = d.indexOf(",");
                if (dd==-1){
                    return je1
                }else {
                    let js1 = je1+'';
                    let js = js1.split(',');
                    let as = '';
                    for (let i =0;i<js.length;i++){
                        as = as+js[i];
                    }
                    return as;
                }


            },
            hzButton(){

                if (this.hz.platformBh==104){
                    this.hz.numBuyers = 0;
                    this.hz.refundamount = 0;
                    this.hz.refundrate = 0;
                    this.hz.actualsales = 0;
                    this.hz.paymentrate = 0;
                    this.hz.customerprice =0;
                    this.hz.totaltraffic = 0.1;
                }



                this.$confirm('是否要汇总?', '提示', {
                    confirmButtonText: '确定',
                    cancelButtonText: '取消',
                    type: 'warning'
                }).then(() => {
                    this.hz.dateTime1 = this.value2
                    this.hz.sales = this.jes(this.hz.sales)//全店销售额
                    this.hz.orderquantity =this.jes(this.hz.orderquantity);//订单量
                     this.hz.numBuyers=this.jes(this.hz.numBuyers)//支付买家数
                    this.hz.refundamount=this.jes(this.hz.refundamount)//退款金额
                     this.hz.actualsales=this.jes(this.hz.actualsales)//实际销售额
                    this.hz.totaltraffic = this.jes(this.hz.totaltraffic)//店铺总流量

                    this.postRequest('/lsSale/addHz',this.hz).then(req=>{
                        if (req.data==505){
                            this.$confirm('已经存在相同的日期, 是否继续?', '提示', {
                                confirmButtonText: '确定',
                                cancelButtonText: '取消',
                                type: 'warning'
                            }).then(() => {
                                this.deleteRequest(`/lsSale/delet/${this.value2}/${this.hz.shopBh}`).then(req=>{
                                    this.postRequest('/lsSale/addHz',this.hz).then(req=>{
                                        this.$message({
                                            type: 'success',
                                            message: '成功!'
                                        });
                                    })
                                })
                            }).catch(() => {
                                this.$message({
                                    type: 'info',
                                    message: '已取消'
                                });
                            });
                        }else {
                            this.$message({
                                type: 'success',
                                message: '成功!'
                            });
                        }

                    })
                }).catch(() => {
                    this.$message({
                        type: 'info',
                        message: '已取消'
                    });
                });


            },

            beforeRemove(file, fileList) {
                return this.$confirm(`确定移除 ${file.name}？`);
            },
            dsrw(){
                this.getRequest('/ks').then(req=>{
                    console.log(req)
                })
            }
        }
    }
</script>

<style scoped>

</style>
