package com.mulaobao.administration.entity;

import com.alibaba.excel.annotation.ExcelProperty;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * (JdXssj)表实体类
 *
 * @author makejava
 * @since 2021-09-16 17:40:47
 */
@SuppressWarnings("serial")
@Data
@TableName("JD_Xssj")
public class JdXssj extends BaseMongoEntity {

	private String id;

	@TableField("Date_time")
	private Date dateTime;//

	@TableField(exist = false)
	@ExcelProperty(index = 0)
	private String dateTime1;// 时间

	@TableField("Browse_num")
	@ExcelProperty(index = 1)
	private Double browseNum;

	@TableField("Browse_numhb")
	private Double browseNumhb;

	@TableField(exist = false)
	@ExcelProperty(index = 2)
	private String browseNumhb1;//浏览量环比

	@TableField("Vis_num")
	@ExcelProperty(index = 3)
	private Double visNum;

	@TableField("Vis_hb")
	private Double visHb;

	@TableField(exist = false)
	@ExcelProperty(index = 4)
	private String visHb1;//访客数环比

	@TableField("Browse_rj")
	@ExcelProperty(index = 5)
	private Double browseRj;

	@TableField("Browse_rjhb")
	private Double browseRjhb;//人均浏览量环比

	@TableField(exist = false)
	@ExcelProperty(index = 6)
	private String browseRjhb1;//人均浏览量环比

	@TableField("Stop_timepj")
	@ExcelProperty(index = 7)
	private Double stopTimepj;

	@TableField("Stop_timepjhb")
	private Double stopTimepjhb;//平均停留时间环比

	@TableField(exist = false)
	@ExcelProperty(index = 8)
	private String stopTimepjhb1;//平均停留时间环比

	@TableField("Jumploss_rate")
	private Double jumplossRate;//跳失率

	@TableField(exist = false)
	@ExcelProperty(index = 9)
	private String jumplossRate1;//跳失率

	@TableField("Jumploss_ratehb")
	private Double jumplossRatehb;//跳失率环比

	@TableField(exist = false)
	@ExcelProperty(index = 10)
	private String jumplossRatehb1;//跳失率环比


	@TableField("Deal_khs")
	@ExcelProperty(index = 11)
	private Double dealKhs;

	@TableField("Deal_khshb")
	private Double dealKhshb;//成交客户数环比

	@TableField(exist = false)
	@ExcelProperty(index = 12)
	private String dealKhshb1;//成交客户数环比

	@TableField("Deal_num")
	@ExcelProperty(index = 13)
	private Double dealNum;

	@TableField("Deal_numhb")
	private Double dealNumhb;//成交单量环比

	@TableField(exist = false)
	@ExcelProperty(index = 14)
	private String dealNumhb1;//成交单量环比

	@TableField("Deal_je")
	@ExcelProperty(index = 15)
	private Double dealJe;

	@TableField("Deal_jehb")
	private Double dealJehb; //成交金额环比

	@TableField(exist = false)
	@ExcelProperty(index = 16)
	private String dealJehb1; //成交金额环比

	@TableField("CustomerPrice")
	@ExcelProperty(index = 17)
	private Double customerprice;

	@TableField("CustomerPrice_hb")
	private Double customerpriceHb;//客单价环比

	@TableField(exist = false)
	@ExcelProperty(index = 18)
	private String customerpriceHb1;//客单价环比

	@TableField("Dealsp_num")
	@ExcelProperty(index = 19)
	private Double dealspNum;

	@TableField("Dealsp_numhb")
	private Double dealspNumhb;//成交商品件数环比

	@TableField(exist = false)
	@ExcelProperty(index = 20)
	private String dealspNumhb1;//成交商品件数环比

	@TableField("Deal_rate")
	private Double dealRate;//成交转化率

	@TableField(exist = false)
	@ExcelProperty(index = 21)
	private String dealRate1;//成交转化率

	@TableField("Deal_ratehb")
	private Double dealRatehb;//成交转化率环比

	@TableField(exist = false)
	@ExcelProperty(index = 22)
	private String dealRatehb1;//成交转化率环比


	@TableField("Plaorder_khs")
	@ExcelProperty(index = 23)
	private Double plaorderKhs;

	@TableField("Plaorder_khshb")
	private Double plaorderKhshb;//下单客户数环比

	@TableField(exist = false)
	@ExcelProperty(index = 24)
	private String plaorderKhshb1;//下单客户数环比

	@TableField("Plaorder_num")
	@ExcelProperty(index = 25)
	private Double plaorderNum;

	@TableField("Plaorder_numhb")
	private Double plaorderNumhb;//下单单量环比

	@TableField(exist = false)
	@ExcelProperty(index = 26)
	private String plaorderNumhb1;//下单单量环比

	@TableField("Plaorder_je")
	@ExcelProperty(index = 27)
	private Double plaorderJe;

	@TableField("Plaorder_jehb")
	private Double plaorderJehb;//下单金额环比

	@TableField(exist = false)
	@ExcelProperty(index = 28)
	private String plaorderJehb1;//下单金额环比

	@TableField("Plaordersp_num")
	@ExcelProperty(index = 29)
	private Double plaorderspNum;

	@TableField("Plaordersp_numhb")
	private Double plaorderspNumhb;//下单商品件数环比

	@TableField(exist = false)
	@ExcelProperty(index = 30)
	private String plaorderspNumhb1;//下单商品件数环比

	@TableField("Plaorder_rate")
	private Double plaorderRate;

	@TableField(exist = false)
	@ExcelProperty(index = 31)
	private String plaorderRate1;

	@TableField("Plaorder_ratehb")
	private Double plaorderRatehb;//下单转化率环比

	@TableField(exist = false)
	@ExcelProperty(index = 32)
	private String plaorderRatehb1;

	@TableField("Plaorder_cjrate")
	private Double plaorderCjrate;

	@TableField(exist = false)
	@ExcelProperty(index = 33)
	private String plaorderCjrate1;//下单成交转化率

	@TableField("Plaorder_cjratehb")
	private Double plaorderCjratehb;//下单成交转化率环比

	@TableField(exist = false)
	@ExcelProperty(index = 34)
	private String plaorderCjratehb1;//下单成交转化率环比


	/**
	 * 获取主键值
	 *
	 * @return 主键值
	 */

	protected Serializable pkVal() {
		return this.id;
	}


}

