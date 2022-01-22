<template>
    <div id="chartLineBox" style="width: 90%;height: 70vh;"> </div>
</template>

<script>
    import * as echarts from 'echarts'

    export default {
        name: "index",
        data() {
            return {

            }
        },
        mounted(){
            this.chartLine = echarts.init(document.getElementById('chartLineBox'));
            var dateTime=new Date();
           var ardata = [];
            for (let i =1;i<8;i++){
                dateTime=dateTime.setDate(dateTime.getDate()-1);
                dateTime=new Date(dateTime);
                ardata[7-i]=dateTime.toLocaleDateString();
            }

            // 指定图表的配置项和数据
            var option = {
                tooltip: {              //设置tip提示
                    trigger: 'axis'
                },

                legend: {               //设置区分（哪条线属于什么）
                    data:['全店销售额','订单量','合计总费用']
                },
                color: ['#8AE09F', '#FA6F53','#FA6F53'],       //设置区分（每条线是什么颜色，和 legend 一一对应）
                xAxis: {                //设置x轴
                    type: 'category',
                    boundaryGap: false,     //坐标轴两边不留白
                    data: ardata,
                    name: '日期',           //X轴 name
                    nameTextStyle: {        //坐标轴名称的文字样式
                        color: '#FA6F53',
                        fontSize: 16,
                        padding: [0, 0, 0, 20]
                    },
                    axisLine: {             //坐标轴轴线相关设置。
                        lineStyle: {
                            color: '#FA6F53',
                        }
                    }
                },
                yAxis: {
                    name: '金额',
                    nameTextStyle: {
                        color: '#FA6F53',
                        fontSize: 16,
                        padding: [0, 0, 10, 0]
                    },
                    axisLine: {
                        lineStyle: {
                            color: '#fa6f53',
                        }
                    },
                    type: 'value'
                },
                series: [
                    {
                        name: '全店销售额',
                        data:  [220, 232, 201, 234, 290, 230, 220],
                        type: 'line',
                        smooth: true,
                        symbol:'none',  //折线点的大// 类型为折线图
                        lineStyle: {                // 线条样式 => 必须使用normal属性
                            normal: {
                                color: '#8AE09F',

                            }
                        },
                    },
                    {
                        name: '订单量',
                        data:  [2203, 2323, 2013, 34, 90, 30, 20],
                        symbol:'none',
                        smooth: true,
                        type: 'line',               // 类型为折线图
                        lineStyle: {                // 线条样式 => 必须使用normal属性
                            normal: {
                                color: 'red',
                            }
                        },
                    },
                    {
                        name: '合计总费用',
                        data: [120, 200, 150, 80, 70, 110, 130],
                        symbol:'none',
                        smooth: true,
                        type: 'line',
                        lineStyle: {
                            normal: {
                                color: '#FA6F53',
                            }
                        },
                    }
                ]
            };

            // 使用刚指定的配置项和数据显示图表。
            this.chartLine.setOption(option);
        }
    }
</script>

<style>

</style>
