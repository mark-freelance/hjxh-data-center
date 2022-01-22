<template>
    <div>
        <el-col :span="3">
        <el-input
                placeholder="请输入店铺名"
                v-model="shops.shopName"
                @keyup.enter.native="querShop"
                clearable>
        </el-input>
        &nbsp;
        </el-col>
        &nbsp;
        <el-button type="primary" icon="el-icon-search" @click="querShop">搜索</el-button>
                <el-button  type="success" @click="centerDialogVisible = true" round>添加</el-button>
        状态： <el-select v-model="shops.state" @change="getstate"  placeholder="请选择">
        <el-option
                v-for="item in options3"
                :key="item.value"
                :label="item.label"
                :value="item.value">
        </el-option>
    </el-select>

                <el-table
                        title=""
                        :data="tableData"
                        height="550"
                        style="width:70%">

                    <el-table-column
                            prop="shopName"
                            label="店铺名"
                            >
                    </el-table-column>
                    <el-table-column
                            label="状态"
                    >
                        <template slot-scope="scope">
                            <el-button type="success"   @click="closes(scope.$index, scope.row)"  v-if="scope.row.state==1" >启动</el-button>
                            <el-button type="danger"  @click="launch(scope.$index, scope.row)"  v-if="scope.row.state==0" >关闭</el-button>
                        </template>
                    </el-table-column>
                    <el-table-column label="操作">
                        <template slot-scope="scope">
                            <el-button type="primary" icon="el-icon-edit"  @click="handleEdit(scope.$index, scope.row)" circle></el-button>
                            <el-button type="danger" icon="el-icon-delete"  @click="sstghandleEdit(scope.$index, scope.row)" circle></el-button>
                        </template>
                    </el-table-column>
                    <el-table-column
                            prop="xgdateTime"
                            label="修改日期"
                    >
                    </el-table-column>
                </el-table>
                <!-- 分页组件 -->
                <el-pagination
                        :current-page="page"
                        :total="total"
                        :page-size="limit"
                        :page-sizes="[5, 10, 20, 30, 40, 50, 100]"
                        style="padding: 30px 0; text-align: center;"
                        layout="sizes, prev, pager, next, jumper, ->, total, slot"
                        @current-change="fetchData"
                        @size-change="changeSize"
                />

        <el-dialog
                title="修改"
                :visible.sync="centerDialogVisibles"
                center>
           店铺名： <el-input type="age"  style="width: 300px"  v-model="lsShop1.shopName"  ></el-input>
            <p></p>
            <el-button @click="qxShop">取 消</el-button>
            <el-button type="primary" @click="updata" >修改</el-button>
        </el-dialog>

        <el-dialog
                title="添加"
                width="65%"
                :visible.sync="centerDialogVisible"
                center>
           平台： <el-select v-model="lsShop2.platformBh"  placeholder="请选择">
                <el-option
                        v-for="item in options"
                        :key="item.value"
                        :label="item.label"
                        :value="item.value">
                </el-option>
            </el-select>

            责任人平台<el-select v-model="lsShop2.shoplx3"  placeholder="请选择">
                <el-option
                        v-for="item in options1"
                        :key="item.value"
                        :label="item.label"
                        :value="item.value">
                </el-option>
            </el-select>
            平台<el-select v-model="lsShop2.shoplx2"  placeholder="请选择">
            <el-option
                    v-for="item in options2"
                    :key="item.value"
                    :label="item.label"
                    :value="item.value">
            </el-option>
        </el-select>
            店铺名： <el-input type="age"  style="width: 300px"  v-model="lsShop2.shopName"  ></el-input>
            <p></p>
            <el-button @click="centerDialogVisible = false">取 消</el-button>
            <el-button type="primary" @click="addshop" >添加</el-button>
        </el-dialog>
    </div>
</template>

<script>
    export default {
        name: "store",
        data() {
            return {
                listLoading: true, // 数据是否正在加载
                list: null, // 医院列表数据集合
                total: 0, // 数据库中的总记录数
                page: 1, // 默认页码
                limit: 20, // 每页记录数
                tableData: [],
                stats1:'',
                value1:'',
                s:'',
                lsShop1:{},
                centerDialogVisibles:false,
                centerDialogVisible:false,
                shops:{
                    shopName:'',
                    state:''
                },
                options: [
                    {
                        value: '101',
                        label: '拼多多'
                    }, {
                        value: '102',
                        label: '淘系'
                    }, {
                        value: '103',
                        label: '京东'
                    }, {
                        value: '104',
                        label: '社区团购'
                    }, {
                        value: '105',
                        label: '新媒体'
                    }],
                options1: [
                    {
                        value: '1',
                        label: '拼多多食品'
                    }, {
                        value: '2',
                        label: '淘系'
                    }, {
                        value: '3',
                        label: '多多买菜'
                    }, {
                        value: '4',
                        label: '拼多多生鲜'
                    }
                    , {
                        value: '5',
                        label: '推广'
                    }, {
                        value: '6',
                        label: '产品运营'
                    }],
                options2: [
                    {
                        value: '1',
                        label: '拼多多食品'
                    }, {
                        value: '2',
                        label: '拼多多生鲜'
                    }, {
                        value: '3',
                        label: '淘系'
                    }, {
                        value: '4',
                        label: '京东'
                    }
                    , {
                        value: '5',
                        label: '社区团购'
                    }, {
                        value: '6',
                        label: '新媒体'
                    }],
                    lsShop2:{

                    },
                options3:[
                    {
                        value: '1',
                        label: '启动'
                    },
                    {
                        value: '0',
                        label: '禁用'
                    }
                ]
            };
        },
        created() {
            this.fetchData();
        },
        methods: {
            //修改数据
            updata(){
                this.$confirm('此操作将修改该信息, 是否继续?', '提示', {
                    confirmButtonText: '确定',
                    cancelButtonText: '取消',
                    type: 'warning'
                }).then(() => {
                    this.postRequest('/lsShop/xglsShop',this.lsShop1).then(req=>{
                        if (req){
                            this.fetchData(1);
                            this.$message({
                                type: 'success',
                                message: '修改成功!'
                            });
                            this.centerDialogVisibles = false;
                        }
                    })
                }).catch(() => {
                    this.$message({
                        type: 'info',
                        message: '已取消删除'
                    });
                });
            },
            fetchData(page=1) {  //搜索推广
                this.page = page
                this.postRequest(`/lsShop/list/${this.page}/${this.limit}`,this.shops).then(req=>{
                    this.tableData=req.data.records;
                    this.total = req.data.total;
                })
            },
            qxShop(){
                this.centerDialogVisibles = false;
                this.fetchData();
            },
            querShop(){
                this.fetchData();
            },
            handleEdit(index, row){
            this.centerDialogVisibles = true;
            this.lsShop1 = row;
            },
            //启动店铺
            launch(index, row){
                this.$confirm('此操作将启动店铺, 是否继续?', '提示', {
                    confirmButtonText: '启动',
                    cancelButtonText: '取消',
                    type: 'warning'
                }).then(() => {
                    this.lsShop1 = row;
                    this.lsShop1.state = 1;
                    this.postRequest('/lsShop/xglsShop',this.lsShop1).then(req=>{
                        if (req){
                            this.fetchData(1);
                            this.$message({
                                type: 'success',
                                message: '启动成功!'
                            });
                            this.centerDialogVisibles = false;
                        }
                    })
                }).catch(() => {
                    this.$message({
                        type: 'info',
                        message: '已取消删除'
                    });
                });
            },
            //关闭店铺
            closes(index, row){
                this.$confirm('此操作将关闭店铺, 是否继续?', '提示', {
                    confirmButtonText: '关闭',
                    cancelButtonText: '取消',
                    type: 'warning'
                }).then(() => {
                    this.lsShop1 = row;
                    this.lsShop1.state = 0;
                    this.postRequest('/lsShop/xglsShop',this.lsShop1).then(req=>{
                        if (req){
                            this.fetchData(1);
                            this.$message({
                                type: 'success',
                                message: '关闭成功!'
                            });
                            this.centerDialogVisibles = false;
                        }
                    })
                }).catch(() => {
                    this.$message({
                        type: 'info',
                        message: '已取消删除'
                    });
                });
            }
        ,addshop(){
                this.postRequest('/lsShop/addLsShop',this.lsShop2).then(req=>{
                    if (req){
                        this.centerDialogVisible = false;
                        this.fetchData(1);
                        this.$message({
                            type: 'success',
                            message: '添加成功!'
                        });
                    }

                })
            },
            getstate(){
                this.fetchData();
            },
            //分页，页码变化
            changeSize(size) {
                this.limit = size
                this.fetchData(1)
            },
            sstghandleEdit(index, row){
                this.$confirm('此操作将永久删除该信息, 是否继续?', '提示', {
                    confirmButtonText: '确定',
                    cancelButtonText: '取消',
                    type: 'warning'
                }).then(() => {
                    this.deleteRequest(`/lsShop/deleteId/${row.id}`).then(req=>{
                        if (req){
                            this.fetchData(1);
                            this.$message({
                                type: 'success',
                                message: '删除成功!'
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


        },
        mounted() {
        }
    }
</script>

<style scoped>

</style>
