<template>
    <div>

        <el-tabs type="border-card">
            <el-tab-pane label="多多买菜仓库">
                <el-button  type="success" @click="addck" round><i class="el-icon-plus"></i>添加仓库</el-button>
                <el-button  type="success" @click="centerDialogVisibles = true" round><i class="el-icon-plus"></i>添加省</el-button>
                <el-table
                        :data="tableData"
                        style="width: 100%;margin-bottom: 20px;"
                        row-key="id"
                        height="570"
                        border
                        :tree-props="{children: 'ckWarehouses', hasChildren: 'hasChildren'}">
                    <el-table-column
                            prop="named"
                            label="姓名"
                            width="180">
                    </el-table-column>
                    <el-table-column label="操作">
                        <template slot-scope="scope">
                            <el-button type="primary" icon="el-icon-edit" v-if="scope.row.fid!=0"  @click="udtate(scope.$index, scope.row)"  circle></el-button>
                            <el-button type="danger"  icon="el-icon-delete" v-if="scope.row.fid!=0" @click="delet(scope.$index, scope.row)" circle></el-button>
                        </template>
                    </el-table-column>
                </el-table>
            </el-tab-pane>


            <el-tab-pane label="美团优选">
                <el-button  type="success" @click="addck1" round><i class="el-icon-plus"></i>添加仓库</el-button>
                <el-button  type="success" @click="centerDialogVisiblesmt = true" round><i class="el-icon-plus"></i>添加省</el-button>
                <el-table
                        :data="tableData1"
                        style="width: 100%;margin-bottom: 20px;"
                        row-key="id"
                        height="570"
                        border
                        :tree-props="{children: 'ckWarehouses', hasChildren: 'hasChildren'}">
                    <el-table-column
                            prop="named"
                            label="姓名"
                            width="180">
                    </el-table-column>
                    <el-table-column label="操作">
                        <template slot-scope="scope">
                            <el-button type="primary" icon="el-icon-edit" v-if="scope.row.fid!=0"  @click="udtate1(scope.$index, scope.row)"  circle></el-button>
                            <el-button type="danger"  icon="el-icon-delete" v-if="scope.row.fid!=0" @click="delet1(scope.$index, scope.row)" circle></el-button>
                        </template>
                    </el-table-column>
                </el-table>

            </el-tab-pane>

        </el-tabs>




        <el-dialog
                title="添加美团省"
                width="50%"
                :visible.sync="centerDialogVisiblesmt"
                center>
            省：<el-input type="age"  style="width: 300px"  v-model="ddmcCk.sheng"  ></el-input>
            <p></p>
            <el-button @click="centerDialogVisiblesmt = false">取 消</el-button>
            <el-button type="primary" @click="addddmcsheng1" >添加</el-button>
        </el-dialog>


        <el-dialog
                title="添加美团仓库"
                width="50%"
                :visible.sync="centerDialogVisiblesmts"
                center>
            省： <el-select  v-model="ddmcCk.sheng" placeholder="请选择">
            <el-option
                    v-for="item in options1"
                    :key="item.value"
                    :label="item.label"
                    :value="item.value">
            </el-option>
        </el-select>
            仓库名： <el-input type="age"  style="width: 300px"  v-model="ddmcCk.ck"  ></el-input>
            <p></p>
            <el-button @click="centerDialogVisiblesmts = false">取 消</el-button>
            <el-button type="primary" @click="addddmcCk1" >添加</el-button>
        </el-dialog>


        <el-dialog
                title="添加多多买菜省"
                width="50%"
                :visible.sync="centerDialogVisibles"
                center>
            省：<el-input type="age"  style="width: 300px"  v-model="ddmcCk.sheng"  ></el-input>
            <p></p>
            <el-button @click="centerDialogVisibles = false">取 消</el-button>
            <el-button type="primary" @click="addddmcsheng" >添加</el-button>
        </el-dialog>


        <el-dialog
                :title="ddckname"
                width="50%"
                :visible.sync="centerDialogVisible"
                center>
            省： <el-select  v-model="ddmcCk.sheng" placeholder="请选择">
            <el-option
                    v-for="item in options"
                    :key="item.value"
                    :label="item.label"
                    :value="item.value">
            </el-option>
        </el-select>
           仓库名： <el-input type="age"  style="width: 300px"  v-model="ddmcCk.ck"  ></el-input>
            <p></p>
            <el-button @click="centerDialogVisible = false">取 消</el-button>
            <el-button type="primary" @click="addddmcCk" >{{types}}</el-button>
        </el-dialog>





    </div>

</template>
<script>
export default {
    name:"entrepot",
    data(){
        return {
            tableData:[],  //多多买菜
            tableData1:[], //美团
            centerDialogVisible:false, //添加页面
            centerDialogVisibles:false, //省
            centerDialogVisiblesmt:false,
            centerDialogVisiblesmts:false,
            ddmcCk:{
                sheng:'',
                ck:'',
            },
            options:[], //省
            options1:[], //省
            ddckname:'', //多多买菜的名称
            types:'',  //类型
        }
    },
    created() {
        this.getduoduo();
        this.getmt();
    },
    methods:{
        //多多买菜
        getduoduo(){
            this.getRequest('/ckWarehouse/gets/').then(req=>{
                this.tableData = req.data;
            })
        },
        //修改
        udtate(index, row){
            this.centerDialogVisible = true;
            this.ddckname = '修改多多买菜仓库'
            this.ddmcCk.ck = row.named;
            this.getsheng();
            this.types= '修改'
        },
        //得到全部省
        getsheng(){
          this.getRequest('/ckWarehouse/getsheng').then(req=>{
              this.options = req.data
          })
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
                        this.getduoduo();
                    }
                })
            }).catch(() => {
                this.$message({
                    type: 'info',
                    message: '已取消删除'
                });
            });

        },
        //添加按仓库
        addck(){
            this.ddmcCk={
                sheng:'',
                    ck:'',
            }
            this.centerDialogVisible = true;
            this.ddckname = '添加多多买菜仓库'
            this.getsheng();
            this.types= '添加'
        },
        //添加省
        addddmcsheng(){
          this.postRequest('/ckWarehouse/addDdmcSheng',this.ddmcCk).then(req=>{
              if (req.data){
                  this.$message({
                      type: 'success',
                      message: '添加省成功!'
                  });
                  this.ddmcCk={
                      sheng:'',
                      ck:'',
                  },
                      this.centerDialogVisibles = false;
                  this.getduoduo();
              }else {
                  this.$message({
                      type: 'info',
                      message: '已存在'
                  });
              }
          })
        },
        //添加多多仓库
        addddmcCk(){
            if(this.types=='添加'){
                this.postRequest('/ckWarehouse/addDdmcCK',this.ddmcCk).then(req=>{
                    if (req.data){
                        this.$message({
                            type: 'success',
                            message: '添加仓库成功!'
                        });
                        this.ddmcCk={
                            sheng:'',
                            ck:'',
                        },
                            this.centerDialogVisible = false;
                        this.getduoduo();
                    }else {
                        this.$message({
                            type: 'info',
                            message: '已存在'
                        });
                    }
                })
            }else {
                console.log('11')
            }

        },
        /////////////////////////////////////////////////////
        //美团
        getmt(){
            this.getRequest('/ckWarehouse/getsmt/').then(req=>{
                this.tableData1 = req.data;
            })
        },
        //得到全部省
        getsheng1(){
            this.getRequest('/ckWarehouse/getshengmt').then(req=>{
                this.options1 = req.data
            })
        },
        //删除
        delet1(index, row){
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
                        this.getmt();
                    }
                })
            }).catch(() => {
                this.$message({
                    type: 'info',
                    message: '已取消删除'
                });
            });

        },
        //添加仓库
        addck1(){
            this.centerDialogVisiblesmts = true;
            this.getsheng1();

        },
        //添加省
        addddmcsheng1(){
            this.postRequest('/ckWarehouse/addmtSheng',this.ddmcCk).then(req=>{
                if (req.data){
                    this.$message({
                        type: 'success',
                        message: '添加省成功!'
                    });
                    this.ddmcCk={
                        sheng:'',
                        ck:'',
                    },
                        this.centerDialogVisiblesmt = false;
                    this.getmt();
                }else {
                    this.$message({
                        type: 'info',
                        message: '已存在'
                    });
                }
            })
        },
        //添加美团仓库
        addddmcCk1(){
            this.postRequest('/ckWarehouse/addmtCK',this.ddmcCk).then(req=>{
                if (req.data){
                    this.$message({
                        type: 'success',
                        message: '添加仓库成功!'
                    });
                    this.ddmcCk={
                        sheng:'',
                        ck:'',
                    },
                        this.centerDialogVisiblesmts = false;
                    this.getmt();
                }else {
                    this.$message({
                        type: 'info',
                        message: '已存在'
                    });
                }
            })
        },
    }
}

</script>