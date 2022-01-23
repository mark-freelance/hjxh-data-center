package com.mulaobao.administration.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;

/**
 * (JdGwcd)表实体类
 *
 * @author makejava
 * @since 2021-09-16 17:40:19
 */
@SuppressWarnings("serial")
@Data
@TableName("JD_Gwcd")
public class JdGwcd extends BaseMongoEntity {

	private String id;


	@TableField("Zh_name")
	private String zhName;

	@TableField("Toshow_num")
	private Double toshowNum;

	@TableField("Hits_num")
	private Double hitsNum;

	@TableField("Hits_rate")
	private Double hitsRate;

	@TableField("Total_cost")
	private Double totalCost;

	@TableField("Toshow_spend")
	private Double toshowSpend;

	@TableField("Hits_spend")
	private Double hitsSpend;

	@TableField("Direct_ddh")
	private Double directDdh;

	@TableField("Direct_ddje")
	private Double directDdje;

	@TableField("Indirect_ddh")
	private Double indirectDdh;

	@TableField("Indirect_ddje")
	private Double indirectDdje;

	@TableField("Total_ddh")
	private Double totalDdh;

	@TableField("Total_ddje")
	private Double totalDdje;

	@TableField("Presale_ddh")
	private Double presaleDdh;

	@TableField("Presale_ddje")
	private Double presaleDdje;

	@TableField("Direct_addnum")
	private Double directAddnum;

	@TableField("Indirect_addnum")
	private Double indirectAddnum;

	@TableField("Total_addnum")
	private Double totalAddnum;

	@TableField("Con_rate")
	private Double conRate;

	@TableField("Roi")
	private Double roi;

	@TableField("Xdxk_num")
	private Double xdxkNum;

	@TableField("Ggfk_num")
	private Double ggfkNum;

	@TableField("Fwym_num")
	private Double fwymNum;

	@TableField("Duration")
	private Double duration;

	@TableField("Deepentry_num")
	private Double deepentryNum;

	@TableField("Shopgz_num")
	private Double shopgzNum;

	@TableField("Follow_shop")
	private Double followShop;

	@TableField("Make_num")
	private Double makeNum;

	@TableField("Volume_num")
	private Double volumeNum;

	@TableField("Cpa")
	private Double cpa;

	@TableField("Fabulous_num")
	private String fabulousNum;

	@TableField("Comment_num")
	private String commentNum;

	@TableField("Share_num")
	private String shareNum;

	@TableField("Follow_num")
	private String followNum;

	@TableField("Inter_num")
	private String interNum;

	@TableField("Inter_rate")
	private String interRate;

	@TableField("Watch_num")
	private String watchNum;

	@TableField("Watch_time")
	private String watchTime;

	@TableField("Watch_pjtime")
	private String watchPjtime;


	/**
	 * 获取主键值
	 *
	 * @return 主键值
	 */

	protected Serializable pkVal() {
		return this.id;
	}
}

