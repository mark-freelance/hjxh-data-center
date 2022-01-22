<template>
    <div>

        <el-button class="but" @click=" centerDialogVisiblesadd = true" type="success"><i class="el-icon-plus"></i>添加成本</el-button>
        <el-button class="but" @click=" centerDialogVisiblesaddlb = true" type="success"><i class="el-icon-plus"></i>添加类别</el-button>
        <el-col :span="3">
            <el-input
                    placeholder="请输入商品名称"
                    v-model="shopName"
                    type="text"
                    @keyup.enter.native="querShop"
                    clearable>
            </el-input>
            &nbsp;
        </el-col>
        <el-col :span="3">
            <el-input
                    placeholder="请输入商家编号"
                    v-model="shopNames"
                    type="text"
                    @keyup.enter.native="querShop"
                    clearable>
            </el-input>
            &nbsp;
        </el-col>
        &nbsp;
        <el-button type="primary" icon="el-icon-search" @click="querShop">搜索</el-button>
                <el-table
                        :data="tableData"
                        style="width: 100%;margin-bottom: 20px;"
                        row-key="id"
                        height="570"
                        border
                        :tree-props="{children: 'costTypes', hasChildren: 'hasChildren'}">

                    <el-table-column label="名称">
                        <template slot-scope="scope">
                                <span v-if="scope.row.bh==null" style="font-size: 15px">{{scope.row.name}} <el-badge class="mark" style="width: 3px" :value="scope.row.gs" /></span>
                                <span v-if="scope.row.bh!=null" style="font-size: 15px">{{scope.row.name}} </span>
                        </template>
                    </el-table-column>
                    <el-table-column
                            prop="bh"
                            label="商家编号"
                            width="180">
                    </el-table-column>
                    <el-table-column
                            prop="cb"
                            label="成本"
                            width="180">
                    </el-table-column>
                    <el-table-column
                            prop="dateTime"
                            label="修改时间"
                            width="380">
                    </el-table-column>
                    <el-table-column label="操作">
                        <template slot-scope="scope">
                            <el-button type="primary"  icon="el-icon-edit"   @click="udtate1(scope.$index, scope.row)"  circle></el-button>
                            <el-button type="danger" v-if="scope.row.bh!=null"  icon="el-icon-delete"  @click="delet(scope.$index, scope.row)" circle></el-button>
                        </template>
                    </el-table-column>
                </el-table>

        <el-dialog
                title="修改"
                width="60%"
                :visible.sync="centerDialogVisibles"
                center>
                <span v-if="xgcb.goodsCost!=null">
            类型：
            <el-autocomplete
                    style="margin-left: 23px"
                    class="search-input"
                    v-model="xgcb.goodlx"
                    :fetch-suggestions="query"
                    placeholder="输入类型名称"
            >
            </el-autocomplete>
                     </span>
            <span style="margin-left: 140px">
            名称：<el-input type="age"  style="width: 300px"  v-model="xgcb.goodsName"  ></el-input>
                </span>
            <p></p>
                    <span v-if="xgcb.goodsCost!=null">
            商家编号：<el-input type="age"    style="width: 300px"  v-model="xgcb.goodsBh"  ></el-input>
                 </span>
                   <span v-if="xgcb.goodsCost!=null" style="margin-left: 40px">
            成本：<el-input type="age"    style="width: 300px"  v-model="xgcb.goodsCost"  ></el-input>
                   </span>
            <p></p>
            <el-button @click="centerDialogVisibles = false">取 消</el-button>
            <el-button type="primary" @click="udtate" >修改</el-button>
        </el-dialog>


        <el-dialog
                title="添加成本"
                width="80%"
                :visible.sync="centerDialogVisiblesadd"
                center>
            类型：
            <el-autocomplete
                    class="search-input"
                    v-model="xgcb.id"
                    style="margin-left: 23px"
                    :fetch-suggestions="query"
                    placeholder="输入类型名称"
            >
            </el-autocomplete>
            <span style="margin-left: 140px">
            名称：<el-input type="age"  style="width: 300px"  v-model="xgcb.goodsName"  ></el-input>
                </span>
            <p></p>
            <span>
            商家编号：<el-input   type="age"  style="width: 300px"  v-model="xgcb.goodsBh"  ></el-input>
            </span>
            <span v-if="xgcb.goodsCost!=null" style="margin-left: 40px">
            成本：<el-input  type="age"  style="width: 300px"  v-model="xgcb.goodsCost"  ></el-input>
            </span>
            <p></p>
            <el-button @click="centerDialogVisiblesadd = false">取 消</el-button>
            <el-button type="primary" @click="addcons" >添加</el-button>
        </el-dialog>


        <el-dialog
                title="添加类别"
                width="30%"
                :visible.sync="centerDialogVisiblesaddlb"
                center>

            <span>
            名称：<el-input type="age"  style="width: 300px"  v-model="xgcb.goodlx"  ></el-input>
                </span>
            类型：
            <el-select v-model="xgcb.id"   style="width: 130px" class="but" placeholder="请选择类型">
                <el-option
                        v-for="item in options"
                        :key="item.value"
                        :label="item.label"
                        :value="item.value">
                </el-option>
            </el-select>
            <p></p>
            <el-button @click="centerDialogVisiblesaddlb = false">取 消</el-button>
            <el-button type="primary" @click="addcons1" >添加</el-button>
        </el-dialog>

    </div>

</template>
<script>
    export default {
            name:"costing",
        data(){
            return {
                tableData:[],  //成本列表
                centerDialogVisibles:false, //修改页面
                centerDialogVisiblesadd:false, //添加页面
                centerDialogVisiblesaddlb:false,
                xgcb:{
                    id:'',
                    goodsBh:'',
                    goodsName:'',
                    goodsCost:'',
                    accoun:'',
                    goodlx:''
                },
                options:[],
                shopName:'', //名称
                shopNames:'', //商家编号
            }
        },
        created() {
            this.getcost();
            this.getdyj();
        },
        methods:{
            getdyj(){
                this.getRequest('/lsProductlx/getdyg').then(req=>{
                    this.options = req.data;
                })
            },
            //成本
            getcost(){

                this.getRequest('/cost/getcostlist?shopName='+this.shopName+'&shopNames='+this.shopNames).then(req=>{
                    this.tableData = req.data;
                })
            },
            //搜索
            querShop(){
        this.getcost();
            },
            //修改页面
            udtate1(index, row){

              this.centerDialogVisibles = true;
             this.xgcb.id = row.ids;
              this.xgcb.goodsBh = row.bh;
              this.xgcb.goodsName = row.name;
              this.xgcb.goodsCost = row.cb;
              this.xgcb.goodlx = '';
                let user =JSON.parse(window.sessionStorage.getItem("tokenStr"))
                this.xgcb.accoun = user.account;
            },
            //修改
            udtate(){
                this.$confirm('确定要修改此信息, 是否继续?', '提示', {
                    confirmButtonText: '确定',
                    cancelButtonText: '取消',
                    type: 'warning'
                }).then(() => {
                        this.putRequest('/spGoodscost/updateSpGoodscost',this.xgcb).then(req=>{
                                    if (req.data){
                                        this.$message({
                                            type: 'success',
                                            message: '修改成功!'
                                        });
                                        this.centerDialogVisibles = false;
                                        this.getcost();
                                    }
                        })
                }).catch(() => {
                    this.$message({
                        type: 'info',
                        message: '已取消修改'
                    });
                });
            },
            //删除
            delet(index, row){
                this.$confirm('此操作将删除仓库, 是否继续?', '提示', {
                    confirmButtonText: '确定',
                    cancelButtonText: '取消',
                    type: 'warning'
                }).then(() => {
                    this.deleteRequest(`/ckWarehouse/deleteck/${row.id}`).then(req=>{
                        if (req.data){
                            this.$message({
                                type: 'success',
                                message: '删除仓库成功!'
                            });
                        }
                    })
                }).catch(() => {
                    this.$message({
                        type: 'info',
                        message: '已取消删除'
                    });
                });
            },
            //添加成本
            addcons(){
                let user =JSON.parse(window.sessionStorage.getItem("tokenStr"))
                this.xgcb.accoun = user.account;
                this.postRequest('/spGoodscost/addCost',this.xgcb).then(req=>{
                    if (req.data){
                        this.$message({
                            type: 'success',
                            message: '添加成本成功!'
                        });
                        this.centerDialogVisiblesadd = false;
                        this.getcost();
                        this.xgcb = {
                            id:'',
                            goodsBh:'',
                            goodsName:'',
                            goodsCost:'',
                            accoun:'',
                            goodlx:''
                        }
                    }
                })
            },
            //添加类别
            addcons1(){
                this.postRequest('/spGoodscost/addCost1',this.xgcb).then(req=>{
                    if (req.data){
                        this.$message({
                            type: 'success',
                            message: '添加成本成功!'
                        });
                        this.centerDialogVisiblesaddlb = false;
                        this.getcost();
                        this.xgcb = {
                            id:'',
                            goodsBh:'',
                            goodsName:'',
                            goodsCost:'',
                            accoun:'',
                            goodlx:''
                        }
                    }
                })
            },
            query(queryString, cb) {
                this.fileList = []
                if (queryString == '') {
                    this.getRequest('/spGoodslx/showlist?name=' + queryString).then(req => {
                        clearTimeout(this.timeout);
                        this.timeout = setTimeout(() => {
                            cb(req.data);
                        }, 3000 * Math.random());
                    })
                }else {
                    this.getRequest('/spGoodslx/showlist?name=' + queryString).then(req => {
                        cb(req.data)
                    })
                }
            },

        }
    }

</script>
