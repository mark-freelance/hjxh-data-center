<template>
    <div>

        <el-tabs type="border-card">

            <el-tab-pane label="账务类型导入导出">
                <h1>-----------------------------------------------导入文件--------------------------------------------------------------</h1>
                <el-upload
                        class="upload-demo"
                        action="/xyyXsb/information"
                        :on-change="handleChange2"
                        :auto-upload="false"
                        multiple
                        :file-list="fileList">
                    <el-button type="info" round>导入文件模板，已选择{{fileList.length}}个 <i class="el-icon-folder-opened"></i></el-button>
                </el-upload>
                <p></p>
                <el-button type="primary" @click="submitUpload2" >确定上传</el-button>
                <p></p>
                <h1>-----------------------------------------------导出文件--------------------------------------------------------------</h1>
                <el-select
                        v-model="name"
                        multiple
                        filterable
                        remote
                        reserve-keyword
                        collapse-tags
                        placeholder="请输入店铺名"
                        :remote-method="remoteMethod"
                        :loading="loading">
                    <el-option
                            v-for="item in options22"
                            :key="item.label"
                            :label="item.value"
                            :value="item.label">
                    </el-option>
                </el-select>

                时间：
                <el-date-picker
                        v-model="datas"
                        type="daterange"
                        align="right"
                        unlink-panels
                        value-format="yyyy-MM-dd"
                        range-separator="至"
                        start-placeholder="开始日期"
                        end-placeholder="结束日期"
                        :picker-options="pickerOptions">
                </el-date-picker>
                <p></p>
                <a :href="'/dpDdmx/getcs?shop='+name+'&datas='+datas" target="_blank" >
                    <el-button type="success"        round>导出文件 <i class="el-icon-folder-opened"></i></el-button>
                </a>
                <h1>----------------------------------------------已上传文件------------------------------------------------------------------</h1>
                时间：
                <el-date-picker
                        v-model="datas7.daTa"
                        type="daterange"
                        align="right"
                        unlink-panels
                        @change="rqd2"
                        value-format="yyyy-MM-dd"
                        range-separator="至"
                        start-placeholder="开始日期"
                        end-placeholder="结束日期"
                        :picker-options="pickerOptions">
                </el-date-picker>
                <a href="/daochuDongxiao/getcs2" target="_blank" >
                    <el-button type="success"  round>导出已上传文件 <i class="el-icon-folder-opened"></i></el-button>
                </a>

                <el-table
                        :data="tableData1"
                        height="280px"
                        style="width: 100%">
                    <el-table-column
                            prop="dateTime"
                            label="导入日期"
                            width="180">
                    </el-table-column>
                    <el-table-column
                            prop="fileName"
                            label="文件名"
                            width="380">
                    </el-table-column>
                    <el-table-column label="操作">
                        <template slot-scope="scope">
                            <el-button type="danger" @click="sstghandleEdit(scope.$index, scope.row)" icon="el-icon-delete" circle></el-button>
                        </template>
                    </el-table-column>
                </el-table>

                <!-- 分页组件 -->
                <el-pagination
                        :current-page="page1"
                        :total="total1"
                        :page-size="limit1"
                        :page-sizes="[5, 10, 20, 30, 40, 50, 100]"
                        style="padding: 30px 0;"
                        layout="sizes, prev, pager, next, jumper, ->, total, slot"
                        @current-change="fetchData1"
                        @size-change="changeSize1"
                />

            </el-tab-pane>



            <el-tab-pane label="动销导入导出">
                <h1>-----------------------------------------------导入文件--------------------------------------------------------------</h1>

                <el-upload
                    class="upload-demo"
                    action="/xyyXsb/information"
                    :on-change="handleChange"
                    :auto-upload="false"
                    multiple
                    :file-list="fileList1">
                <el-button type="info" round>导入文件模板，已选择{{fileList1.length}}个 <i class="el-icon-folder-opened"></i></el-button>
            </el-upload>
                <p></p>
                <el-button type="primary" @click="submitUpload" >确定上传</el-button>
                <p></p>
                <h1>-----------------------------------------------导出文件--------------------------------------------------------------</h1>
                时间：
                <el-date-picker
                        v-model="datas2"
                        type="daterange"
                        align="right"
                        unlink-panels
                        value-format="yyyy-MM-dd"
                        range-separator="至"
                        start-placeholder="开始日期"
                        end-placeholder="结束日期"
                        :picker-options="pickerOptions">
                </el-date-picker>
                <p></p>
                <a :href="'/daochuDongxiao/getcs?datas='+datas2" target="_blank" >
                    <el-button type="success"        round>导出文件 <i class="el-icon-folder-opened"></i></el-button>
                </a>
            <h1>----------------------------------------------已上传文件------------------------------------------------------------------</h1>

                时间：
                <el-date-picker
                        v-model="datas6.daTa"
                        type="daterange"
                        align="right"
                        unlink-panels
                        @change="rqd"
                        value-format="yyyy-MM-dd"
                        range-separator="至"
                        start-placeholder="开始日期"
                        end-placeholder="结束日期"
                        :picker-options="pickerOptions">
                </el-date-picker>
                <a href="/daochuDongxiao/getcs1" target="_blank" >
                    <el-button type="success"        round>导出已上传文件 <i class="el-icon-folder-opened"></i></el-button>
                </a>
                <el-table
                        :data="tableData"
                        height="280px"
                        style="width: 100%">
                    <el-table-column
                            prop="dateTime"
                            label="导入日期"
                            width="180">
                    </el-table-column>
                    <el-table-column
                            prop="fileName"
                            label="文件名"
                            width="180">
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
                        style="padding: 30px 0;"
                        layout="sizes, prev, pager, next, jumper, ->, total, slot"
                        @current-change="fetchData"
                        @size-change="changeSize"
                />
            </el-tab-pane>

        <!--

            <el-tab-pane label="快递费对账">
                <el-upload
                        class="upload-demo"
                        action="/xyyXsb/information"
                        :on-change="handleChange3"
                        :auto-upload="false"
                        multiple
                        :file-list="fileList3">
                    <el-button type="info" round>导入文件模板，已选择{{fileList3.length}}个 <i class="el-icon-folder-opened"></i></el-button>
                </el-upload>
                <p></p>
                <el-button type="primary" @click="submitUpload3" >确定上传</el-button>
                <p></p>

            </el-tab-pane>
        <!-->

        </el-tabs>

    </div>
</template>

<script>
    export default {
        name: "finance",
        data() {
            return { pickerOptions: {
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
                tableData: [],
                tableData1: [],
                datas6: {daTa:[]},
                datas7: {daTa:[]},
                total: 0, // 数据库中的总记录数
                page: 1, // 默认页码
                limit: 20, // 每页记录数
                total1: 0, // 数据库中的总记录数
                page1: 1, // 默认页码
                limit1: 20, // 每页记录数
                fileList:[],
                fileList1:[],
                fileList3:[],
                name:[],
                loading:false,
                options22:[],
                getshopname1:[],
                datas:[],
                datas2:[],
                    list2:[],
                list3:[],
            };
        },
        created() {
            this.getshopname();
            this.getlistFileName();
            this.getlistFileName2();
            this.getcf();
            this.getcf2();
        },
        mounted() {

        },
        methods: {
            handleChange(files, fileList)
            {
                this.fileList1 = fileList;
            },
            handleChange2(files, fileList)
            {
                this.fileList = fileList;
            },
            handleChange3(files, fileList)
            {
                this.fileList3 = fileList;
            },
            getshopname(){
                this.getRequest('/lsShop/showlist').then(req => {
                    this.getshopname1 = req.data;
                    this.options22 = req.data;
                })
            },
            cg(response){
                // eslint-disable-next-line no-empty
                if (response){
                    this.$notify({
                        title: '成功',
                        message: '上传成功',
                        type: 'success'
                    });

                }
            },
            remoteMethod(query) {
                if (query !== '') {
                    this.loading = true;
                    setTimeout(() => {
                        this.loading = false;
                        this.options22 = this.getshopname1.filter(item => {
                            return item.value.toLowerCase()
                                .indexOf(query.toLowerCase()) > -1;
                        });
                    }, 200);
                }
            },
            submitUpload() {
                // 当前没有选择任何文件，不调用方法
                // this.$refs.upload.submit();
                let uploadForm = new FormData()
                let s = '';
                if (this.fileList1.length!=0){
                for (let i = 0; i < this.fileList1.length; i++) {
                    if (this.fileList1[i].name.indexOf("xlsx")!=-1){

                        if (this.fileList1[i].name.indexOf("库存台账") !=-1){
                            uploadForm.append("file", this.fileList1[i].raw);
                            continue;
                        }
                        if (this.fileList1[i].name.indexOf("出库明细") !=-1){
                            uploadForm.append("file", this.fileList1[i].raw);
                            continue;
                        }
                        if (this.fileList1[i].name.indexOf("物料收发汇总表") !=-1){
                            uploadForm.append("file", this.fileList1[i].raw);
                        }else {
                            s = s+'<strong>文件命名格式错误: <i>'+this.fileList1[i].name+'</i></strong><br/>'
                            this.fileList1 = [];
                        }

                    }else {
                        s = s+'<strong>文件后缀错误: <i>'+this.fileList1[i].name+'</i></strong><br/>'
                        this.fileList1 = [];
                    }

                }
                if (s.length>=1){
                    this.$notify({
                        title: '提示',
                        message: s,
                        duration: 0,
                        dangerouslyUseHTMLString: true
                    });
                    return ;
                }

                    let c = '';
                    for (let i =0;i<this.fileList1.length;i++){
                        for (let cc =0;cc<this.list2.length;cc++){
                            if (this.fileList1[i].name==this.list2[cc].fileName){
                                c = c+'<strong>文件重复上传: <i>'+this.fileList1[i].name+'</i></strong><br/>'

                            }
                        }

                    }
                    if (c.length>=1){
                        this.$notify({
                            title: '提示',
                            message: c,
                            duration: 0,
                            dangerouslyUseHTMLString: true
                        });
                        this.fileList1 = [];
                        return ;
                    }
                const loading = this.$loading({
                    lock: true,
                    text: '上传中稍等一下!!',
                    spinner: 'el-icon-loading',
                    background: 'rgba(0, 0, 0, 0.7)'
                });

                    this.postRequest('/kingdeeHs/uploading',uploadForm,{
                    headers: {
                        'Content-Type': 'multipart/form-data;charset=UTF-8',
                        "Accept": "*/*"
                    }
                }).then(req=>{
                        if (req.code==200){
                            this.$notify({
                                title: '成功',
                                message: '上传成功',
                                type: 'success'
                            });
                            this.getlistFileName();
                            this.getcf();
                            this.fileList1 = [];
                            loading.close();
                        }else {
                            loading.close();
                            this.fileList1 = [];
                            let sc =''
                            for (let i =0;i<req.data.length;i++){
                                if (req.data[i].code==404){
                                    sc = sc+'<strong>文件命名格式错误或后缀错误: <i>'+req.data[i].data+'</i></strong><br/>'
                                }
                                if (req.data[i].code==500){
                                    sc = sc+'<strong>文件上传错误:<i>'+req.data[i].data+'</i></strong><br/>'
                                }
                            }
                            sc = sc+'<strong>文件上传错误,请联系鹿鸣</strong>'
                            this.$notify({
                                title: '提示',
                                message: sc,
                                duration: 0,
                                dangerouslyUseHTMLString: true
                            });
                        }

                })
                }else {
                    this.$notify({
                        title: '提示',
                        message: '你没有上传文件',
                        type: 'warning'
                    });
                    loading.close();
                }
            },
            //删除动销文件
            sstghandleEdit(index,row){
                this.$confirm('此操作将永久删除该信息, 是否继续?', '提示', {
                    confirmButtonText: '确定',
                    cancelButtonText: '取消',
                    type: '' +
                        'warning'
                }).then(() => {
                    const loading = this.$loading({
                        lock: true,
                        text: '删除中稍等一下!!',
                        spinner: 'el-icon-loading',
                        background: 'rgba(0, 0, 0, 0.7)'
                    });
                    this.deleteRequest(`/kingdeeHs/deleteId/${row.id}`).then(req=>{
                        if (req){
                            loading.close();
                            this.$message({
                                type: 'success',
                                message: '删除成功!'
                            });
                            this.getlistFileName();
                            this.getlistFileName2();
                        }
                    })
                }).catch(() => {
                    this.$message({
                        type: 'info',
                        message: '已取消删除'
                    });
                });
            },
            submitUpload2() {
                // 当前没有选择任何文件，不调用方法
                // this.$refs.upload.submit();
                let uploadForm = new FormData()
                let s = '';
                if (this.fileList.length!=0){
                    for (let i = 0; i < this.fileList.length; i++) {
                        if (this.fileList[i].name.indexOf("xlsx")!=-1){

                            if (this.fileList[i].name.indexOf("财务") !=-1){
                                uploadForm.append("file", this.fileList[i].raw);
                                continue;
                            }
                            if (this.fileList[i].name.indexOf("订单状态") !=-1){
                                uploadForm.append("file", this.fileList[i].raw);
                                continue;
                            }
                            if (this.fileList[i].name.indexOf("账务") !=-1){
                                uploadForm.append("file", this.fileList[i].raw);
                                continue;
                            }
                            if (this.fileList[i].name.indexOf("未结算出库明细") !=-1){
                                uploadForm.append("file", this.fileList[i].raw);
                            }else {
                                s = s+'<strong>文件命名格式错误: <i>'+this.fileList[i].name+'</i></strong><br/>'
                                this.fileList = [];
                            }

                        }else {
                            s = s+'<strong>文件后缀错误: <i>'+this.fileList[i].name+'</i></strong><br/>'
                            this.fileList = [];
                        }

                    }
                    if (s.length>=1){
                        this.$notify({
                            title: '提示',
                            message: s,
                            duration: 0,
                            dangerouslyUseHTMLString: true
                        });
                        return ;
                    }
                    let c = '';
                    for (let i =0;i<this.fileList.length;i++){
                        for (let cc =0;cc<this.list3.length;cc++){
                            if (this.fileList[i].name==this.list3[cc].fileName){
                                c = c+'<strong>文件重复上传: <i>'+this.fileList[i].name+'</i></strong><br/>'

                            }
                        }

                    }
                    if (c.length>=1){
                        this.$notify({
                            title: '提示',
                            message: c,
                            duration: 0,
                            dangerouslyUseHTMLString: true
                        });
                        this.fileList = [];
                        return ;
                    }
                    const loading = this.$loading({
                        lock: true,
                        text: '上传中稍等一下!!',
                        spinner: 'el-icon-loading',
                        background: 'rgba(0, 0, 0, 0.7)'
                    });

                  this.postRequest('/dpDdmx/information',uploadForm,{
                        headers: {
                            'Content-Type': 'multipart/form-data;charset=UTF-8',
                            "Accept": "*/*"
                        }
                    }).then(req=>{
                        if (req.code==200){
                            this.$notify({
                                title: '成功',
                                message: '上传成功',
                                type: 'success'
                            });

                            this.getlistFileName2();
                            this.getcf2();
                            this.fileList = [];
                            loading.close();
                        }else {
                            loading.close();
                            this.fileList = [];
                            let sc =''
                            for (let i =0;i<req.data.length;i++){
                                if (req.data[i].code==404){
                                    sc = sc+'<strong>文件命名格式错误或后缀错误: <i>'+req.data[i].data+'</i></strong><br/>'
                                }
                                if (req.data[i].code==500){
                                    sc = sc+'<strong>文件上传错误:<i>'+req.data[i].data+'</i></strong><br/>'
                                }
                            }
                            sc = sc+'<strong>文件上传错误,请联系鹿鸣</strong>'
                            this.$notify({
                                title: '提示',
                                message: sc,
                                duration: 0,
                                dangerouslyUseHTMLString: true
                            });
                        }
                    })
                }else {
                    this.$notify({
                        title: '提示',
                        message: '你没有上传文件',
                        type: 'warning'
                    });
                    loading.close();

                }
            },
            submitUpload3() {
                // 当前没有选择任何文件，不调用方法
                // this.$refs.upload.submit();
                let uploadForm = new FormData()

                if (this.fileList3.length!=0){
                    for (let i = 0; i < this.fileList3.length; i++) {
                        uploadForm.append("file", this.fileList3[i].raw);
                    }
                    const loading = this.$loading({
                        lock: true,
                        text: '上传中稍等一下!!',
                        spinner: 'el-icon-loading',
                        background: 'rgba(0, 0, 0, 0.7)'
                    });

                    this.postRequest('/kdWdtzd/uploading',uploadForm,{
                        headers: {
                            'Content-Type': 'multipart/form-data;charset=UTF-8',
                            "Accept": "*/*"
                        }
                    }).then(req=>{
                        if (req.code==200){
                            this.$notify({
                                title: '成功',
                                message: '上传成功',
                                type: 'success'
                            });
                            this.fileList3 = [];
                            loading.close();
                        }
                        if (req.code==505) {
                            loading.close();
                            let sc =''
                            for (let i =0;i<req.data.length;i++){
                                    if (req.data[i].code==404){
                                        sc = sc+'<strong>文件命名格式错误或后缀错误: <i>'+req.data[i].data+'</i></strong><br/>'
                                    }
                                    if (req.data[i].code==500){
                                        sc = sc+'<strong>文件上传错误:<i>'+req.data[i].data+'</i></strong><br/>'
                                    }
                            }
                            sc = sc+'<strong>文件上传错误,请联系鹿鸣</strong>'
                            this.$notify({
                                title: '提示',
                                message: sc,
                                duration: 0,
                                dangerouslyUseHTMLString: true
                            });

                        }

                    })
                }else {
                    this.$notify({
                        title: '提示',
                        message: '你没有上传文件',
                        type: 'warning'
                    });
                    loading.close();
                }
            },
            getlistFileName(){
                this.postRequest(`/kingdeeHs/list/${this.page}/${this.limit}`,this.datas6).then(req=>{
                    this.tableData=req.data.records;
                    this.total = req.data.total;
                })
            },
            getlistFileName2(){
                this.postRequest(`/dpDdmx/list/${this.page1}/${this.limit1}`,this.datas7).then(req=>{
                    this.tableData1=req.data.records;

                    this.total1 = req.data.total;
                })
            },
            fetchData(page=1) {
                this.page = page
                this.getlistFileName();
            },
            //分页，页码变化
            changeSize(size) {
                this.limit = size
                this.getlistFileName(1)
            },
            fetchData1(page=1) {
                this.page = page
                this.getlistFileName2();
            },
            //分页，页码变化
            changeSize1(size) {
                this.limit = size
                this.getlistFileName2(1)
            },
            rqd(){
                this.getlistFileName(1)
            },
            rqd2(){
                this.getlistFileName2(1)
            },
            getcf(){
              this.getRequest('/kingdeeHs/getList1').then(req=>{
                    this.list2=req.data;
              })
            },
            getcf2(){
                this.getRequest('/kingdeeHs/getList2').then(req=>{
                    this.list3=req.data;
                })
            },
        }
    }
</script>

<style scoped>

</style>
