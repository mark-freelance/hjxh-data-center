<template>
    <div>
        <el-button  type="success" @click="adds" round>添加</el-button>
        <el-button  type="success" @click="adds1" round>1添加</el-button>
        <el-button  type="success" @click="adds" round>复制添加上个月的并且新建这个月的</el-button>
        <el-table
                :data="tableData"
                style="width: 100%;margin-bottom: 20px;"
                row-key="id"
                border
                :tree-props="{children: 'lsEmployees', hasChildren: 'hasChildren'}">
            <el-table-column
                    prop="person"
                    label="姓名"
                    sortable
                    width="180">
            </el-table-column>
            <el-table-column
                    prop="name"
                    label="类型"
                    sortable
                    width="380">
            </el-table-column>
            <el-table-column
                    prop="xsdate"
                    label="日期"
                    sortable
                    width="380">
            </el-table-column>
            <el-table-column label="操作">
                <template slot-scope="scope">
                    <el-button type="primary" icon="el-icon-edit"  @click="udtate(scope.$index, scope.row)"  circle></el-button>
                    <el-button type="danger"  icon="el-icon-delete" @click="delet(scope.$index, scope.row)" circle></el-button>
                </template>
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
                :title="title"
                :visible.sync="centerDialogVisibles"
                width="80%"
                center>
            责任人组长： <el-select @change="su" v-model="zrl.zz" placeholder="请选择">
            <el-option
                    v-for="item in options"
                    :key="item.value"
                    :label="item.label"
                    :value="item.value">
            </el-option>
        </el-select>
            组员姓名： <el-input type="age"  style="width: 300px"  v-model="zrl.zyname"  ></el-input>
            店铺：
            <el-cascader
                    :options="options1"
                    :props="props"
                    v-model="shop"
                    collapse-tags
                    clearable></el-cascader>


            <p></p>
            <el-button @click="centerDialogVisibles = false">取 消</el-button>
            <el-button type="primary" @click="updata" >修改</el-button>
        </el-dialog>

        <el-dialog
                title="添加组员"
                width="80%"
                :visible.sync="centerDialogVisible"
                center>
            责任人组长： <el-select @change="su" v-model="zrl.zz" placeholder="请选择">
            <el-option
                    v-for="item in options"
                    :key="item.value"
                    :label="item.label"
                    :value="item.value">
            </el-option>
        </el-select>
            组员姓名： <el-input type="age"  style="width: 300px"  v-model="zrl.zyname"  ></el-input>
            店铺：
            <el-cascader
                    :options="options1"
                    :props="props"
                    v-model="shop"
                    collapse-tags
                    clearable></el-cascader>

            日期： <el-date-picker
                v-model="zrl.date"
                type="month"
                value-format="yyyy-MM"
                placeholder="选择月">
        </el-date-picker>

            <p></p>
            <el-button @click="centerDialogVisible = false">取 消</el-button>
            <el-button type="primary" @click="addLsChon" >添加</el-button>
        </el-dialog>

    </div>
</template>

<script>
    export default {
        name: "zrr",
        data() {
            return {
                listLoading: true, // 数据是否正在加载
                list: null, // 医院列表数据集合
                total: 0, // 数据库中的总记录数
                page: 1, // 默认页码
                limit: 20, // 每页记录数
                tableData: [],
                s12:'',
                value1:'',
                title:'',
                props: { multiple: true,value: 'value' },
                s:'',
                selectedIds:[],
                lsShop1:{},
                centerDialogVisibles:false,
                centerDialogVisible:false,
                shops:{
                    shopName:'',
                },
                options: [
                ],
                options1:[],
                lsShop2:{
                },
                shop:[],
                zrl:{
                    zz:'',
                    zyname:'',
                    shop:[],
                    date:'',
                },
                fz:0,
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
                this.getRequest('/lsEmployee/listlsEmployees').then(req=>{
                    this.tableData=req.data;
                    this.total = req.data.total;
                })
            },
            adds1(){
                let s = "{\"goods_detail\": [{\"goods_id\": 229737407472, \"goods_name\": \"火山石烤肠纯肉地道肠纯肉肠脆皮黑胡椒台湾风味香肠热狗烤肠批发\", \"goods_ordr_rate\": \"9.14%\", \"goods_pv\": \"1571\", \"goods_uv\": \"1368\", \"pay_ordr_amt\": \"3344.78\", \"pay_ordr_cnt\": \"128\", \"pay_qty\": \"132\", \"pay_usr_cnt\": \"125\"}, {\"goods_id\": 224500524461, \"goods_name\": \"炸鸡薯条半成品冷冻细薯油炸小吃零食家用商用速冻美式薯条脆炸薯\", \"goods_ordr_rate\": \"5.50%\", \"goods_pv\": \"265\", \"goods_uv\": \"218\", \"pay_ordr_amt\": \"215.95\", \"pay_ordr_cnt\": \"13\", \"pay_qty\": \"13\", \"pay_usr_cnt\": \"12\"}, {\"goods_id\": 234388974955, \"goods_name\": \"火山石烤肠纯肉肠地道肠大香肠肉食类热狗烧烤食材早餐半成品批发\", \"goods_ordr_rate\": \"4.44%\", \"goods_pv\": \"61\", \"goods_uv\": \"45\", \"pay_ordr_amt\": \"42.39\", \"pay_ordr_cnt\": \"2\", \"pay_qty\": \"2\", \"pay_usr_cnt\": \"2\"}, {\"goods_id\": 232453994285, \"goods_name\": \"迷你小蛋挞半成品蛋挞锡纸托挞皮蛋挞液套餐小号蛋挞家用商用批发\", \"goods_ordr_rate\": \"7.32%\", \"goods_pv\": \"43\", \"goods_uv\": \"41\", \"pay_ordr_amt\": \"69.70\", \"pay_ordr_cnt\": \"3\", \"pay_qty\": \"3\", \"pay_usr_cnt\": \"3\"}, {\"goods_id\": 266959146490, \"goods_name\": \"猪肉肠大肉肠火山石烤肠批发地道肠台湾风味热狗烧烤大香肠批发\", \"goods_ordr_rate\": \"10.71%\", \"goods_pv\": \"42\", \"goods_uv\": \"28\", \"pay_ordr_amt\": \"253.00\", \"pay_ordr_cnt\": \"3\", \"pay_qty\": \"3\", \"pay_usr_cnt\": \"3\"}, {\"goods_id\": 248212907231, \"goods_name\": \"火山石烤肠地道肠脆皮纯肉肠台湾风味香肠热狗批发\", \"goods_ordr_rate\": \"7.14%\", \"goods_pv\": \"18\", \"goods_uv\": \"14\", \"pay_ordr_amt\": \"22.98\", \"pay_ordr_cnt\": \"1\", \"pay_qty\": \"1\", \"pay_usr_cnt\": \"1\"}, {\"goods_id\": 263753051078, \"goods_name\": \"火山石肉肠纯肉肠烤肠台湾风味热狗烧烤地道肠香肠大香肠年货批发\", \"goods_ordr_rate\": \"0.00%\", \"goods_pv\": \"6\", \"goods_uv\": \"6\", \"pay_ordr_amt\": \"0.00\", \"pay_ordr_cnt\": \"0\", \"pay_qty\": \"0\", \"pay_usr_cnt\": \"0\"}, {\"goods_id\": 232748723377, \"goods_name\": \"大台湾手抓饼家庭装原味手抓饼煎面饼千层饼皮方便早餐半成品批发\", \"goods_ordr_rate\": \"0.00%\", \"goods_pv\": \"4\", \"goods_uv\": \"4\", \"pay_ordr_amt\": \"0.00\", \"pay_ordr_cnt\": \"0\", \"pay_qty\": \"0\", \"pay_usr_cnt\": \"0\"}, {\"goods_id\": 287304009017, \"goods_name\": \"20片超值雪花鸡排鸡胸肉冷冻半成品油炸小吃肉食类便宜批发10片\", \"goods_ordr_rate\": \"0.00%\", \"goods_pv\": \"4\", \"goods_uv\": \"3\", \"pay_ordr_amt\": \"0.00\", \"pay_ordr_cnt\": \"0\", \"pay_qty\": \"0\", \"pay_usr_cnt\": \"0\"}, {\"goods_id\": 263489499314, \"goods_name\": \"迷你小香肠肠类肉肠开袋即食香肠纯肉烤肠香肠小零食批发烤肠批发\", \"goods_ordr_rate\": \"0.00%\", \"goods_pv\": \"1\", \"goods_uv\": \"1\", \"pay_ordr_amt\": \"0.00\", \"pay_ordr_cnt\": \"0\", \"pay_qty\": \"0\", \"pay_usr_cnt\": \"0\"}, {\"goods_id\": 263494562950, \"goods_name\": \"大鸡排油炸鸡胸肉食类半成品零食小吃鸡米花冷冻半成品方便宜批发\", \"goods_ordr_rate\": \"0.00%\", \"goods_pv\": \"1\", \"goods_uv\": \"1\", \"pay_ordr_amt\": \"0.00\", \"pay_ordr_cnt\": \"0\", \"pay_qty\": \"0\", \"pay_usr_cnt\": \"0\"}, {\"goods_id\": 263507979038, \"goods_name\": \"鸡米花冷冻半成品原味鸡胸肉鸡块鸡米花小吃类方便宜家庭批发商用\", \"goods_ordr_rate\": \"0.00%\", \"goods_pv\": \"1\", \"goods_uv\": \"1\", \"pay_ordr_amt\": \"0.00\", \"pay_ordr_cnt\": \"0\", \"pay_qty\": \"0\", \"pay_usr_cnt\": \"0\"}, {\"goods_id\": 263516993681, \"goods_name\": \"上校鸡块原味黑椒半成品鸡胸肉大鸡排小吃油炸类小吃食品便宜批发\", \"goods_ordr_rate\": \"0.00%\", \"goods_pv\": \"2\", \"goods_uv\": \"1\", \"pay_ordr_amt\": \"0.00\", \"pay_ordr_cnt\": \"0\", \"pay_qty\": \"0\", \"pay_usr_cnt\": \"0\"}, {\"goods_id\": 263790329580, \"goods_name\": \"含乳脂淡奶油冰淇淋蛋糕雪媚娘千层蛋糕家用奶油裱花面包烘培原料\", \"goods_ordr_rate\": \"0.00%\", \"goods_pv\": \"1\", \"goods_uv\": \"1\", \"pay_ordr_amt\": \"0.00\", \"pay_ordr_cnt\": \"0\", \"pay_qty\": \"0\", \"pay_usr_cnt\": \"0\"}], \"shop_title\": \"好食先生\", \"stat_date\": \"(统计时间: 2021-10-14)\"}"
              this.getRequest(`/pddCommodity/addPddCommodity/${s}`).then(req=>{

              })
            },
            su(){
                    this.getShop();

            },
            //修改责任人
            udtate(index, row){
                this.centerDialogVisibles = true;

                if (row.fpersonBh!=0){
                    this.title = '修改组员';
                    this.getRequest('/lsEmployee/namelist').then(req=>{ //得到组长
                        for (let i =0;i<req.data.length;i++){
                            if (req.data[i].value==row.fpersonBh){
                                    this.zrl.zz = req.data[i].value;
                                this.getShop();
                            }
                        }
                        this.options = req.data;
                    })

                    this.zrl.zyname= row.person;
                    this.getRequest(`/lsEmployee/getshopname/${row.name}`).then(req=>{//得到店铺
                        this.shop = req.data;
                    })
                }else {
                    this.title = '修改组长';
                    this.zrl = {};
                }
            },
            //删除责任人
            delet(index, row){
                this.$confirm('此操作将永久删除该信息, 是否继续?', '提示', {
                    confirmButtonText: '确定',
                    cancelButtonText: '取消',
                    type: 'warning'
                }).then(() => {
                    this.deleteRequest(`/lsShoplx2/deletId/${row.personBh}`).then(req=>{
                        if (req.data==200){
                            this.fetchData();
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
            //添加责任人
            addLsChon(){
                for (let i = 0;i<this.zrl.shop.length;i++){
                   this.zrl.shop[i] = this.shop[i][0];
                }
                this.postRequest('/lsShoplx2/add',this.zrl).then(req=>{
                    if (req.data==200){
                        this.$message({
                            type: 'success',
                            message: '添加成功!'
                        });
                        this.zrl={}
                        this.centerDialogVisible = false;
                        this.fetchData();
                    }

                })
            },
            getShop(){
                this.postRequest(`/lsShoplx2/listName/${this.zrl.zz}`).then(req=>{
                    this.options1=req.data;
                })
            },
            handleEdit(index, row){
                this.centerDialogVisibles = true;
                this.lsShop1 = row;
            },
            adds(){
                this.zrl = {};
                this.centerDialogVisible = true;
                this.getRequest('/lsEmployee/namelist').then(req=>{
                    this.options = req.data;
                })
            },
            //分页，页码变化
            changeSize(size) {
                this.limit = size
                this.fetchData(1)
            },

        },
        mounted() {
        }
    }
</script>

<style scoped>

</style>
