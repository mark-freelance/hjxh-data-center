<template>
    <!-- banner列表 -->
    <div>
        <el-select
                v-model="ls.name"
                multiple
                filterable
                remote
                @change="querShop"
                reserve-keyword
                collapse-tags
                style="width: 280px"
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
        &nbsp;
        <el-button  type="primary" icon="el-icon-search" @click="querShop">搜索</el-button>
        <el-select v-model="ls.value" class="but" @change="bh1" placeholder="请选择">
            <el-option
                    v-for="item in options"
                    :key="item.value"
                    :label="item.label"
                    :value="item.value">
            </el-option>
        </el-select>
        <el-date-picker
                v-model="ls.da1"
                type="daterange"
                align="right"
                unlink-panels
                @change="bh1"
                value-format="yyyy-MM-dd"
                range-separator="至"
                start-placeholder="开始日期"
                end-placeholder="结束日期"
                :picker-options="pickerOptions">
        </el-date-picker>
        <el-button class="but" @click="addSale" type="success"><i class="el-icon-plus"></i>添加汇总</el-button>
        &nbsp;  <a href="/lsSale/getcs" target="_blank" >
        <el-button type="success"        round>导出文件 <i class="el-icon-folder-opened"></i></el-button>
    </a>
        <el-button type="danger" @click="deleteFileOrDirectory(sels)" :disabled="this.sels.length === 0"> 批量删除</el-button>
    <el-table
            :data="tableData"
            height="550"
            @selection-change="selsChange"
            style="width: 100%">
        <el-table-column
                type="selection"
                width="55">
        </el-table-column>
        <el-table-column type="expand">
            <template slot-scope="props">
                <el-form label-position="left" inline class="demo-table-expand">
                    <el-form-item label="店铺名">
                        <span>{{ props.row.name }}</span>
                    </el-form-item>
                    <el-form-item label="全店销售额">
                        <span>{{ props.row.sales }}</span>
                    </el-form-item>
                    <el-form-item label="订单量">
                        <span>{{ props.row.orderquantity }}</span>
                    </el-form-item>
                    <el-form-item label="支付买家数">
                        <span>{{ props.row.numBuyers }}</span>
                    </el-form-item>
                    <el-form-item label="退款金额">
                        <span>{{ props.row.refundamount }}</span>
                    </el-form-item>
                    <el-form-item label="退款率">
                        <span>{{ props.row.refundrate1 }}</span>
                    </el-form-item>
                    <el-form-item label="实际销售额">
                        <span>{{ props.row.actualsales }}</span>
                    </el-form-item>
                    <el-form-item label="支付转化率">
                        <span>{{ props.row.paymentrate1 }}</span>
                    </el-form-item>
                    <el-form-item label="客单价">
                        <span>{{ props.row.customerprice }}</span>
                    </el-form-item>
                    <el-form-item label="店铺总流量">
                        <span>{{ props.row.totaltraffic }}</span>
                    </el-form-item>
                    <el-form-item label="免费流量">
                        <span>{{ props.row.freetraffic }}</span>
                    </el-form-item>
                    <el-form-item label="免费流量占比">
                        <span>{{ props.row.freetrafficzb1 }}</span>
                    </el-form-item>
                    <el-form-item label="多多搜索/直通车/京东快车（流量）">
                        <span>{{ props.row.moresearchll }}</span>
                    </el-form-item>
                    <el-form-item label="多多场景/超级推荐/京东展位（流量）">
                        <span>{{ props.row.manyscenesll }}</span>
                    </el-form-item>
                    <el-form-item label="放心推/钻石展位/京东直投（流量）">
                        <span>{{ props.row.restassuredpushll }}</span>
                    </el-form-item>
                    <el-form-item label="淘客推广(流量)">
                        <span>{{ props.row.taokepromotionll }}</span>
                    </el-form-item>
                    <el-form-item label="AI推广(流量)">
                        <span>{{ props.row.aipromotionll }}</span>
                    </el-form-item>
                    <el-form-item label="品销宝/明星店铺(流量)">
                        <span>{{ props.row.pinxiaobaoll }}</span>
                    </el-form-item>
                    <el-form-item label="推广总流量">
                        <span>{{ props.row.promotionflow }}</span>
                    </el-form-item>
                    <el-form-item label="推广流量占比">
                        <span>{{ props.row.promotionflowzb1 }}</span>
                    </el-form-item>
                    <el-form-item label="多多搜索/直通车/京东快车(费用)">
                        <span>{{ props.row.moresearchfy }}</span>
                    </el-form-item>
                    <el-form-item label="多多场景/超级推荐/京东展位(费用)">
                        <span>{{ props.row.manyscenesfy }}</span>
                    </el-form-item>
                    <el-form-item label="放心推/钻石展位/京东直投(费用)">
                        <span>{{ props.row.restassuredpushfy }}</span>
                    </el-form-item>
                    <el-form-item label="淘客推广(费用)">
                        <span>{{ props.row.taokepromotionfy }}</span>
                    </el-form-item>
                    <el-form-item label="AI推广(费用)">
                    <span>{{ props.row.aipromotionfy }}</span>
                    </el-form-item>
                    <el-form-item label="品销宝/明星店铺(费用)">
                    <span>{{ props.row.pinxiaobaofy }}</span>
                    </el-form-item>
                    <el-form-item label="推广总费用">
                    <span>{{ props.row.promotioncost }}</span>
                   </el-form-item>
                    <el-form-item label="推广费用占比">
                        <span>{{ props.row.promotioncostzb1 }}</span>
                    </el-form-item>
                    <el-form-item label="平台扣点">
                        <span>{{ props.row.platformbuckle }}</span>
                    </el-form-item>
                    <el-form-item label="其他费用">
                        <span>{{ props.row.otherexpenses }}</span>
                    </el-form-item>
                    <el-form-item label="合计总费用">
                        <span>{{ props.row.totalcost }}</span>
                    </el-form-item>
                    <el-form-item label="费销比">
                        <span>{{ props.row.costratio1 }}</span>
                    </el-form-item>
                    <el-form-item label="日期">
                        <span>{{ props.row.dateTime }}</span>
                    </el-form-item>
                </el-form>
            </template>
        </el-table-column>
        <el-table-column
                label="店铺名"
                prop="name">
        </el-table-column>
        <el-table-column
                label="全店销售额"
                prop="sales">
        </el-table-column>
        <el-table-column
                label="订单量"
                prop="orderquantity">
        </el-table-column>
        <el-table-column
                label="支付买家数"
                prop="numBuyers">
        </el-table-column>  <el-table-column
            label="退款金额"
            prop="refundamount">
    </el-table-column>
        <el-table-column
                label="日期"
                sortable
                prop="dateTime">
        </el-table-column>
        <el-table-column
                label="修改日期"
                sortable
                prop="xgdatetime">
        </el-table-column>
        <el-table-column label="操作">
            <template slot-scope="scope">
                <el-button type="primary" icon="el-icon-edit"  @click="handleEdit(scope.$index, scope.row)" circle></el-button>
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


        <el-dialog
                :title="hz.name"
                :visible.sync="centerDialogVisible"
                width="100%"
                center>
            <el-form  :inline="true"  label-width="260px">
                <el-form-item label="全店销售额" prop="name" >
                    <el-input type="age" placeholder="请填写" @blur="zfzhl"  v-model="hz.sales"  ></el-input>
                </el-form-item>
                <el-form-item label="订单量" prop="name" >
                    <el-input type="age" @blur="zfzhl" v-model="hz.orderquantity" ></el-input>

                </el-form-item>
                <el-form-item label="支付买家数" prop="name" >
                    <el-input type="age"  @blur="zfzhl"   v-model="hz.numBuyers"  ></el-input>

                </el-form-item>

                <el-form-item label="退款金额" >
                    <el-input type="age"  @blur="zfzhl"  v-model="hz.refundamount" ></el-input>

                </el-form-item>
                <el-form-item label="退款率" >
                    <el-input type="age"  disabled="disabled"   v-model="hz.refundrate" ></el-input>

                </el-form-item>

                <el-form-item label="实际销售额"  >
                    <el-input type="age"  @blur="zfzhl" v-model="hz.actualsales"  ></el-input>
                </el-form-item>

                <el-form-item label="支付转化率" >
                    <el-input type="age" v-if="hz.platformBh!=105" disabled="disabled"  v-model="hz.paymentrate"  ></el-input>
                    <el-input type="age" v-if="hz.platformBh==105"  v-model="hz.paymentrate"  ></el-input>
                </el-form-item>

                <el-form-item label="客单价">
                    <el-input type="age"  disabled="disabled"  v-model="hz.customerprice"  ></el-input>
                </el-form-item>

                <el-form-item label="店铺总流量" prop="name" >
                    <el-input type="age"  @blur="zfzhl"   v-model="hz.totaltraffic"  ></el-input>
                </el-form-item>
                <el-form-item label="免费流量">
                    <el-input type="age"  disabled="disabled"  v-model="hz.freetraffic"  ></el-input>
                </el-form-item>
                <el-form-item label="免费流量占比">
                    <el-input type="age"  disabled="disabled"  v-model="hz.freetrafficzb"  ></el-input>
                </el-form-item>
                <el-form-item label="多多搜索/直通车/京东快车（流量）" >
                    <el-input type="age" @blur="zfzhl"  v-model="hz.moresearchll "  ></el-input>
                </el-form-item>
                <el-form-item label="多多场景/超级推荐/京东展位（流量）" >
                    <el-input type="age" @blur="zfzhl"  v-model="hz.manyscenesll "  ></el-input>
                </el-form-item>
                <el-form-item label="放心推/钻石展位/京东直投（流量）" prop="name" >
                    <el-input type="age" @blur="zfzhl"  v-model="hz.restassuredpushll "  ></el-input>

                </el-form-item>

                <el-form-item label="淘客推广(流量)" prop="name" >
                    <el-input type="age"  @blur="zfzhl"   v-model="hz.taokepromotionll"  ></el-input>
                </el-form-item>
                <el-form-item label="AI推广(流量)" prop="name" >
                    <el-input type="age" @blur="zfzhl"  v-model="hz.aipromotionll"  ></el-input>
                </el-form-item>
                <el-form-item label="品销宝/明星店铺(流量)" prop="name" >
                    <el-input type="age"  @blur="zfzhl"  v-model="hz.pinxiaobaoll"  ></el-input>
                </el-form-item>
                <el-form-item label="推广总流量" prop="name" >
                    <el-input type="age" disabled="disabled"  v-model="hz.promotionflow"  ></el-input>
                </el-form-item>
                <el-form-item label="推广流量占比" prop="name" >
                <el-input type="age"  disabled="disabled"  v-model="hz.promotionflowzb"  ></el-input>
            </el-form-item>

                <el-form-item label="多多搜索/直通车/京东快车(费用)"  >
                    <el-input type="age" @blur="zfzhl"   v-model="hz.moresearchfy "  ></el-input>
                </el-form-item>
                <el-form-item label="多多场景/超级推荐/京东展位(费用)" >
                    <el-input type="age" @blur="zfzhl"  v-model="hz.manyscenesfy  "  ></el-input>
                </el-form-item>

                <el-form-item label="放心推/钻石展位/京东直投(费用)" prop="name" >
                    <el-input type="age" @blur="zfzhl"  v-model="hz.restassuredpushfy "  ></el-input>
                </el-form-item>
                <el-form-item label="淘客推广(费用)" prop="name" >
                    <el-input type="age" @blur="zfzhl"   v-model="hz.taokepromotionfy "  ></el-input>
                </el-form-item>
                <el-form-item label="AI推广(费用)" prop="name" >
                    <el-input type="age" @blur="zfzhl"  v-model="hz.aipromotionfy"  ></el-input>
                </el-form-item>
                <el-form-item label="品销宝/明星店铺(费用)" prop="name" >
                    <el-input type="age" @blur="zfzhl"   v-model="hz.pinxiaobaofy"  ></el-input>
                </el-form-item>
                <el-form-item label="推广总费用" prop="name" >
                    <el-input type="age"  disabled="disabled"   v-model="hz.promotioncost " ></el-input>
                </el-form-item>
                <el-form-item label="推广费用占比" prop="name" >
                    <el-input type="age" disabled="disabled"   v-model="hz.promotioncostzb " ></el-input>
                </el-form-item>
                <el-form-item label="平台扣点" prop="name" >
                    <el-input type="age"  disabled="disabled"  v-model="hz.platformbuckle " ></el-input>
                </el-form-item>
                <el-form-item label="其他" prop="name" >
                    <el-input type="age"  @blur="zfzhl"  v-model="hz.otherexpenses" ></el-input>
                </el-form-item>
                <el-form-item label="合计总费用" prop="name" >
                    <el-input type="age"   disabled="disabled" v-model="hz.totalcost" ></el-input>
                </el-form-item>
                <el-form-item label="费销比" prop="name" >
                    <el-input type="age" disabled="disabled"  v-model="hz.costratio " ></el-input>
                </el-form-item>

            </el-form>
    <el-button @click="centerDialogVisible = false">取 消</el-button>
    <el-button type="primary" @click="modification">修 改</el-button>

        </el-dialog>




        <el-dialog
                title="添加"
                :visible.sync="centerDialogVisibles"
                width="100%"
                center>
            <el-form :inline="true"  label-width="260px">

                <el-form-item label="日期" prop="name">

                        <el-date-picker
                                v-model="value2"
                                align="right"
                                type="date"
                                value-format="yyyy-MM-dd"
                                placeholder="选择日期"
                                :picker-options="pickerOptions">
                        </el-date-picker>
                </el-form-item>

                <el-form-item label="店铺" prop="Shop_name" >
                    <el-autocomplete
                            class="search-input"
                            v-model="state1"
                            :fetch-suggestions="query"
                            placeholder="输入商铺名字"
                    >
                    </el-autocomplete>
                </el-form-item>


                <el-form-item label="全店销售额" prop="name" >
                    <el-input type="age" placeholder="请填写" @blur="zfzhl"  v-model="hz.sales"  ></el-input>
                </el-form-item>

                <el-form-item label="订单量" prop="name" >
                    <el-input type="age" @blur="zfzhl" v-model="hz.orderquantity" ></el-input>
                </el-form-item>
                <el-form-item label="支付买家数" prop="name" >
                    <el-input type="age"  @blur="zfzhl"   v-model="hz.numBuyers"  ></el-input>
                </el-form-item>
                <el-form-item label="退款金额" >
                    <el-input type="age"  @blur="zfzhl"  v-model="hz.refundamount" ></el-input>
                </el-form-item>

                <el-form-item label="退款率" >
                    <el-input type="age"  disabled="disabled"   v-model="hz.refundrate" ></el-input>
                </el-form-item>
                <el-form-item label="实际销售额"  >
                    <el-input type="age"  @blur="zfzhl" v-model="hz.actualsales"  ></el-input>
                </el-form-item>

                <el-form-item label="支付转化率" >
                    <el-input type="age"  disabled="disabled"  v-model="hz.paymentrate"  ></el-input>
                </el-form-item>

                <el-form-item label="客单价">
                    <el-input type="age"  disabled="disabled"  v-model="hz.customerprice"  ></el-input>
                </el-form-item>
                <el-form-item label="店铺总流量" prop="name" >
                    <el-input type="age"  @blur="zfzhl"   v-model="hz.totaltraffic"  ></el-input>
                </el-form-item>

                <el-form-item label="免费流量">
                    <el-input type="age"  disabled="disabled"  v-model="hz.freetraffic"  ></el-input>
                </el-form-item>

                <el-form-item label="免费流量占比">
                    <el-input type="age"  disabled="disabled"  v-model="hz.freetrafficzb"  ></el-input>
                </el-form-item>

                <el-form-item label="多多搜索/直通车/京东快车（流量）" >
                    <el-input type="age" @blur="zfzhl"  v-model="hz.moresearchll "  ></el-input>
                </el-form-item>
                <el-form-item label="多多场景/超级推荐/京东展位（流量）" >
                    <el-input type="age" @blur="zfzhl"  v-model="hz.manyscenesll "  ></el-input>
                </el-form-item>

                <el-form-item label="放心推/钻石展位/京东直投（流量）" prop="name" >
                    <el-input type="age" @blur="zfzhl"  v-model="hz.restassuredpushll "  ></el-input>
                </el-form-item>
                <el-form-item label="淘客推广(流量)" prop="name" >
                    <el-input type="age"  @blur="zfzhl"   v-model="hz.taokepromotionll"  ></el-input>
                </el-form-item>

                <el-form-item label="AI推广(流量)" prop="name" >
                    <el-input type="age" @blur="zfzhl"  v-model="hz.aipromotionll"  ></el-input>
                </el-form-item>

                <el-form-item label="品销宝(流量)" prop="name" >
                    <el-input type="age"  @blur="zfzhl"  v-model="hz.pinxiaobaoll"  ></el-input>
                </el-form-item>

                <el-form-item label="推广总流量" prop="name" >
                    <el-input type="age" disabled="disabled"  v-model="hz.promotionflow"  ></el-input>
                </el-form-item>
                <el-form-item label="推广流量占比" prop="name" >
                    <el-input type="age"  disabled="disabled"  v-model="hz.promotionflowzb"  ></el-input>
                </el-form-item>

                <el-form-item label="多多搜索/直通车/京东快车(费用)"  >
                    <el-input type="age" @blur="zfzhl"   v-model="hz.moresearchfy "  ></el-input>
                </el-form-item>
                <el-form-item label="多多场景/超级推荐/京东展位(费用)" >
                    <el-input type="age" @blur="zfzhl"  v-model="hz.manyscenesfy  "  ></el-input>
                </el-form-item>

                <el-form-item label="放心推/钻石展位/京东直投(费用)" prop="name" >
                    <el-input type="age" @blur="zfzhl"  v-model="hz.restassuredpushfy "  ></el-input>
                </el-form-item>

                <el-form-item label="淘客推广(费用)" prop="name" >
                    <el-input type="age" @blur="zfzhl"   v-model="hz.taokepromotionfy "  ></el-input>
                </el-form-item>

                <el-form-item label="AI推广(费用)" prop="name" >
                    <el-input type="age" @blur="zfzhl"  v-model="hz.aipromotionfy"  ></el-input>
                </el-form-item>
                <el-form-item label="品销宝(费用)" prop="name" >
                    <el-input type="age" @blur="zfzhl"   v-model="hz.pinxiaobaofy"  ></el-input>
                </el-form-item>

                <el-form-item label="推广总费用" prop="name" >
                    <el-input type="age"  disabled="disabled"   v-model="hz.promotioncost " ></el-input>
                </el-form-item>

                <el-form-item label="推广费用占比" prop="name" >
                    <el-input type="age" disabled="disabled"   v-model="hz.promotioncostzb " ></el-input>
                </el-form-item>
                <el-form-item label="平台扣点" prop="name" >
                    <el-input type="age"    v-model="hz.platformbuckle " ></el-input>
                </el-form-item>

                <el-form-item label="其他" prop="name" >
                    <el-input type="age"  @blur="zfzhl"  v-model="hz.otherexpenses" ></el-input>
                </el-form-item>

                <el-form-item label="合计总费用" prop="name" >
                    <el-input type="age"   disabled="disabled" v-model="hz.totalcost" ></el-input>
                </el-form-item>
                <el-form-item label="费销比" prop="name" >
                    <el-input type="age" disabled="disabled"  v-model="hz.costratio " ></el-input>
                </el-form-item>

            </el-form>
            <el-button @click="centerDialogVisibles = false">取 消</el-button>
            <el-button type="primary" @click="addmodification">添加</el-button>
            <el-button type="warning" @click="qk" plain>清空</el-button>

        </el-dialog>


    </div>
</template>

<script>
    export default {
        name: "hzlist",    data() {

            return { pickerOptions: {
                    shortcuts: [
                        {
                            text: '昨天',
                            onClick(picker) {
                                const end = new Date();
                                const start = new Date();
                                start.setTime(start.getTime() - 3600 * 1000 * 24 * 1);
                                end.setTime(end.getTime() - 3600 * 1000 * 24 * 1);
                                picker.$emit('pick', [start, end]);
                            }
                        }
                        ,{
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
                listLoading: true, // 数据是否正在加载
                list: null, // 医院列表数据集合
                total: 0, // 数据库中的总记录数
                page: 1, // 默认页码
                limit: 20, // 每页记录数
                 tableData: [],
                centerDialogVisibles:false,
                centerDialogVisible: false,
                hz:{},
                shopName:'',
                loading:false,
                hz1:{
                    aipromotionfy: 0,
                    aipromotionll: 0,
                    actualsales:0,
                    manyscenesfy: 0,
                    manyscenesll: 0,
                    moresearchfy: 0,
                    moresearchll: 0,
                    numBuyers: 0,
                    orderquantity: 0,
                    otherexpenses: 0,
                    pinxiaobaofy: 0,
                    pinxiaobaoll: 0,
                    platformBh: 0,
                    customerprice:0,
                    paymentrate:0,
                    refundamount: 0,
                    restassuredpushfy: 0,
                    restassuredpushll: 0,
                    sales:0,
                    taokepromotionfy: 0,
                    taokepromotionll:0,
                    totaltraffic: 0,
                    refundrate:0,
                    name:'',
                    freetrafficzb:0,
                    promotioncostzb:0,
                    dateTime:''
                },
                state1: '',
                value2: '',
                options: [
                    {
                        value: '1',
                        label: '全部店铺'
                    },
                    {
                        value: '10',
                        label: '总汇总'
                    },
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
                ls:{
                    value:'',
                    da1:[],
                    name:[],
                },
                options22:[],
                getshopname1:[],
                sels: [],//选中的值显示
            }
        },
        created: function () {
            this.intn();
                this.getshopname();
        },
        methods: {
            deleteFileOrDirectory() {

                this.$confirm('此操作将永久删除该数据, 是否继续?', '提示', {
                    confirmButtonText: '确定',
                    cancelButtonText: '取消',
                    type: 'warning'
                }).then(() => {
                    var ids= this.sels.map(item => item.id).join()//获取所有选中行的id组成的字符串，以逗号分隔
                    this.sels = [];
                    this.deleteRequest(`/lsSale/deleteId/${ids}`).then(req=>{
                        if (req){
                            this.fetchData(1);
                            this.$message({
                                type: 'success',
                                message: '删除成功!'
                            });

                        }
                    })
                })
            },
            selsChange(sels) {
                this.sels = sels
            },
            handleEdit(index, row) {
               this.getRequest(`/lsSale/getone/${row.id}`).then(req=>{
                    this.hz = req.data;
                    this.hz.name = row.name;
                })
                this.centerDialogVisible =true;

            },
            getshopname(){
                this.getRequest('/lsShop/showlist').then(req => {
                        this.getshopname1 = req.data;
                        this.options22 = req.data;
                })
            },
            querShop(){
                this.intn();
            },
            //修改汇总
            modification(){
                this.$confirm('是否要修改?', '提示', {
                    confirmButtonText: '确定',
                    cancelButtonText: '取消',
                    type: 'warning'
                }).then(() => {
                    this.postRequest('/lsSale/xgsj',this.hz).then(req=>{
                      if (req.data){
                          this.$message({
                              type: 'success',
                              message: '成功'
                          });
                          this.centerDialogVisible = false;
                          this.intn();
                      }else {
                          this.$message.error('修改失败');
                      }
                    })


                }).catch(() => {
                    this.$message({
                        type: 'info',
                        message: '已取消'
                    });
                });
            }, //删除
            sstghandleEdit(index, row){
                this.$confirm('此操作将永久删除该信息, 是否继续?', '提示', {
                    confirmButtonText: '确定',
                    cancelButtonText: '取消',
                    type: '' +
                        'warning'
                }).then(() => {
                    this.deleteRequest(`/lsSale/deleteId/${row.id}`).then(req=>{
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
                intn(){
                    this.postRequest(`/lsSale/list/${this.page}/${this.limit}`,this.ls).then(req=>{
                        this.tableData=req.data.records;
                        this.total = req.data.total;
                    })
                },
            fetchData(page=1) {
                this.page = page
                this.intn();
            },
            isnull(su){

            },
            //分页，页码变化
            changeSize(size) {
                this.limit = size
                this.fetchData(1)
            },
            //添加汇总.
            addSale(){

                this.centerDialogVisibles = true;
                this.hz = this.hz1;
            },
            //确认添加
            addmodification(){
                this.$confirm('你确定要添加数据, 是否继续?', '提示', {
                    confirmButtonText: '确定',
                    cancelButtonText: '取消',
                    type: 'warning'
                }).then(() => {
                    this.hz.dateTime = this.value2;
                    this.hz.name = this.state1;
                    this.postRequest('/lsSale/addlsSale',this.hz).then(req=>{
                            this.hz = this.hz1;
                    })
                }).catch(() => {
                    this.$message({
                        type: 'info',
                        message: '已取消添加'
                    });
                });

            },
            qk(){
                this.hz = this.hz1;
                this.state1 = '';
                this.value2 = '';
            },
            bh1(){
               this.intn();
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
            zfzhl(){
                let je = this.jes(this.hz.sales); //全店销售额
                this.hz.sales = this.jes(this.hz.sales);
                this.hz.actualsales = this.jes(this.hz.actualsales); //实际销售额
                this.hz.numBuyers = this.jes(this.hz.numBuyers); //支付买家数
                this.hz.orderquantity =this.jes(this.hz.orderquantity)                  //订单量
                this.hz.refundamount = this.jes(this.hz.refundamount) //退款金额
                this.hz.totaltraffic = this.jes(this.hz.totaltraffic)
                this.hz.moresearchll = this.jes(this.hz.moresearchll)
                this.hz.manyscenesll= this.jes(this.hz.manyscenesll)
                this.hz.restassuredpushll= this.jes(this.hz.restassuredpushll)
                this.hz.taokepromotionll= this.jes(this.hz.taokepromotionll)
                this.hz.aipromotionll= this.jes(this.hz.aipromotionll)
                this.hz.pinxiaobaoll= this.jes( this.hz.pinxiaobaoll)
                this.hz.moresearchfy= this.jes( this.hz.moresearchfy)
                this.hz.manyscenesfy= this.jes(this.hz.manyscenesfy)
                this.hz.restassuredpushfy= this.jes(this.hz.restassuredpushfy)
                this.hz.taokepromotionfy= this.jes(this.hz.taokepromotionfy)
                this.hz.aipromotionfy= this.jes(this.hz.aipromotionfy)
                this.hz.pinxiaobaofy = this.jes(this.hz.pinxiaobaofy)

                if (this.hz.numBuyers!=0 && this.hz.totaltraffic!=0){ //支付转化率
                    this.hz.paymentrate = (this.jes(this.hz.numBuyers)/this.jes(this.hz.totaltraffic)).toFixed(4);
                }

                if (je !=null ){
                    this.hz.actualsales = this.jes(je)-this.jes(this.hz.refundamount);
                }

                if (je !=null && this.hz.refundamount!=null){  //退款率
                    this.hz.refundrate = (this.hz.refundamount/this.jes(je)).toFixed(4);
                }
                if (je !=0 && this.hz.numBuyers!=0){  //客单价
                    this.hz.customerprice = (this.jes(je)/this.jes(this.hz.numBuyers)).toFixed(4);
                }



                this.hz.promotionflow = Number(this.hz.moresearchll)+Number(this.hz.manyscenesll)+Number(this.hz.restassuredpushll)+Number(this.hz.taokepromotionll)+Number(this.hz.aipromotionll)+Number(this.hz.pinxiaobaoll) //推广总流量
                this.hz.promotioncost = Number(this.hz.moresearchfy)+Number(this.hz.manyscenesfy)+Number(this.hz.restassuredpushfy)+Number(this.hz.taokepromotionfy)+Number(this.hz.aipromotionfy)+Number(this.hz.pinxiaobaofy) //推广总费用
                    if (this.hz.totaltraffic!=0){ //推广流量占比
                        this.hz.promotionflowzb = (this.hz.promotionflow/this.hz.totaltraffic).toFixed(4)
                    }

                if (je!=0){ //推广费用占比
                    this.hz.promotioncostzb = (this.hz.promotioncost/je).toFixed(4)
                }

                    if (this.hz.platformBh==101){//拼多多扣点
                        this.hz.platformbuckle = (this.hz.actualsales*0.006).toFixed(4)
                    }

                if (this.hz.platformBh==102 && this.hz.name.indexOf("特")!=-1){//特扣点
                    this.hz.platformbuckle = (this.hz.actualsales*0.02).toFixed(4)
                }
                this.hz.freetraffic = this.hz.totaltraffic-this.hz.promotionflow //免费流量
                 if (this.hz.freetraffic!=0 && this.hz.totaltraffic!=0){//免费流量占比
                        this.hz.freetrafficzb = (this.hz.freetraffic/this.hz.totaltraffic).toFixed(4)
                 }
                this.hz.totalcost = Number(this.hz.promotioncost)+Number(this.hz.platformbuckle)+Number(this.hz.otherexpenses);//合计总费用
                if (je!=0){//费销比
                    this.hz.costratio = (this.hz.totalcost/je).toFixed(4)
                }

            },
            query(queryString, cb) {
                this.fileList = []
                if (queryString == '') {
                    this.getRequest('/lsShop/showlist1?name=' + queryString).then(req => {
                        clearTimeout(this.timeout);
                        this.timeout = setTimeout(() => {
                            cb(req.data);
                        }, 3000 * Math.random());
                    })
                }else {
                    this.getRequest('/lsShop/showlist1?name=' + queryString).then(req => {
                        cb(req.data)
                    })
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
        }
    }
</script>

<style>
    .demo-table-expand {
        font-size: 0;
    }
    .demo-table-expand label {
        width: 250px;
        color: #99a9bf;

    }
    .demo-table-expand .el-form-item {
        margin-right: 0;
        margin-bottom: 0;
        width: 50%;
    }
    .but{
        margin-left: 20px;
    }

</style>
