<template>
    <div style="height: 10px">
        类型：
        <el-select v-model="productlx.id"  @change="getdg" style="width: 130px" class="but" placeholder="请选择类型">
            <el-option
                    v-for="item in options"
                    :key="item.value"
                    :label="item.label"
                    :value="item.value">
            </el-option>
        </el-select>

        <el-select v-model="productlx.shopbh"  @change="getdg" filterable placeholder="请选择店铺">
            <el-option
                    v-for="item in optionsss"
                    :key="item.label"
                    :label="item.value"
                    :value="item.label">
            </el-option>
        </el-select>

        <el-button class="but" @click=" centerDialogVisiblesadd = true" type="success"><i class="el-icon-plus"></i>添加成本</el-button>

        <tree-table
                class="tb-cate"
                show-index
                stripe
                border
                :show-row-hover="false"
                :data="cateList"
                :columns="columns"
                :expand-type="false"
                :selection-type="false"
        >
            <template slot="opts" scope="scope">
                <span v-if="scope.row.number!=0">{{scope.row.number}}</span>
            </template>

            <template slot="opt" scope="scope">
                <el-button type="primary" icon="el-icon-edit" size="mini">编辑</el-button>

            </template>
        </tree-table>
            <h1>总数:{{sizs}}</h1>


        <el-dialog
                title="添加"
                width="40%"
                :visible.sync="centerDialogVisiblesadd"
                center>
            大类型：
            <el-cascader
                    v-model="value"
                    :options="optionss"
                    :props="{ expandTrigger: 'hover' }"
                    @change="handleChange"></el-cascader>
            商品id：<el-input type="age"    style="width: 300px"  v-model="productlx.lxName"  ></el-input>
            <p></p>
            <el-button @click="centerDialogVisiblesadd = false">取 消</el-button>
            <el-button type="primary" @click="addsp" >添加</el-button>
        </el-dialog>
    </div>

</template>
<script>
    export default {
        name:"category",
        data() {
            return {
                ss:300,
                value:'',
                options:[],
                optionss:[],
                optionsss:[],
                cateList: [ ],
                centerDialogVisiblesadd:false, //添加
                sizs:'',
                productlx:{
                    id:'',
                    lxName:'',
                    shopbh:'',
                },
                columns: [
                    { label: "分类名称", prop: "name" },
                    {
                        label: '下级个数',
                        type: 'template',
                        template: 'opts'
                    },
                    {
                        label: '操作',
                        type: 'template',
                        template: 'opt'
                    }
                ],
                props: {
                    expandType: false,
                    selectionType: false,
                },

            };
        },
        created() {
            this.getlist();
            this.getdyj();
            this.getsan();
            this.getshop();
        },
        methods: {
            getshop(){
                this.getRequest('/lsShop/showlist').then(req=>{
                     this.optionsss =req.data;
                    })

            },
                getlist(){  //数据
                  this.postRequest('/lsProductlx/list',this.productlx).then(req=>{
                         this.cateList=req.data;
                         this.sizs=req.data.length;
                  })
                },
                getdyj(){
                        this.getRequest('/lsProductlx/getdyg').then(req=>{
                            this.options = req.data;
                        })
                },

            getdg(){
                  this.getlist();
            },
            getsan(){
              this.getRequest('/lsProductlx/getsan').then(req=>{
                    this.optionss = req.data;
              })

            },
            handleChange(){
                  this.productlx.lxName=this.value[2];
            },
            addsp(){

            },
            },

    }

</script>
