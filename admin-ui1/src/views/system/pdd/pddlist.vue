<template>
    <div>
        <el-tabs type="border-card">
            <el-tab-pane label="搜索推广">
        <el-col :span="3">
        <el-input
                placeholder="请输入店铺名"
                v-model="inputs"
                clearable>
        </el-input>
            &nbsp;
        </el-col>
        &nbsp;
        <el-button type="primary" icon="el-icon-search">搜索</el-button>
        &nbsp;
                <el-button type="danger" round>批量删除</el-button>
        <el-table
                :data="tableData"
                height="550"
                border
                @selection-change="checks"
                style="width: 100%">
            <el-table-column
                    type="selection"
                    width="55">
            </el-table-column>
            <el-table-column
                    prop="name"
                    label="店铺名"
                    width="180">
            </el-table-column>

            <el-table-column
                    prop="promotionPlan"
                    label="推广计划">
            </el-table-column>
            <el-table-column
                    prop="state"

                    label="状态">
            </el-table-column>
            <el-table-column
                    prop="hits"
                    sortable
                    label="点击量">
            </el-table-column>
            <el-table-column
                    prop="spend"
                    label="花费(元)">
            </el-table-column>
            <el-table-column
                    prop="inputOutputRatio"
                    label="投入产出比">
            </el-table-column>
            <el-table-column
                    prop="numTran"
                    label="成交笔数">
            </el-table-column>
            <el-table-column
                    prop="clickRate"
                    label="点击转化率">
            </el-table-column>
            <el-table-column
                    prop="dateTime"
                    sortable
                    label="日期">
            </el-table-column>
            <el-table-column label="操作">
                <template slot-scope="scope">
                    <el-button type="danger" @click="sstghandleEdit(scope.$index, scope.row)" icon="el-icon-delete" circle></el-button>
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
            </el-tab-pane>
            <el-tab-pane label="场景推广">配置管理</el-tab-pane>
            <el-tab-pane label="放心推">放心推</el-tab-pane>
        </el-tabs>
    </div>

</template>

<script>
    export default {
        name: "pddlist",
            data() {
                return {
                    optionss: {
                        target: '/aipPdd/single',
                        testChunks: false,
                        chunkSize: 1024*1024*8,  //1MB
                        simultaneousUploads: 3, //并发上传数
                        headers: {
                            'access-token': 'abcd1234'
                        },
                    },
                    attrs: {
                        accept: 'image/*'
                    },
                    listLoading: true, // 数据是否正在加载
                    list: null, // 医院列表数据集合
                    total: 0, // 数据库中的总记录数
                    page: 1, // 默认页码
                    limit: 20, // 每页记录数
                    tableData: [],
                    inputs:'',
                    value1:'',
                    chenglist:[],

                };
            },
            created() {
                    this.fetchData();
            },
            methods: {

                fetchData(page=1) {  //搜索推广
                    this.page = page
                    this.postRequest(`/pddSstg/list/${this.page}/${this.limit}`).then(req=>{
                        this.tableData=req.data.records;
                        console.log(this.tableData)
                        this.total = req.data.total;
                    })
                },
                changesData () {
                    console.log(this.$refs.file.files);
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
                        this.deleteRequest(`/pddSstg/deleteId/${row.id}`).then(req=>{
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
                checks(rows){
                    for (let i =0;i<rows.length;i++ ){
                        this.chenglist[i] = rows[i].id;
                    }
                  console.log(this.chenglist)
                }


            },
        mounted() {
        }
    }
</script>

<style>
    .uploader-example {
        width: 880px;
        padding: 15px;
        margin: 40px auto 0;
        font-size: 12px;
        box-shadow: 0 0 10px rgba(0, 0, 0, .4);
    }
    .uploader-example .uploader-btn {
        margin-right: 4px;
    }
    .uploader-example .uploader-list {
        max-height: 440px;
        overflow: auto;
        overflow-x: hidden;
        overflow-y: auto;
    }
</style>
