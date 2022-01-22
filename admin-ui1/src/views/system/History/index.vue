<template>
    <div>
        类型：
        <el-select v-model="ls.types"  style="width: 130px" class="but" @change="thys" placeholder="请选择">
            <el-option

                    v-for="item in options"
                    :key="item.value"
                    :label="item.label"
                    :value="item.value">
            </el-option>
        </el-select>

        模板：
        <el-select v-model="ls.modules"  style="width: 130px" class="but" @change="thys1" placeholder="请选择">
            <el-option

                    v-for="item in options2"
                    :key="item.value"
                    :label="item.label"
                    :value="item.value">
            </el-option>
        </el-select>
        时间：
        <el-date-picker
                v-model="ls.datas"
                type="daterange"
                align="right"
                unlink-panels
                @change="datass"
                value-format="yyyy-MM-dd"
                range-separator="至"
                start-placeholder="开始日期"
                end-placeholder="结束日期"
                :picker-options="pickerOptions">
        </el-date-picker>
        <el-table
                :data="tableData"
                border
                style="width: 100%">
            <el-table-column
                    prop="establish"
                    label="操作时间"
                    width="180">
            </el-table-column>
            <el-table-column
                    prop="accont"
                    label="操作人"
                    width="180">
            </el-table-column>
            <el-table-column
                    prop="modules"
                    label="操作模板"
                    width="200">
            </el-table-column>
            <el-table-column
                    prop="types"
                    label="操作类型"
                    width="200">
            </el-table-column>
            <el-table-column
                    prop="content"
                    label="操作内容"
            width="877">
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

    </div>
</template>
<script>
    export default {
        name:'History',
        data(){
            return{
                pickerOptions: {
                    shortcuts: [{
                        text: '最近一周',
                        onClick(picker) {
                            const end = new Date();
                            const start = new Date();
                            start.setTime(start.getTime() - 3600 * 1000 * 24 * 7);
                            picker.$emit('pick', [start, end]);
                        }
                    }, {
                        text: '最近一个月',
                        onClick(picker) {
                            const end = new Date();
                            const start = new Date();
                            start.setTime(start.getTime() - 3600 * 1000 * 24 * 30);
                            picker.$emit('pick', [start, end]);
                        }
                    }, {
                        text: '最近三个月',
                        onClick(picker) {
                            const end = new Date();
                            const start = new Date();
                            start.setTime(start.getTime() - 3600 * 1000 * 24 * 90);
                            picker.$emit('pick', [start, end]);
                        }
                    }]
                },
                tableData:[],  //记录列表
                page:1,   //当前页
                total:0,  //总页
                limit:20,   //第
                ls:{
                    modules:'全部',
                    types:'全部',
                    datas:[]
                },
                options:[  //类型
                    {
                        value: '全部',
                        label: '全部'
                    },
                    {
                        value: '修改',
                        label: '修改'
                    },
                    {
                        value: '添加',
                        label: '添加'
                    }
                ],
                options2:[  //模板
                    {
                        value: '全部',
                        label: '全部'
                    },
                    {
                        value: '名称',
                        label: '名称'
                    },
                    {
                        value: '商家编号',
                        label: '商家编号'
                    },
                    {
                        value: '成本',
                        label: '成本'
                    },

                ]
            }
        },
        created() {
            this.gethistory();
        },
        methods:{
            gethistory(){
              this.postRequest(`/spHistory/getlist/${this.page}/${this.limit}`,this.ls).then(req=>{
                    this.tableData = req.data.records
                  this.total = req.data.total
              })
            },
            fetchData(page=1){
                this.page = page;
                this.gethistory();
            },
            changeSize(size){
                this.limit =size;
                this.gethistory();
            },
            //类型
            thys(){
                this.page = 1;
                this.gethistory();
            },
            thys1(){
                this.page = 1;
                this.gethistory();
            },
            datass(){
                this.page = 1;
                this.gethistory();
            }

        },
    }


</script>