<?xml version="1.0" encoding="UTF-8"?>
<Form xmlVersion="20170720" releaseVersion="10.0.0">
<TableDataMap>
<TableData name="指标1-京东快车" class="com.fr.data.impl.DBTableData">
<Parameters>
<Parameter>
<Attributes name="shopbh"/>
<O>
<![CDATA[101001]]></O>
</Parameter>
<Parameter>
<Attributes name="jssj"/>
<O>
<![CDATA[2021-09-25]]></O>
</Parameter>
</Parameters>
<Attributes maxMemRowCount="-1"/>
<Connection class="com.fr.data.impl.NameDatabaseConnection">
<DatabaseName>
<![CDATA[RoyalTtiger]]></DatabaseName>
</Connection>
<Query>
<![CDATA[	with tmp_1
	as (
	select 
	sum(a1.MoreSearchfy) as 'MoreSearchfy'
	from ls_sale a1
	where shop_bh = '${shopbh}'
	and a1.date_time <= '${jssj}' and a1.date_time >= dateadd(dd,-29,'${jssj}')
	),
	tmp_2
	as (
	select 
	sum(a1.MoreSearchfy) as 'MoreSearchfy'
	from ls_sale a1
	where shop_bh = '${shopbh}'
	and a1.date_time <= dateadd(dd,-30,'${jssj}') and a1.date_time >= dateadd(dd,-59,'${jssj}')
	)
	select 
	a1.MoreSearchfy dqsj,
	a2.MoreSearchfy zrsj,
	convert(decimal(18,4),isnull((a1.MoreSearchfy-a2.MoreSearchfy)/nullif(a2.MoreSearchfy,0),0)) as zzl
	from tmp_1 a1 left join tmp_2 a2 on 1=1]]></Query>
<PageQuery>
<![CDATA[]]></PageQuery>
</TableData>
<TableData name="指标2-京东展位" class="com.fr.data.impl.DBTableData">
<Parameters>
<Parameter>
<Attributes name="jssj"/>
<O>
<![CDATA[2021-10-04]]></O>
</Parameter>
<Parameter>
<Attributes name="shopbh"/>
<O>
<![CDATA[101001]]></O>
</Parameter>
</Parameters>
<Attributes maxMemRowCount="-1"/>
<Connection class="com.fr.data.impl.NameDatabaseConnection">
<DatabaseName>
<![CDATA[RoyalTtiger]]></DatabaseName>
</Connection>
<Query>
<![CDATA[	with tmp_1
	as (
	select 
	sum(a1.ManyScenesfy) as 'ManyScenesfy'
	from ls_sale a1
	where shop_bh = '${shopbh}'
	and a1.date_time <= '${jssj}' and a1.date_time >= dateadd(dd,-29,'${jssj}')
	),
	tmp_2
	as (
	select 
	sum(a1.ManyScenesfy) as 'ManyScenesfy'
	from ls_sale a1
	where shop_bh = '${shopbh}'
	and a1.date_time <= dateadd(dd,-30,'${jssj}') and a1.date_time >= dateadd(dd,-59,'${jssj}')
	)
	select 
	a1.ManyScenesfy dqsj,
	a2.ManyScenesfy zrsj,
	convert(decimal(18,4),isnull((a1.ManyScenesfy-a2.ManyScenesfy)/nullif(a2.ManyScenesfy,0),0)) as zzl
	from tmp_1 a1 left join tmp_2 a2 on 1=1]]></Query>
<PageQuery>
<![CDATA[]]></PageQuery>
</TableData>
<TableData name="指标3-京东直投" class="com.fr.data.impl.DBTableData">
<Parameters>
<Parameter>
<Attributes name="jssj"/>
<O>
<![CDATA[2021-10-04]]></O>
</Parameter>
<Parameter>
<Attributes name="shopbh"/>
<O>
<![CDATA[101001]]></O>
</Parameter>
</Parameters>
<Attributes maxMemRowCount="-1"/>
<Connection class="com.fr.data.impl.NameDatabaseConnection">
<DatabaseName>
<![CDATA[RoyalTtiger]]></DatabaseName>
</Connection>
<Query>
<![CDATA[	with tmp_1
	as (
	select 
	sum(a1.RestAssuredPushfy) as 'RestAssuredPushfy'
	from ls_sale a1
	where shop_bh = '${shopbh}'
	and a1.date_time <= '${jssj}' and a1.date_time >= dateadd(dd,-29,'${jssj}')
	),
	tmp_2
	as (
	select 
	sum(a1.RestAssuredPushfy) as 'RestAssuredPushfy'
	from ls_sale a1
	where shop_bh = '${shopbh}'
	and a1.date_time <= dateadd(dd,-30,'${jssj}') and a1.date_time >= dateadd(dd,-59,'${jssj}')
	)
	select 
	a1.RestAssuredPushfy dqsj,
	a2.RestAssuredPushfy zrsj,
	convert(decimal(18,4),isnull((a1.RestAssuredPushfy-a2.RestAssuredPushfy)/nullif(a2.RestAssuredPushfy,0),0)) as zzl
	from tmp_1 a1 left join tmp_2 a2 on 1=1]]></Query>
<PageQuery>
<![CDATA[]]></PageQuery>
</TableData>
<TableData name="指标4-淘客推广" class="com.fr.data.impl.DBTableData">
<Parameters>
<Parameter>
<Attributes name="jssj"/>
<O>
<![CDATA[2021-10-04]]></O>
</Parameter>
<Parameter>
<Attributes name="shopbh"/>
<O>
<![CDATA[101001]]></O>
</Parameter>
</Parameters>
<Attributes maxMemRowCount="-1"/>
<Connection class="com.fr.data.impl.NameDatabaseConnection">
<DatabaseName>
<![CDATA[RoyalTtiger]]></DatabaseName>
</Connection>
<Query>
<![CDATA[	with tmp_1
	as (
	select 
	sum(a1.TaokePromotionfy) as 'TaokePromotionfy'
	from ls_sale a1
	where shop_bh = '${shopbh}'
	and a1.date_time <= '${jssj}' and a1.date_time >= dateadd(dd,-29,'${jssj}')
	),
	tmp_2
	as (
	select 
	sum(a1.TaokePromotionfy) as 'TaokePromotionfy'
	from ls_sale a1
	where shop_bh = '${shopbh}'
	and a1.date_time <= dateadd(dd,-30,'${jssj}') and a1.date_time >= dateadd(dd,-59,'${jssj}')
	)
	select 
	a1.TaokePromotionfy dqsj,
	a2.TaokePromotionfy zrsj,
	convert(decimal(18,4),isnull((a1.TaokePromotionfy-a2.TaokePromotionfy)/nullif(a2.TaokePromotionfy,0),0)) as zzl
	from tmp_1 a1 left join tmp_2 a2 on 1=1]]></Query>
<PageQuery>
<![CDATA[]]></PageQuery>
</TableData>
<TableData name="指标5-AI推广" class="com.fr.data.impl.DBTableData">
<Parameters>
<Parameter>
<Attributes name="jssj"/>
<O>
<![CDATA[2021-10-04]]></O>
</Parameter>
<Parameter>
<Attributes name="shopbh"/>
<O>
<![CDATA[101001]]></O>
</Parameter>
</Parameters>
<Attributes maxMemRowCount="-1"/>
<Connection class="com.fr.data.impl.NameDatabaseConnection">
<DatabaseName>
<![CDATA[RoyalTtiger]]></DatabaseName>
</Connection>
<Query>
<![CDATA[	with tmp_1
	as (
	select 
	sum(a1.AIPromotionfy) as 'AIPromotionfy'
	from ls_sale a1
	where shop_bh = '${shopbh}'
	and a1.date_time <= '${jssj}' and a1.date_time >= dateadd(dd,-29,'${jssj}')
	),
	tmp_2
	as (
	select 
	sum(a1.AIPromotionfy) as 'AIPromotionfy'
	from ls_sale a1
	where shop_bh = '${shopbh}'
	and a1.date_time <= dateadd(dd,-30,'${jssj}') and a1.date_time >= dateadd(dd,-59,'${jssj}')
	)
	select 
	a1.AIPromotionfy dqsj,
	a2.AIPromotionfy zrsj,
	convert(decimal(18,4),isnull((a1.AIPromotionfy-a2.AIPromotionfy)/nullif(a2.AIPromotionfy,0),0)) as zzl
	from tmp_1 a1 left join tmp_2 a2 on 1=1]]></Query>
<PageQuery>
<![CDATA[]]></PageQuery>
</TableData>
<TableData name="指标6-品销宝" class="com.fr.data.impl.DBTableData">
<Parameters>
<Parameter>
<Attributes name="jssj"/>
<O>
<![CDATA[2021-10-04]]></O>
</Parameter>
<Parameter>
<Attributes name="shopbh"/>
<O>
<![CDATA[101001]]></O>
</Parameter>
</Parameters>
<Attributes maxMemRowCount="-1"/>
<Connection class="com.fr.data.impl.NameDatabaseConnection">
<DatabaseName>
<![CDATA[RoyalTtiger]]></DatabaseName>
</Connection>
<Query>
<![CDATA[	with tmp_1
	as (
	select 
	sum(a1.Pinxiaobaofy) as 'Pinxiaobaofy'
	from ls_sale a1
	where shop_bh = '${shopbh}'
	and a1.date_time <= '${jssj}' and a1.date_time >= dateadd(dd,-29,'${jssj}')
	),
	tmp_2
	as (
	select 
	sum(a1.Pinxiaobaofy) as 'Pinxiaobaofy'
	from ls_sale a1
	where shop_bh = '${shopbh}'
	and a1.date_time <= dateadd(dd,-30,'${jssj}') and a1.date_time >= dateadd(dd,-59,'${jssj}')
	)
	select 
	a1.Pinxiaobaofy dqsj,
	a2.Pinxiaobaofy zrsj,
	convert(decimal(18,4),isnull((a1.Pinxiaobaofy-a2.Pinxiaobaofy)/nullif(a2.Pinxiaobaofy,0),0)) as zzl
	from tmp_1 a1 left join tmp_2 a2 on 1=1]]></Query>
<PageQuery>
<![CDATA[]]></PageQuery>
</TableData>
<TableData name="整体趋势" class="com.fr.data.impl.DBTableData">
<Parameters>
<Parameter>
<Attributes name="jssj"/>
<O>
<![CDATA[2021-10-05]]></O>
</Parameter>
<Parameter>
<Attributes name="shopbh"/>
<O>
<![CDATA[102001]]></O>
</Parameter>
</Parameters>
<Attributes maxMemRowCount="-1"/>
<Connection class="com.fr.data.impl.NameDatabaseConnection">
<DatabaseName>
<![CDATA[RoyalTtiger]]></DatabaseName>
</Connection>
<Query>
<![CDATA[with tmp_1
as(
select 
	year1,
	case 
	right(year1,2) 
	when '01' then '1月'
	when '02' then '2月'
	when '03' then '3月'
	when '04' then '4月'
	when '05' then '5月'
	when '06' then '6月'
	when '07' then '7月'
	when '08' then '8月'
	when '09' then '9月'
	when '10' then '10月'
	when '11' then '11月'
	when '12' then '10月'
	end as year2,
	MoreSearchll
	from (
	select left(a1.date_time,7) as year1,
	sum(MoreSearchll) as MoreSearchll
	from LS_Sale a1
	where a1.Shop_bh = '${shopbh}' 
	and year(a1.date_time) = left('${jssj}',4)
	group by left(a1.date_time,7)
	) a1
),
tmp_2
as(
select 
	year1,
	case 
	right(year1,2) 
	when '01' then '1月'
	when '02' then '2月'
	when '03' then '3月'
	when '04' then '4月'
	when '05' then '5月'
	when '06' then '6月'
	when '07' then '7月'
	when '08' then '8月'
	when '09' then '9月'
	when '10' then '10月'
	when '11' then '11月'
	when '12' then '10月'
	end as year2,
	ManyScenesll
	from (
	select left(a1.date_time,7) as year1,
	sum(ManyScenesll) as ManyScenesll
	from LS_Sale a1
	where a1.Shop_bh = '${shopbh}' 
	and year(a1.date_time) = left('${jssj}',4)
	group by left(a1.date_time,7)
	) a1
),
tmp_3
as(
select 
	year1,
	case 
	right(year1,2) 
	when '01' then '1月'
	when '02' then '2月'
	when '03' then '3月'
	when '04' then '4月'
	when '05' then '5月'
	when '06' then '6月'
	when '07' then '7月'
	when '08' then '8月'
	when '09' then '9月'
	when '10' then '10月'
	when '11' then '11月'
	when '12' then '10月'
	end as year2,
	RestAssuredPushll
	from (
	select left(a1.date_time,7) as year1,
	sum(RestAssuredPushll) as RestAssuredPushll
	from LS_Sale a1
	where a1.Shop_bh = '${shopbh}' 
	and year(a1.date_time) = left('${jssj}',4)
	group by left(a1.date_time,7)
	) a1
),
tmp_4
as(
select 
	year1,
	case 
	right(year1,2) 
	when '01' then '1月'
	when '02' then '2月'
	when '03' then '3月'
	when '04' then '4月'
	when '05' then '5月'
	when '06' then '6月'
	when '07' then '7月'
	when '08' then '8月'
	when '09' then '9月'
	when '10' then '10月'
	when '11' then '11月'
	when '12' then '10月'
	end as year2,
	TaokePromotionll
	from (
	select left(a1.date_time,7) as year1,
	sum(TaokePromotionll) as TaokePromotionll
	from LS_Sale a1
	where a1.Shop_bh = '${shopbh}' 
	and year(a1.date_time) = left('${jssj}',4)
	group by left(a1.date_time,7)
	) a1
),
tmp_5
as(
select 
	year1,
	case 
	right(year1,2) 
	when '01' then '1月'
	when '02' then '2月'
	when '03' then '3月'
	when '04' then '4月'
	when '05' then '5月'
	when '06' then '6月'
	when '07' then '7月'
	when '08' then '8月'
	when '09' then '9月'
	when '10' then '10月'
	when '11' then '11月'
	when '12' then '10月'
	end as year2,
	AIPromotionll
	from (
	select left(a1.date_time,7) as year1,
	sum(AIPromotionll) as AIPromotionll
	from LS_Sale a1
	where a1.Shop_bh = '${shopbh}' 
	and year(a1.date_time) = left('${jssj}',4)
	group by left(a1.date_time,7)
	) a1
),
tmp_6
as(
select 
	year1,
	case 
	right(year1,2) 
	when '01' then '1月'
	when '02' then '2月'
	when '03' then '3月'
	when '04' then '4月'
	when '05' then '5月'
	when '06' then '6月'
	when '07' then '7月'
	when '08' then '8月'
	when '09' then '9月'
	when '10' then '10月'
	when '11' then '11月'
	when '12' then '10月'
	end as year2,
	Pinxiaobaofy
	from (
	select left(a1.date_time,7) as year1,
	sum(Pinxiaobaofy) as Pinxiaobaofy
	from LS_Sale a1
	where a1.Shop_bh = '${shopbh}' 
	and year(a1.date_time) = left('${jssj}',4)
	group by left(a1.date_time,7)
	) a1
)
select a1.year2 as year2,
a1.MoreSearchll as '直通车',
a2.ManyScenesll as '超级推荐',
a3.RestAssuredPushll as '钻石展位',
a4.TaokePromotionll as '淘客推广',
a5.AIPromotionll as 'AI推广',
a6.Pinxiaobaofy as '品销宝' 
from tmp_1 a1
left join tmp_2 a2 on a1.year2 = a2.year2
left join tmp_3 a3 on a1.year2 = a3.year2
left join tmp_4 a4 on a1.year2 = a4.year2
left join tmp_5 a5 on a1.year2 = a5.year2
left join tmp_6 a6 on a1.year2 = a6.year2
order by a1.year1]]></Query>
<PageQuery>
<![CDATA[]]></PageQuery>
</TableData>
<TableData name="店铺名称" class="com.fr.data.impl.DBTableData">
<Parameters>
<Parameter>
<Attributes name="shopbh"/>
<O>
<![CDATA[101001]]></O>
</Parameter>
</Parameters>
<Attributes maxMemRowCount="-1"/>
<Connection class="com.fr.data.impl.NameDatabaseConnection">
<DatabaseName>
<![CDATA[RoyalTtiger]]></DatabaseName>
</Connection>
<Query>
<![CDATA[select Shop_name from LS_Shop where Shop_bh = '${shopbh}']]></Query>
<PageQuery>
<![CDATA[]]></PageQuery>
</TableData>
</TableDataMap>
<FormMobileAttr>
<FormMobileAttr refresh="false" isUseHTML="false" isMobileOnly="false" isAdaptivePropertyAutoMatch="false" appearRefresh="false" promptWhenLeaveWithoutSubmit="false" allowDoubleClickOrZoom="true"/>
</FormMobileAttr>
<Parameters/>
<Layout class="com.fr.form.ui.container.WBorderLayout">
<WidgetName name="form"/>
<WidgetAttr aspectRatioLocked="false" aspectRatioBackup="-1.0" description="">
<MobileBookMark useBookMark="false" bookMarkName="" frozen="false"/>
<PrivilegeControl/>
</WidgetAttr>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="0" color="-723724" borderRadius="0" type="0" borderStyle="0"/>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="SimSun" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Alpha alpha="1.0"/>
</Border>
<LCAttr vgap="0" hgap="0" compInterval="0"/>
<ShowBookmarks showBookmarks="false"/>
<NorthAttr/>
<North class="com.fr.form.ui.container.WParameterLayout">
<WidgetName name="para"/>
<WidgetAttr aspectRatioLocked="false" aspectRatioBackup="-1.0" description="">
<MobileBookMark useBookMark="false" bookMarkName="" frozen="false"/>
<PrivilegeControl/>
</WidgetAttr>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="0" color="-723724" borderRadius="0" type="0" borderStyle="0"/>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="SimSun" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Alpha alpha="1.0"/>
</Border>
<Background name="ColorBackground"/>
<LCAttr vgap="0" hgap="0" compInterval="0"/>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.EditorHolder">
<WidgetName name="shopbh"/>
<LabelName name="shopbh:"/>
<WidgetAttr invisible="true" aspectRatioLocked="false" aspectRatioBackup="-1.0" description="">
<MobileBookMark useBookMark="false" bookMarkName="shopbh" frozen="false"/>
<PrivilegeControl/>
</WidgetAttr>
<widgetValue>
<O>
<![CDATA[101001]]></O>
</widgetValue>
</InnerWidget>
<BoundsAttr x="91" y="9" width="200" height="21"/>
</Widget>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.Label">
<WidgetName name="Labelshopbh"/>
<WidgetAttr invisible="true" aspectRatioLocked="false" aspectRatioBackup="-1.0" description="">
<MobileBookMark useBookMark="false" bookMarkName="Labelshopbh" frozen="false"/>
<PrivilegeControl/>
</WidgetAttr>
<widgetValue>
<O>
<![CDATA[店铺名称:]]></O>
</widgetValue>
<LabelAttr verticalcenter="true" textalign="0" autoline="true"/>
<FRFont name="SimSun" style="0" size="72"/>
<border style="0" color="-723724"/>
</InnerWidget>
<BoundsAttr x="11" y="9" width="80" height="21"/>
</Widget>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.parameter.FormSubmitButton">
<WidgetName name="Search"/>
<LabelName name="shopbh:"/>
<WidgetAttr invisible="true" aspectRatioLocked="false" aspectRatioBackup="-1.0" description="">
<MobileBookMark useBookMark="false" bookMarkName="Search" frozen="false"/>
<PrivilegeControl/>
</WidgetAttr>
<Text>
<![CDATA[查询]]></Text>
<Hotkeys>
<![CDATA[enter]]></Hotkeys>
</InnerWidget>
<BoundsAttr x="669" y="9" width="80" height="21"/>
</Widget>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.DateEditor">
<Listener event="stopedit" name="编辑结束1">
<JavaScript class="com.fr.js.JavaScriptImpl">
<Parameters/>
<Content>
<![CDATA[_g().parameterCommit();
]]></Content>
</JavaScript>
</Listener>
<Listener event="afterinit" name="初始化后1">
<JavaScript class="com.fr.js.JavaScriptImpl">
<Parameters/>
<Content>
<![CDATA[_g().parameterCommit();
]]></Content>
</JavaScript>
</Listener>
<WidgetName name="jssj"/>
<LabelName name="时间:"/>
<WidgetAttr aspectRatioLocked="false" aspectRatioBackup="-1.0" description="">
<MobileBookMark useBookMark="false" bookMarkName="jssj" frozen="false"/>
<PrivilegeControl/>
</WidgetAttr>
<DateAttr enddatefm="=today()"/>
<widgetValue>
<O t="XMLable" class="com.fr.base.Formula">
<Attributes>
<![CDATA[=datedelta(today(),-1)]]></Attributes>
</O>
</widgetValue>
</InnerWidget>
<BoundsAttr x="130" y="25" width="110" height="21"/>
</Widget>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.Label">
<WidgetName name="Labeljssj"/>
<WidgetAttr aspectRatioLocked="false" aspectRatioBackup="-1.0" description="">
<MobileBookMark useBookMark="false" bookMarkName="Labeljssj" frozen="false"/>
<PrivilegeControl/>
</WidgetAttr>
<widgetValue>
<O>
<![CDATA[时间:]]></O>
</widgetValue>
<LabelAttr verticalcenter="true" textalign="0" autoline="true"/>
<FRFont name="SimSun" style="0" size="72"/>
<border style="0" color="-723724"/>
</InnerWidget>
<BoundsAttr x="50" y="25" width="80" height="21"/>
</Widget>
<ShowBookmarks showBookmarks="false"/>
<Sorted sorted="false"/>
<MobileWidgetList>
<Widget widgetName="shopbh"/>
<Widget widgetName="Search"/>
<Widget widgetName="jssj"/>
</MobileWidgetList>
<FrozenWidgets/>
<MobileBookMarkStyle class="com.fr.form.ui.mobile.impl.DefaultMobileBookMarkStyle"/>
<Display display="true"/>
<DelayDisplayContent delay="true"/>
<UseParamsTemplate use="false"/>
<Position position="0"/>
<Design_Width design_width="960"/>
<NameTagModified>
<TagModified tag="jssj" modified="true"/>
<TagModified tag="shopbh" modified="true"/>
<TagModified tag="Search" modified="true"/>
</NameTagModified>
<WidgetNameTagMap>
<NameTag name="jssj" tag="时间:"/>
<NameTag name="shopbh" tag="shopbh:"/>
<NameTag name="Search" tag="shopbh:"/>
</WidgetNameTagMap>
<ParamAttr class="com.fr.report.mobile.DefaultMobileParamStyle"/>
<ParamStyle class="com.fr.form.ui.mobile.impl.DefaultMobileParameterStyle"/>
</North>
<Center class="com.fr.form.ui.container.WFitLayout">
<WidgetName name="body"/>
<WidgetAttr aspectRatioLocked="false" aspectRatioBackup="-1.0" description="">
<MobileBookMark useBookMark="false" bookMarkName="" frozen="false"/>
<PrivilegeControl/>
</WidgetAttr>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="0" color="-723724" borderRadius="0" type="0" borderStyle="0"/>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="宋体" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Alpha alpha="1.0"/>
</Border>
<LCAttr vgap="0" hgap="0" compInterval="0"/>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.container.WTitleLayout">
<WidgetName name="chart0"/>
<WidgetAttr aspectRatioLocked="false" aspectRatioBackup="-1.0" description="">
<MobileBookMark useBookMark="false" bookMarkName="chart0" frozen="false"/>
<PrivilegeControl/>
</WidgetAttr>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="0" color="-723724" borderRadius="0" type="0" borderStyle="0"/>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="SimSun" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Alpha alpha="1.0"/>
</Border>
<LCAttr vgap="0" hgap="0" compInterval="0"/>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.ChartEditor">
<WidgetName name="chart0"/>
<WidgetID widgetID="f296c75a-6fe5-4b5d-a6cd-9df5acdac4fb"/>
<WidgetAttr aspectRatioLocked="false" aspectRatioBackup="-1.0" description="">
<MobileBookMark useBookMark="false" bookMarkName="" frozen="false"/>
<PrivilegeControl/>
</WidgetAttr>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="0" color="-723724" borderRadius="0" type="0" borderStyle="0"/>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="宋体" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Alpha alpha="1.0"/>
</Border>
<LayoutAttr selectedIndex="0"/>
<ChangeAttr enable="false" changeType="button" timeInterval="5" buttonColor="-6710887" carouselColor="-8421505" showArrow="true">
<TextAttr>
<Attr alignText="0" predefinedStyle="false">
<FRFont name="PingFangSC-Regular" style="0" size="96" foreground="-1"/>
</Attr>
</TextAttr>
</ChangeAttr>
<Chart name="默认" chartClass="com.fr.plugin.chart.vanchart.VanChart">
<Chart class="com.fr.plugin.chart.vanchart.VanChart">
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr gradientType="normal" gradientStartColor="-12146441" gradientEndColor="-9378161" shadow="false" autoBackground="false" predefinedStyle="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-1118482" autoColor="false" predefinedStyle="false"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<ChartAttr isJSDraw="true" isStyleGlobal="false"/>
<Title4VanChart>
<Title>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr gradientType="normal" gradientStartColor="-12146441" gradientEndColor="-9378161" shadow="false" autoBackground="false" predefinedStyle="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-6908266" autoColor="false" predefinedStyle="false"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<O>
<![CDATA[新建图表标题]]></O>
<TextAttr>
<Attr alignText="0" predefinedStyle="false">
<FRFont name="Microsoft YaHei" style="0" size="128" foreground="-13421773"/>
</Attr>
</TextAttr>
<TitleVisible value="false" position="0"/>
</Title>
<Attr4VanChart useHtml="false" floating="false" x="0.0" y="0.0" limitSize="false" maxHeight="15.0"/>
</Title4VanChart>
<Plot class="com.fr.plugin.chart.custom.VanChartCustomPlot">
<VanChartPlotVersion version="20170715"/>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr gradientType="normal" gradientStartColor="-12146441" gradientEndColor="-9378161" shadow="false" autoBackground="false" predefinedStyle="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<Attr isNullValueBreak="true" autoRefreshPerSecond="6" seriesDragEnable="false" plotStyle="0" combinedSize="50.0"/>
<newHotTooltipStyle>
<AttrContents>
<Attr showLine="false" position="1" isWhiteBackground="true" isShowMutiSeries="false" seriesLabel="${VALUE}"/>
<Format class="com.fr.base.CoreDecimalFormat" roundingMode="6">
<![CDATA[#.##]]></Format>
<PercentFormat>
<Format class="com.fr.base.CoreDecimalFormat" roundingMode="6">
<![CDATA[#0.##%]]></Format>
</PercentFormat>
</AttrContents>
</newHotTooltipStyle>
<ConditionCollection>
<DefaultAttr class="com.fr.chart.chartglyph.ConditionAttr">
<ConditionAttr name=""/>
</DefaultAttr>
</ConditionCollection>
<Legend4VanChart>
<Legend>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr gradientType="normal" gradientStartColor="-12146441" gradientEndColor="-9378161" shadow="false" autoBackground="false" predefinedStyle="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-3355444" autoColor="false" predefinedStyle="false"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<Attr position="1" visible="true" predefinedStyle="false"/>
<FRFont name="微软雅黑" style="0" size="88" foreground="-10066330"/>
</Legend>
<Attr4VanChart floating="false" x="0.0" y="0.0" layout="aligned" customSize="false" maxHeight="25.0" isHighlight="true"/>
</Legend4VanChart>
<DataSheet>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr gradientType="normal" gradientStartColor="-12146441" gradientEndColor="-9378161" shadow="false" autoBackground="false" predefinedStyle="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="1" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-16777216" autoColor="false" predefinedStyle="false"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<Attr isVisible="false" predefinedStyle="false"/>
<FRFont name="SimSun" style="0" size="72"/>
<Format class="com.fr.base.CoreDecimalFormat" roundingMode="6">
<![CDATA[#.##]]></Format>
</DataSheet>
<DataProcessor class="com.fr.base.chart.chartdata.model.NormalDataModel"/>
<newPlotFillStyle>
<AttrFillStyle>
<AFStyle colorStyle="1"/>
<FillStyleName fillStyleName=""/>
<isCustomFillStyle isCustomFillStyle="true"/>
<PredefinedStyle predefinedStyle="false"/>
<ColorList>
<OColor colvalue="-10243346"/>
<OColor colvalue="-6697984"/>
<OColor colvalue="-13395610"/>
<OColor colvalue="-39169"/>
<OColor colvalue="-8595761"/>
<OColor colvalue="-7236949"/>
<OColor colvalue="-236032"/>
<OColor colvalue="-1071514"/>
<OColor colvalue="-3368449"/>
</ColorList>
</AttrFillStyle>
</newPlotFillStyle>
<VanChartPlotAttr isAxisRotation="false" categoryNum="1"/>
<GradientStyle>
<Attr gradientType="gradual" startColor="-12146441" endColor="-9378161"/>
</GradientStyle>
<VanChartRectanglePlotAttr vanChartPlotType="normal" isDefaultIntervalBackground="true"/>
<XAxisList>
<VanChartAxis class="com.fr.plugin.chart.attr.axis.VanChartAxis">
<Title>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr gradientType="normal" gradientStartColor="-12146441" gradientEndColor="-9378161" shadow="false" autoBackground="false" predefinedStyle="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-16777216" autoColor="false" predefinedStyle="false"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<O>
<![CDATA[]]></O>
<TextAttr>
<Attr alignText="0" predefinedStyle="false">
<FRFont name="Verdana" style="0" size="88" foreground="-10066330"/>
</Attr>
</TextAttr>
<TitleVisible value="true" position="0"/>
</Title>
<newAxisAttr isShowAxisLabel="true"/>
<AxisLineStyle AxisStyle="1" MainGridStyle="1"/>
<newLineColor lineColor="-5197648" predefinedStyle="false"/>
<AxisPosition value="3"/>
<TickLine201106 type="2" secType="0"/>
<ArrowShow arrowShow="false"/>
<TextAttr>
<Attr rotation="-30" alignText="0" predefinedStyle="false">
<FRFont name="Verdana" style="0" size="88" foreground="-10066330"/>
</Attr>
</TextAttr>
<AxisLabelCount value="=1"/>
<AxisRange/>
<AxisUnit201106 isCustomMainUnit="false" isCustomSecUnit="false" mainUnit="=0" secUnit="=0"/>
<ZoomAxisAttr isZoom="false"/>
<axisReversed axisReversed="false"/>
<VanChartAxisAttr mainTickLine="2" secTickLine="0" axisName="X轴" titleUseHtml="false" labelDisplay="interval" autoLabelGap="true" limitSize="false" maxHeight="15.0" commonValueFormat="true" isRotation="false" isShowAxisTitle="false" gridLineType="NONE"/>
<HtmlLabel customText="function(){ return this; }" useHtml="false" isCustomWidth="false" isCustomHeight="false" width="50" height="50"/>
<alertList/>
<customBackgroundList/>
</VanChartAxis>
</XAxisList>
<YAxisList>
<VanChartAxis class="com.fr.plugin.chart.attr.axis.VanChartValueAxis">
<Title>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr gradientType="normal" gradientStartColor="-12146441" gradientEndColor="-9378161" shadow="false" autoBackground="false" predefinedStyle="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-16777216" autoColor="false" predefinedStyle="false"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<O>
<![CDATA[]]></O>
<TextAttr>
<Attr rotation="-90" alignText="0" predefinedStyle="false">
<FRFont name="Verdana" style="0" size="88" foreground="-10066330"/>
</Attr>
</TextAttr>
<TitleVisible value="true" position="0"/>
</Title>
<newAxisAttr isShowAxisLabel="true"/>
<AxisLineStyle AxisStyle="0" MainGridStyle="1"/>
<newLineColor mainGridPredefinedStyle="false" lineColor="-5197648" predefinedStyle="false"/>
<AxisPosition value="2"/>
<TickLine201106 type="2" secType="0"/>
<ArrowShow arrowShow="false"/>
<TextAttr>
<Attr alignText="0" predefinedStyle="false">
<FRFont name="Verdana" style="0" size="80" foreground="-6710887"/>
</Attr>
</TextAttr>
<Format class="com.fr.base.CoreDecimalFormat" roundingMode="6">
<![CDATA[#,##0]]></Format>
<AxisLabelCount value="=1"/>
<AxisRange/>
<AxisUnit201106 isCustomMainUnit="false" isCustomSecUnit="false" mainUnit="=0" secUnit="=0"/>
<ZoomAxisAttr isZoom="false"/>
<axisReversed axisReversed="false"/>
<VanChartAxisAttr mainTickLine="0" secTickLine="0" axisName="Y轴" titleUseHtml="false" labelDisplay="interval" autoLabelGap="true" limitSize="false" maxHeight="15.0" commonValueFormat="true" isRotation="false" isShowAxisTitle="false" gridLineType="solid"/>
<HtmlLabel customText="function(){ return this; }" useHtml="false" isCustomWidth="false" isCustomHeight="false" width="50" height="50"/>
<alertList/>
<customBackgroundList/>
<VanChartValueAxisAttr isLog="false" valueStyle="false" baseLog="=10"/>
<ds>
<RadarYAxisTableDefinition>
<Top topCate="-1" topValue="-1" isDiscardOtherCate="false" isDiscardOtherSeries="false" isDiscardNullCate="false" isDiscardNullSeries="false"/>
<attr/>
</RadarYAxisTableDefinition>
</ds>
</VanChartAxis>
<VanChartAxis class="com.fr.plugin.chart.attr.axis.VanChartValueAxis">
<Title>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr gradientType="normal" gradientStartColor="-12146441" gradientEndColor="-9378161" shadow="false" autoBackground="false" predefinedStyle="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-16777216" autoColor="false" predefinedStyle="false"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<O>
<![CDATA[]]></O>
<TextAttr>
<Attr rotation="-90" alignText="0" predefinedStyle="false">
<FRFont name="Verdana" style="0" size="88" foreground="-10066330"/>
</Attr>
</TextAttr>
<TitleVisible value="true" position="0"/>
</Title>
<newAxisAttr isShowAxisLabel="true"/>
<AxisLineStyle AxisStyle="0" MainGridStyle="1"/>
<newLineColor lineColor="-5197648" predefinedStyle="false"/>
<AxisPosition value="4"/>
<TickLine201106 type="2" secType="0"/>
<ArrowShow arrowShow="false"/>
<TextAttr>
<Attr alignText="0" predefinedStyle="false">
<FRFont name="Verdana" style="0" size="80" foreground="-6710887"/>
</Attr>
</TextAttr>
<Format class="com.fr.base.CoreDecimalFormat" roundingMode="6">
<![CDATA[#0%]]></Format>
<AxisLabelCount value="=1"/>
<AxisRange/>
<AxisUnit201106 isCustomMainUnit="false" isCustomSecUnit="false" mainUnit="=0" secUnit="=0"/>
<ZoomAxisAttr isZoom="false"/>
<axisReversed axisReversed="false"/>
<VanChartAxisAttr mainTickLine="0" secTickLine="0" axisName="Y轴2" titleUseHtml="false" labelDisplay="interval" autoLabelGap="true" limitSize="false" maxHeight="15.0" commonValueFormat="true" isRotation="false" isShowAxisTitle="false" gridLineType="NONE"/>
<HtmlLabel customText="function(){ return this; }" useHtml="false" isCustomWidth="false" isCustomHeight="false" width="" height=""/>
<alertList/>
<customBackgroundList/>
<VanChartValueAxisAttr isLog="false" valueStyle="false" baseLog="=10"/>
<ds>
<RadarYAxisTableDefinition>
<Top topCate="-1" topValue="-1" isDiscardOtherCate="false" isDiscardOtherSeries="false" isDiscardNullCate="false" isDiscardNullSeries="false"/>
<attr/>
</RadarYAxisTableDefinition>
</ds>
</VanChartAxis>
</YAxisList>
<stackAndAxisCondition>
<ConditionCollection>
<DefaultAttr class="com.fr.chart.chartglyph.ConditionAttr">
<ConditionAttr name=""/>
</DefaultAttr>
</ConditionCollection>
</stackAndAxisCondition>
<VanChartCustomPlotAttr customStyle="custom"/>
<CustomPlotList>
<VanChartPlot class="com.fr.plugin.chart.line.VanChartLinePlot">
<VanChartPlotVersion version="20170715"/>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr gradientType="normal" gradientStartColor="-12146441" gradientEndColor="-9378161" shadow="false" autoBackground="false" predefinedStyle="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<Attr isNullValueBreak="true" autoRefreshPerSecond="6" seriesDragEnable="false" plotStyle="0" combinedSize="50.0"/>
<newHotTooltipStyle>
<AttrContents>
<Attr showLine="false" position="1" isWhiteBackground="true" isShowMutiSeries="false" seriesLabel="${VALUE}"/>
<Format class="com.fr.base.CoreDecimalFormat" roundingMode="6">
<![CDATA[#.##]]></Format>
<PercentFormat>
<Format class="com.fr.base.CoreDecimalFormat" roundingMode="6">
<![CDATA[#0.##%]]></Format>
</PercentFormat>
</AttrContents>
</newHotTooltipStyle>
<ConditionCollection>
<DefaultAttr class="com.fr.chart.chartglyph.ConditionAttr">
<ConditionAttr name="">
<AttrList>
<Attr class="com.fr.plugin.chart.base.VanChartAttrLine">
<VanAttrLine>
<Attr lineType="solid" lineWidth="2.0" lineStyle="2" nullValueBreak="false"/>
</VanAttrLine>
</Attr>
<Attr class="com.fr.plugin.chart.base.VanChartAttrMarker">
<VanAttrMarker>
<Attr isCommon="true" anchorSize="22.0" markerType="NullMarker" radius="3.5" width="30.0" height="30.0"/>
<Background name="NullBackground"/>
</VanAttrMarker>
</Attr>
<Attr class="com.fr.plugin.chart.base.AttrTooltip">
<AttrTooltip>
<Attr enable="true" duration="4" followMouse="false" showMutiSeries="true" isCustom="false"/>
<TextAttr>
<Attr alignText="0" predefinedStyle="false">
<FRFont name="宋体" style="0" size="72"/>
</Attr>
</TextAttr>
<AttrToolTipContent>
<TextAttr>
<Attr alignText="0" predefinedStyle="false">
<FRFont name="宋体" style="0" size="72"/>
</Attr>
</TextAttr>
<richText class="com.fr.plugin.chart.base.AttrTooltipRichText">
<AttrTooltipRichText>
<Attr content="&lt;p style=&quot;text-align: left;&quot;&gt;&lt;img data-id=&quot;${CATEGORY}&quot;/&gt;&lt;br&gt;&lt;img data-id=&quot;${SERIES}&quot;/&gt;&lt;br&gt;&lt;img data-id=&quot;${VALUE}&quot;/&gt;&lt;br&gt;&lt;/p&gt;" isAuto="true" initParamsContent="${CATEGORY}${SERIES}${VALUE}"/>
<params>
<![CDATA[{}]]></params>
</AttrTooltipRichText>
</richText>
<richTextValue class="com.fr.plugin.chart.base.format.AttrTooltipValueFormat">
<AttrTooltipValueFormat>
<Attr enable="true"/>
</AttrTooltipValueFormat>
</richTextValue>
<richTextPercent class="com.fr.plugin.chart.base.format.AttrTooltipPercentFormat">
<AttrTooltipPercentFormat>
<Attr enable="false"/>
<Format class="com.fr.base.CoreDecimalFormat" roundingMode="6">
<![CDATA[#.##%]]></Format>
</AttrTooltipPercentFormat>
</richTextPercent>
<richTextCategory class="com.fr.plugin.chart.base.format.AttrTooltipCategoryFormat">
<AttrToolTipCategoryFormat>
<Attr enable="true"/>
</AttrToolTipCategoryFormat>
</richTextCategory>
<richTextSeries class="com.fr.plugin.chart.base.format.AttrTooltipSeriesFormat">
<AttrTooltipSeriesFormat>
<Attr enable="true"/>
</AttrTooltipSeriesFormat>
</richTextSeries>
<richTextChangedPercent class="com.fr.plugin.chart.base.format.AttrTooltipChangedPercentFormat">
<AttrTooltipChangedPercentFormat>
<Attr enable="false"/>
<Format class="com.fr.base.CoreDecimalFormat" roundingMode="6">
<![CDATA[#.##%]]></Format>
</AttrTooltipChangedPercentFormat>
</richTextChangedPercent>
<richTextChangedValue class="com.fr.plugin.chart.base.format.AttrTooltipChangedValueFormat">
<AttrTooltipChangedValueFormat>
<Attr enable="false"/>
</AttrTooltipChangedValueFormat>
</richTextChangedValue>
<TableFieldCollection/>
<Attr isCommon="true" isCustom="false" isRichText="false" richTextAlign="left" showAllSeries="false"/>
<value class="com.fr.plugin.chart.base.format.AttrTooltipValueFormat">
<AttrTooltipValueFormat>
<Attr enable="true"/>
<Format class="com.fr.base.CoreDecimalFormat" roundingMode="6">
<![CDATA[#,##0.00]]></Format>
</AttrTooltipValueFormat>
</value>
<percent class="com.fr.plugin.chart.base.format.AttrTooltipPercentFormat">
<AttrTooltipPercentFormat>
<Attr enable="false"/>
<Format class="com.fr.base.CoreDecimalFormat" roundingMode="6">
<![CDATA[#.##%]]></Format>
</AttrTooltipPercentFormat>
</percent>
<category class="com.fr.plugin.chart.base.format.AttrTooltipCategoryFormat">
<AttrToolTipCategoryFormat>
<Attr enable="true"/>
</AttrToolTipCategoryFormat>
</category>
<series class="com.fr.plugin.chart.base.format.AttrTooltipSeriesFormat">
<AttrTooltipSeriesFormat>
<Attr enable="true"/>
</AttrTooltipSeriesFormat>
</series>
<changedPercent class="com.fr.plugin.chart.base.format.AttrTooltipChangedPercentFormat">
<AttrTooltipChangedPercentFormat>
<Attr enable="false"/>
<Format class="com.fr.base.CoreDecimalFormat" roundingMode="6">
<![CDATA[#.##%]]></Format>
</AttrTooltipChangedPercentFormat>
</changedPercent>
<changedValue class="com.fr.plugin.chart.base.format.AttrTooltipChangedValueFormat">
<AttrTooltipChangedValueFormat>
<Attr enable="false"/>
</AttrTooltipChangedValueFormat>
</changedValue>
<HtmlLabel customText="" useHtml="false" isCustomWidth="false" isCustomHeight="false" width="50" height="50"/>
</AttrToolTipContent>
<GI>
<AttrBackground>
<Background name="ColorBackground" color="-16777216"/>
<Attr gradientType="normal" gradientStartColor="-12146441" gradientEndColor="-9378161" shadow="true" autoBackground="false" predefinedStyle="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="2"/>
<newColor borderColor="-16777216" autoColor="false" predefinedStyle="false"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="0.5"/>
</AttrAlpha>
</GI>
</AttrTooltip>
</Attr>
</AttrList>
</ConditionAttr>
</DefaultAttr>
</ConditionCollection>
<Legend4VanChart>
<Legend>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr gradientType="normal" gradientStartColor="-12146441" gradientEndColor="-9378161" shadow="false" autoBackground="false" predefinedStyle="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-3355444" autoColor="false" predefinedStyle="false"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<Attr position="4" visible="true" predefinedStyle="false"/>
<FRFont name="Microsoft YaHei" style="0" size="88" foreground="-10066330"/>
</Legend>
<Attr4VanChart floating="false" x="0.0" y="0.0" layout="aligned" customSize="false" maxHeight="30.0" isHighlight="true"/>
</Legend4VanChart>
<DataSheet>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr gradientType="normal" gradientStartColor="-12146441" gradientEndColor="-9378161" shadow="false" autoBackground="false" predefinedStyle="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="1" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-16777216" autoColor="false" predefinedStyle="false"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<Attr isVisible="false" predefinedStyle="false"/>
<FRFont name="SimSun" style="0" size="72"/>
<Format class="com.fr.base.CoreDecimalFormat" roundingMode="6">
<![CDATA[#.##]]></Format>
</DataSheet>
<DataProcessor class="com.fr.base.chart.chartdata.model.NormalDataModel"/>
<newPlotFillStyle>
<AttrFillStyle>
<AFStyle colorStyle="0"/>
<FillStyleName fillStyleName=""/>
<isCustomFillStyle isCustomFillStyle="false"/>
<PredefinedStyle predefinedStyle="false"/>
</AttrFillStyle>
</newPlotFillStyle>
<VanChartPlotAttr isAxisRotation="false" categoryNum="1"/>
<GradientStyle>
<Attr gradientType="gradual" startColor="-12146441" endColor="-9378161"/>
</GradientStyle>
<VanChartRectanglePlotAttr vanChartPlotType="custom" isDefaultIntervalBackground="true"/>
<XAxisList>
<VanChartAxis class="com.fr.plugin.chart.attr.axis.VanChartAxis">
<Title>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr gradientType="normal" gradientStartColor="-12146441" gradientEndColor="-9378161" shadow="false" autoBackground="false" predefinedStyle="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-16777216" autoColor="false" predefinedStyle="false"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<O>
<![CDATA[]]></O>
<TextAttr>
<Attr alignText="0" predefinedStyle="false">
<FRFont name="Verdana" style="0" size="88" foreground="-10066330"/>
</Attr>
</TextAttr>
<TitleVisible value="true" position="0"/>
</Title>
<newAxisAttr isShowAxisLabel="true"/>
<AxisLineStyle AxisStyle="1" MainGridStyle="1"/>
<newLineColor lineColor="-5197648" predefinedStyle="false"/>
<AxisPosition value="3"/>
<TickLine201106 type="2" secType="0"/>
<ArrowShow arrowShow="false"/>
<TextAttr>
<Attr rotation="-30" alignText="0" predefinedStyle="false">
<FRFont name="Verdana" style="0" size="88" foreground="-10066330"/>
</Attr>
</TextAttr>
<AxisLabelCount value="=1"/>
<AxisRange/>
<AxisUnit201106 isCustomMainUnit="false" isCustomSecUnit="false" mainUnit="=0" secUnit="=0"/>
<ZoomAxisAttr isZoom="false"/>
<axisReversed axisReversed="false"/>
<VanChartAxisAttr mainTickLine="2" secTickLine="0" axisName="X轴" titleUseHtml="false" labelDisplay="interval" autoLabelGap="true" limitSize="false" maxHeight="15.0" commonValueFormat="true" isRotation="false" isShowAxisTitle="false" gridLineType="NONE"/>
<HtmlLabel customText="function(){ return this; }" useHtml="false" isCustomWidth="false" isCustomHeight="false" width="50" height="50"/>
<alertList/>
<customBackgroundList/>
</VanChartAxis>
</XAxisList>
<YAxisList>
<VanChartAxis class="com.fr.plugin.chart.attr.axis.VanChartValueAxis">
<Title>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr gradientType="normal" gradientStartColor="-12146441" gradientEndColor="-9378161" shadow="false" autoBackground="false" predefinedStyle="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-16777216" autoColor="false" predefinedStyle="false"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<O>
<![CDATA[]]></O>
<TextAttr>
<Attr rotation="-90" alignText="0" predefinedStyle="false">
<FRFont name="Verdana" style="0" size="88" foreground="-10066330"/>
</Attr>
</TextAttr>
<TitleVisible value="true" position="0"/>
</Title>
<newAxisAttr isShowAxisLabel="true"/>
<AxisLineStyle AxisStyle="0" MainGridStyle="1"/>
<newLineColor mainGridPredefinedStyle="false" lineColor="-5197648" predefinedStyle="false"/>
<AxisPosition value="2"/>
<TickLine201106 type="2" secType="0"/>
<ArrowShow arrowShow="false"/>
<TextAttr>
<Attr alignText="0" predefinedStyle="false">
<FRFont name="Verdana" style="0" size="80" foreground="-6710887"/>
</Attr>
</TextAttr>
<Format class="com.fr.base.CoreDecimalFormat" roundingMode="6">
<![CDATA[#,##0]]></Format>
<AxisLabelCount value="=1"/>
<AxisRange/>
<AxisUnit201106 isCustomMainUnit="false" isCustomSecUnit="false" mainUnit="=0" secUnit="=0"/>
<ZoomAxisAttr isZoom="false"/>
<axisReversed axisReversed="false"/>
<VanChartAxisAttr mainTickLine="0" secTickLine="0" axisName="Y轴" titleUseHtml="false" labelDisplay="interval" autoLabelGap="true" limitSize="false" maxHeight="15.0" commonValueFormat="true" isRotation="false" isShowAxisTitle="false" gridLineType="solid"/>
<HtmlLabel customText="function(){ return this; }" useHtml="false" isCustomWidth="false" isCustomHeight="false" width="50" height="50"/>
<alertList/>
<customBackgroundList/>
<VanChartValueAxisAttr isLog="false" valueStyle="false" baseLog="=10"/>
<ds>
<RadarYAxisTableDefinition>
<Top topCate="-1" topValue="-1" isDiscardOtherCate="false" isDiscardOtherSeries="false" isDiscardNullCate="false" isDiscardNullSeries="false"/>
<attr/>
</RadarYAxisTableDefinition>
</ds>
</VanChartAxis>
<VanChartAxis class="com.fr.plugin.chart.attr.axis.VanChartValueAxis">
<Title>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr gradientType="normal" gradientStartColor="-12146441" gradientEndColor="-9378161" shadow="false" autoBackground="false" predefinedStyle="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-16777216" autoColor="false" predefinedStyle="false"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<O>
<![CDATA[]]></O>
<TextAttr>
<Attr rotation="-90" alignText="0" predefinedStyle="false">
<FRFont name="Verdana" style="0" size="88" foreground="-10066330"/>
</Attr>
</TextAttr>
<TitleVisible value="true" position="0"/>
</Title>
<newAxisAttr isShowAxisLabel="true"/>
<AxisLineStyle AxisStyle="0" MainGridStyle="1"/>
<newLineColor lineColor="-5197648" predefinedStyle="false"/>
<AxisPosition value="4"/>
<TickLine201106 type="2" secType="0"/>
<ArrowShow arrowShow="false"/>
<TextAttr>
<Attr alignText="0" predefinedStyle="false">
<FRFont name="Verdana" style="0" size="80" foreground="-6710887"/>
</Attr>
</TextAttr>
<Format class="com.fr.base.CoreDecimalFormat" roundingMode="6">
<![CDATA[#0%]]></Format>
<AxisLabelCount value="=1"/>
<AxisRange/>
<AxisUnit201106 isCustomMainUnit="false" isCustomSecUnit="false" mainUnit="=0" secUnit="=0"/>
<ZoomAxisAttr isZoom="false"/>
<axisReversed axisReversed="false"/>
<VanChartAxisAttr mainTickLine="0" secTickLine="0" axisName="Y轴2" titleUseHtml="false" labelDisplay="interval" autoLabelGap="true" limitSize="false" maxHeight="15.0" commonValueFormat="true" isRotation="false" isShowAxisTitle="false" gridLineType="NONE"/>
<HtmlLabel customText="function(){ return this; }" useHtml="false" isCustomWidth="false" isCustomHeight="false" width="" height=""/>
<alertList/>
<customBackgroundList/>
<VanChartValueAxisAttr isLog="false" valueStyle="false" baseLog="=10"/>
<ds>
<RadarYAxisTableDefinition>
<Top topCate="-1" topValue="-1" isDiscardOtherCate="false" isDiscardOtherSeries="false" isDiscardNullCate="false" isDiscardNullSeries="false"/>
<attr/>
</RadarYAxisTableDefinition>
</ds>
</VanChartAxis>
</YAxisList>
<stackAndAxisCondition>
<ConditionCollection>
<DefaultAttr class="com.fr.chart.chartglyph.ConditionAttr">
<ConditionAttr name=""/>
</DefaultAttr>
<ConditionAttrList>
<List index="0">
<ConditionAttr name="堆积和坐标轴1">
<AttrList>
<Attr class="com.fr.plugin.chart.base.AttrSeriesStackAndAxis">
<AttrSeriesStackAndAxis>
<Attr xAxisIndex="0" yAxisIndex="1" stacked="false" percentStacked="false" stackID="堆积和坐标轴1"/>
</AttrSeriesStackAndAxis>
</Attr>
</AttrList>
<Condition class="com.fr.chart.chartattr.ChartCommonCondition">
<CNUMBER>
<![CDATA[0]]></CNUMBER>
<CNAME>
<![CDATA[SERIES_INDEX]]></CNAME>
<Compare op="0">
<O>
<![CDATA[7]]></O>
</Compare>
</Condition>
</ConditionAttr>
</List>
</ConditionAttrList>
</ConditionCollection>
</stackAndAxisCondition>
</VanChartPlot>
</CustomPlotList>
</Plot>
<ChartDefinition>
<CustomDefinition>
<DefinitionMapList>
<DefinitionMap key="line">
<MoreNameCDDefinition>
<Top topCate="-1" topValue="-1" isDiscardOtherCate="false" isDiscardOtherSeries="false" isDiscardNullCate="false" isDiscardNullSeries="false"/>
<TableData class="com.fr.data.impl.NameTableData">
<Name>
<![CDATA[整体趋势]]></Name>
</TableData>
<CategoryName value="year2"/>
<ChartSummaryColumn name="直通车" function="com.fr.data.util.function.SumFunction" customName="直通车"/>
<ChartSummaryColumn name="超级推荐" function="com.fr.data.util.function.SumFunction" customName="超级推荐"/>
<ChartSummaryColumn name="钻石展位" function="com.fr.data.util.function.SumFunction" customName="钻石展位"/>
<ChartSummaryColumn name="淘客推广" function="com.fr.data.util.function.SumFunction" customName="淘客推广"/>
<ChartSummaryColumn name="AI推广" function="com.fr.data.util.function.SumFunction" customName="AI推广"/>
<ChartSummaryColumn name="品销宝" function="com.fr.data.util.function.SumFunction" customName="品销宝"/>
</MoreNameCDDefinition>
</DefinitionMap>
</DefinitionMapList>
</CustomDefinition>
</ChartDefinition>
</Chart>
<UUID uuid="bbf2b859-8718-478c-80e8-2fea02a92c8a"/>
<tools hidden="true" sort="false" export="false" fullScreen="false"/>
<VanChartZoom>
<zoomAttr zoomVisible="false" zoomGesture="true" zoomResize="true" zoomType="xy" controlType="zoom" categoryNum="8" scaling="0.3"/>
<from>
<![CDATA[]]></from>
<to>
<![CDATA[]]></to>
</VanChartZoom>
<refreshMoreLabel>
<attr moreLabel="false" autoTooltip="false"/>
<AttrTooltip>
<Attr enable="true" duration="4" followMouse="false" showMutiSeries="false" isCustom="false"/>
<TextAttr>
<Attr alignText="0" predefinedStyle="false"/>
</TextAttr>
<AttrToolTipContent>
<TextAttr>
<Attr alignText="0" predefinedStyle="false"/>
</TextAttr>
<richText class="com.fr.plugin.chart.base.AttrTooltipRichText">
<AttrTooltipRichText>
<Attr content="" isAuto="true" initParamsContent=""/>
</AttrTooltipRichText>
</richText>
<richTextValue class="com.fr.plugin.chart.base.format.AttrTooltipValueFormat">
<AttrTooltipValueFormat>
<Attr enable="true"/>
</AttrTooltipValueFormat>
</richTextValue>
<richTextPercent class="com.fr.plugin.chart.base.format.AttrTooltipPercentFormat">
<AttrTooltipPercentFormat>
<Attr enable="false"/>
<Format class="com.fr.base.CoreDecimalFormat" roundingMode="6">
<![CDATA[#.##%]]></Format>
</AttrTooltipPercentFormat>
</richTextPercent>
<richTextCategory class="com.fr.plugin.chart.base.format.AttrTooltipCategoryFormat">
<AttrToolTipCategoryFormat>
<Attr enable="false"/>
</AttrToolTipCategoryFormat>
</richTextCategory>
<richTextSeries class="com.fr.plugin.chart.base.format.AttrTooltipSeriesFormat">
<AttrTooltipSeriesFormat>
<Attr enable="false"/>
</AttrTooltipSeriesFormat>
</richTextSeries>
<richTextChangedPercent class="com.fr.plugin.chart.base.format.AttrTooltipChangedPercentFormat">
<AttrTooltipChangedPercentFormat>
<Attr enable="false"/>
<Format class="com.fr.base.CoreDecimalFormat" roundingMode="6">
<![CDATA[#.##%]]></Format>
</AttrTooltipChangedPercentFormat>
</richTextChangedPercent>
<richTextChangedValue class="com.fr.plugin.chart.base.format.AttrTooltipChangedValueFormat">
<AttrTooltipChangedValueFormat>
<Attr enable="false"/>
</AttrTooltipChangedValueFormat>
</richTextChangedValue>
<TableFieldCollection/>
<Attr isCommon="true" isCustom="false" isRichText="false" richTextAlign="left" showAllSeries="false"/>
<value class="com.fr.plugin.chart.base.format.AttrTooltipValueFormat">
<AttrTooltipValueFormat>
<Attr enable="true"/>
</AttrTooltipValueFormat>
</value>
<percent class="com.fr.plugin.chart.base.format.AttrTooltipPercentFormat">
<AttrTooltipPercentFormat>
<Attr enable="false"/>
<Format class="com.fr.base.CoreDecimalFormat" roundingMode="6">
<![CDATA[#.##%]]></Format>
</AttrTooltipPercentFormat>
</percent>
<category class="com.fr.plugin.chart.base.format.AttrTooltipCategoryFormat">
<AttrToolTipCategoryFormat>
<Attr enable="true"/>
</AttrToolTipCategoryFormat>
</category>
<series class="com.fr.plugin.chart.base.format.AttrTooltipSeriesFormat">
<AttrTooltipSeriesFormat>
<Attr enable="true"/>
</AttrTooltipSeriesFormat>
</series>
<changedPercent class="com.fr.plugin.chart.base.format.AttrTooltipChangedPercentFormat">
<AttrTooltipChangedPercentFormat>
<Attr enable="false"/>
<Format class="com.fr.base.CoreDecimalFormat" roundingMode="6">
<![CDATA[#.##%]]></Format>
</AttrTooltipChangedPercentFormat>
</changedPercent>
<changedValue class="com.fr.plugin.chart.base.format.AttrTooltipChangedValueFormat">
<AttrTooltipChangedValueFormat>
<Attr enable="true"/>
</AttrTooltipChangedValueFormat>
</changedValue>
<HtmlLabel customText="" useHtml="false" isCustomWidth="false" isCustomHeight="false" width="50" height="50"/>
</AttrToolTipContent>
<GI>
<AttrBackground>
<Background name="ColorBackground" color="-1"/>
<Attr gradientType="normal" gradientStartColor="-12146441" gradientEndColor="-9378161" shadow="false" autoBackground="false" predefinedStyle="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="1" isRoundBorder="false" roundRadius="4"/>
<newColor borderColor="-15395563" autoColor="false" predefinedStyle="false"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="0.8"/>
</AttrAlpha>
</GI>
</AttrTooltip>
</refreshMoreLabel>
<ThemeAttr>
<Attr darkTheme="false" predefinedStyle="false"/>
</ThemeAttr>
</Chart>
<ChartMobileAttrProvider zoomOut="0" zoomIn="2" allowFullScreen="true" functionalWhenUnactivated="false"/>
<MobileChartCollapsedStyle class="com.fr.form.ui.mobile.MobileChartCollapsedStyle">
<collapseButton showButton="true" color="-6710887" foldedHint="" unfoldedHint="" defaultState="0"/>
<collapsedWork value="false"/>
</MobileChartCollapsedStyle>
</InnerWidget>
<BoundsAttr x="0" y="0" width="950" height="293"/>
</Widget>
<ShowBookmarks showBookmarks="false"/>
<body class="com.fr.form.ui.ChartEditor">
<WidgetName name="chart0"/>
<WidgetID widgetID="f296c75a-6fe5-4b5d-a6cd-9df5acdac4fb"/>
<WidgetAttr aspectRatioLocked="false" aspectRatioBackup="-1.0" description="">
<MobileBookMark useBookMark="false" bookMarkName="" frozen="false"/>
<PrivilegeControl/>
</WidgetAttr>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="0" color="-723724" borderRadius="0" type="0" borderStyle="0"/>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="宋体" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Alpha alpha="1.0"/>
</Border>
<LayoutAttr selectedIndex="0"/>
<ChangeAttr enable="false" changeType="button" timeInterval="5" buttonColor="-6710887" carouselColor="-8421505" showArrow="true">
<TextAttr>
<Attr alignText="0" predefinedStyle="false">
<FRFont name="PingFangSC-Regular" style="0" size="96" foreground="-1"/>
</Attr>
</TextAttr>
</ChangeAttr>
<Chart name="默认" chartClass="com.fr.plugin.chart.vanchart.VanChart">
<Chart class="com.fr.plugin.chart.vanchart.VanChart">
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr gradientType="normal" gradientStartColor="-12146441" gradientEndColor="-9378161" shadow="false" autoBackground="false" predefinedStyle="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-1118482" autoColor="false" predefinedStyle="false"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<ChartAttr isJSDraw="true" isStyleGlobal="false"/>
<Title4VanChart>
<Title>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr gradientType="normal" gradientStartColor="-12146441" gradientEndColor="-9378161" shadow="false" autoBackground="false" predefinedStyle="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-6908266" autoColor="false" predefinedStyle="false"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<O>
<![CDATA[新建图表标题]]></O>
<TextAttr>
<Attr alignText="0" predefinedStyle="false">
<FRFont name="Microsoft YaHei" style="0" size="128" foreground="-13421773"/>
</Attr>
</TextAttr>
<TitleVisible value="false" position="0"/>
</Title>
<Attr4VanChart useHtml="false" floating="false" x="0.0" y="0.0" limitSize="false" maxHeight="15.0"/>
</Title4VanChart>
<Plot class="com.fr.plugin.chart.custom.VanChartCustomPlot">
<VanChartPlotVersion version="20170715"/>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr gradientType="normal" gradientStartColor="-12146441" gradientEndColor="-9378161" shadow="false" autoBackground="false" predefinedStyle="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<Attr isNullValueBreak="true" autoRefreshPerSecond="6" seriesDragEnable="false" plotStyle="0" combinedSize="50.0"/>
<newHotTooltipStyle>
<AttrContents>
<Attr showLine="false" position="1" isWhiteBackground="true" isShowMutiSeries="false" seriesLabel="${VALUE}"/>
<Format class="com.fr.base.CoreDecimalFormat" roundingMode="6">
<![CDATA[#.##]]></Format>
<PercentFormat>
<Format class="com.fr.base.CoreDecimalFormat" roundingMode="6">
<![CDATA[#0.##%]]></Format>
</PercentFormat>
</AttrContents>
</newHotTooltipStyle>
<ConditionCollection>
<DefaultAttr class="com.fr.chart.chartglyph.ConditionAttr">
<ConditionAttr name=""/>
</DefaultAttr>
</ConditionCollection>
<Legend4VanChart>
<Legend>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr gradientType="normal" gradientStartColor="-12146441" gradientEndColor="-9378161" shadow="false" autoBackground="false" predefinedStyle="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-3355444" autoColor="false" predefinedStyle="false"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<Attr position="1" visible="true" predefinedStyle="false"/>
<FRFont name="微软雅黑" style="0" size="88" foreground="-10066330"/>
</Legend>
<Attr4VanChart floating="false" x="0.0" y="0.0" layout="aligned" customSize="false" maxHeight="30.0" isHighlight="true"/>
</Legend4VanChart>
<DataSheet>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr gradientType="normal" gradientStartColor="-12146441" gradientEndColor="-9378161" shadow="false" autoBackground="false" predefinedStyle="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="1" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-16777216" autoColor="false" predefinedStyle="false"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<Attr isVisible="false" predefinedStyle="false"/>
<FRFont name="SimSun" style="0" size="72"/>
<Format class="com.fr.base.CoreDecimalFormat" roundingMode="6">
<![CDATA[#.##]]></Format>
</DataSheet>
<DataProcessor class="com.fr.base.chart.chartdata.model.NormalDataModel"/>
<newPlotFillStyle>
<AttrFillStyle>
<AFStyle colorStyle="0"/>
<FillStyleName fillStyleName=""/>
<isCustomFillStyle isCustomFillStyle="false"/>
<PredefinedStyle predefinedStyle="false"/>
</AttrFillStyle>
</newPlotFillStyle>
<VanChartPlotAttr isAxisRotation="false" categoryNum="1"/>
<GradientStyle>
<Attr gradientType="gradual" startColor="-12146441" endColor="-9378161"/>
</GradientStyle>
<VanChartRectanglePlotAttr vanChartPlotType="normal" isDefaultIntervalBackground="true"/>
<XAxisList>
<VanChartAxis class="com.fr.plugin.chart.attr.axis.VanChartAxis">
<Title>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr gradientType="normal" gradientStartColor="-12146441" gradientEndColor="-9378161" shadow="false" autoBackground="false" predefinedStyle="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-16777216" autoColor="false" predefinedStyle="false"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<O>
<![CDATA[]]></O>
<TextAttr>
<Attr alignText="0" predefinedStyle="false">
<FRFont name="Verdana" style="0" size="88" foreground="-10066330"/>
</Attr>
</TextAttr>
<TitleVisible value="true" position="0"/>
</Title>
<newAxisAttr isShowAxisLabel="true"/>
<AxisLineStyle AxisStyle="1" MainGridStyle="1"/>
<newLineColor lineColor="-5197648" predefinedStyle="false"/>
<AxisPosition value="3"/>
<TickLine201106 type="2" secType="0"/>
<ArrowShow arrowShow="false"/>
<TextAttr>
<Attr alignText="0" predefinedStyle="false">
<FRFont name="Verdana" style="0" size="88" foreground="-10066330"/>
</Attr>
</TextAttr>
<AxisLabelCount value="=1"/>
<AxisRange/>
<AxisUnit201106 isCustomMainUnit="false" isCustomSecUnit="false" mainUnit="=0" secUnit="=0"/>
<ZoomAxisAttr isZoom="false"/>
<axisReversed axisReversed="false"/>
<VanChartAxisAttr mainTickLine="2" secTickLine="0" axisName="X轴" titleUseHtml="false" labelDisplay="interval" autoLabelGap="true" limitSize="false" maxHeight="15.0" commonValueFormat="true" isRotation="false" isShowAxisTitle="false" gridLineType="NONE"/>
<HtmlLabel customText="function(){ return this; }" useHtml="false" isCustomWidth="false" isCustomHeight="false" width="50" height="50"/>
<alertList/>
<customBackgroundList/>
</VanChartAxis>
</XAxisList>
<YAxisList>
<VanChartAxis class="com.fr.plugin.chart.attr.axis.VanChartValueAxis">
<Title>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr gradientType="normal" gradientStartColor="-12146441" gradientEndColor="-9378161" shadow="false" autoBackground="false" predefinedStyle="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-16777216" autoColor="false" predefinedStyle="false"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<O>
<![CDATA[]]></O>
<TextAttr>
<Attr rotation="-90" alignText="0" predefinedStyle="false">
<FRFont name="Verdana" style="0" size="88" foreground="-10066330"/>
</Attr>
</TextAttr>
<TitleVisible value="true" position="0"/>
</Title>
<newAxisAttr isShowAxisLabel="true"/>
<AxisLineStyle AxisStyle="0" MainGridStyle="1"/>
<newLineColor mainGridPredefinedStyle="false" lineColor="-5197648" predefinedStyle="false"/>
<AxisPosition value="2"/>
<TickLine201106 type="2" secType="0"/>
<ArrowShow arrowShow="false"/>
<TextAttr>
<Attr alignText="0" predefinedStyle="false">
<FRFont name="Verdana" style="0" size="80" foreground="-6710887"/>
</Attr>
</TextAttr>
<AxisLabelCount value="=1"/>
<AxisRange/>
<AxisUnit201106 isCustomMainUnit="false" isCustomSecUnit="false" mainUnit="=0" secUnit="=0"/>
<ZoomAxisAttr isZoom="false"/>
<axisReversed axisReversed="false"/>
<VanChartAxisAttr mainTickLine="0" secTickLine="0" axisName="Y轴" titleUseHtml="false" labelDisplay="interval" autoLabelGap="true" limitSize="false" maxHeight="15.0" commonValueFormat="true" isRotation="false" isShowAxisTitle="false" gridLineType="solid"/>
<HtmlLabel customText="function(){ return this; }" useHtml="false" isCustomWidth="false" isCustomHeight="false" width="50" height="50"/>
<alertList/>
<customBackgroundList/>
<VanChartValueAxisAttr isLog="false" valueStyle="false" baseLog="=10"/>
<ds>
<RadarYAxisTableDefinition>
<Top topCate="-1" topValue="-1" isDiscardOtherCate="false" isDiscardOtherSeries="false" isDiscardNullCate="false" isDiscardNullSeries="false"/>
<attr/>
</RadarYAxisTableDefinition>
</ds>
</VanChartAxis>
<VanChartAxis class="com.fr.plugin.chart.attr.axis.VanChartValueAxis">
<Title>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr gradientType="normal" gradientStartColor="-12146441" gradientEndColor="-9378161" shadow="false" autoBackground="false" predefinedStyle="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-16777216" autoColor="false" predefinedStyle="false"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<O>
<![CDATA[]]></O>
<TextAttr>
<Attr rotation="-90" alignText="0" predefinedStyle="false">
<FRFont name="Verdana" style="0" size="88" foreground="-10066330"/>
</Attr>
</TextAttr>
<TitleVisible value="true" position="0"/>
</Title>
<newAxisAttr isShowAxisLabel="true"/>
<AxisLineStyle AxisStyle="0" MainGridStyle="1"/>
<newLineColor lineColor="-5197648" predefinedStyle="false"/>
<AxisPosition value="4"/>
<TickLine201106 type="2" secType="0"/>
<ArrowShow arrowShow="false"/>
<TextAttr>
<Attr alignText="0" predefinedStyle="false">
<FRFont name="Verdana" style="0" size="80" foreground="-6710887"/>
</Attr>
</TextAttr>
<Format class="com.fr.base.CoreDecimalFormat" roundingMode="6">
<![CDATA[#0%]]></Format>
<AxisLabelCount value="=1"/>
<AxisRange/>
<AxisUnit201106 isCustomMainUnit="false" isCustomSecUnit="false" mainUnit="=0" secUnit="=0"/>
<ZoomAxisAttr isZoom="false"/>
<axisReversed axisReversed="false"/>
<VanChartAxisAttr mainTickLine="0" secTickLine="0" axisName="Y轴2" titleUseHtml="false" labelDisplay="interval" autoLabelGap="true" limitSize="false" maxHeight="15.0" commonValueFormat="true" isRotation="false" isShowAxisTitle="false" gridLineType="NONE"/>
<HtmlLabel customText="function(){ return this; }" useHtml="false" isCustomWidth="false" isCustomHeight="false" width="" height=""/>
<alertList/>
<customBackgroundList/>
<VanChartValueAxisAttr isLog="false" valueStyle="false" baseLog="=10"/>
<ds>
<RadarYAxisTableDefinition>
<Top topCate="-1" topValue="-1" isDiscardOtherCate="false" isDiscardOtherSeries="false" isDiscardNullCate="false" isDiscardNullSeries="false"/>
<attr/>
</RadarYAxisTableDefinition>
</ds>
</VanChartAxis>
</YAxisList>
<stackAndAxisCondition>
<ConditionCollection>
<DefaultAttr class="com.fr.chart.chartglyph.ConditionAttr">
<ConditionAttr name=""/>
</DefaultAttr>
</ConditionCollection>
</stackAndAxisCondition>
<VanChartCustomPlotAttr customStyle="custom"/>
<CustomPlotList>
<VanChartPlot class="com.fr.plugin.chart.line.VanChartLinePlot">
<VanChartPlotVersion version="20170715"/>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr gradientType="normal" gradientStartColor="-12146441" gradientEndColor="-9378161" shadow="false" autoBackground="false" predefinedStyle="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<Attr isNullValueBreak="true" autoRefreshPerSecond="6" seriesDragEnable="false" plotStyle="0" combinedSize="50.0"/>
<newHotTooltipStyle>
<AttrContents>
<Attr showLine="false" position="1" isWhiteBackground="true" isShowMutiSeries="false" seriesLabel="${VALUE}"/>
<Format class="com.fr.base.CoreDecimalFormat" roundingMode="6">
<![CDATA[#.##]]></Format>
<PercentFormat>
<Format class="com.fr.base.CoreDecimalFormat" roundingMode="6">
<![CDATA[#0.##%]]></Format>
</PercentFormat>
</AttrContents>
</newHotTooltipStyle>
<ConditionCollection>
<DefaultAttr class="com.fr.chart.chartglyph.ConditionAttr">
<ConditionAttr name="">
<AttrList>
<Attr class="com.fr.plugin.chart.base.AttrTooltip">
<AttrTooltip>
<Attr enable="true" duration="4" followMouse="false" showMutiSeries="true" isCustom="false"/>
<TextAttr>
<Attr alignText="0" predefinedStyle="false"/>
</TextAttr>
<AttrToolTipContent>
<TextAttr>
<Attr alignText="0" predefinedStyle="false"/>
</TextAttr>
<richText class="com.fr.plugin.chart.base.AttrTooltipRichText">
<AttrTooltipRichText>
<Attr content="" isAuto="true" initParamsContent=""/>
</AttrTooltipRichText>
</richText>
<richTextValue class="com.fr.plugin.chart.base.format.AttrTooltipValueFormat">
<AttrTooltipValueFormat>
<Attr enable="true"/>
</AttrTooltipValueFormat>
</richTextValue>
<richTextPercent class="com.fr.plugin.chart.base.format.AttrTooltipPercentFormat">
<AttrTooltipPercentFormat>
<Attr enable="false"/>
<Format class="com.fr.base.CoreDecimalFormat" roundingMode="6">
<![CDATA[#.##%]]></Format>
</AttrTooltipPercentFormat>
</richTextPercent>
<richTextCategory class="com.fr.plugin.chart.base.format.AttrTooltipCategoryFormat">
<AttrToolTipCategoryFormat>
<Attr enable="true"/>
</AttrToolTipCategoryFormat>
</richTextCategory>
<richTextSeries class="com.fr.plugin.chart.base.format.AttrTooltipSeriesFormat">
<AttrTooltipSeriesFormat>
<Attr enable="true"/>
</AttrTooltipSeriesFormat>
</richTextSeries>
<richTextChangedPercent class="com.fr.plugin.chart.base.format.AttrTooltipChangedPercentFormat">
<AttrTooltipChangedPercentFormat>
<Attr enable="false"/>
<Format class="com.fr.base.CoreDecimalFormat" roundingMode="6">
<![CDATA[#.##%]]></Format>
</AttrTooltipChangedPercentFormat>
</richTextChangedPercent>
<richTextChangedValue class="com.fr.plugin.chart.base.format.AttrTooltipChangedValueFormat">
<AttrTooltipChangedValueFormat>
<Attr enable="false"/>
</AttrTooltipChangedValueFormat>
</richTextChangedValue>
<TableFieldCollection/>
<Attr isCommon="true" isCustom="false" isRichText="false" richTextAlign="left" showAllSeries="false"/>
<value class="com.fr.plugin.chart.base.format.AttrTooltipValueFormat">
<AttrTooltipValueFormat>
<Attr enable="true"/>
</AttrTooltipValueFormat>
</value>
<percent class="com.fr.plugin.chart.base.format.AttrTooltipPercentFormat">
<AttrTooltipPercentFormat>
<Attr enable="false"/>
<Format class="com.fr.base.CoreDecimalFormat" roundingMode="6">
<![CDATA[#.##%]]></Format>
</AttrTooltipPercentFormat>
</percent>
<category class="com.fr.plugin.chart.base.format.AttrTooltipCategoryFormat">
<AttrToolTipCategoryFormat>
<Attr enable="true"/>
</AttrToolTipCategoryFormat>
</category>
<series class="com.fr.plugin.chart.base.format.AttrTooltipSeriesFormat">
<AttrTooltipSeriesFormat>
<Attr enable="true"/>
</AttrTooltipSeriesFormat>
</series>
<changedPercent class="com.fr.plugin.chart.base.format.AttrTooltipChangedPercentFormat">
<AttrTooltipChangedPercentFormat>
<Attr enable="false"/>
<Format class="com.fr.base.CoreDecimalFormat" roundingMode="6">
<![CDATA[#.##%]]></Format>
</AttrTooltipChangedPercentFormat>
</changedPercent>
<changedValue class="com.fr.plugin.chart.base.format.AttrTooltipChangedValueFormat">
<AttrTooltipChangedValueFormat>
<Attr enable="false"/>
</AttrTooltipChangedValueFormat>
</changedValue>
<HtmlLabel customText="" useHtml="false" isCustomWidth="false" isCustomHeight="false" width="50" height="50"/>
</AttrToolTipContent>
<GI>
<AttrBackground>
<Background name="ColorBackground" color="-16777216"/>
<Attr gradientType="normal" gradientStartColor="-12146441" gradientEndColor="-9378161" shadow="true" autoBackground="false" predefinedStyle="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="2"/>
<newColor borderColor="-16777216" autoColor="false" predefinedStyle="false"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="0.5"/>
</AttrAlpha>
</GI>
</AttrTooltip>
</Attr>
<Attr class="com.fr.plugin.chart.base.VanChartAttrLine">
<VanAttrLine>
<Attr lineType="solid" lineWidth="2.0" lineStyle="2" nullValueBreak="false"/>
</VanAttrLine>
</Attr>
<Attr class="com.fr.plugin.chart.base.VanChartAttrMarker">
<VanAttrMarker>
<Attr isCommon="true" anchorSize="22.0" markerType="NullMarker" radius="3.5" width="30.0" height="30.0"/>
<Background name="NullBackground"/>
</VanAttrMarker>
</Attr>
</AttrList>
</ConditionAttr>
</DefaultAttr>
<ConditionAttrList>
<List index="0">
<ConditionAttr name="条件属性1">
<AttrList>
<Attr class="com.fr.plugin.chart.base.AttrTooltip">
<AttrTooltip>
<Attr enable="true" duration="4" followMouse="false" showMutiSeries="true" isCustom="false"/>
<TextAttr>
<Attr alignText="0" predefinedStyle="false">
<FRFont name="宋体" style="0" size="72"/>
</Attr>
</TextAttr>
<AttrToolTipContent>
<TextAttr>
<Attr alignText="0" predefinedStyle="false">
<FRFont name="宋体" style="0" size="72"/>
</Attr>
</TextAttr>
<richText class="com.fr.plugin.chart.base.AttrTooltipRichText">
<AttrTooltipRichText>
<Attr content="&lt;p style=&quot;text-align: left;&quot;&gt;&lt;img data-id=&quot;${CATEGORY}&quot;/&gt;&lt;br&gt;&lt;img data-id=&quot;${SERIES}&quot;/&gt;&lt;br&gt;&lt;img data-id=&quot;${VALUE}&quot;/&gt;&lt;br&gt;&lt;/p&gt;" isAuto="true" initParamsContent="${CATEGORY}${SERIES}${VALUE}"/>
</AttrTooltipRichText>
</richText>
<richTextValue class="com.fr.plugin.chart.base.format.AttrTooltipValueFormat">
<AttrTooltipValueFormat>
<Attr enable="true"/>
</AttrTooltipValueFormat>
</richTextValue>
<richTextPercent class="com.fr.plugin.chart.base.format.AttrTooltipPercentFormat">
<AttrTooltipPercentFormat>
<Attr enable="false"/>
<Format class="com.fr.base.CoreDecimalFormat" roundingMode="6">
<![CDATA[#.##%]]></Format>
</AttrTooltipPercentFormat>
</richTextPercent>
<richTextCategory class="com.fr.plugin.chart.base.format.AttrTooltipCategoryFormat">
<AttrToolTipCategoryFormat>
<Attr enable="true"/>
</AttrToolTipCategoryFormat>
</richTextCategory>
<richTextSeries class="com.fr.plugin.chart.base.format.AttrTooltipSeriesFormat">
<AttrTooltipSeriesFormat>
<Attr enable="true"/>
</AttrTooltipSeriesFormat>
</richTextSeries>
<richTextChangedPercent class="com.fr.plugin.chart.base.format.AttrTooltipChangedPercentFormat">
<AttrTooltipChangedPercentFormat>
<Attr enable="false"/>
<Format class="com.fr.base.CoreDecimalFormat" roundingMode="6">
<![CDATA[#.##%]]></Format>
</AttrTooltipChangedPercentFormat>
</richTextChangedPercent>
<richTextChangedValue class="com.fr.plugin.chart.base.format.AttrTooltipChangedValueFormat">
<AttrTooltipChangedValueFormat>
<Attr enable="false"/>
</AttrTooltipChangedValueFormat>
</richTextChangedValue>
<TableFieldCollection/>
<Attr isCommon="true" isCustom="false" isRichText="false" richTextAlign="left" showAllSeries="false"/>
<value class="com.fr.plugin.chart.base.format.AttrTooltipValueFormat">
<AttrTooltipValueFormat>
<Attr enable="true"/>
<Format class="com.fr.base.CoreDecimalFormat" roundingMode="6">
<![CDATA[#0.00%]]></Format>
</AttrTooltipValueFormat>
</value>
<percent class="com.fr.plugin.chart.base.format.AttrTooltipPercentFormat">
<AttrTooltipPercentFormat>
<Attr enable="false"/>
<Format class="com.fr.base.CoreDecimalFormat" roundingMode="6">
<![CDATA[#.##%]]></Format>
</AttrTooltipPercentFormat>
</percent>
<category class="com.fr.plugin.chart.base.format.AttrTooltipCategoryFormat">
<AttrToolTipCategoryFormat>
<Attr enable="true"/>
</AttrToolTipCategoryFormat>
</category>
<series class="com.fr.plugin.chart.base.format.AttrTooltipSeriesFormat">
<AttrTooltipSeriesFormat>
<Attr enable="true"/>
</AttrTooltipSeriesFormat>
</series>
<changedPercent class="com.fr.plugin.chart.base.format.AttrTooltipChangedPercentFormat">
<AttrTooltipChangedPercentFormat>
<Attr enable="false"/>
<Format class="com.fr.base.CoreDecimalFormat" roundingMode="6">
<![CDATA[#.##%]]></Format>
</AttrTooltipChangedPercentFormat>
</changedPercent>
<changedValue class="com.fr.plugin.chart.base.format.AttrTooltipChangedValueFormat">
<AttrTooltipChangedValueFormat>
<Attr enable="false"/>
</AttrTooltipChangedValueFormat>
</changedValue>
<HtmlLabel customText="" useHtml="false" isCustomWidth="false" isCustomHeight="false" width="50" height="50"/>
</AttrToolTipContent>
<GI>
<AttrBackground>
<Background name="ColorBackground" color="-16777216"/>
<Attr gradientType="normal" gradientStartColor="-12146441" gradientEndColor="-9378161" shadow="true" autoBackground="false" predefinedStyle="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="2"/>
<newColor borderColor="-16777216" autoColor="false" predefinedStyle="false"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="0.5"/>
</AttrAlpha>
</GI>
</AttrTooltip>
</Attr>
</AttrList>
<Condition class="com.fr.chart.chartattr.ChartCommonCondition">
<CNUMBER>
<![CDATA[2]]></CNUMBER>
<CNAME>
<![CDATA[SERIES_INDEX]]></CNAME>
<Compare op="0">
<O>
<![CDATA[6]]></O>
</Compare>
</Condition>
</ConditionAttr>
</List>
</ConditionAttrList>
</ConditionCollection>
<Legend4VanChart>
<Legend>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr gradientType="normal" gradientStartColor="-12146441" gradientEndColor="-9378161" shadow="false" autoBackground="false" predefinedStyle="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-3355444" autoColor="false" predefinedStyle="false"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<Attr position="4" visible="true" predefinedStyle="false"/>
<FRFont name="Microsoft YaHei" style="0" size="88" foreground="-10066330"/>
</Legend>
<Attr4VanChart floating="false" x="0.0" y="0.0" layout="aligned" customSize="false" maxHeight="30.0" isHighlight="true"/>
</Legend4VanChart>
<DataSheet>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr gradientType="normal" gradientStartColor="-12146441" gradientEndColor="-9378161" shadow="false" autoBackground="false" predefinedStyle="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="1" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-16777216" autoColor="false" predefinedStyle="false"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<Attr isVisible="false" predefinedStyle="false"/>
<FRFont name="SimSun" style="0" size="72"/>
<Format class="com.fr.base.CoreDecimalFormat" roundingMode="6">
<![CDATA[#.##]]></Format>
</DataSheet>
<DataProcessor class="com.fr.base.chart.chartdata.model.NormalDataModel"/>
<newPlotFillStyle>
<AttrFillStyle>
<AFStyle colorStyle="0"/>
<FillStyleName fillStyleName=""/>
<isCustomFillStyle isCustomFillStyle="false"/>
<PredefinedStyle predefinedStyle="false"/>
</AttrFillStyle>
</newPlotFillStyle>
<VanChartPlotAttr isAxisRotation="false" categoryNum="1"/>
<GradientStyle>
<Attr gradientType="gradual" startColor="-12146441" endColor="-9378161"/>
</GradientStyle>
<VanChartRectanglePlotAttr vanChartPlotType="custom" isDefaultIntervalBackground="true"/>
<XAxisList>
<VanChartAxis class="com.fr.plugin.chart.attr.axis.VanChartAxis">
<Title>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr gradientType="normal" gradientStartColor="-12146441" gradientEndColor="-9378161" shadow="false" autoBackground="false" predefinedStyle="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-16777216" autoColor="false" predefinedStyle="false"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<O>
<![CDATA[]]></O>
<TextAttr>
<Attr alignText="0" predefinedStyle="false">
<FRFont name="Verdana" style="0" size="88" foreground="-10066330"/>
</Attr>
</TextAttr>
<TitleVisible value="true" position="0"/>
</Title>
<newAxisAttr isShowAxisLabel="true"/>
<AxisLineStyle AxisStyle="1" MainGridStyle="1"/>
<newLineColor lineColor="-5197648" predefinedStyle="false"/>
<AxisPosition value="3"/>
<TickLine201106 type="2" secType="0"/>
<ArrowShow arrowShow="false"/>
<TextAttr>
<Attr alignText="0" predefinedStyle="false">
<FRFont name="Verdana" style="0" size="88" foreground="-10066330"/>
</Attr>
</TextAttr>
<AxisLabelCount value="=1"/>
<AxisRange/>
<AxisUnit201106 isCustomMainUnit="false" isCustomSecUnit="false" mainUnit="=0" secUnit="=0"/>
<ZoomAxisAttr isZoom="false"/>
<axisReversed axisReversed="false"/>
<VanChartAxisAttr mainTickLine="2" secTickLine="0" axisName="X轴" titleUseHtml="false" labelDisplay="interval" autoLabelGap="true" limitSize="false" maxHeight="15.0" commonValueFormat="true" isRotation="false" isShowAxisTitle="false" gridLineType="NONE"/>
<HtmlLabel customText="function(){ return this; }" useHtml="false" isCustomWidth="false" isCustomHeight="false" width="50" height="50"/>
<alertList/>
<customBackgroundList/>
</VanChartAxis>
</XAxisList>
<YAxisList>
<VanChartAxis class="com.fr.plugin.chart.attr.axis.VanChartValueAxis">
<Title>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr gradientType="normal" gradientStartColor="-12146441" gradientEndColor="-9378161" shadow="false" autoBackground="false" predefinedStyle="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-16777216" autoColor="false" predefinedStyle="false"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<O>
<![CDATA[]]></O>
<TextAttr>
<Attr rotation="-90" alignText="0" predefinedStyle="false">
<FRFont name="Verdana" style="0" size="88" foreground="-10066330"/>
</Attr>
</TextAttr>
<TitleVisible value="true" position="0"/>
</Title>
<newAxisAttr isShowAxisLabel="true"/>
<AxisLineStyle AxisStyle="0" MainGridStyle="1"/>
<newLineColor mainGridPredefinedStyle="false" lineColor="-5197648" predefinedStyle="false"/>
<AxisPosition value="2"/>
<TickLine201106 type="2" secType="0"/>
<ArrowShow arrowShow="false"/>
<TextAttr>
<Attr alignText="0" predefinedStyle="false">
<FRFont name="Verdana" style="0" size="80" foreground="-6710887"/>
</Attr>
</TextAttr>
<AxisLabelCount value="=1"/>
<AxisRange/>
<AxisUnit201106 isCustomMainUnit="false" isCustomSecUnit="false" mainUnit="=0" secUnit="=0"/>
<ZoomAxisAttr isZoom="false"/>
<axisReversed axisReversed="false"/>
<VanChartAxisAttr mainTickLine="0" secTickLine="0" axisName="Y轴" titleUseHtml="false" labelDisplay="interval" autoLabelGap="true" limitSize="false" maxHeight="15.0" commonValueFormat="true" isRotation="false" isShowAxisTitle="false" gridLineType="solid"/>
<HtmlLabel customText="function(){ return this; }" useHtml="false" isCustomWidth="false" isCustomHeight="false" width="50" height="50"/>
<alertList/>
<customBackgroundList/>
<VanChartValueAxisAttr isLog="false" valueStyle="false" baseLog="=10"/>
<ds>
<RadarYAxisTableDefinition>
<Top topCate="-1" topValue="-1" isDiscardOtherCate="false" isDiscardOtherSeries="false" isDiscardNullCate="false" isDiscardNullSeries="false"/>
<attr/>
</RadarYAxisTableDefinition>
</ds>
</VanChartAxis>
<VanChartAxis class="com.fr.plugin.chart.attr.axis.VanChartValueAxis">
<Title>
<GI>
<AttrBackground>
<Background name="NullBackground"/>
<Attr gradientType="normal" gradientStartColor="-12146441" gradientEndColor="-9378161" shadow="false" autoBackground="false" predefinedStyle="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-16777216" autoColor="false" predefinedStyle="false"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="1.0"/>
</AttrAlpha>
</GI>
<O>
<![CDATA[]]></O>
<TextAttr>
<Attr rotation="-90" alignText="0" predefinedStyle="false">
<FRFont name="Verdana" style="0" size="88" foreground="-10066330"/>
</Attr>
</TextAttr>
<TitleVisible value="true" position="0"/>
</Title>
<newAxisAttr isShowAxisLabel="true"/>
<AxisLineStyle AxisStyle="0" MainGridStyle="1"/>
<newLineColor lineColor="-5197648" predefinedStyle="false"/>
<AxisPosition value="4"/>
<TickLine201106 type="2" secType="0"/>
<ArrowShow arrowShow="false"/>
<TextAttr>
<Attr alignText="0" predefinedStyle="false">
<FRFont name="Verdana" style="0" size="80" foreground="-6710887"/>
</Attr>
</TextAttr>
<Format class="com.fr.base.CoreDecimalFormat" roundingMode="6">
<![CDATA[#0%]]></Format>
<AxisLabelCount value="=1"/>
<AxisRange/>
<AxisUnit201106 isCustomMainUnit="false" isCustomSecUnit="false" mainUnit="=0" secUnit="=0"/>
<ZoomAxisAttr isZoom="false"/>
<axisReversed axisReversed="false"/>
<VanChartAxisAttr mainTickLine="0" secTickLine="0" axisName="Y轴2" titleUseHtml="false" labelDisplay="interval" autoLabelGap="true" limitSize="false" maxHeight="15.0" commonValueFormat="true" isRotation="false" isShowAxisTitle="false" gridLineType="NONE"/>
<HtmlLabel customText="function(){ return this; }" useHtml="false" isCustomWidth="false" isCustomHeight="false" width="" height=""/>
<alertList/>
<customBackgroundList/>
<VanChartValueAxisAttr isLog="false" valueStyle="false" baseLog="=10"/>
<ds>
<RadarYAxisTableDefinition>
<Top topCate="-1" topValue="-1" isDiscardOtherCate="false" isDiscardOtherSeries="false" isDiscardNullCate="false" isDiscardNullSeries="false"/>
<attr/>
</RadarYAxisTableDefinition>
</ds>
</VanChartAxis>
</YAxisList>
<stackAndAxisCondition>
<ConditionCollection>
<DefaultAttr class="com.fr.chart.chartglyph.ConditionAttr">
<ConditionAttr name=""/>
</DefaultAttr>
<ConditionAttrList>
<List index="0">
<ConditionAttr name="堆积和坐标轴1">
<AttrList>
<Attr class="com.fr.plugin.chart.base.AttrSeriesStackAndAxis">
<AttrSeriesStackAndAxis>
<Attr xAxisIndex="0" yAxisIndex="1" stacked="false" percentStacked="false" stackID="堆积和坐标轴1"/>
</AttrSeriesStackAndAxis>
</Attr>
</AttrList>
<Condition class="com.fr.chart.chartattr.ChartCommonCondition">
<CNUMBER>
<![CDATA[0]]></CNUMBER>
<CNAME>
<![CDATA[SERIES_INDEX]]></CNAME>
<Compare op="0">
<O>
<![CDATA[6]]></O>
</Compare>
</Condition>
</ConditionAttr>
</List>
</ConditionAttrList>
</ConditionCollection>
</stackAndAxisCondition>
</VanChartPlot>
</CustomPlotList>
</Plot>
<ChartDefinition>
<CustomDefinition>
<DefinitionMapList>
<DefinitionMap key="line">
<MoreNameCDDefinition>
<Top topCate="-1" topValue="-1" isDiscardOtherCate="false" isDiscardOtherSeries="false" isDiscardNullCate="false" isDiscardNullSeries="false"/>
<TableData class="com.fr.data.impl.NameTableData">
<Name>
<![CDATA[整体趋势]]></Name>
</TableData>
<CategoryName value="date_time"/>
<ChartSummaryColumn name="店铺销售额" function="com.fr.data.util.function.SumFunction" customName="店铺销售额"/>
<ChartSummaryColumn name="退款金额" function="com.fr.data.util.function.SumFunction" customName="退款金额"/>
<ChartSummaryColumn name="实际销售额" function="com.fr.data.util.function.SumFunction" customName="实际销售额"/>
<ChartSummaryColumn name="店铺总流量" function="com.fr.data.util.function.SumFunction" customName="店铺总流量"/>
<ChartSummaryColumn name="支付买家数" function="com.fr.data.util.function.SumFunction" customName="支付买家数"/>
<ChartSummaryColumn name="支付转化率" function="com.fr.data.util.function.SumFunction" customName="支付转化率"/>
<ChartSummaryColumn name="客单价" function="com.fr.data.util.function.SumFunction" customName="客单价"/>
<ChartSummaryColumn name="总费用" function="com.fr.data.util.function.SumFunction" customName="总费用"/>
</MoreNameCDDefinition>
</DefinitionMap>
</DefinitionMapList>
</CustomDefinition>
</ChartDefinition>
</Chart>
<UUID uuid="db70ee14-fd5a-4a20-85c1-105bc12918e4"/>
<tools hidden="true" sort="false" export="false" fullScreen="false"/>
<VanChartZoom>
<zoomAttr zoomVisible="false" zoomGesture="true" zoomResize="true" zoomType="xy" controlType="zoom" categoryNum="8" scaling="0.3"/>
<from>
<![CDATA[]]></from>
<to>
<![CDATA[]]></to>
</VanChartZoom>
<refreshMoreLabel>
<attr moreLabel="false" autoTooltip="false"/>
<AttrTooltip>
<Attr enable="true" duration="4" followMouse="false" showMutiSeries="false" isCustom="false"/>
<TextAttr>
<Attr alignText="0" predefinedStyle="false"/>
</TextAttr>
<AttrToolTipContent>
<TextAttr>
<Attr alignText="0" predefinedStyle="false"/>
</TextAttr>
<richText class="com.fr.plugin.chart.base.AttrTooltipRichText">
<AttrTooltipRichText>
<Attr content="" isAuto="true" initParamsContent=""/>
</AttrTooltipRichText>
</richText>
<richTextValue class="com.fr.plugin.chart.base.format.AttrTooltipValueFormat">
<AttrTooltipValueFormat>
<Attr enable="true"/>
</AttrTooltipValueFormat>
</richTextValue>
<richTextPercent class="com.fr.plugin.chart.base.format.AttrTooltipPercentFormat">
<AttrTooltipPercentFormat>
<Attr enable="false"/>
<Format class="com.fr.base.CoreDecimalFormat" roundingMode="6">
<![CDATA[#.##%]]></Format>
</AttrTooltipPercentFormat>
</richTextPercent>
<richTextCategory class="com.fr.plugin.chart.base.format.AttrTooltipCategoryFormat">
<AttrToolTipCategoryFormat>
<Attr enable="false"/>
</AttrToolTipCategoryFormat>
</richTextCategory>
<richTextSeries class="com.fr.plugin.chart.base.format.AttrTooltipSeriesFormat">
<AttrTooltipSeriesFormat>
<Attr enable="false"/>
</AttrTooltipSeriesFormat>
</richTextSeries>
<richTextChangedPercent class="com.fr.plugin.chart.base.format.AttrTooltipChangedPercentFormat">
<AttrTooltipChangedPercentFormat>
<Attr enable="false"/>
<Format class="com.fr.base.CoreDecimalFormat" roundingMode="6">
<![CDATA[#.##%]]></Format>
</AttrTooltipChangedPercentFormat>
</richTextChangedPercent>
<richTextChangedValue class="com.fr.plugin.chart.base.format.AttrTooltipChangedValueFormat">
<AttrTooltipChangedValueFormat>
<Attr enable="false"/>
</AttrTooltipChangedValueFormat>
</richTextChangedValue>
<TableFieldCollection/>
<Attr isCommon="true" isCustom="false" isRichText="false" richTextAlign="left" showAllSeries="false"/>
<value class="com.fr.plugin.chart.base.format.AttrTooltipValueFormat">
<AttrTooltipValueFormat>
<Attr enable="true"/>
</AttrTooltipValueFormat>
</value>
<percent class="com.fr.plugin.chart.base.format.AttrTooltipPercentFormat">
<AttrTooltipPercentFormat>
<Attr enable="false"/>
<Format class="com.fr.base.CoreDecimalFormat" roundingMode="6">
<![CDATA[#.##%]]></Format>
</AttrTooltipPercentFormat>
</percent>
<category class="com.fr.plugin.chart.base.format.AttrTooltipCategoryFormat">
<AttrToolTipCategoryFormat>
<Attr enable="true"/>
</AttrToolTipCategoryFormat>
</category>
<series class="com.fr.plugin.chart.base.format.AttrTooltipSeriesFormat">
<AttrTooltipSeriesFormat>
<Attr enable="true"/>
</AttrTooltipSeriesFormat>
</series>
<changedPercent class="com.fr.plugin.chart.base.format.AttrTooltipChangedPercentFormat">
<AttrTooltipChangedPercentFormat>
<Attr enable="false"/>
<Format class="com.fr.base.CoreDecimalFormat" roundingMode="6">
<![CDATA[#.##%]]></Format>
</AttrTooltipChangedPercentFormat>
</changedPercent>
<changedValue class="com.fr.plugin.chart.base.format.AttrTooltipChangedValueFormat">
<AttrTooltipChangedValueFormat>
<Attr enable="true"/>
</AttrTooltipChangedValueFormat>
</changedValue>
<HtmlLabel customText="" useHtml="false" isCustomWidth="false" isCustomHeight="false" width="50" height="50"/>
</AttrToolTipContent>
<GI>
<AttrBackground>
<Background name="ColorBackground" color="-1"/>
<Attr gradientType="normal" gradientStartColor="-12146441" gradientEndColor="-9378161" shadow="false" autoBackground="false" predefinedStyle="false"/>
</AttrBackground>
<AttrBorder>
<Attr lineStyle="1" isRoundBorder="false" roundRadius="4"/>
<newColor borderColor="-15395563" autoColor="false" predefinedStyle="false"/>
</AttrBorder>
<AttrAlpha>
<Attr alpha="0.8"/>
</AttrAlpha>
</GI>
</AttrTooltip>
</refreshMoreLabel>
<ThemeAttr>
<Attr darkTheme="false" predefinedStyle="false"/>
</ThemeAttr>
</Chart>
<ChartMobileAttrProvider zoomOut="0" zoomIn="2" allowFullScreen="true" functionalWhenUnactivated="false"/>
<MobileChartCollapsedStyle class="com.fr.form.ui.mobile.MobileChartCollapsedStyle">
<collapseButton showButton="true" color="-6710887" foldedHint="" unfoldedHint="" defaultState="0"/>
<collapsedWork value="false"/>
</MobileChartCollapsedStyle>
</body>
</InnerWidget>
<BoundsAttr x="0" y="105" width="950" height="293"/>
</Widget>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.container.WTitleLayout">
<WidgetName name="report1"/>
<WidgetAttr aspectRatioLocked="false" aspectRatioBackup="-1.0" description="">
<MobileBookMark useBookMark="false" bookMarkName="report1" frozen="false"/>
<PrivilegeControl/>
</WidgetAttr>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="0" color="-723724" borderRadius="0" type="0" borderStyle="0"/>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="SimSun" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Alpha alpha="1.0"/>
</Border>
<LCAttr vgap="0" hgap="0" compInterval="0"/>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.ElementCaseEditor">
<WidgetName name="report1"/>
<WidgetID widgetID="aa47a464-3280-41eb-8cf8-23bbb74c1647"/>
<WidgetAttr aspectRatioLocked="false" aspectRatioBackup="-1.0" description="">
<MobileBookMark useBookMark="false" bookMarkName="" frozen="false"/>
<PrivilegeControl/>
</WidgetAttr>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="0" borderRadius="0" type="0" borderStyle="0"/>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="宋体" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Alpha alpha="1.0"/>
</Border>
<FormElementCase>
<ReportPageAttr>
<HR/>
<FR/>
<HC/>
<FC/>
</ReportPageAttr>
<ColumnPrivilegeControl/>
<RowPrivilegeControl/>
<RowHeight defaultValue="723900">
<![CDATA[1066800,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900]]></RowHeight>
<ColumnWidth defaultValue="2743200">
<![CDATA[2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200]]></ColumnWidth>
<CellElementList>
<C c="0" r="0" cs="3" s="0">
<O>
<![CDATA[整体趋势]]></O>
<PrivilegeControl/>
<Expand/>
</C>
</CellElementList>
<ReportAttrSet>
<ReportSettings headerHeight="0" footerHeight="0">
<PaperSetting/>
<Background name="ColorBackground" color="-1"/>
</ReportSettings>
</ReportAttrSet>
</FormElementCase>
<StyleList>
<Style imageLayout="1">
<FRFont name="微软雅黑" style="1" size="96"/>
<Background name="NullBackground"/>
<Border/>
</Style>
</StyleList>
<heightRestrict heightrestrict="false"/>
<heightPercent heightpercent="0.75"/>
<IM>
<![CDATA[m@7liP?/[Cl*2h2<[Q;[U1o0P%q_b18ZL>c>;?os_%'jiAZA#&(9Fp*9%ZHg[8pHI112B9J8
("cd8Vk.&m:Br-kp0I2.2@LM42'[Jg"YJ+krIm/lU(.r6u6eccr@5n,:#q\bCCKp\0'HhdrT
0LV3E%Ma9Wp+Xnq-I2E[j*',K]A7eR59#QFNU"8Pqn&E0fAbMN8tXR>KVj(D^Q9jrU6AVe''>
P5QWm2pD`fiEaZ*;87;'igO.DBpZgG%N/+]Asd'o:KPX;D-V74`Es6R^[/?^o/7(hY_N."@Q\
nO6H8kG50308Ip]Ac6>F2&/=>chW`?]A87:!aHZ/;V_)2q-:QmjTH5,!js89ji'F@gmLV)R?'N
VT@^s)fUogeT4WgmJ`/lI%)\5@+&&VLg8.H:aa8#bP*2W39nGo]A$?2KQcM_cOeUHEc:a?cUk
-RW($UWqPN,2f$WBt_/bo94%?YS'M:oD+ZLMCRY7'+M2Y-dW6puVi,/(4m<("&b$!B+bp3N5
%N7q*ZZi@t3*Iabj1>^YIg.&Rij"JY(8Ja2Ca3Mpp1o:j3jp26;7lp=g.h'U_Mj`M5JLH&t9
2TWg6q3u%1"GmuX/r&Nk.&q]A^Xn![*8jbh7*0BOMEXl\.r%?FL6<E]A[e=a03-SgOgNP3JVc<
"#^_a%oCM=*E%$'buC4ad!l.6HW9>d>\aT8!1af^lU*BM<N;H\V#]A?`n-M+f:ANU?n[?0<FF
FjJ/X)B7J"kAAO&"K-84,F.Y.5mJ+C?kb-OfQ(g(YBrYXC-"@J,0%&#*VQ+>]AA#:.&3FNFU%
[>eRl,;KM;c)sI^Zt]Ar8H_TS@ls?3ZF0ETo?t/Qn#-O3+Z)IT.Je"/$6P"j/^-NTcpQg-<7h
<^gY$-ZD39:,HMI_2j$r7S48YsQgJiUI^r!3d]AXMN'stgF&]AP#c3892P(q\]ABH7?h;'8m=NA
sohqAZg)T1P.@/M5TYk@f&_@D8]A8t@Hlc^A(Kc&M'g7MYZel_iBgV15]A()<j[=tu"Zq0Br$f
)(G,/o2U5:I1AT`.g&*$I;_=e)GDc:8#R?0n2=t]AVB0%%lmSh5_$:AX<P2]AfD`RtXO"c*RWh
?apa^8sZhBL]A1IX['SfDNgIU_3A&LX@Zt]AO.&>:O+,^mEgM5hd!Z=$ADF;\qOS,jkcNcICN2
$te/cGMPF.'`l3P<T)dJ=UH$![eLS?mA1mPp1pn7UY$X0&dlM^RQ>HnSso&!kt6>J4BmMQ:B
JlppS&pNNP[;KlP0);bN^]Aooj/4*J1oU-(B%"c]As:Q)AGC-,E<WUu8j.mn-9SIRFq@2`<TEd
m,>7'jRJ^gU2B*=K^u,/CBhC+?7:s@$A@B,T7%D%Q5=Gs-\qaP?^`:89UJB?-PoqXkl_lH:#
afNj=LhO_A8)E<n-pEPpG,[MEYEf;]AZ4Nj^pMhYlj'\C%WDo6`,e3.@En<,9C7;-,juVaqT\
,863$9:7)0RZgddM+*]A0['6;l^a(,e6t<XoFgfp1q2N-c1?d!s>?[D`O\sNJ42\b<%[6$Ll[
d<n!g0TDc9GDdZfCb^2sI).=]Aq)#NPU,4K_DeCH\2";/:<qKML;"4X&0K!`KX8dpJrts@Xi7
5X(E+FWcVR-AN.NW'eQ_a_J/IX>ZWiB:3BP"Y;ptY2E*2@4HD%#i86`%,cTt'B]A$"T2k=jBc
e)(\G&Q=I*GbcA?k[[PC_/?]Ak8T)#1tLc'2iBdm[Hq)HP66$icHiNg4*Bn;Yi!(^VXSIUet\
?)G]AkFeWM,[c"/9EW89^&h7P5q[P$ki*L#JSRRQ*fna^]AJ?@h)_>7(NiBKVk(D:mASi;!QD?
>[<9Ic`1_*W:HXS:eIp(2t7ZZMS:$um@s,)*@$R2FE\"qX:r@W*^7]A`[/+3lheMe2/2:.:3G
B4ImZ:VXs,BOC]A^HhCcfW$'og5kO1:>g[pNPc1XqOQm;okVkqi%odD8RlLB#^29:]Ah&Sg5<Z
m%N7LmFW-Fn-"F`"Hu(8:gRqEeZ5]A0XX*J_?#oUqC@'f1CQEsod*k$`mIM4(sU7$@PnHku!c
R"]AAoA8b8f]A4Uf3P0^V>$GKa+faA2J_XQ+lB(]A6*M-MjZXXXX3J[GPWQ>CR8P<j^l<TQ\EP0
_`)QjpQ]Aua<3ao/6^^"$:P*IX0jnI-<&noXe1Q?OG6N,*i)jH-?0=5<L3<`W+r1rF`e,<V_A
X2Qesbmj)t9S,:ENa6D@RsHj)lts&__O[GbUO"LJbJI[P@h)V2I-[Fnm/+ai&7h3Lq$\@:m$
;^#D2k(DG:WS-#>[hop7VJqE$bchh?<S@T[+q__e(4Jj_,HIB+m<)+YFGB\qT(Qa_8kA"eNb
,r^4,@O.(1VBL:TVnI,#t;qj&Y3]A1/BXN5Rfljh^b0CS)?Q[4Q)>lDBMbs[bKZ3l5Q6ZPJ/^
LC']Amc7[:SUC0^b/QmVPXmW.l*HlM&U<a]AJoc8hiVjEP#SXU4mj0O@Jh=c_^93!Q&#la+=Wb
O'E:m,ZL9E"o^tD=!BK*@f#WET(paQl@6M^rpOlUR'bmci`1nuHqcNqoGYct[_MhpBbdbL.1
.GP23+g5TO.h[i\q'J4lR-\k,*R2L'/O$qb?_KV?o9b3^iU5mHL>%bDU%^mlf0a0J',$Km)p
NiTEa4:G[7"DLi-hZ-#>o+s<`<Nb25Acc\@&San;$'lQXs@c=m<d[OnC$;`!+F6RQZ?Zrd3_
m-S(#F0&jJ4.rltgV5<C:lEl74KUog)pu@[t=Rs8UF`f!(Q?O%dE(Lndg<ISdZVoU"SWJ_ul
lHLs/f:=WFEaf)VPL4=1PZD/&&f;''c<YCRU6c?[5BeUe[Am@@m/LmR;3Wf;<9Ti`NW(p'N;
L6NZKI,S.rb?Sj5++0(!E>>l-aReNAf*Y5pS"TYH*QoS#]A6a%3TZEN[atXgiE?S0EpZR,r1?
'!TbWMZDjNs%&$=qIF>EOICJoDr1'kM!e?562qg\eb^dHRVL04;MO?FrdLU(E&@Dt?TDc*.O
V2C&^,kL?2/=m2q4oYr"eg);,3/K!f=&[U8L7u1-+HFY#B5HYZFu28j8<P4^ONW_=:c2kag#
>C_.H(=e!q4((`V4U6/FthTp=eM^au-DdU#_'):Jt._8s3@boB'OaIKKN=bN[d/eap5t,DdZ
2q7^56/!?56/!?W;s5T#Tt(B!4%.]A+<-+:Z@N9()i+L"JI!A;+<1(X+<1(X+<-[T+<-+:Z@N
9()i+L"JI!A;L]AF`3#Tt(B!3uX2JNj.?JNj.?JZ/XTJI!A;L]AF`3#U'#D'R@)4G@rSd0mh[K
><[Odn;PKlb)gc7)\+O/9^t#s(&I.%#esZ;O<2rFT.Xn6k[`u=QS&,C\\20%2eKYZdX#4h4a
mE/@+megg;>+jc&P('nC&>*FlC;sa0'HMN8dN:Fi6-6p&D85_UM2^Uqi-]AWuj6:BpiZu$JDe
(#>'9RQZU[R^Q)$;@'t-)dBq^i8D;P+Uli0BmFlLk`1m+*Dp:SrT'dm*9ERt@U]AF/AU]AF/AU
]AF/AU]AF0h@?*kLGgHQEL^uW'enb5,eIORJd=M)PefejYej<&,i01H/D->oIofN-\~
]]></IM>
<ElementCaseMobileAttrProvider horizontal="1" vertical="1" zoom="true" refresh="false" isUseHTML="false" isMobileCanvasSize="false" appearRefresh="false" allowFullScreen="false" allowDoubleClickOrZoom="true" functionalWhenUnactivated="false"/>
<MobileFormCollapsedStyle class="com.fr.form.ui.mobile.MobileFormCollapsedStyle">
<collapseButton showButton="true" color="-6710887" foldedHint="" unfoldedHint="" defaultState="0"/>
<collapsedWork value="false"/>
<lineAttr number="1"/>
</MobileFormCollapsedStyle>
</InnerWidget>
<BoundsAttr x="0" y="0" width="950" height="27"/>
</Widget>
<ShowBookmarks showBookmarks="false"/>
<body class="com.fr.form.ui.ElementCaseEditor">
<WidgetName name="report1"/>
<WidgetID widgetID="aa47a464-3280-41eb-8cf8-23bbb74c1647"/>
<WidgetAttr aspectRatioLocked="false" aspectRatioBackup="-1.0" description="">
<MobileBookMark useBookMark="false" bookMarkName="" frozen="false"/>
<PrivilegeControl/>
</WidgetAttr>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="0" color="-723724" borderRadius="0" type="0" borderStyle="0"/>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="宋体" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Alpha alpha="1.0"/>
</Border>
<FormElementCase>
<ReportPageAttr>
<HR/>
<FR/>
<HC/>
<FC/>
</ReportPageAttr>
<ColumnPrivilegeControl/>
<RowPrivilegeControl/>
<RowHeight defaultValue="723900">
<![CDATA[1066800,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900]]></RowHeight>
<ColumnWidth defaultValue="2743200">
<![CDATA[2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200]]></ColumnWidth>
<CellElementList>
<C c="0" r="0" cs="3" s="0">
<O>
<![CDATA[整体趋势]]></O>
<PrivilegeControl/>
<Expand/>
</C>
</CellElementList>
<ReportAttrSet>
<ReportSettings headerHeight="0" footerHeight="0">
<PaperSetting/>
<Background name="ColorBackground" color="-1"/>
</ReportSettings>
</ReportAttrSet>
</FormElementCase>
<StyleList>
<Style imageLayout="1">
<FRFont name="SimSun" style="1" size="88"/>
<Background name="NullBackground"/>
<Border/>
</Style>
</StyleList>
<heightRestrict heightrestrict="false"/>
<heightPercent heightpercent="0.75"/>
<IM>
<![CDATA[m?qfb>#u]A!=^2Ee)F@RFD+2n"Y%c[+>4tkF!nh%fe4_c9MO=XE95Ct9gM#^WW7Mq']A'1KJZ#
A:O%l;bEVO06CD)uXT3L2LVXW'X*'9uHn_2&g;Pm`4PfiYb3Cc;)&52C9>p\^V(cc^b3nq4T
FPdMI^&dX.)hYukh!b%(U5Y)G!'*D<@057R&#Xs2Kp:CJc*VM^Oj[HWOI3/goHTmdf.j4kV>
Q4DGjT]A5@aj^]AXiib<Z=sb\$gI4I`Q]A\V.f,"9J4h,=fpua;?2*0iJoTH>E6t=hSR[Y:YPL*
f^*lm>,<uPgaBFgI_r"$r9T+[L83X+Lp2YLWOX\Z?+YXH%B$Wc:DfYM=;[KM*DH,D`t5rOSu
D\e.2Xsn6sI8,!96uel*)LKQsh=q<V(-COqqeU%,8#iem;<jR6D^@Dg[?5Pc9&5%r99AF]AlL
EPeq2!eE/QC3VhB'?,-U5`u\h0B<isqD6ZoN'gOG2Mg9[&PE/u%/g,f+3+XF)=gBh'S'C*Ap
]An)sHsc0X/9mp0G#ZmKm7XHieVrJIp[s("D'h9YB7m%q3^2U@Fd=n?,QOc@]AXh4h+Qh*f2]AT
=d3%d<6q#hM.S0Lf%d7KL!BCn5XOQZTa"?+u<2&n`lI_Y_1N-RU')k7J[)jC)PEA$7^&,,Ou
9bf!d(#?EA8"Dil9j(00\g50Ce_UZ*dqbC*OM_-`eADdG,Zh%s'"m5,Q]A2MWbOgs%u+CqB^b
kft)*o<2\R-8Y#)A(+7)X'b]A)WUtM_js9@i5%GVuN2X!:>.*WHA>esP<NCC8l^P=8:AZ%9gS
PTb.phm$]Ar^%(]A;LKhb+eVi^]A':YWHH/'coSs0s!Zk:]A@J'A,t31Kl9**)g5O,;(2aL3issP
kd3aNVo%"@LqL^oQA.;eSP9s<u5"spBleeGkag>`&`o@mr-=]AaZ7!TIK=%6D?F6]AJgSK'%XP
23#ZgqU]ATaG3+Bho<Cdf@"HhH8ckKa&BJVHI'`2T`3CRBjtT?8L@i+Vf42)iQ;q?o\9-nmEP
59'nAH=_F[sX=1/+l2>'h70^F8nYfB[%GH,oRo=%$M6fNMkdmLnl:Z5o/C(Gu`J4Eo5F6"hD
bNI-#4c[C=IOo7FD#p4*RFg\H8^\(h@#q(%G<c:]A#QPG:+ok"2L]A@te+9Fe2J-Z,e!$VD2!/
LWj%O(nWK*VJD+9DO)L]AG4#+onj"#QX36!WY<<!5K'g!3h(]A!:1g0!'>u:^^_OgY_*2]AllZ?
04,<mP%O(nWK*VJD+9GjPG5lPfCKWu5A*W<RrbDftVc60b7lD3J?Q0DrK,LF'g[MiF,Xs^R@
Z3JSJ+P7$N.,)ld8.Vlr*mR'<eaD*!i\U8jMZ:-"LP3`S@^!s#RhoSfZ9,Y1'$$.(ll!U]AJ\
I[j:/^LpkM4%]A,JTOPFfN0'[O-bWj!=h!78Rp!78Rp!78Rp!78Rp!78Rp!78_TX-YZG/?YB5
mu:An%0%nP>$`G!baBD"llRDS5.l;hff.e=C&/2~
]]></IM>
<ElementCaseMobileAttrProvider horizontal="1" vertical="1" zoom="true" refresh="false" isUseHTML="false" isMobileCanvasSize="false" appearRefresh="false" allowFullScreen="false" allowDoubleClickOrZoom="true" functionalWhenUnactivated="false"/>
<MobileFormCollapsedStyle class="com.fr.form.ui.mobile.MobileFormCollapsedStyle">
<collapseButton showButton="true" color="-6710887" foldedHint="" unfoldedHint="" defaultState="0"/>
<collapsedWork value="false"/>
<lineAttr number="1"/>
</MobileFormCollapsedStyle>
</body>
</InnerWidget>
<BoundsAttr x="0" y="78" width="950" height="27"/>
</Widget>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.container.WTitleLayout">
<Listener event="afterinit" name="初始化后1">
<JavaScript class="com.fr.js.JavaScriptImpl">
<Parameters/>
<Content>
<![CDATA[/*
 var reportWidget = this;
setTimeout(function() {
	$(reportWidget.element).css("text-shadow", "0px 0px 9px #00ae9d");
}, 1000);
*/]]></Content>
</JavaScript>
</Listener>
<WidgetName name="report00"/>
<WidgetID widgetID="8b763773-442f-42c5-835c-b5bef9fdb7e7"/>
<WidgetAttr aspectRatioLocked="false" aspectRatioBackup="-1.0" description="">
<MobileBookMark useBookMark="false" bookMarkName="report10" frozen="false"/>
<PrivilegeControl/>
</WidgetAttr>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="0" color="-723724" borderRadius="0" type="0" borderStyle="0"/>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="SimSun" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Alpha alpha="1.0"/>
</Border>
<ExtendSharableAttrMark class="com.fr.base.iofile.attr.ExtendSharableAttrMark">
<ExtendSharableAttrMark shareId="ec2f2a28-a9ef-4bfc-8d48-9558f248e9b3"/>
</ExtendSharableAttrMark>
<SharableAttrMark class="com.fr.base.iofile.attr.SharableAttrMark">
<SharableAttrMark isShared="true"/>
</SharableAttrMark>
<LCAttr vgap="0" hgap="0" compInterval="0"/>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.ElementCaseEditor">
<WidgetName name="report00"/>
<WidgetID widgetID="646dd67b-e016-42de-9da5-963d65cf6395"/>
<WidgetAttr aspectRatioLocked="false" aspectRatioBackup="0.0" description="【使用该组件前，请先安装模板组件复用插件 https://market.fanruan.com/plugin/0a49e40f-99da-48c7-950e-54a24e853204】
1）决策报表body样式的背景颜色设置为#00142E。组件背景可修改为颜色#011D3D。
2）报表块的JS事件控制标题的发光效果，用户可修改代码来调整光圈大小和颜色。">
<MobileBookMark useBookMark="false" bookMarkName="" frozen="false"/>
<PrivilegeControl/>
</WidgetAttr>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="0" color="-723724" borderRadius="0" type="0" borderStyle="0"/>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="宋体" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Background name="ImageBackground" layout="2">
<FineImage fm="png">
<IM>
<![CDATA[D7TmQdp;`-4p-3S0TZj.<'!G3OA\\S\j8TXA'RZ):jIkJKHNEC$"9Wc1^oKU&D3']Ac-RW'0L
D.:2"-7Xp%S31hd*k6^1WsWmf)#93B-TEOj87KX7QAli4SJ@9iD&M+$J>%f72)m5,1:EoDem
#P'&YNQj:KoV?9.9.%?i[p\m2O%tn8V,P*.fiS&?OSS?i/>-N:kLdc(7KX232]A?HG#[9f-g+
37N0Ko&^saS:RJ<VZ1hA=;7`;e60_+"o98'n!tR1e[8jVNZK15q(#rW`#+A1%jSMe'6S4P#,
UZ#iP`04msr0.5Ar2rG+s[Q.>V'9FL(6?Xn$?ro4Qo4o*]AcN9,FL'AA'8s$+p0`*XbHX<T_.
T):`l[;8PVqUXg*ftS?,VO,nuq0U&nh#5K)NrVQ78F:p,(Y*rV>1\aLs'FBlE,C\+,Q-5Qot
REE)ha("rm>&2e,G[RJ)PnWig&e$@nZ(T<FhnQ//\/ZKEp00-LeFar?1LcK)^FW2;.sU6bDr
NegHk=nOsGmMb!K0SuDHQGFC@;rOq7#m\f1^kH>6j09M7Zek4BS2P=ek4;]AIYgUA2mHb?Z>1
:d\s=O(DgR.Rfsf["*Rk@UUi\k#+A-\*i`e7uFY+#ftd<cHK:b"NEYA[?:>L)p([?LQ5)"4E
WeO+0`oB"7%`m8$OHb]Ak_?6!T.MBf^CjfZ!0"72!<0gs]A_!%W1/lFAp<'"/ZqGSieB=>b%+E
0l'9rD!,lkCTFB8!5Bb6;u"-"0u(opjuE..`CSn7f%2likE4G)>]AOHOcr+Q_r)q35V:K9$8_
]AIS`XU)*"BKG(Ou=fIbC"HS93nbe5k7s58b/-*?gm6N_`[jX5O+r,4k!Om.0CoVNXH\j)#gI
(P02W'`qZ@^q:E5C]APpH<kMTX\B(P9hl/m<3#K1lbq:kWZJ_+M1(%3gTlPtf+c"Jd.J9*Hb4
OCFK=^<#d`G6_Y1e;%p$be0?pMgn$dEV5Uof;jl0UpfQlh\=tW=7o$$WuFHZBTr77)pGFP$?
QV-bWBrRLY=1In9L)fBf$/CNE&NdL(Tf"U\O4S89EoVEW4=(j1<u-Da6^-osVDD9;/hf8AI4
=cId4_ml=PGA"5!;Cg:qWhNl]Am>BMcoLJ42<k8&'FpD:t]A(t7JQG4qiY#3gp]A2.G'k2U?1C[
"\>@Lc_[S%[_2P/QchQ?QM;Rk[OM\Vt+/:E`CWd9W7;qRmcYiRh[tG@Z%5g.g*'@pJ=jiea1
7>atDVb,?k+;#>IcUV$Q/07BVTca4t018%qIdP\FjRp&riO8X4nEZ5(SVCZ&[Xd:=kCKul4V
f*8q#g@lk2r$gicJ+f>nc+!!FEU3CA^.uZmoj1bZ=SF8ORf76fCUrK,$Be?\3F:QjEL+D&sK
b!I15Ph8ufQo)D&W_IQp$Q6S?gA-t'%WeaMYnjo\gnR,!cBbpF=g]Ag6eEq/DUk0hI!Q[g2(I
5H1=AOt*Wf%4Z!S#2N4fW7u5gg@ON$UN*L_$RTqV%/38fk/KiQ5HQA-^h+[2T,8brr0`_$=[
eH-Ipb%9)HCZRMrj;1TkO!Ms4j."#dl0VR$f,E2LT*1YF>13CHqYuk49;%jQR)QQ2RW3qk"e
+0`48`D]AAHf2`Q4lc(J7YUQ(B.\>8$#k!/fQ5Ph-+65.Xu0:rW=3$7R(\8T0ff4XhF)Rpq"P
0L&maQr-4)st]AkG2uL^W2Bi$=Nqf5)%iVcc;Fh\:o+@t_#LN)g2f)RRJp%5gMkZ'Jk0@KS,]A
$&rB%nnl<bhWU*e<nqu6>-am\'6hn/"BeE/D`UstVc_i,JN%#A==KjgjM@:ka4L0Ea.G:R4c
<_"YI,W-<Cm[kmBE`'D8"nOhJg[EKT"0/?QPi);)7'qGJh4Vp_n'IJDeAr,7JoRE4\73OuVS
UW5F4?7[;^@=:RduOIq0+7KG:6IP8s#Y4kkED=]A?A0/0D:HPM9p`Y(L@s.6N),3gWsJB__3C
PF#8SP-H#SF.L.$3B?a)K%nd``8_VTjf^piT'(qu,Mh^u*n9*<Fqg?*>qRrc!ljUC=H;PSb,
rNEgS?:+8UX.`!cTJneZD5`nV9bY@D5i(EpHr.sUFgi?k#C#p=D/.%[0HN2#$XrWD61RJik9
-"(6i,7Z)HJ2p"\$)fKG(f>eL1VX@Y09'=4#u,MEA5"3CVg`f\TMr=KW[1[4c/+q9=aEc8IW
<4/-tC-oPS#M9>"dpPtl*QD<[=krW_T8)g3cN9DhZTO?2C?<u".6XQ7Upf$:!.\ZIgXp=L$C
sTS02,.'<IqiP&%gKZi$>X]Aae-+,CE_3ha(OD"%N_fTLO>BEikJa-M;;P4h-5/lU)E-u1'Qt
BZfa[BAmL8Q>if9)^rYlnT05JuVH?4<k2So8E_L01oT-#^$OUrl!Q:(qOCV)0=W-$_r-<aE=
ngZc=f>eCeE!jq<"0#t6lV8\J8WDKY3+SKUqX*7krt'WDkk#Q++VAc4VI4h0_lkK%I^6-bJa
.qC\IrsIHa?9a9U+ck&h-"-%S"2_+*'!ie8c?&bT5#*f)(8@U!PDYfQ&oOId]A0eNuZ;^%o&5
rC%]Ack<nlB5@7f=!8?]AYa[3Mb-V1l>4&]A`*ME6_Dl/3E*_ofbd4(pFRj[I$0%[77?kT-rA8<
:u_Y]A!+HJ_EO8\7p2nDG5t:*a/CSZ&g?pgjPDS7cTLGrcTfu8Dsl\\Mu@+H8,lNZ9.T,"t9T
,qCYRWJ:7Ti:EA5@SZ%6cc9m,_I<C5(kNs*e-.&"V/D,IZUSA_arT(8B6Tp%jQ\j&h-`:]AMk
<aO=+aSa4+4"os!YT(sr%&BgUVB>31auid0G;Fm=.e"t"l,eK20VSk[&Ar?:Uo3=pBZ']An=L
B5fa=WB8@tk5/^9h@ZBf?J/-(4rLsZoB,<hA(#J"(,9:2o`rWP?Im(KT3IW+ZAdN(qA2XFL(
<$7234=KXAc%3L]A6DoXC:f3#<;7nr';B<DJh+<Q@(:GE9?,n<XZ$TF+<s?_A(nH<$]A\2+r.E
u()XDU[@:K<(+6),`t4,4?5<JPe2$oXda4PtHh2+Ao;*<tr?T\`c-ZBR:sh$mAqG[M?69/T_
1dM+bFr!h(Y@C++4L?P6a!IhQgobfQ(YuTu5!oAec87:'hnOoGtbGa^'b\4nMLZB)p;'o`Do
?[]AUD4n%9a7<B@E6r,l)P1$s`:;hl)G91gH3"]A3^-[TeRgqFe!M:uC5?KT3[u)7S<H%=kO0Z
^*.-i6)#p\C*jW^Is;aX]A-obBIrCqiNEs09,Y6O/G!)[=l6?P+5+$j!XGA#Yn.?l.6I*9"fo
$9s$=1kT9f4sBN7@V;C#Ghamonul9*-LnU,)qP)975_W5]Al_f)'>'[uq5mgId6jn)0&.1SoR
.3$1$LaFU$'0,&mV!5?B^n^FniV<l!fee)"9>IqEV/$c.@BkA!k9^.6o=,(fj5+JlK*%2@_4
?8sFg*P[TZ6Xr0FE\"B9)><>O,gp:8"(+DochiTIucOD/F`RIu?.(GC1"7_p(2_l`(XZ:YD!
%+O8$>`"u1WE(d<_$Wt;?]A[hquX\cD;pYDmoi5]A0r1eG@c;0\)(bs[5bmZmoqlt),g#g7;Je
/>?M&6DZN+=F=t\h-`7]A!OR.\fEaoTM;RpA@#R@PW3+*5MD`$+&85(!"(gfFZQMHdL=kBj#Y
g`*g7<fsh55+t00/:^sqR<k]Ag=a>#(Kr9MbV@Chr*;'_DIX!.'GeG>!"8E"#@Ff3Z*-hE2oJ
58HQOgR5N/,*Ml?`(g4"#:`113IWgKh:3#):p`()$q_gODUL\&N'qmb05!^3(%\AVP:IK2N%
P,sVQ+\GFX7/RmYj,*F3&]AC^ZH/dF@f<_)<D7d!@D*gbj70C1N-i]A<pi`mQGP$bOcBQ,i0Tl
U"k.7D5Js_a4op/l>UFI9=$JV=kY0@1&%IcM<<8(IEo7'A$sW;Y!1V70FnQ*P/A3hWmN:#(1
E!o".lP;5DPAPnqqb&\*D!;_T\nhl7t5B(;?/]AIU\g-(g_D&@5OC#DI_8;2XcDJ^ohI=K!Q,
<SX?8?N)n[j,^/uM*%S@[lbfSIuDfMN"'_;"4m2m#:aN%mb+hi.2<hW573Ue=nW$6_*::oQI
"&]A@dQf5?]AV@k!fi?_OTDtA1L1`.+asH@0SQ(8]A7GNU$2E=FlR21H"*4G414D`_#j:CZZ02?
s5?@3EA*#mb:'i1MY>rmg6kY-:%Bo;(Et;V6Al9_q<":5Jd4`qb"R<oY/e9CoXaQ$8!tMQ>(
S=Td8;hV;VneT0Oc"Y0W)a[8"(igdQ/a>WQSSeqqYQd0]Ak$![c'XMM1T1%@MtOG:$963\UK^
i<!?*StXm*HSHXpR0R>87m(.d9.C4B,k[AB^.V@6\;F%+umqBYe9QY"VeKbOcVN.(eb`OPkC
Yi=Mh)0dGNAStL/VAP5[[Z.+e_>C52b<]A;GGiWJrZ+<>`e[;P_^7LA";U&gp,XSF?2_Lt9c[
thk`uF?1MkGM[=loVI,?GQn3c`3c\ZsdM;pHQQ=bt<-WA_=.%GA`rEH3&OL@oRgnQ)*LY!CW
S5KeoCD9Hcqqb?oXYDQ$@!@=p+^X2;"aUDSqJiEWf/E8jC@OpeLKXV6p@DFs\mM3h^n^FU4Z
)[KBH8%CF`HB6WP),re_;G%B9b3GJXMUaZ4F@p(oMW(G^W)3F]Adbr2N_]AY2]AVWe#XiVi1NcB
C_iKAuH=fe>Q&\mDdm3`<NAPKGj*"7;ZD2NrC1IgZN3Z_qN]A:<5`Qgip;/uV%k^p!tZM?2gS
=TW\c)u9k;l<T-Ea'R>^--fM\<Lt2b8m]Ai:jGm7#(:F/QC&]A,0bS.u<<oVio$aWmG_DdXVUP
gen&-2F\fA3_#H:Cl;Am8p&G3#)PFZ+F;SmQW3Ji[^C"_gorC-S^%6Z8r!.`L!&GAVT^#3Ln
;+pqtl>8(%b\7V1pl7R\Uo+i8<EjM[8h<hfR\?d<*K&F&u(KOBJXW7a)V)ai9*1D`RRc$V_(
K`12*+CnqVa"rtAkKB@Jt4R>6;X[oJ$ORV4[T1JppZb+(\uqd$Fta,#CTsR0UYc_ndq&c%q)
+)rfeJ(Ao6Q`ZIsUq/28'WE<Y$2^*B4OHmb^VikgQl9MHc(@lih=#<pls!p%^Cj/G<s^5gd\
%4hJ>abgAoI<#q%\5sXk]AJVFBr,ZJN[EYIe%8,Od*spg?69F5')IIpcOJraG!l<Z&7`RZ`E2
3<l4>)#e"MIIQ@V3lV\d'^DQF4$C<uf*7ELEe&*9Il-^\U\[okT7T=-I\5_00Te0XQi,Bf"*
5qYkildH\MFK7.XP>g?KG"Vn1;4/GQMVtU'q$.M`W50\`l%WFrV32G.kU."OlY#8onQLpb_=
('fbG4;Q#;+ZUOQ&UK)73Kt5o3=)Hi".hCa+2fqV*Hj`@0FYO3La%-Zr/qVK^p,F?:Q//4k)
JbTJK>$38%I@o4DJt'$A+\$?aIYEh%1>61+Lbo'?8EMT[*M>:_*G[hYuJiX/YE7&hW)@V6K\
`Eh+t8u/`0]A,ufH%U'i#BDG@a>,l1mg%0BnCo;S^.r+988\=a>Mtr+Sl`M'+&k66K:Y;a1WI
?<Cf'-I->&;"0lHP^[*t"F@H14('DPr<+ll4_13j78?V1gT4i;.=J]A6k>]AA7a":TM.AO!a))
#&2A3.Ud*'7L_!>ib:X-]AY<[e&Fo<1>?&`6L]A6+]A4Z0L$\"!2gJ&l>ZVOC4An*Q<OA@tP[FU
[B3-9dUn@9;E#*^LW@=<+AX>_[>K\Z-e3'9s*U>QRgU?&Ij23/-/2_`S;e&@XMn`Ym'(V]Ac/
A4H=pCgWp\nY*RF@4SI>\5T'uEJ\A7-an9qd))]A,Ye]AU2R4%@'^E%1L+22FlabnV@4D75:-%
`3<C?d[`!^$W'9_$'3G!ba85L"Ul?WUdYP[\pgr.e(f?Y2+cXQ%;O<R$_6/g)2T)gqcDOO3o
JI5C6A(e;9Y=m&TWG9b5%W1cDO:)')*Z:j`6^B`aLDRl"?\RhR'YPS678a#EO,UFDAOUF9B'
QY'`Yfc\s"(bnGKjM.[F_7AbSJ="LA-2_9"#2Q2<1mj-'S*q(TDR+Bg6S,48q("@7FmoR!G'
"tmRc$Bi!!KiE!Z-+k]A!85^]AU``+Bb0u//U0]AFTP;@;5*>qk48&0aHHN&'/@>VTRP:a<0)Qe
oNoYmH?.XuL"'`27]A52lcBBu'.)+B:d9=psQtOf*Yb@/:b&]A,Ef^H1=TNr+#NN^e@.t*$/1g
%JLe/lM1XSlV*=d45lTIWt!g2;]Ac9Te5so=&(]AW\Ynr3aX_&d>/-kER;7D?]AqJk%UqTuO4fF
]A&S`-J:j-d3,?KKqm^6LC/7MmAgjX:!06g\re97'"ih*UN%\<XP+k?-U$/7<iHBebAi/U1*N
\*^Ls(W(GjZa)V%h`lX\V9=q&@<N#TWh\3#AX,"+/!m_'UG&&BppDYlMh?fB%4IDZ0'li<9Y
+9.\C,Y-qbc8*8^<b2\a2[A#kQ1,r0upqf)RMU77B/O(iKqWq[d'==nlf%s]ALF?Y\Yr3<mhI
Wm<B0F%O?cp>NEJnL6?,j)RHA8<if,KMg"&g%qOH@;HYFui#o(ajr:3j=O)k!;lNpY4YO[Uo
C7hC#)K^=_:O;"4O$uo#i.7=#S(gGDZ/0cW+.Z7.%S]AEa)EEFYmfMRpod>Q"h!kGk&'`A?QE
A`0"ka6!cRomom^W&28d.H`Z;mu>fE&.'C5OisIB0i2_R9n8#qYd8fJ$3R#JQFfI"Y6MVpWT
BV<aMc#UJDDMfl::OP07Z$&lb71:/TNXN6'SZSP'Y)AuLXd4e0"lUfm;All">XIaBeFg^dHM
0%+c^(S+FM$"e;n7LBWbDeE;G:pYkAA&W2]AgB0.*gc!=2u]A$.XPrL&[q='M+g0"2a<-57oh,
QC?1P<R<4;nF^;p?E+g3^tg'2IB)OB)W_i#q[3s=q)r2i^k6sA3)3c4AU+gk`@"DF3iIq:'u
^<b9O`D.5#L%SsS7Z=.p_W4[""E5PD'[)5LJXreM:Uq6!:AO41[$E/N\M)-Rrg??9"pZ'#+!
mEA)M:LX\^O)<8.<7$(AI*U5a3mM-NX6Z+jc?U$n@JpY*r4hT/"6j`/e?(_^?^G.Blll[Bal
tAG$;o"6%s1o+ulG((]A<,!TXCjlo#j]A+(_hfl-kU3FkiSd)HrJ\r++]An#*]AO:GG]AVg$<OTA#
L."\77#0c$rAbt1I)EF_ks3:Tf!G5D=X?U+Obl`Z3k@!\0<q:oirP3Za17gbQ;=\nS@*/ED.
>gnqLDQ4n<pVb^80:0q-hkSYcb"TVE\=ZNk-K1)<AGdbUHPQClXaUneKq.mPQRojf^i)ZuEC
GaCF6;)iI_[4fZ4GH&8#$2?1`W``Ir@]AB\A.[dGI_D?$[]AguQP2d#k:_^"!+3&+97DJKatK7
_RuKAd+V!jO!$<gaiVk/fB?84o%P,NXL@<3[_1"N<4+'?:l'>-u&Co."!QUcWE[iVqhW.h[C
Gn!DQVO3[4Cmka"]A'$Ru%qM$-b^0Pajk49ZZik=@0>S')J<*<a+.."1tYrSg=Y*PsD09Gr`f
Nf3N8X=Lc<mYYr#sX.iDWG47FNiZMN@kdolV#rF--S/>,AkF/=qJ'6b\,V1%t#*:^u/$N,5f
%3:;1ECEih$f(0s="Y8*$#04[#bXpR/eG2L`sp\^*4qA23"gBh2QG7E\Ri:Tm73h*":GBTc`
5Ia3eE:]AG;A9]A+[=j@"#&]AB-4'X==#@3lVU)kJle(9R%7nYS$1dZS<@$c[?O[ROl0pmuV0k*
\e6]A]A7bdJJUf^!B<..fIk;TUnbijiXB8K>qt9q2tB2m\ae\&r0XbqA=1l`8X)P!p[.j9/mS@
UPTTRM@"TCN[EU8M,(\B<D5a0LF#9@^:#_ep$(ZO%g;M4d%b3W?kYQWpim>=!_lCMZ//unt)
,P<dc`<RYpe\aoZ([Q(m@9m01aP'_&MOE$^AsH,M?]A%SEac&Rj32YTM'Z0l<jQq+_urFR^HP
<Mb5pE:Knj64+!ij"=pt,WFtg[a0tb16?C.&W_cUX8l=99q&j0;m;=3$s@aX%..S[#t)Ds\T
VEOPA"ip8X\ZoLMp%rC#OG0PcN[YU,MS6N")%[ka/XWQEE!AH%U/QnP*'2NHAgU;n,iZspkA
*Rk/Z.G&W]Ad<5##XB#]Ar#\>%%uBkC>QZCi(V*BkPLQ>6\\m^I\YQWd"OW>Z71?Y'9rA^Mrft
Q9,.-[e7I58+@WUeFa6e((nJ89Uc)Q^C6rjACM[3/;C;YgKi=9g)`[%5)mW6X?S;@a=&S!e'
f\4D+P5@_>&1QWC(,<m(#$(Oe_ZQ!Dkt7%YI0@,4-[:WBMjqFD-BRQc.`)3(0bcS19"-e@Xa
`p\mV)b41i)+AN6mY5)</$>?,_cGTnP!33U7;]A+8g1D'SW?RdKD/g4eNQi)Cau5De/>VB1pn
d345$:)(+igD`!SD9I#Wob$.Fngi!FZ,$?X]A#fqD?a=$ch*0;g\_.324D/7nB3qQS..4A,fF
s&PrG\8h`@Y>)=*9J(lHFEai4u(/prpCNbdQ#'<Msq;<SiH&`ps!O6=@ouVq7A(k%q'g1P3J
EQW^&Ls/UC&i$k^)f"I`c`;al2HM]AUk0r^dN$(UXTU1eWn/'M#.:U-9H'2%1FLI#YAD8M/!g
p/ge@X2j4^_u/#S*1t:bfY.k2CseZfT@8(dE(,KG-4Mt8FE7SnUYj>8AYhHQ1C^7Na=NiUQ_
>10`c\:[n85kI%pgUCT">_#YjijZicjHeV7Tm^;h!$[cBoIR`=^'"j^Ec'[.E+of*nDJ?fMG
G$j$<K(92E)%:.KM9M:mNau\1\g0mK$nG'tq3\L4Y#or2H/hhsG(O/$B4G6#Ja\._=4@dF2/
VF]AU(bWU;olCe8t!d;Aa$=a=(1(>SNI;6`Z2F[TrfAS@)A4`kHgorh!E;f_]Ad>@e.T,rg#l:
rFBN(_,dCTX.eID!POY;V4Kd=Ic4DW$/>66+H)n!=>>[JpeMl[e0gdFh+N4L)a8S":GirUQX
PG'L)`fIQ0[!A&>GPX0`I9Q'gn#(Cm#ocfed_/B_;$>5SNqf%KJ1[,jD45F$jTQL.r.p%Sk4
*kWrWl/RC,D^NsJ50_sFk!L0eU^LPc6P;Vd:"-unKK+qJ`&%"Mk$o<SX1_T\'GH/E3>U?TMR
1Fe/q>pEQfS@4MH8@Km&]A:c;UrRKDLUXG@9m>=P[;nZ%W^meA*k9,DZV@Kn]AFK(H3$PDsSUZ
]AW5*Qp(-_u1"m#n=C/#X0QLKht^Gbl$2lp8bp@[Ja0JHg?36HgA,nlt=JHiPK*/INEaE@\F9
%R[V1g6Rk@["'u^;jp6t2EDQfaIESAbiG-`OVIJ7KG@!tIPbj_:D5r!'@t##+Zc)QoB0KJR5
Pm'u=hE;f2eXJfqP^c0<mRsH<)T^nO!Pe3Bt2FK=(,;apITk/:p+V/&Gks+b'tVkg%ZS_g+k
L5gB0ZdCB%;D+EZ]A1aaN`Nl5>mNV]AK?Y'.lm5F??K5ZKM^O52.[M]ARB`AOo;;q*iBEb#j6r$
qu)M_\'F@r&j(IU-MX$NnP&8/np9<JIB$<KdLEAXDb\1um=1t-N55^DVd6cM?1D\aq6FMFnu
I93fl&Y*S_?9,4Y0EQ9`F2JG0coTFMMCX1Y[P?UGJgW2qb*1N6<3pJ\SMprbQgd9Gk>LRX.!
[Q8!YTV32NIgH<@;#?mpB>-l*``;5(7jREiKD<>s=Q^(&DjtD:51I6FC0*7(5UGhG:,/fdA2
S1\7#/=)Y6T9=">WZ>gH^bbg7`?6eO<5eh`-$C5_[u7T%n7@9^)NAd<-beb6h@X#`rMR#jb;
SoOB(A6^C&+D1V-\LQ;sOQjqXsXpkW<>lEt73>2g++OHK(K,m&BacnZj+?$1oh5;F+&eP&d^
a42IWWb<0PJS&pY,%h97%N0Rc8U<RTLW2Z_C@mfi>eWCV1)hWS[lV$26iA?u$F&c7Fb0pLAt
=*.hJB,0<j`/IK>m@LEa)?T7o5r,L"DdDRFHi&gRYSN%]AH%E&Ii&%q[.))SQ4dYb%DkPA3TX
^[c1<Eqnn;H*Ys*EHM#HcL:JcJd9uY>19j`0+)(I>SgY9XG.@lPHce[O;LZhGc(]Ag7]A2l\=_
"S<+%U\[mI7UPCrU]A;p/QUY;<Zej8<Ik"eZsC'gJBP+"$MJ!(Z)"^Zplu"V<3G\<[nAGOg*%
j?N5!s[5rX/KbZ9TcfpJo!l->2/.1>6o$7Sq3,3rhY&+'XU>6sT%D0UL'Ze:aiYPkuPo-2u\
LQfb"f1,Q\h8Xo']Ap*%XPH"C3qJMGnY:d/A,N`)CC`43pK,RTFWKD8]A]At`:@AW4+hr8tO;F"
54)gXoe4,&qLWiaq,g8grJDBu0L`>H2pt8\*D.a%"Y8lt!0@PXqEBijp>^9QQM620\R3HUA/
LH0KJf?eoDmY#XlEg_m,1>0O#YgXaJ]A.r1p7b9H;FMe@/B2p$E]AM6*>rhc0CLHKtYola,bJS
saHG>%ggjT<LJl'pSi1-ojHcRrGb]A"l?sB3*=E&9/[a[JR:a@fA#3rWP&EK+6MR,PEB%UN1[
["[jT$\,Zuep>Zs-HD7jRL/32(:k]A)UF3cqi"__,i]Ahlf)2OV/a0IL8fbmh#Ob8!r6"G(KDj
KCk/M!rhJHk@<b^bZ,.j?+O<[fXuHCarrPKN*+]A,+d41u0:p`#!b.I9@k0nFZg^_CI,N(_h"
T$X2s56_T8e?in4SbefWlL3-QCj)rMVu[eO7\!:O4iJ["IlIZ8(&XQiO,Y`fF9q#f_W7GqWF
7R;R9HB@4cq!_;cseMYiHp'rJ/CtYA08(GmDhlq.iKT%QRjGA_!?*bW.[C=u5QN&92./LeUX
W+1nGFK?GL#6>;JNA9''=U3/%,jlHo@=ORIu17;S-fPeibfUE?.j/'ZCtHTK=4r_ET+VaLn4
49)HdbQV?jX=]A&Zog\F!J#T#oRf&t_qY6Oe)`.Cq=)$SNg3>8cETfe%2GJV?B7N`JAhmk?8Y
I'D/-WUC<cLhZ%.!5iIWmcD%JN5^`W)l=K-XgGCIE-=N[Bd?fPV480!*gRm[qk:>6mPB)t5n
4=F`o?j"2mHU&<^?b_:@Ml^F`='lq/W[fr,bqBa]AWFMKjK\_E5;TPi5HqeTO&s0X^5$uW,9r
'kn3^d+L)^"T\`N*dL&d^\2i>#Mpc7G_X"b0`as&?.]Aa^-e;1sr/-IL0:h#&g"#?iY_%*T8.
=^Wk,.7i1X]AgW_]A58=,D*eV14V5Nck.=g/(:t'g)S>j>,PE;XP/aKY]AN!a-cH0taiCqK.C1s
esS#q_kGdULuc1ff&9.a,@#bTJlaZ\t:'%Lo`XZWdf'&*N9%5WEe_:/:@IJm3)XlYT+_UaPU
TrXso1Wm$S@Q",+gV1qml(7_nr8d#Q\<?6@<a-'Z#cq[$X`K)^IuA"WL9jO.18^Md9qO[_;H
]Ao`5pFCB@E]A,lTV"\'DTh2s>bDJRgb:P$<7=p9f:HIM8Flg4Jm^eO>)R:U$u4%h)VlYk#-Zf
/.$'HKD,mU9f)&P.E>F4hMjS@r9G27G[tKkG+!LF:b%qV-r30')jH)s]AYH"_hUV%\>SgS>GO
6/O$'PEM$EunAN[6?L_2-LT@IUt)sEqIi3a$p3C(?^qHjlH7uK__^#_6%J8DSKLEQF4%lk;Q
j'^#@8=lA*HGT#XtC0).E)X<?J%:o!bTW1)XubeSud.8Z4m).="V4SFb^O*9Z?lk90T&&DLm
a<ZNKI^6W#j[GsejA[+:I;<oScO=.t_]AdrBhS(GC<[8KXmujr0[B@f7fb._^7G:LM_5o!CRM
">t>58,`nN6Zg/[o<W$tGMk%o1$+*0*[mK#`+.%i^e<N`T5pbN'AHp3p)Lg1Wbd1WtI\!]AA=
s:7Jt%I1pZBr4pDfpiE4B/0=85/@Y;')7%#U&<VVspG]Aik8JH42b5'qgpZ8uc`/j;Vc9/(2S
6*!#\fPubD6X)lc0@3MDfF1-MR'\`bh@jo<:u4I"E-HU'pF7L1/Ae(gOfV5Mra_<<:lQJ\8F
Qib`KZR$S[pVr6IP]A;mF(3.IO\M751hppUmctMFKI=;pC+E+Hlm;/H."jV$Z+RS+t,0!R/La
`/>M6`Ni)![[qKH;s`'tP;IdAMKO'q\J-;/NK!`jnDiHJZ_Ld+c05d,1^?-7,=-cEXi/dn/p
GSmTrP,X3,RjeK_`7F-QSZ.G\4bi!)[9hs-.2k)uSn"3kIj:=o2RgD4TYS+\_JNE:Q%C\6$#
*4&]AN%P2F=SoN^C^9>nB)^cX#>+]A/PeClS3/6a4U>_i4oOi,]AXqc(jF,b07Xt]A3'mHM["SMI
=.ZkhbR`/;BZ6OmNo4Kd3,h-$2"$.,[;N^[C]A8q[hMZ\qS6O_)C2eJGkH`Z'Z;Q;^uU^G^fN
&4!',Y:<rb[#jf(?CJR?/\BO0d"/oAZtX#o,tf?6imI,QR815W(I++73@55E>a::HPH9X@Z]A
VN73H]A4'%A<oW!BIT*'S<d;aSWnMSZ-kEf$*"kos@@T:<aQep+h>%WbFd[DI)i.K$\AGja.>
LDmD"bE8N;a()Be!p=hL'fI:8c&@X9MF!8jBPc&&_tFB;*/S:M&HX+#=YWNLs[J1CPkV)]APn
lV<6ju>HUe94AHGc:pr->jYu:.'Ig-$:%J65YjK;VDuP#,YI?;Cs0s`Sl]AQ0."MHW&kuaCL6
&O>8';nPC^1:>oeTj8K`O'XC,X?IG,EQMO(:Kf^]Au_8`%4gk)&K;Uml0s\Vf]A!t[fs,DSGS!
s6q:?7eOr!/nT'\;`Bu:P%pQPnW@&#Q;CHg_:AEcp)2VAd3mc@\rr&-FA;*m0#huRlikShQ>
=*h:G'B@5:3P=hOc#qTk*e[1rSHC9SCp_]AmO,89$M<G6PVd\OQQ>O5>,f2ZcW'!2,#/0/8))
En8&l=\84hMT'!"^BV$O_sQa%.(L>i?WiG=<tV^oWHR(eJ2\.&ESICEXoq1SdoNQ??9k$CJe
,s$[%901a%n<FgVp#IcgfJmA(%8sUd(9R"q:g=Os'hVOn$D+c7EVFR#__@k&'3o_V7^17n`D
tboJT(*4AW@A1t^OWrOO@6Dgl:oUVS;[)3]A;9X]AGAhA7DlH!)]ADAESB8+Bq[jEKQDrdCt(i)
#=7q'aeE%YUu&,S=fNa1o:QlS#KOTfO_\HQ`i,b\XqKWp\>)>9\PSedR*V>0U3Wr_A!PHu\V
mLgl':ZtaD16hT4UX/3!C.+U%MBSooY+^#3;A9DK7KYh:AWs.(T/)#k"%tY.PIJS^.LW[V.O
KS'1ba7NKJ/$4dp@6Q7+ss=ZT*;\RL0g;'o0dH-9QTp"5P@Kh3e2Lh*BuiPE3@kbp,G9$!s;
r6tK4_&NWA<k?NU:rP8Ne#JXd/)l=JpY>,Ir-X>/SKY:Wk^N;\ef[BmKL+DbHg5b!+E@T3[,
Ia_C&4I&'V7h%K8@?l?Vl:TH3/B-kd+D95=`OhJdaHhL\fJ[SilCtZ^`+gs@)d6WY82&X\*k
NOh:#QAm=T4q)p0S2USVYMB\sO89)2fZYfsG4Q$GBj?gG8s0@$aS>6L&K_CPBT"fDZ`i9X=L
QtH#;8<GQJ0ELWE19"__&$`JC)@cN''i(d[V(:d-\[;;9iR6&tqoh-Vs#j*<KdOoCjGh:eR#
tGf.4G>]AbheZ^`A=?fI1P[IFtpISabRS&ReCIIU$4"hi#U/A6U9l\a(`=IHpJq;L2%=W8i6:
)=40<XkF`)T`gaX]Ar%A/Y@]ASF<*$tiXL&*u7bYXn?%IkHjZ*I/3@F0B'P$o[7Jepok-i9d+U
AM3T+UH<):0-Cshs07E'lhI-&iHl&YtHU*+[dFEZHU,YXl:.sXAslZ.*>:3?mG7.[GfI`1Z`
XOcmpHMlps$.K:J=80Ik.%0KP%*7%;<sJtRB7TX[q!jl/k'_T'=ee*A<opfBiVY0"BY;82_t
lQIR$PC*QI&"d*&iL#ttV\r-m`5%PR]A?;)cHIF/jiGhR1p%A&YhJs-HH8jOnjI-m1]A)ALX"T
sLDkO9d.QGXrViu;D!:f_uNP_j_&l$+P*-W`Eo/hIPQ3OREM*'W6m5I_^hD"W6%>^LhpUT?`
h/WeE[4S42I$X+gHIbnW#?r&GZrU<X@,A3\3b40U$f*@?hVr*@O[k2u;7.TAI[@tG2Aa$jVP
)7eFG,J+U[?_(>e"Uh2-.)D\;lHfe6]AYmRf>W!uaT?[ir#EK2Bj:l<eT?/XG0:HpV:CeuB?T
L<,sm',\as,%DpdK?dQF?*2@[7TR.&CsC<]AuT;/PI<kISAK*[.!pgidqG2Onar$[["i($<#Y
6sY]AjYi;.QA]A-,!m<TD746rQf2o5BMmVIO-^0LeFc(M2jp&A:ceZ-JQcs]A04L[a>>s0qg\Oc
>hAgoUUV,gk(oZX;^[I880qqsfg[0J*7!+Z7j<7q[eVN]AsJ\4CkJe%!;+)oM`GREV$+HRFT1
>D74H#Bu!SY)IUeVpgQJ0"ru='3R/dMl36Jp;8;0r85kEpBDn1gQa!dLhft1rAprH`o$GgYh
,j9B/OSO-f6LTu8A]AmT98=V'@<5;mKr[P:?>fkjUBIJ39cRD6T0M\UqY&hHL]Aq!4p)SS.5B,
B_^0#f*rW="$`j2`VdYC+8'MNQFgFiTulfs&\G5p/$T6&tVDq!SEmM27@hALIc5k[5)\-_5A
X-nV3bm8g^>BYC9!1BbFph<54\n"k;:lNa"B*mAgj@^lOaGpmf/AV4X@nOt+gP>jqrOC#NlC
GL>2"@Hs`e-srJ;9pr`u]A0)CGnb>%)1%\#<3KOm'35b4=u!6=AHMW(T1ec.'e6O@h$M:/Y(l
,$jW/AGoX![kub@+=&%=8:V;+Z`FX2%_Kh,N=_mR[]AG(JWIk$j$4f$mok3qG]A!!"RSp31.1N
RI70qs4@XXc@W#T71m;c1'-^mX4^nbN4@h>qI;Gb.A0jrZ;~
]]></IM>
</FineImage>
</Background>
<Alpha alpha="1.0"/>
</Border>
<FileAttrErrorMarker class="com.fr.base.io.FileAttrErrorMarker" pluginID="com.fr.plugin.reportRefresh.v10" oriClass="com.fr.plugin.reportRefresh.ReportExtraRefreshAttr">
<Refresh customClass="false" interval="0.0" state="0" refreshArea=""/>
</FileAttrErrorMarker>
<FormElementCase>
<ReportPageAttr>
<HR/>
<FR/>
<HC/>
<FC/>
</ReportPageAttr>
<ColumnPrivilegeControl/>
<RowPrivilegeControl/>
<RowHeight defaultValue="723900">
<![CDATA[1181100,1065600,723900,723900,723900,723900,723900,723900,723900,723900,723900]]></RowHeight>
<ColumnWidth defaultValue="2743200">
<![CDATA[1728000,1728000,1728000,12960000,1728000,1728000,1728000,2743200,2743200,2743200,2743200]]></ColumnWidth>
<CellElementList>
<C c="0" r="0">
<PrivilegeControl/>
<Expand/>
</C>
<C c="1" r="0">
<PrivilegeControl/>
<Expand/>
</C>
<C c="2" r="0">
<PrivilegeControl/>
<Expand/>
</C>
<C c="3" r="0" s="0">
<O t="DSColumn">
<Attributes dsName="店铺名称" columnName="Shop_name"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="4" r="1" s="1">
<O>
<![CDATA[按日]]></O>
<PrivilegeControl/>
<NameJavaScriptGroup>
<NameJavaScript name="推广流量">
<JavaScript class="com.fr.js.ReportletHyperlink">
<JavaScript class="com.fr.js.ReportletHyperlink">
<Parameters>
<Parameter>
<Attributes name="jssj"/>
<O t="XMLable" class="com.fr.base.Formula">
<Attributes>
<![CDATA[=$jssj]]></Attributes>
</O>
</Parameter>
<Parameter>
<Attributes name="shopbh"/>
<O t="XMLable" class="com.fr.base.Formula">
<Attributes>
<![CDATA[=$shopbh]]></Attributes>
</O>
</Parameter>
</Parameters>
<TargetFrame>
<![CDATA[_self]]></TargetFrame>
<Features width="600" height="400"/>
<ReportletName showPI="true">
<![CDATA[/三级页面/京东-推广流量-日.frm]]></ReportletName>
<Attr>
<DialogAttr class="com.fr.js.ReportletHyperlinkDialogAttr">
<O>
<![CDATA[]]></O>
<Location center="true"/>
</DialogAttr>
</Attr>
</JavaScript>
</JavaScript>
</NameJavaScript>
</NameJavaScriptGroup>
<Expand/>
</C>
<C c="5" r="1" s="1">
<O>
<![CDATA[按周]]></O>
<PrivilegeControl/>
<NameJavaScriptGroup>
<NameJavaScript name="推广流量">
<JavaScript class="com.fr.js.ReportletHyperlink">
<JavaScript class="com.fr.js.ReportletHyperlink">
<Parameters>
<Parameter>
<Attributes name="jssj"/>
<O t="XMLable" class="com.fr.base.Formula">
<Attributes>
<![CDATA[=$jssj]]></Attributes>
</O>
</Parameter>
<Parameter>
<Attributes name="shopbh"/>
<O t="XMLable" class="com.fr.base.Formula">
<Attributes>
<![CDATA[=$shopbh]]></Attributes>
</O>
</Parameter>
</Parameters>
<TargetFrame>
<![CDATA[_self]]></TargetFrame>
<Features width="600" height="400"/>
<ReportletName showPI="true">
<![CDATA[/三级页面/京东-推广流量-周.frm]]></ReportletName>
<Attr>
<DialogAttr class="com.fr.js.ReportletHyperlinkDialogAttr">
<O>
<![CDATA[]]></O>
<Location center="true"/>
</DialogAttr>
</Attr>
</JavaScript>
</JavaScript>
</NameJavaScript>
</NameJavaScriptGroup>
<Expand/>
</C>
<C c="6" r="1" s="2">
<O>
<![CDATA[按月]]></O>
<PrivilegeControl/>
<Expand/>
</C>
</CellElementList>
<ReportAttrSet>
<ReportSettings headerHeight="0" footerHeight="0">
<PaperSetting/>
<Background name="ColorBackground" color="-1"/>
</ReportSettings>
</ReportAttrSet>
</FormElementCase>
<StyleList>
<Style horizontal_alignment="0" vertical_alignment="3" imageLayout="1">
<FRFont name="微软雅黑" style="1" size="136"/>
<Background name="NullBackground"/>
<Border/>
</Style>
<Style horizontal_alignment="0" imageLayout="1">
<FRFont name="微软雅黑" style="1" size="88" foreground="-13408513" underline="1"/>
<Background name="NullBackground"/>
<Border/>
</Style>
<Style horizontal_alignment="0" imageLayout="1">
<FRFont name="微软雅黑" style="1" size="88" foreground="-8355712"/>
<Background name="NullBackground"/>
<Border/>
</Style>
</StyleList>
<heightRestrict heightrestrict="false"/>
<heightPercent heightpercent="0.75"/>
<IM>
<![CDATA[m@AZ);ciha[FR*3$aeqf/`e97f3`+CWi/lp`8oFQQ$+TQa*+C*Ah6Q3!J3cRhNG6,Q!,K%QM
LXgV_+0I&V:H'0p&/!N@8a6e<kG75erJ7OH?sCFqZo\c.o=CXh30_rU0'DYZQSJm$4olHU%E
'I\-KK#N&6M%Xn2mVe=8C(&H51DuP%5XLZ-J=`Z?Jop#J0J(FU6j/cC1kjQ0pk.RK&'=uOcG
@@@WGDH-roo?9N/k%Die+SMLT7$.r^q63TA:IaQpql97akdQC>at]AZm(UPqN?@M5HfK<1YL,
GGaaH2B7K&^*?js2_3U\W5QKn1ph_a6q(.Lt9@7%TNj9+58l[oP>p[.t'L%`p)4EjX?]A:"rQ
\/<LAQkfDmTY6-L;HN!R%RX=NP%$HkjLS;D&M^V@o,c$ba_aiMPj03g(K.<("3DhV.g9U%EO
RJ;R,-VHT1JgZ7/-8rhjlpf$2rmBI:<o`RB:VZ'GD';.l,pU7(9+r^Rb0#hi=1WJYt0R#=h-
5q&s]AWXo?Fd2dRgj(U@VAAk%_Z^>g:i+F6A:<^Ubi:"gV[*F&U#s.-YjM-2hMF96T/PO5G.l
L<]A_iqHX^;e9N="qoDrQMU1C=Z,)Y\C:qU!FKEug.LC+gFpef=/0YN_PGU-OD.4Nni7LuLQp
I>]A>KKA*YR-).AX<c?_"TB;?iJI`Y4A>a.AZo#nogi1Gn+.)f%dMGX"^d8>eJJQ0=J>Qu`55
L%t.fOQRn>EV.4D&@G$S_%YG1?brEr$(BR4"m2BbDO=;u]A@V>nc6;$!E3Sf<Uje*Z]AX#_,ZN
Aam.dif^AHU.*0MCYQR"V-,JnL'EH975>L#Wh#s3eb$]A3u:Cf)7_F/aW_9X2";lg6ekgj.O"
b,&GHF\H(-ON,YD)_n%+Ra$"W^M;&m-4sq$\:28)HnG?!hlG1Q_WYP=LR7=[0CW,Y><q&t',
PS1bD5EQ_^.,B_(WsP#NQpW.<+P2b<BH7M2oh./2roc0#rfBb%'CgKmnoqu0\2_>@R9XM"d%
n&_4*2S+?aGOWOA8NWP:+&*Jk;/+JOSUp>11P,kpa/!n[k&P>DADdb)d0p]AAn9WFTi'V.3`-
Y#b\%Y6oOi=_]AoD8I_&B7_t97*YMm/6.TD@(&aM9@nUCg%]Ai;1(Z^-Aa;I%X%&EC>#qlar99
M8G]Aid(M&.;$!gcMAIaW\3!hY3<'P3@359#m,8gI7kD>C[G7*REel8"c0k2!!,2Gg*VIUf*B
Vbb>L7o>!,RVq0"3b6U`LPt)k<8LmerOR6Ybb8bYWGFaMnX<gIV0('l#Qp,k`An.O:bDflNk
3"2OV3J0Y;%55CZ<\Of]A#4!F^AHQN#_eotI\hc?@28Ej]AaG'ZaN=+YoBPttpq8:iEcg9B_R-
WGo>TJ8,Nlg"qX]A`pSB*pXckm5=W(7M@\4=u^at.s)#CIoHk7(L"!\-Wb]A7>O6(WdGfD>gLU
^":m+qd6KRAJ?`Fdm5V#)uojdK!C3R2Rf[dV/)M]Aa0k[m]AM>$@=i$YshMUj=\U3e:-\jR^1E
&t>\8k!li[Q5&6eYp3mP&Xof4e2]A'm`poRp(g)HX@PZR)2i)=5SR+I[Q6CXMTBV/%d`sFC.a
;XtD62'sb(G9g$sk8nB)k+4n6'JEPSYMNTZ_l`A*V]A*RP`_S*o4?AVA2?sc'Jg@NC0/U#>6-
P$l2Q[qrN[IG_<V*DDU5P)9&N(l=+QK,T?7[p:mPjL(mCV@uf:c"(V@V(%`klbW$'u.4`8Nq
H,GA0fgh=N92Fo%PnVR/uO8kC#iDGhaG`8>m7+ldEg>$cPRe^"V+LXTE="_bVX3)-G6F!,8[
*T,iu>T%s#A2>(JS(nNN0X!R)2K/''+UN<NXk$hrD'r-^1UCXT]A,Y,r:3$,V'OfMtX8`8k\&
\F:[Z^0EbY4dkBMj?KY=,E]AejcD+h;pPU^ujnSLttf<J@QJY+N5hGjuPo\o;lGpl5_+K#&$T
I=mcV:\aND'M0a/A4&I_VU>o1Mqc:/,Er>*sEP5(2?ND7+PC($W*VPn4ZD0ki,LJX"&:YF8k
,,o!/O/Rpe3)Jt^o?2&dPM#JWP/Qb\4(1im+aj;gZE78X*O*V'i()0_NkVI^9S,Adfb3R>nr
thOHOducF,P&'8u0epMB9I%+O@E88'@*%2#H>*Um^Ldud`pKi&Akp)3*cm_GKMmV?HA]AgXeR
^D'c),E!k5NkGLr6Op2Y.rn3HmU_9X(lm(Vg8,YGRXSI.7oH>]Ae3R6D>?T.=-rlITmK1(:_+
i,LB/`Xm-bPPHml4aM@%R04ZE0KVs316V+1Th\9e1fgoo=bX+iRIK8uYl2P]AKBe$NS7@;0`s
%9CNQk/R(@n-mT.]AWTPi&LGa0I5-ZmRYm`M.e_HhcpV^g>E_H>nRKcj3@&8sjlNecQ1_AOWc
db:D-AOBt1M,_]AJ.K4@g=GeNE:'goPa='rS'&>&+of,&,F>-/i>-L^[.ZD]A%/1H[LQX`C9pr
ctH)5F'b>NsU,84&*>N_rlG"Dpd0Xe.Jp+Seoq%TZ'gD28VDA@@@H9FEAI6M%71((kR=!EIu
&$StRP^O_L$94am]APGV%eWi6^(@h9;A%0/690=I"KjFHHc!-X#/F)1-(Fr<_&afW*I>:'u\H
40(L$-mn'p$.'4SArl"KO"!S6pA&N.IsfTVKt(YlTWRjtW+W'.-/WLr+T=2RG]ANH.iJ3%W,`
aKc)akAP"K4Ai/eE7qLo&>DD$acQ/Pn<lE)J^sP$Pq;9CnqTNeGHIA3@T@[P&H9a[1?FJ*m*
2FkSA%lnio"lAU='H$VHS(eT]AlF(Qc0+MaP5Qb3=2>DeJ+hN"c3NMZY$s'X*H#eQ!_DKjEWk
i[5<X)aMFsS9d=$^?KZ`=He2eh7MdS$hd\`9#>fsYAl_=NcZ$9YXo%A#Z^'n?rM^feIK"kLV
=i`ii*<)t5=l]A2mKuDLWF8U)iVih(0PGkk3N?lC\mRTZ[s$Q;]A,G#Na>"R5VeYGB54Ct=Db6
4A6:U(Ln@e'8Iqr9\FSduE34Mf)i)Yt.Ojm1hM#/K7de7a\g91(op#k*u(R)b=qXZ)08dIXq
S[U`q=ooA3Fo1/TI%cOfU)5C$X)F$E-Nflp.f'VSH0"T"QiqWfW=c5,4)s*BSZDM=^@nASeT
Ii)OS)=_)V*huO:nk/<[Yh;+d]AfTeVaK4d:hUG<4L$Oj(?UnX,!(qWFVQ8IOl-'q4Mq"D,3P
j0rug+^1`c;]A722f3bp#iBf/ffCLlk>uFF]A3;'[+--]AlK1\.h5Epi%l^hf8T)_\!.E7.R$ld
cac->Wq%h%g2&s!_R/#"j?(=$pWNg;I+28^aG\`"krJ_MT4a'*#J]ATQI(]AM1Yt1H9cSY"0&\
##(!0um_Z_6.<ngMARSpPE@Dd1YnK`#(^<<JE(8,F;uboNS0Nc`4p?>gb-1/NAlrG$@]A2<Hp
+c2"J'f=uD;5',)T7m?%K'/nr*O1`D,lnC4`=b@_`>ag"3T::IkadDPPX+mQBDY>J.9I%&O<
.b7KOi2c*\P<@fo_ZQ,bF+X(D<.n$=IohQ#jgb312hU1G\[Mdk>$TMMg_]A#a\ZCq#\\RmLu+
,\.0XD<fF5&Vi4>AIj9n+;9!KY<%NUQUNkH1\!</F.$_>PLq@eXj$,kN7T7Uhk"%tc/:I`n]A
>8RZuVF'nX2q^-m+AW`T'qQBAp5hH=g!F(`Y"ZW?N<&,cc$cjg"FPl7=lNN0!OdK(r"#nV$8
9/@\WI!rSUHmVQ8.Wq]A\:bMBcs3'r<CNc7]A`XD-fbJp(1jH4Dqf"?F"WG$_RE8Y_]AplH<rq*
m<IMMb<2CT<3EO6p>g80Mg<k?UM+PYHSM\n\*WmsC-*R/#8j3H[.M_Gr-,#Z9".--]Aa:aj)b
Y+_agufb1e;u1=O*HQ&/k$V=/d$^T:qdUM_(V<D$:-.Ml4'f$,Y<]A?D"eWg/9IH`[)cVuI\M
uf"`HmUcIFRb`4_+C5X?(N\N:gX0YqDfIa2W2)E%T:mO$")Y9t4OD4).Gh*g?Fl[W6J<rdZ9
WY$a4YG'*r-8NXGa0uP]Ai\RF!NS[;J.D.=[nD6ZPI&.qW,Pg^b]Ac$KjhkX*$g<SKt0rTb>co
6.Pd)N/,gZ^nFlsO5a#@]A1c0T\1o!%+N-]A5/Mp[YX-t>HSD%Tld3Z7.uV+[pR/l]Aid#^HGs\
*K1FaS^O*+M!LGG//QuIPXCh5_^*G#_-&9($D$RYl,%E$TY-ZR%OX1C&_r,)FVRL+h_\oHO7
f7Ts^88JZ#(Xrq:Fi>Hm,B:"o2cg5O6JhJF;c1XF/;L@:hn`.=,W9LkT:I@7f&b2Z_mbS]A3B
/?dY%/Ah\<TelnYU4``b+!i.er`dT6NMihbPhnJWasas2UA#NOSkK?RPJIg]A5/k`giP6EqK)
Qhun^o79SSF*k7qY+jQM!o[-]A]A</a`:"cN&5.+6iEf8Emic6^JJ^%1V5UZ*0rZ8p??r2Sr+A
R`=W<q2iRjH8H613d!5Vk2jma`l^D8#k$_sm1FY49I(,Hu?lq6Q>WY%h2BEH+p(]AsG]ALnQkO
81a<H=+:%E-%*Z&DjL[]A/GMA<i9WL.sn!p7XPgT<`g:eJ(0+U3Y'HhW"+l$Z+E@`Um,2`.X3
P]Ao)mWb.X=*iipPUPa:Dch:XW8,SjVt"\<deL5*dWe/-"J]A&#",Aj*]A-M^_*T-(l4tU'%5O@
p3d:(Rujc?!#OT0Z]Af2`B&h%(tK4DsSPDiLW*I\#GF:H*h56f:R#)T@b%3RhHPTeT?J7(bV/
$Z@"!P-@t!`NnAFKr"ne1>c=Ya#0UrpK9pYC#?.HQg8.g_QQgoN[)818,6:KJ>goBh#<>g)8
4C(-7eQnisO$Ie)*+nbJ*.Wrko2eNpPB;!o=up!78o1DA<R8\Icrs_X6RE@Sp$BNtGLQ]Ao/u
pr8fj.-69lPQt=9o-IfK;Oj>l<rW7=QMMME"b-"rrjsIQW_:F3r0,]AImHj9\Le^U1E`i"k6(
s-^!R_H2O+?^nsrNdkJ"pZ2!K1@oJ*pX3CWGJ?#KrV-lX-0F+*4.75l+N\OWs0*n5$9=lhAK
BqkL)bYh@?=F'+<hbg4;<_k_+g29.TQdQcRaqkFLeuU)B`b8J<[@7Z5qWK4[!*B40.&\Z8H[
<T;?g]AdF),0;3N&^/I:BV,eo99cMD^!kH;bejSf8#o;e&Ur$=TPnh1,'_?+R=M)UHP@B]A9Or
r>ABC]AY<Khug^n&[ZiCJ[dcH,+mo*Lr9_i9eb^2NaXZdUQWt,)Y.88A"Q6VCq4U*7#+G(j"<
KrUsaY+%PS]APD:S?UB/++kTR\;6'b"5%Yse57Ak([I2Pc^jN.IB!NjTFQDJ3+Fh]A]ARi9_o4G
nMA#RDcn<3Gslb*Hi(o,XA,\\KS-pE(VWg*;rh;+/HB_fhlSRSPe2%a$NB?XrV/@dor4p[PP
U`oV?L2TrOQ"TMVia&M"Nl(o^>"ItS]AgVVn&*%`Phb$g8XdPB*.+*&R<CPm0T-qWeR6d%-5@
FmU3JRgWY98K#cj,Fi3<\k=VU[aq3`$Ad*>`;S5jqpoFtHD-QAnLrY0,LH-HYjPR@^?FP-/]A
Tti?6:08bKFJk-4Toj50c^q>Q1Fr(fnH]A0N1#Eb:5leT?m13%"DE)X6qj`0k9ImKBR$mom'D
]ADl`t2GDN)ZSD'^2c1K`S%*S*X;`1\E@onJ9T3osl57<ZPj-^!A8DD3k2t@R>m_q9rBDc+H5
\>d>9jVFmjf7Ru1H,O5Nsk"PeeYUaY2R)mVq\Crg<@7sQ97N&(K^8gQ`Ad1X9%M'>0lGIS1,
"J?X[ltQ"efCIsYjCM.YCBDXAeeZ&Q1=DU6?2g>P!^BYnpD^<YF5LW'6N$fa8qJ#)1Wj!q'&
3h9'.T!`,)43`V1!9$e3Dc>8REjf(W^?G<Ig#$$&`:!Y<ZNrbTGDTg5SKM(@2EC#]A'Im<J0$
H-)*LH,ADgCM8jrG`)ApM;OBFEo<DtHcZYWI)bGYMN,9h@:IW1Dn*30hu^Q_%UpB198KEL6,
\S[EdcgCHo#Ymu.7S*p)U39*Gc!k,JnIgFrp(`;T[ran>X/s9G9OUhnG,!?n?8IgV]AOe0W-E
6\5W)ck@k?[7&#`q:RJ%+4<6B=q6;7G8IM3\FcZ%lF%G/Wm5;Zr=9Qft$\g0Z=qROUo;nlGb
:Ek5&p=jOEu6n<ndJq\;=5"j^OY,5HL_I+!&mh*>j/FK69gVB3'a#gIOjjqP?+eXF6X^XP@)
b)gD'+gn6h+L/K=&#O?=`pYDL49!gZQGDrpY1QpXh6#U1I'kE2Ql+,+Me$n@qJ1*I.e]A[`b*
L%=U%33o'Bdgs1b@=>C?r!S3;-4@LreeS?"j$*8&M2BMkK%$/!CB**<kM,pUJlsJJKYC<:FI
0,4C<"(l`o-Qbc,X$N?%r7Mr`U=K".$H<:+%Rq=NQWC#uT:F%cFIm6ct*knVt[-H8V,g>#:\
o2d4%TV7,+JIc!6P')b7NsMcIUo.k@j"3XZ3Ml"_`+&X3HMnrm0S$ce,PUZ[Hp2Or9:fcA/)
iL4X&RMTF$$*j`7"EHMI&0V@EM$j(Ir4g]A+l]A%liQ'g$G3sPm&d,*kKbd\?;<do86fFW67Tr
8H-Z5eJ+j6j3=IJmWie,pdZ-S[<>LfVG+gC`JslYf"ejq4oA9-6_@&,9\63s*KYdifm-P-6;
m7>Z>o&i+ob1^K>ku&]ATLD92P-CLcA6r1'QXNH%]A:fbp0Jel`)Ea36I9Q%QH6+:%o!*uIJ#s
tRWQb78Q./#KW#lji_K.9Q_ELo`;jUG^h)UmV/:X/fBeOl`?i"8r)#LnPdJ5u?87LG.b+X5i
u/MjqOS<>LMLmH<\d7D]AS%A1D'/"#=N?Du73'D+ZI8uiY'Tb76ZEl_:"gU[nmoZF3#Y/F(ek
D!PFiaK/Rl>BdqKd9J?lOPY$bd[R[A2Ip*(r=59/B/U*j=%`67mS`q()28gY*Q,!,[s!nK3?
Pf5SbQcJp&$S.BW-pgdFH5McCOYq%.ptqUKDj3Z)>X!%LAD0Y?+H"nZr,rj>kGTQRp3;6$8@
*ehUjm]A6=W5M4OP!9CT4:t5:f4=H7\[Vgo\WPd7i#?_9iaOl#NjG0posog$[s<#2(bY<'c>[
0`p_c=gmtqH7I"p;3-m5r26RL(QZcNk1u"q8//Uauc*CsJ&e0eFKg4Nd+KTdTHF80-@l2!gK
9$\5G1XKNq`XshIj_>A;PM9<IU,ZU*T>s8RaH5RX:J(2qDW[=i/[TX61n4dV'!*\oZVAD#6M
ehku>cqd47h2lYdi816[qTif_ZlDB\CimGt=j:rqTpL@OC%k?-$HjdZRINXQf4r#(*7hP<:o
W%>HN&-J^U8@sY89spMZ@rga(K=?hpZiN!fr9G]Ad+llXQHD)R'&A8Mc(gQW9Nt[^=9]A6I.+1
SIM>\(g9R`jK`"!#O+\_H"\K9Me9%:)nsmd_8bf3ZdUM59UgGZI99FN#Kl12O]AeSRGoDQglq
heLKbX,/?gFZXrab5N^@VpYNU#/97auSnlK_d4la8>WQ=Z8'-KPn&R5P#5<d+Mn0@&e4:bj=
Lcu$0D*d5'MUG9N<8\,(<]AALF#KJaE&W^&n2"\`PRbf(\'r^HI("0t@NUZo\MYqFh4[_p^8f
gbU9e)SDXsA\p'aeZA[#$[hPBD$!/KMSTtR++N]AC"4)uRssfcE>^TWdd+?@/:j1:"$/Giu>*
[W-Df6&ZKs7pRXs^]A8q3n+:2dGP0Hq(N,\X99&Lb&LF"ZOh4*:Wj7ajIKIY]A2I'1Ck>rlK8V
O+O8LG^0P9GQFJG6lS3j1aKp*\EpK<p-Qh<h6EBjRDE_DRYS2s>uDF)VeB,)[_Yk0K3pa(:*
fF8p!q_@Kej6#`+TEjmf.EP]AX:R8d2o.6Gk$^L2ora&dkg$@,"&6pmr=ZImV6T-d#&<S,]AcU
##(J\g3mHS@;5:[4&B)YEL,Jhk;X;WG%0f]AFWe,&K@QPbj\+eI$i@Ti5!^+W\7Pcgtj)@$t#
'[LY(p99r:R:dV]Au/po92s,t6t"qTsPR]ANX-h"'52'r7[kr*SRQNW/%NHT94g6@p;M5KgqtE
]At7q:S4_X3f9GM,Q/'J.-J(rWU[n6p9ka8hOfF[GPHT1K!e%QQ1#0O23.6'tY,\3T&BiQG?p
`T5Vji]A/dK1%DF]A=0DbSe`:H,bR^+QpHHn4%RO1s1@_]AL=oD-De<ammneFQZ\>$"g(+H$3lc
Tg=%sHHpe3"#DRb.BkL!V%DoOjFj.#T+r`U&hk7jg9j^<u0_n:b=da1H@%Jsa^EgVFB;V#"O
tK>lZ]AV)-(1b[(oOlBOl07H00-<3dUWtoOs1EG*Em]AUP`fY4`\:8nTH%gJn\TQ2GarM"Nf?S
4MgB:%)5B,lD*YKP$@rBK;ak*9aF<NtZSOIiNNQPRK'dE#bJ"5O[Nae7Yb;VgdcZ!g!BVO*C
ZC(YE5UWPg4A7-`2l\Ah75`qb>)hW=CZ<@g3o>r:s1E<L]A_J,Wd:]A2(f`AB<ReO)hY*EA85M
F/LoA4sS+oJO0jR^1+Ms/1,04$UYOh^pm!7:c+np]A86)9eZO'Cmb^Zd00C^gC)3pRp71Gn\l
2>k/gaK8]AWq,k"`%=s+&6hO/B.c4\+(eEiF`B&*qLm_=su+:n\;"b@dE0*h\HGsNPYapS8::
gO\=K(=LY&<mt6JtTb!&-V(uJKQ?o#R!G=5p-HU$N`Uj?4[Bonq'+<PSXISTY)BY"Q]Af<+=J
lK"@7<!+:-*t!^TXh&.!mYJj9m3(Bag>7l^k"frW8dfe<8<+3;23T)7#pe-CK5p.,+AVa;KT
Vp3EuIKE9F8[CU'C3-:[Gih6/rVmnlB5l(ZL3n4*eGt80TE_]ARnU+^Ldsp)J_3pjU>]A:+3<m
#%C$AO$"TmQ4"OJ#/9.L_5dQ8H>q>c>@V3.8R=l%H`.F,C`/U93;2r/ZK(?[g'`q5G+U]A<4.
6k4"4%IL9o5[Ke;F5Djs5bg1R8JNR[;jO_5p00dC-Ir]ApNf+a,=jre%,]A>$0%7c"ofo:VWZm
6'Tg5s#T<@aNDQTqIq]A6U<dEL4XRi$jH#\(^euB0GLnc@-IW^S`<ttbl;as(K\P%,4J6AnNU
?bOF-.\mZhA@gDbD7c<I8d2ZN$Fqu/Y~
]]></IM>
<ElementCaseMobileAttrProvider horizontal="1" vertical="1" zoom="true" refresh="false" isUseHTML="false" isMobileCanvasSize="false" appearRefresh="false" allowFullScreen="false" allowDoubleClickOrZoom="true" functionalWhenUnactivated="false"/>
<MobileFormCollapsedStyle class="com.fr.form.ui.mobile.MobileFormCollapsedStyle">
<collapseButton showButton="true" color="-6710887" foldedHint="" unfoldedHint="" defaultState="0"/>
<collapsedWork value="false"/>
<lineAttr number="1"/>
</MobileFormCollapsedStyle>
</InnerWidget>
<BoundsAttr x="0" y="0" width="950" height="32"/>
</Widget>
<ShowBookmarks showBookmarks="false"/>
<body class="com.fr.form.ui.ElementCaseEditor">
<WidgetName name="report10"/>
<WidgetID widgetID="646dd67b-e016-42de-9da5-963d65cf6395"/>
<WidgetAttr aspectRatioLocked="false" aspectRatioBackup="0.0" description="">
<MobileBookMark useBookMark="false" bookMarkName="" frozen="false"/>
<PrivilegeControl/>
</WidgetAttr>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="0" color="-723724" borderRadius="0" type="0" borderStyle="0"/>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="SimSun" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Alpha alpha="1.0"/>
</Border>
<FileAttrErrorMarker class="com.fr.base.io.FileAttrErrorMarker" pluginID="com.fr.plugin.reportRefresh.v10" oriClass="com.fr.plugin.reportRefresh.ReportExtraRefreshAttr">
<Refresh customClass="false" interval="0.0" state="0" refreshArea=""/>
</FileAttrErrorMarker>
<FormElementCase>
<ReportPageAttr>
<HR/>
<FR/>
<HC/>
<FC/>
</ReportPageAttr>
<ColumnPrivilegeControl/>
<RowPrivilegeControl/>
<RowHeight defaultValue="723900">
<![CDATA[2628900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900]]></RowHeight>
<ColumnWidth defaultValue="2743200">
<![CDATA[11544300,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200]]></ColumnWidth>
<CellElementList>
<C c="0" r="0" s="0">
<O>
<![CDATA[字体发光效果]]></O>
<PrivilegeControl/>
<Expand/>
</C>
</CellElementList>
<ReportAttrSet>
<ReportSettings headerHeight="0" footerHeight="0">
<PaperSetting/>
<Background name="ColorBackground" color="-1"/>
</ReportSettings>
</ReportAttrSet>
</FormElementCase>
<StyleList>
<Style imageLayout="1">
<FRFont name="微软雅黑" style="1" size="256" foreground="-6697729"/>
<Background name="NullBackground"/>
<Border/>
</Style>
</StyleList>
<heightRestrict heightrestrict="false"/>
<heightPercent heightpercent="0.75"/>
<IM>
<![CDATA[ja)8U;chPaR#t&mOC"f9Ef#ga[\JY9EXO/[=DRfmV3SK^5_p54(*P(-JWL#W#\0jdek/=_WO
5?t>_3Oh-7$F+80^M+&g/>@+p8155finEI`Ho>UEm5(oU.pm:PX_?p=X*IZe'NT]A@M;7:VOS
bS*T[hSmS^0Ja7[O^:em0!_Cgm"Ui$CljSn&=25Fa/9oM1hV2ssLbG5;+FjA]A+57/?=+7P,r
6+l;0E+-"`K+C$i5O<7^Y'[]AoM<oSYMWKjihQ/p%e_ofBr#^umY4Gk\)r-&_`M]A.I?4=9DTd
:\i>kqXRif;urD2Bn?SCo.itn8s^08CT>Nb\9:^@Me-q\W#;jamI6j0?3K=S(e7;U3iR@=+A
\j)EEpGZ=-W_+HKdM(%NNRmRYLaoAI8UH=6Fse>-mDgP#Y.i/0m`acu?'So*Z\M9,nj`Ssp_
Tf_rM]A[RGja+iM6BaGY5Ip*'Ce2*#;uG`U.\I*r1;DI`:m'a!ZsGm_7AG4]AD_6Kg]A[+prj'G
dH(Y!snG%^6['fh4n*HVAk*LY>00"SoeR(MPAH*g/YRWA;iG.BREDF1@XJss8`*:R;1uH=gU
^bqi+aL+5JR5,M8q,T[PLq]A#R,A3[h^(^MqR]A]AB!;]A5*6bYQ7#*I^R8-[Q[ahoFt\9j3RbQa
Q]ARKoEtJ'1!im,Rk:-9R>*]AeR,5*IprdD*j@K1f3Ai+)h9Q7Wr4T>cH]Ao%CM<Q#aPW;%COta
S3SOK`u<1oL<JABpcXGu%-sj=!PDkacnn=pQ#&X8pg/FD9PMMYEG5-Jltd%t=ij7(Lq]A2I&s
8tV'_Gs=Kdj>S?+fkh1)]A!#TJ%K)2X^?@+B/ZY"P-dl[3$='RMbNs:0!9r+?a.e-nTXI5(R4
/I88"%gefA2f1&S2IW,fq"BArKn)-or8b%O*6NX_VRt^2p3hj5_O1X<EhJ@.(UX?/g1oBXQO
H4-gh05G;?:5=,qQtK'Q8m_Ro9@Ol:ujuPYmAOoR>P3MFk@]AFh*1@B"Pc!L<22e%]A=I;Lp1D
)2J#AGIdLdI5\BNjN#e`2o]AQhI#6,#G=4p7p]AZ;\BSa(c-#K4f'%`7k8PG4YnMTH[;dpX@nF
:r!e5oCV6hRnb(h4,LF2q3qATUin2In(9ub%08jZL.F+C]A9<^CqKI55Wi^UlY35JuLb*;K4Q
:nX]AK<XJ'bSo8X#Fu^1h)\%^BNF5LIPErquFcU^>+_H+2?HiE%:&s=bH@/TT/moinWFjXqB?
TK?fS!HN;NdSORWQ%_+79BY1uUo_$]Amq=8-CeLoV$on6cKBjtg%\3o0dQ6g7^ZTdi;ffo)H]A
^qC?2ieccRmK&76-5^bHP@P58+8[Nq6J#2W*,T2VNSmui/s'.s'e"j*ej1J]Akabp[?'<PA=9
IIkXs,i$_/9*KIkr\S%MqJg>%;TrafYP>hF:!Yim_eb=kqc@$^Soe[b@p5An/^&'HKaT_,Wk
2W:nUX0fn79&sTN6pPaI0s^JrK`?pc;,+2OJ;dFd54cktb"HNGLUeS+SbW1]A_U#6+q%3?Nju
?DgqdJ1#,C'2V5nSrV]A`trUaDJSi#'C%0+.?r[ePU1:"0uj\LsSg$fE]A`*+0Eh,A'\7TAu:-
=Q8<K4l@7iJDLKbmc?M]A^J4f3*D[$=jrsPQtltbM]A*X+N@&BSPPrtIWMP)&\!B1=cQEF&r2g
Sc#pg$)C+7:u;(^9BSU]AV"'[ZCm58eD)2?`J(%.Vm:>/>$)U&a4d>D"mdFo[f^I4mac\(-#L
-r%,Z)H^n`%pKJ/O(n+AG*[lt:-i'<JMW=Fs6*(]A)nP%E`;ps)Cd56Pf;+R#"dQ0;qB$YlQ#
6arn&L0VHjpm//dW#`2q"Pm56.,M,n]AAiZcr9"0:::LP_g)tDJEG"K@aU4.EV/q&)f[@qFiI
CD%5AP1*;r7>0`.-1]A:V=-a2rjjdnWIT"#cKo'GPU);rep''*FS4MDglX6g@L!_0(2-RS.\[
C#4O;JHt*VL"R*r_OT%LG*8<#F!O(E/T\I70PcNtd6Z2oPJ$R_fEg'RCc6D!">bVRp+h/ocq
.#pYkN4Uk6`?XRQmLNPrt20"G^4F_gn+r"57RA2LEV:T<!X72)UBijqX!=nT!""#@s:]A$Y-&
Q:l!&H$Fb1H7Ble4)]A=>MmgG:CBe@=$F*n&-&!ajL!BQ<+\LKZSM7[';E`.p8f]A*=d$M?2Ed
b^;kj8^iL-L=6%Vr5&2=01(?hVmrR!H/F$'=`'[`Arq&7pYH5d$<-"\pGGVt2d]AYja5C3sbe
[VZa#in"Vo5nf0Di:beDTc+q4@:k(I=3T[Iqo3i&5UIJpY6tQM5EA)mMHkI:,\eBd:WA`/XF
(E]A1E"61l->'LhGj:"Z?5nPG2rrLE(G9/d?D/#ek%3gJdalf<__fFE#PI7b'JS2GX:"e@U1_
\79[C;SPEd:lclV7FQ^[cAe*+F!9[Du<O*33g?T#8>\qrB>Z;1)(]A(]AgUqG=:g"%I1tT94Ml
5dYf'%Z^jHL$$Dr,_LjbYSVH\@"I-L6OBm5[8oSGKa9apdmETcUkP2*i#E=lCc&T3I!gF$&$
!6p&#rh3fXQ#Z4)0W\/E_5&9QThEYoibm1SX2J(brW`bd.=p\)e)bn-m+\ur?ZN;U$pB#2bc
Kl9?LOaRf4eL$:;Q[INM:MY$]AAe9d^f<dWpalHKSOOPjK7"oMWS5r;rSMc>1Yo`f/HbA^&&Z
p:YbJ/6Po^G`R(r"DGc3lg$R`1D[pFr+Q6>%BIAGb`\6ooRSrVuJKD1@j\CXO1'X@#0re$\7
VQ/rT3N\ZVD"^@:PXq6&)UP<U[@e#PLH<Hb4IJK#$@Jo=l'&\eL_n3CD/d.r)HU6%of92;17
&:<[fq1R?9BBNcGYA2Gu0c3&4\8p,U]A-8p`,idm4tt17ZFf7#,=FiKRnM2UfhHVS$BJ[n$.d
2\HC`eE(F@0$4hup>Hi"Thh2_#mV&k9$Q`"W3&31D9OUp]AEe08@4'NC&l\gX%ZI;<mO[*3IJ
%(f'>5qa)PY#>/S9aH/_1Z2h;(-6<lAG]A6Q,VAk,l:W>Ti1RR+PSB,.BdSY$XDF#Y/Da@NLi
TX_gWg:1\aKB<?*t/9q^@'bOGJnOiGNj(0+JG\HbNns[Qa]AS`>F[ZnET*J*bK<F'cGrZH[te
s#.;BPrI:6G\`[%RUipd$14jkNX`<KJ0TEME8J'#VW_VME.`*(1u$P`)_1&j[tf%o"e5XP#S
CPWG8\f2:I==5+F^:,naN,/96[>9OIKrVtoqQ<R0-!oBms[3[\D3,``gZ3h?kHPLou=cVmIb
Z-++IRs7s"PZUL+oX,GHQl^(7.J)B:)`_X'DaO*1h%\kj_(n=FormK;&m7dr/l&u$7%oOV'?
64W.bn@\+P.mI"7QbefT8*=;>[,Pneh8qnSa]A+VCfR`LdEBclJ7tbJrEXUkpZnS=+1b@Yu^h
j1pi9`F)n^6-@E7OH:s9jI)e9R8BdmGAYb`_Zrr[a8S^.gU`,?9m]ASt5_,jOuUlh.;M3\"c%
k2qt",gHZ,,*=(k7*cV%Ej1us#`<snWIe\X`:h_)eeMKZ(EC=`ZA<1X[(6J142^Yp:Yc2\mN
AalL\VbRuh+/aKQ27<B++HnZ8_=Dn/:G06aQ?pmr,clU;b,H'D8.oDgg,qUr9nKa@DG,Zq-c
@Q3u!.o(rjMBq^%H4.j3AK;&o%IVVTgp"h4Bm5TGC,Kb4`6@<;ZSZ4Ta>iBh<p$N&Te(EKTn
2RRLFT!a<f`J"pnc1r4!EBPThKcSKIsdLd.oJYOV-XcUFd%^-Trq_(GojYGgEUbmS.So=M-O
XKKX0J;-a,qkA%"%>?(ZZp'$]A#DMAG3V<E\U2ChsR\$[DfS1Mu*k8W"[8a3LP(j`B'KF$CQ?
e)3H-KM\9&RrIf.gNo/0<GY!DOSai4$MVX0QdM95>=Pf(rjG+V8KU8^=,U/%_GdS=I'X.q#D
UL@9MnaGs*bGlm+e4/X"'Nli?5:(MM[D44M7!%G/A`@qE:q\Y]A/P*o-!CDGeW4l.6[dU46]A%
,?oSo\)/_<5>L_1O\k^V:3;>aCYEGFG,(mhL3EH%l7=q)]AZHO8Tk3B%(e"ESj-tKjCmbKi18
T:>i=tqA;WTqHTY6C-/QTOr#s5%mpZTAT&aBLd%RLXk-X2p[+=Gqm/o@k=;9VeHZg0?Nph4m
FgT%PS&4*aO_Jg:l3ami+6j=E(O+IAN"T#Y>i6ASDE>;h"(kl'"qP!SM<3p2=7fNM.,]At\,I
iPD:9BG<6$8K:e\=_4m(6%ZE=HYa$_=X*eR%4+%qgQrn^2a!"2BWM78:a%$YY8)<8sYs(;WA
;GpR"j^F:nZiNtuXG29Rb<)2gI&F1e.1YP;,scR-u6@h9gP1a)(&;DNXDj.d/o&R:LlL1"rd
TL=6*$F+//KG&hZ6no\)%t0"DSiT3Re!Qt_NP.LIK+pZpL>R>;Vo$*Y\Qh1p3l\I/g>/UrUV
&cn5pf!]A/6bTFAF+prhV3Q0(X0urn$tnbZY"*!a?LgZFj4?t;1)n\]Am=CT\+Hl$4Gn\<+MO8
CHV;1aHpA.rI[Bgu<bpQ64;)W^P':\S]A(#gq&s.QF]A&;O:jDrpq*W_SGm9d&9rNHr4MhiOge
M-NPeubmZgXs0k)#uOn%`D7=7/5X9cZRli"sMP<q/4<UCbTK"_(tKW!;Pl/*jfDBS,J\8AXi
;;`D]Ak95RA.q<AW)QY)sE.r/h7=eTp*kUlcGDMVIssd_;J&[8?6'$Xo*A3k#XR3k%3b3n4uA
r.Q&bGUprpMJ3&,G-8OZgciT*Ve"]A"=&6Y==;&2#I1N=rc[^uL3*2_uV\D'ThVX8482p#8SF
<b:T.Pl&G\%O8Q=Q=#h=)G<f>]A)?MK8=H;$s_lg-e]AR$L3IsH*6^B!N)JpJNqh;!]AIdYB#2t
25B!nX.2CPV#1d?DT4IYQgRe\aZR>^s?INk53,<k58S_*sRaE_h63bcQ5$,6`[6<j^82m30h
uqYNIOO2cQr%:IPN8_)8GXG0h8i.sBe/b,8]AHLG&Nj_Om%s)&q6`YPkVFE&<G8m,mEmj!h!:
7d/B?NOXZf!(+"<7@0bd%&mhu+liPGAnk^TP\q@H%fE8(I\O`(mF&U(A>CY/uWXF;"GAum.d
)BV"ka_Y8;qq$X0#D2ZH#PE5)`_=IqUV6S'2#^2-)TjkDcnXt]AR.RI"((Pf[3mU"td;m>s+u
Q?%*&&g;oF+;p6E`6AnTmA6?QJ.W5>H9Y)]AUN]AG>4obk,@;QS\2/6j,2A2-)1UOJc<!HF'\_
6\XPT_@j*]AgLu;F+=jRin^P=^`Csb57g'W0l3HDNL73Vu=CCjG$B&d**h-NTRc103bdRaWjm
ZT_ZeJUs<)S_t!)Q(7^["P;7%&nuDAAe%"qkCgI--ERCHY97Y]APH/X(;M!B@?8A3r@''8)hF
gVZ($hL0NbHheb]AGZ.@oplfZ34<N#i@NgKN6*m2b?X!3=P]AS"c&s&m0qBKi,bH?(i2:L\MA:
r\tG(68h\lUo-+<X'Im[,V8.),0]AtYlHP:MMN2#U)CPp<c=n.rEL41``q6"%?Y=!t,l?P,h4
RC7bNepJScgR8\pe]AS3uq[C?I=P195TI7fERrQ3dOQRSSI`CDBM0[Db9Xconb90[kR?O\QNP
P\)P'RR00EP?39RA@&MHI_gn3i>dg_Jk?<k'kc6;`)k=%&$!&`ModfT/1df8h@N;N2g_-r!=
2u2?L$8Hs;4N(A1A\N+Yc_cM<C<'ud2FB%ikJDof<#M)NgNc-pO@k3,dG5q-]AQ7V*\Z=BU(u
DaR.sQbMmQ?F/4.3;ieQB#O7lSF@2cRU`E+nb;4!rn>Lj4f?j-,CdVn>,$C>:>_7=g_hBnsS
S<]AY>fu$HG5G]Al;Y-;*A_3?t.+hkpF<D^jtXltMrS3oVE^e0#1qV*t]A6l6?%&kF[bKYDuT]Ac
K<7:s]A-0nkt0jU9!*@<i3=7V7'<9^8;Nom1-mn3GP2k!KFTcF&TRJEHdbr`IL_s7J58+Bi=u
FhE?qO4=]A<FHWG1MDO81FVUG]Ad2k)MC5=1%g)goZ:Cc+kUY?d6lTbjU3+6p(VIMWMZLVcj9f
+sNciCdnN6Al6K-]A_%+(9.//KT\THmoW%h8-e.F6=d&NDmAqEE[4&_-eq.6`A#^"4L`6JG=q
L[k:l40,Hi7F*Ls1Jd&p$I15rj'd%ltO9#'V5easo6\%,5!k%b;ke3B[W:mbV;bZVj%.uj)E
=6R4iR.:HQs5#7Qa,;`QrJbgd+&*8OpU3+/7]ABTrg=#Y0n"1G@I:\7XHReq7Y,+1i:,d7e:,
@0,]A$;:2=GeD8'24>+_YF%EWT;5)!Fau_J\7"CY#4U".32k?&^gPqXa`63:B'0=>Lt2`)tWT
g&59/kruPEC.I]A4N>su\<]A=T4'@@8)a.3=Qb_h<ALHuB>D+0'PFABcm2BM6*Z6]AAjOIS9pm$
nnC+rag!)0_!^&iAJYb7m%8S&Y;qleqk!s#"gW'X4LbV4G%rImP+FaXd""S.K)j;VCsFAFP+
'd>\jQ'5BGDGSPuIW>&tI]AGID;+(T^k+[rG`]AIc:=IdpAK<)D0o/+nU1ubbEBqD"kbAE`0@p
^V!L-rUdC5#Iu"uAp\7A`!PXNE"9YVe;fJ[NA(=:KN,U>DQObg:#[5L;qs(SIou2Z^LtRWM=
"(sK\jblTPL5oUVK?5\6&Upf@FSNIR`Dpm?-!YA'/XIRJE\!eerbJBC`@--<9emaMHu".sId
bCL1E%T>mLbapm`D4Gk)5GcjD[D>'6f45@SVS\&9f6C<<Sh]A!$&--)FFpH"+UV2tHE0*#XNd
2KnnLRQ44lIK,BhKI5W4D>PGUD1P[[e-pC_38ceeNWq9!SA.rn_0k]A8!L=r_rH2nbPC0O>Ft
iI+olF=HacfV6F8oH<)lThfUA$XE^)U`HMWs7YQHlBOeAY-q%=LSD5;S<&c7ecIk&0em4@a/
ik"q-(dWQ.PaF:Q1Zd"t4YbY(ooJl2`BX;/HYB*uMq/]AOf_l#\+LRR3lq]A#i?iKpIT\1h(2:
Q2Ni!3foKf#T\AK\0[k&FgU\l*t99P&bsdF>ZZ^g(oZNpG'=<P160cEMU?VM-jfSbpqQqC]A6
oW0q,*X31A0!Tg9YXQ7FYi2$TtaS<SA1QH't*Lh6E!)Fg^Af>Qgj947LlY>V[-:.cKIC?e89
[7R?U$a61qT\&1ZHX&jJMiU_R'5S0S`0rl;lS_q\TogXIjIKH,loC\L'Z2CG#nHfnRaued_X
dR`!3F'X<TLZD:lRpd86@AH*%),FEcUuG49r"%e>V21BDLPBeec#Is\!k:XJBb4E1Fdq+pl$
KAG.uN4\m3:5bU5IhkFXb@kd`1jo17im!u^0s<]ATe)su2::i31*qG%^p/*3YP*B$]AcN;936S
qf+j+FXZ$_>lZrXJJ#Nt]A&%*^?`a_4bK]AOiC:\1k8(@.GC70Ib[YEa4EC%]AbOt$gA@rKlsmN
32l@hG%Kqj'qq_:fa>M%:RS^NCAQt:XR*dV$-0f+Z`lG[]ArU$<qHG;%EDO;ej(ODVL[mqKlr
?Apn]Abla`1Cql*22_dbL%ZegST?Z@KY]AYqH>PZ&>F&aDO9NVe4)c6>fbgLEfJ]A_&[Y+AFjt<
5egsuu+KQ4_n*.,mCj\]ADXLmmL"PL$_67NjOn$kHBN<5YFim!5m0fMR2ZT9DFf^e:`O)H+IL
/b<r6jB4QPs-17t"!a"J3`e6s]AZg9D@[eu!an!;%rn\=1RrOi8TD`]AQDQjN0V6gEpm/OObFr
]AIQ,o@shk'X^P/X']An(8J%X?EuL;(o9bc:]A2#nO:m8O:8i6%2VnQ1</3*=G9jtEgS`W-gR(<
@26+XN_-;OMS`7J%8jtJh0q'M5T[-=!-ofsl,]AC8`5Ydgs+.2?$:<M)7apKtq`_N+<;M`Se0
%Z8!Doo2Q[a(7\["A,IQ']A9kE5W68!QB4Rj_8KXa4d,/BFru?]A+b1XW3[R;?Od\ApRd]A-\UV
EM(dRrh:R0_qCCXG>ANDKa\35b@jX(MlJe?^d+E`2W-Y<U.-=B:$V"lR0V6%#rW@(08<p,Z<
pj(jY,YN?F"8(*UPo/jA;u5I62%@YSVI$QX3X0Ug8ZZOEU2q@;OnqW"r^]A8@_u\7VEjRrT?(
]A\Fp]Ab13ZE4uoLKre0e(sdDqD-9B+0<aCL;F<2j/+'mWMWPhI.^#ZQ7f(uFPZ3gXNE&EcDdF
k/?KGufW"=q!)e[//C?S&rFR\m!C+N\U`()?FE<>2\rQ-e@&gU,khT&nCn-Os99V"VO>ZX<$
AS[F.jUg&g#kCe`uQ?[R;4QrgZ9n-9u0-X5g@@CjgMf]A+6fl1T4b:R,_E"aJD#4VCl&#LjnB
Z@--'atMiq6-pcaE`5[qGh1Jc0%oc:lXeOT,_04q`@EFFjufTS9$!b->Kl=Jfa?/BtmW_l*9
IRIDHHjmsuJR^`*?WJggOq/F"P\^t=_m/\r?E]Aj%eeV=hjnmIfaCl5%i=Mrr!PN9=EVof4`S
),iXb?SsK0dfT(>5Q%rI[X"S70WHJB^(M?dlg(lp:5Gl9cJsa_Sl'_8(^gH+dce`'2U[6V%;
1;N95]ASh.^%VEEYHZNf!IQ32_rk-T[*!TG_u?"D,K]ASUJ?SLOkXioW(2:TsA_O[rL_MNp2>e
(.Z_TS<(Fk]A9YYecMXWRVm<]A-iLhC;pL7D_?a]Am+b$$Gj\!<<0!,OIs4%+=\a$tu/lC8lhGQ
"q:\Mk8?)GF']APF'(IE%>uId7&YB#ah(k?O__PMIG%b,QAk^s]A7.5SL4JedP3,**(jU!tW&A
II;[8`p?Foqj_1]A!o8[3W@@Qind90N,n:[:f)D1;XtM<Fg*I9=DbiI>bqd&;7SR%l&[(3b?k
S\L9tWL!K"Sq6Ieo7L2'RNC!BT^fK"I"KhT7cjcNiA`6<+!!0/d:0,6.A/po]Ar+_NK_,5\Lm
s)GKTX\f\7S%N+X,UT+:[8+6!X!VSTs0W"B%<roDCKP_.*E36cT7Vo*3\Ipc*.j'W/A2icD9
Ci`oLpOBfqZ+c]A;ARCC>nFQpqi&<YEF0)lqQXks9er2+d]AX\+Of3rRY(%YE!WA4MHgJ"W&6b
WH)SRcu\mgYoa4I!7$<45T<WD.e8t*Eun_=[dp4TQME@:%aUZ_Nb+fXMeOW<b]A5IOF>d+uSp
FqW74&d#5,miXot`sad.a!B282Qf,*Pt?`?B;@LTc1+#)%0/Ha9=Z$'"eW@iH!\rkI)mFYK"
#'cKnCD6$mdXB98<F\?n25gW&*+rSME"%^9gPaBPX9Lru13)KOe^G]A3baKS*66D'6tJs1>'c
r-TXJRV(-QiNpiXkV_keTUQl'eD0A2/m;>dd5/\[j>I,D&%f]A(ah^=SYrG@ph/,EX+EC";AL
7)b(*I2[Y`H'%$Vb24t\ubE8WIQ:VZle2a.WQ,`]A0$J"ecE_u,01A/@RKKWnb[Dc#>/4'92o
B[lMQq%:/?cE%4cnds/WR'_b8VD"@$[j]A[6i:L$*^\JMIE$W:l6T%FN'K#1>TUlFag,!R[Uj
@#*.;_(0'iqRusr(Kn(5I1hOsU\OoLp"`RC?i@=gIa[V?r^XP<e2Z)0ph'U]A6t%MTEqD>jN1
JB0]AM<1UrQUk>O`#HbMXa_`B,PYT6'[*)-Pbchnp^g^UaH3o+Lbo3aICh-%UjD"?4cp\ZAea
<pRRh/`q93qa(B\O25f@kIeNP?jX3n?X`N<Vpa=L8/e3=X8V'Arm/fYO!%FWf;-Cog2Cs8`@
uKu[?csE\DS$Wd!l).'$>sgrBOLI2-Y3`Lb)riI`gb!!S5sn^"&kcp9"*-4<t:^ZpNAA(Bur
dqXiQs"<So8K+1!;gW/^pCSXX1g:Y/"9(37j439$Qo:<L1K]AMaP>:JfVt<*eoZ'JqpIG[\YH
9HmB%T?7abdtWHoD/=AaQ<^_A.T<FGi)o5<;]Aju2D":3iIjlNl;P<q>3Z4'XFqqujZMB^RH.
##_>KZ.mAU`OTVds)6B0O9YalE&T@1-HU/USTt9sS)1ls("#!VEn0R>W'U^T>6u,A676$R/`
[Scs(k820BI2e]AWop-`#qAo$=pFc78<]Ab[hD7]AIq,**o#.V"C[.[=>"lc7KBX9MI4IL1D5cd
D31M0=Ik3%nn>"iF-Xpm8L=/X0tk>&WK4nEof0$R7?iOc7G*51=j_!DlkPij6=i+DUq+d+kK
u79P0<h;GkM5=#sWt$:Xbb@X2.+CuXO#dpHA#4Jb>Q*<PAQ29<2lCAT=R+i9/C!#FuJ5K"V&
@2Nq"XYic(Td^I0s.pO2#()J3W=]Ak[5(C\:'Fl2K[_&VsGT]A]AW0J]A&5@oBH_FBE[>/,nJ4K1
^_aR3HmujQs.9aYgLKeIcb0^c[)=k$?V;kF"Te!.C[f_#0*u)$BNSmej*SE7i<!2.hl4CWVd
FoCOAM_Z8#H@kHk`X:=.j-?.5U6-V*GP;XIP<2kYo\m]Ak7!p@DN#O\%9BA>b\3`B3b"B*&oc
#:c:Se.S(Q1YGiQO;ZeA6)"<R&>p\!o)@nPc6C%@9C622KMlI^5d#0(R]AIrr`a^dJIRB$=W0
Eg]A[=;^L8uBKp"PJ.<=)cc%TMS_fr"=2OCbQm2't'NCB7>!VYd0tcAJ#[F:s2IifX9V(i!p2
!)]A%Aj1%_o8??$?JT5ufY7qh.K+mPbNmZ;mB'/V1c3%YXLG$Th<-bc^HJ7q$RCjaK+_ppV4'
m#j5*.U)R]Af,KI[%I=Lk'g2dl%._a>)ePR9ioG9."BK"c9ad_bEMb#X=LM0&2.sDXd8!"c=/
"*.>7?+a_d3q6V-I^9m"+fn)pNGE'e-^!,eoPC(lM^T>pEW+n!&U/]ACkJ`o_"&6^Yt#QSAl&
VGD*at+/*I4PWA57.u\[_Z2N#;g'@!S1*l2sVhc'O'n'q:6TgLL$VWjC:oAWKi?]Am>mH+ass
NWnndGcLC*(a<@>'2-S9eQ,Jqpu717W/mI7aBHqY3jW]AE'g600UtTMc:(YTE@YZ.6%g(K@b'
JB]AMgVB^Y`.P*hhDNpeVCn6E*E6tPR?q[?2,:WXV[$onKLQgTOJ^\e*+3*k4l:ApZ8_65Z$q
\H`=^C5)3KC7c$kpY:.ISHqBNXtq>$TE5YsXX:r"Eep:`5#NeiO!A+do8F<]A+RbNU$rMNc5f
c^-=9:*'W9@r/:&VF:Z/H7D<Y0K%'8mH;nCCl2H(rf,#QtC#`9>$7UOu)2EIR9f%e?km?T,<
,M_tG$Dl3Fa(uQp5B?5BlME@mYV]AlWj,j2`$SuT+2#$NIT]AufhWYtOp2T:t?TOlgB_<u[>_k
hX07_Dl6_cX+.,:ELNr1Li%W;_t(h15cYC%hQc$m!K+^eEfa`3[QT0QeL6VW((fc-)pUW2/9
?q_imqgt);((7'Xs32T\U&m8neo%lE1):&eWZ6&Ck"GEbrt>TY`k(_lOR.B_Q<gdcP"kH0'o
-suVCJ!mSM`:/h$b8<k`u`J=&q__!,^km?UY3e4eBAk\KBXEn"s#Y9&hN_]AnH1EiSr-iY#la
(P;oYQ%-i-p>T@2neMZ+)Z]A8cW&-NX_"Nfc&EHSToHBi0mh^)\>2laH6Pg^WC\W5`Ga!iBmj
eBJc]AeHF*,g\S!+\LT5Y,_a9@=S#t;-[3//#a,A9QamUJW7m4+OXaGT8/%Hci_Ja%GOkFC8b
6rkI:IpWc@3t(i"<SUktA^CBm(^[rVhkE\F7>/?[<@H<\*#)!?/=aI6d;Mjs]A0k8oo/03>J!
!DOBQ\qYF$r``OHIGObJfP=BghZhF^Rlcm_/@?qmTlHY(1C?;kNgA5#L0/T::$_q:b]AYQ!%k
$[p6/P,MMc)B5ifGkth@?-d^:YNor-\6[T"=?(XMhriP?oKf#c)l<a-3.,ZS+ZIo;K?1(lE`
<Rj?#XOeDR`J:T<(WRs_1VFkFc-,qn(I[,CboOeosEucO%hipLE1#(&j4e5PI3c:6__Vh_]A[
/ED\obEKj^,_%oCai(TGmOSKQA8fk^tLqH0MfgF8O2KIO,6".k@pDG-#s[,N1]A+'/B?pf,TL
47qe[e_O(WpNo_h-?iW\8tHWt^.?2JiiVuI8~
]]></IM>
<ElementCaseMobileAttrProvider horizontal="1" vertical="1" zoom="true" refresh="false" isUseHTML="false" isMobileCanvasSize="false" appearRefresh="false" allowFullScreen="false" allowDoubleClickOrZoom="true" functionalWhenUnactivated="false"/>
<MobileFormCollapsedStyle class="com.fr.form.ui.mobile.MobileFormCollapsedStyle">
<collapseButton showButton="true" color="-6710887" foldedHint="" unfoldedHint="" defaultState="0"/>
<collapsedWork value="false"/>
<lineAttr number="1"/>
</MobileFormCollapsedStyle>
</body>
</InnerWidget>
<BoundsAttr x="0" y="0" width="950" height="32"/>
</Widget>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.container.WTitleLayout">
<WidgetName name="report0"/>
<WidgetAttr aspectRatioLocked="false" aspectRatioBackup="-1.0" description="">
<MobileBookMark useBookMark="false" bookMarkName="report0" frozen="false"/>
<PrivilegeControl/>
</WidgetAttr>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="0" color="-723724" borderRadius="0" type="0" borderStyle="0"/>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="SimSun" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Alpha alpha="1.0"/>
</Border>
<LCAttr vgap="0" hgap="0" compInterval="0"/>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.ElementCaseEditor">
<WidgetName name="report0"/>
<WidgetID widgetID="deadd612-54d0-491c-a6c0-aab49338f8b2"/>
<WidgetAttr aspectRatioLocked="false" aspectRatioBackup="-1.0" description="">
<MobileBookMark useBookMark="false" bookMarkName="" frozen="false"/>
<PrivilegeControl/>
</WidgetAttr>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="0" color="-723724" borderRadius="0" type="0" borderStyle="0"/>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="宋体" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Alpha alpha="1.0"/>
</Border>
<FormElementCase>
<ReportPageAttr>
<HR/>
<FR/>
<HC/>
<FC/>
</ReportPageAttr>
<ColumnPrivilegeControl/>
<RowPrivilegeControl/>
<RowHeight defaultValue="723900">
<![CDATA[952500,952500,723900,723900,723900,723900,723900,723900,723900,723900,723900]]></RowHeight>
<ColumnWidth defaultValue="2743200">
<![CDATA[2448000,4608000,1296000,2448000,4608000,1296000,2448000,4608000,1296000,2448000,4608000,1296000,2448000,4608000,1296000,2448000,4608000,1296000,2743200]]></ColumnWidth>
<CellElementList>
<C c="0" r="0" cs="3" s="0">
<O>
<![CDATA[多多搜索/直通车/京东快车]]></O>
<PrivilegeControl/>
<NameJavaScriptGroup>
<NameJavaScript name="京东快车">
<JavaScript class="com.fr.js.ReportletHyperlink">
<JavaScript class="com.fr.js.ReportletHyperlink">
<Parameters>
<Parameter>
<Attributes name="shopbh"/>
<O t="XMLable" class="com.fr.base.Formula">
<Attributes>
<![CDATA[=$shopbh]]></Attributes>
</O>
</Parameter>
<Parameter>
<Attributes name="jssj"/>
<O t="XMLable" class="com.fr.base.Formula">
<Attributes>
<![CDATA[=$jssj]]></Attributes>
</O>
</Parameter>
</Parameters>
<TargetFrame>
<![CDATA[_blank_fs]]></TargetFrame>
<Features width="600" height="400"/>
<ReportletName showPI="true">
<![CDATA[/三级页面/京东-京东快车明细-月.cpt]]></ReportletName>
<Attr>
<DialogAttr class="com.fr.js.ReportletHyperlinkDialogAttr">
<O>
<![CDATA[]]></O>
<Location center="true"/>
</DialogAttr>
</Attr>
</JavaScript>
</JavaScript>
</NameJavaScript>
</NameJavaScriptGroup>
<HighlightList>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性1]]></Name>
<Condition class="com.fr.data.condition.ListCondition">
<JoinCondition join="1">
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[$shopbh = '102001']]></Formula>
</Condition>
</JoinCondition>
<JoinCondition join="1">
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[$shopbh = '102002']]></Formula>
</Condition>
</JoinCondition>
<JoinCondition join="1">
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[$shopbh = '102003']]></Formula>
</Condition>
</JoinCondition>
<JoinCondition join="1">
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[$shopbh = '102008']]></Formula>
</Condition>
</JoinCondition>
<JoinCondition join="1">
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[$shopbh = '102009']]></Formula>
</Condition>
</JoinCondition>
<JoinCondition join="1">
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[$shopbh = '102010']]></Formula>
</Condition>
</JoinCondition>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.HyperlinkHighlightAction">
<NameJavaScriptGroup>
<NameJavaScript name="直通车">
<JavaScript class="com.fr.js.ReportletHyperlink">
<JavaScript class="com.fr.js.ReportletHyperlink">
<Parameters>
<Parameter>
<Attributes name="shopbh"/>
<O t="XMLable" class="com.fr.base.Formula">
<Attributes>
<![CDATA[=$shopbh]]></Attributes>
</O>
</Parameter>
<Parameter>
<Attributes name="jssj"/>
<O t="XMLable" class="com.fr.base.Formula">
<Attributes>
<![CDATA[=$jssj]]></Attributes>
</O>
</Parameter>
</Parameters>
<TargetFrame>
<![CDATA[_blank_fs]]></TargetFrame>
<Features width="600" height="400"/>
<ReportletName showPI="true">
<![CDATA[/三级页面/淘系-直通车1-月.cpt]]></ReportletName>
<Attr>
<DialogAttr class="com.fr.js.ReportletHyperlinkDialogAttr">
<O>
<![CDATA[]]></O>
<Location center="true"/>
</DialogAttr>
</Attr>
</JavaScript>
</JavaScript>
</NameJavaScript>
</NameJavaScriptGroup>
</HighlightAction>
</Highlight>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性2]]></Name>
<Condition class="com.fr.data.condition.ListCondition">
<JoinCondition join="1">
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[$shopbh = '102004']]></Formula>
</Condition>
</JoinCondition>
<JoinCondition join="1">
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[$shopbh = '102005']]></Formula>
</Condition>
</JoinCondition>
<JoinCondition join="1">
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[$shopbh = '102006']]></Formula>
</Condition>
</JoinCondition>
<JoinCondition join="1">
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[$shopbh = '102007']]></Formula>
</Condition>
</JoinCondition>
<JoinCondition join="1">
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[$shopbh = '102011']]></Formula>
</Condition>
</JoinCondition>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.HyperlinkHighlightAction">
<NameJavaScriptGroup>
<NameJavaScript name="直通车">
<JavaScript class="com.fr.js.ReportletHyperlink">
<JavaScript class="com.fr.js.ReportletHyperlink">
<Parameters>
<Parameter>
<Attributes name="shopbh"/>
<O t="XMLable" class="com.fr.base.Formula">
<Attributes>
<![CDATA[=$shopbh]]></Attributes>
</O>
</Parameter>
<Parameter>
<Attributes name="jssj"/>
<O t="XMLable" class="com.fr.base.Formula">
<Attributes>
<![CDATA[=$jssj]]></Attributes>
</O>
</Parameter>
</Parameters>
<TargetFrame>
<![CDATA[_blank_fs]]></TargetFrame>
<Features width="600" height="400"/>
<ReportletName showPI="true">
<![CDATA[/三级页面/淘系-直通车2-月.cpt]]></ReportletName>
<Attr>
<DialogAttr class="com.fr.js.ReportletHyperlinkDialogAttr">
<O>
<![CDATA[]]></O>
<Location center="true"/>
</DialogAttr>
</Attr>
</JavaScript>
</JavaScript>
</NameJavaScript>
</NameJavaScriptGroup>
</HighlightAction>
</Highlight>
</HighlightList>
<Expand/>
</C>
<C c="3" r="0" cs="3" s="1">
<O>
<![CDATA[多多场景/超级推荐/京东展位]]></O>
<PrivilegeControl/>
<NameJavaScriptGroup>
<NameJavaScript name="京东展位">
<JavaScript class="com.fr.js.ReportletHyperlink">
<JavaScript class="com.fr.js.ReportletHyperlink">
<Parameters>
<Parameter>
<Attributes name="shopbh"/>
<O t="XMLable" class="com.fr.base.Formula">
<Attributes>
<![CDATA[=$shopbh]]></Attributes>
</O>
</Parameter>
<Parameter>
<Attributes name="jssj"/>
<O t="XMLable" class="com.fr.base.Formula">
<Attributes>
<![CDATA[=$jssj]]></Attributes>
</O>
</Parameter>
</Parameters>
<TargetFrame>
<![CDATA[_blank_fs]]></TargetFrame>
<Features width="600" height="400"/>
<ReportletName showPI="true">
<![CDATA[/三级页面/京东-京东展位明细-月.cpt]]></ReportletName>
<Attr>
<DialogAttr class="com.fr.js.ReportletHyperlinkDialogAttr">
<O>
<![CDATA[]]></O>
<Location center="true"/>
</DialogAttr>
</Attr>
</JavaScript>
</JavaScript>
</NameJavaScript>
</NameJavaScriptGroup>
<Expand/>
</C>
<C c="6" r="0" cs="3" s="2">
<O>
<![CDATA[放心推/钻石展位/京东直投]]></O>
<PrivilegeControl/>
<NameJavaScriptGroup>
<NameJavaScript name="京东直投">
<JavaScript class="com.fr.js.ReportletHyperlink">
<JavaScript class="com.fr.js.ReportletHyperlink">
<Parameters>
<Parameter>
<Attributes name="shopbh"/>
<O t="XMLable" class="com.fr.base.Formula">
<Attributes>
<![CDATA[=$shopbh]]></Attributes>
</O>
</Parameter>
<Parameter>
<Attributes name="jssj"/>
<O t="XMLable" class="com.fr.base.Formula">
<Attributes>
<![CDATA[=$jssj]]></Attributes>
</O>
</Parameter>
</Parameters>
<TargetFrame>
<![CDATA[_blank_fs]]></TargetFrame>
<Features width="600" height="400"/>
<ReportletName showPI="true">
<![CDATA[/三级页面/京东-京东直投明细-月.cpt]]></ReportletName>
<Attr>
<DialogAttr class="com.fr.js.ReportletHyperlinkDialogAttr">
<O>
<![CDATA[]]></O>
<Location center="true"/>
</DialogAttr>
</Attr>
</JavaScript>
</JavaScript>
</NameJavaScript>
</NameJavaScriptGroup>
<Expand/>
</C>
<C c="9" r="0" cs="3" s="2">
<O>
<![CDATA[淘客推广]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="12" r="0" cs="3" s="2">
<O>
<![CDATA[AI推广]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="15" r="0" cs="3" s="2">
<O>
<![CDATA[品销宝]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="0" r="1" cs="3" s="3">
<O t="DSColumn">
<Attributes dsName="指标1-京东快车" columnName="dqsj"/>
<Condition class="com.fr.data.condition.ListCondition"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Result>
<![CDATA[$$$]]></Result>
<Parameters/>
</O>
<PrivilegeControl/>
<NameJavaScriptGroup>
<NameJavaScript name="京东快车">
<JavaScript class="com.fr.js.ReportletHyperlink">
<JavaScript class="com.fr.js.ReportletHyperlink">
<Parameters>
<Parameter>
<Attributes name="shopbh"/>
<O t="XMLable" class="com.fr.base.Formula">
<Attributes>
<![CDATA[=$shopbh]]></Attributes>
</O>
</Parameter>
<Parameter>
<Attributes name="jssj"/>
<O t="XMLable" class="com.fr.base.Formula">
<Attributes>
<![CDATA[=$jssj]]></Attributes>
</O>
</Parameter>
</Parameters>
<TargetFrame>
<![CDATA[_blank_fs]]></TargetFrame>
<Features width="600" height="400"/>
<ReportletName showPI="true">
<![CDATA[/三级页面/京东-京东快车明细-月.cpt]]></ReportletName>
<Attr>
<DialogAttr class="com.fr.js.ReportletHyperlinkDialogAttr">
<O>
<![CDATA[]]></O>
<Location center="true"/>
</DialogAttr>
</Attr>
</JavaScript>
</JavaScript>
</NameJavaScript>
</NameJavaScriptGroup>
<HighlightList>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性1]]></Name>
<Condition class="com.fr.data.condition.ListCondition">
<JoinCondition join="1">
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[$shopbh = '102001']]></Formula>
</Condition>
</JoinCondition>
<JoinCondition join="1">
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[$shopbh = '102002']]></Formula>
</Condition>
</JoinCondition>
<JoinCondition join="1">
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[$shopbh = '102003']]></Formula>
</Condition>
</JoinCondition>
<JoinCondition join="1">
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[$shopbh = '102008']]></Formula>
</Condition>
</JoinCondition>
<JoinCondition join="1">
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[$shopbh = '102009']]></Formula>
</Condition>
</JoinCondition>
<JoinCondition join="1">
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[$shopbh = '102010']]></Formula>
</Condition>
</JoinCondition>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.HyperlinkHighlightAction">
<NameJavaScriptGroup>
<NameJavaScript name="直通车">
<JavaScript class="com.fr.js.ReportletHyperlink">
<JavaScript class="com.fr.js.ReportletHyperlink">
<Parameters>
<Parameter>
<Attributes name="shopbh"/>
<O t="XMLable" class="com.fr.base.Formula">
<Attributes>
<![CDATA[=$shopbh]]></Attributes>
</O>
</Parameter>
<Parameter>
<Attributes name="jssj"/>
<O t="XMLable" class="com.fr.base.Formula">
<Attributes>
<![CDATA[=$jssj]]></Attributes>
</O>
</Parameter>
</Parameters>
<TargetFrame>
<![CDATA[_blank_fs]]></TargetFrame>
<Features width="600" height="400"/>
<ReportletName showPI="true">
<![CDATA[/三级页面/淘系-直通车1-月.cpt]]></ReportletName>
<Attr>
<DialogAttr class="com.fr.js.ReportletHyperlinkDialogAttr">
<O>
<![CDATA[]]></O>
<Location center="true"/>
</DialogAttr>
</Attr>
</JavaScript>
</JavaScript>
</NameJavaScript>
</NameJavaScriptGroup>
</HighlightAction>
</Highlight>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性2]]></Name>
<Condition class="com.fr.data.condition.ListCondition">
<JoinCondition join="1">
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[$shopbh = '102004']]></Formula>
</Condition>
</JoinCondition>
<JoinCondition join="1">
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[$shopbh = '102005']]></Formula>
</Condition>
</JoinCondition>
<JoinCondition join="1">
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[$shopbh = '102006']]></Formula>
</Condition>
</JoinCondition>
<JoinCondition join="1">
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[$shopbh = '102007']]></Formula>
</Condition>
</JoinCondition>
<JoinCondition join="1">
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[$shopbh = '102011']]></Formula>
</Condition>
</JoinCondition>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.HyperlinkHighlightAction">
<NameJavaScriptGroup>
<NameJavaScript name="直通车">
<JavaScript class="com.fr.js.ReportletHyperlink">
<JavaScript class="com.fr.js.ReportletHyperlink">
<Parameters>
<Parameter>
<Attributes name="shopbh"/>
<O t="XMLable" class="com.fr.base.Formula">
<Attributes>
<![CDATA[=$shopbh]]></Attributes>
</O>
</Parameter>
<Parameter>
<Attributes name="jssj"/>
<O t="XMLable" class="com.fr.base.Formula">
<Attributes>
<![CDATA[=$jssj]]></Attributes>
</O>
</Parameter>
</Parameters>
<TargetFrame>
<![CDATA[_blank_fs]]></TargetFrame>
<Features width="600" height="400"/>
<ReportletName showPI="true">
<![CDATA[/三级页面/淘系-直通车2-月.cpt]]></ReportletName>
<Attr>
<DialogAttr class="com.fr.js.ReportletHyperlinkDialogAttr">
<O>
<![CDATA[]]></O>
<Location center="true"/>
</DialogAttr>
</Attr>
</JavaScript>
</JavaScript>
</NameJavaScript>
</NameJavaScriptGroup>
</HighlightAction>
</Highlight>
</HighlightList>
<Expand dir="0"/>
</C>
<C c="3" r="1" cs="3" s="4">
<O t="DSColumn">
<Attributes dsName="指标2-京东展位" columnName="dqsj"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<NameJavaScriptGroup>
<NameJavaScript name="京东展位">
<JavaScript class="com.fr.js.ReportletHyperlink">
<JavaScript class="com.fr.js.ReportletHyperlink">
<Parameters>
<Parameter>
<Attributes name="shopbh"/>
<O t="XMLable" class="com.fr.base.Formula">
<Attributes>
<![CDATA[=$shopbh]]></Attributes>
</O>
</Parameter>
<Parameter>
<Attributes name="jssj"/>
<O t="XMLable" class="com.fr.base.Formula">
<Attributes>
<![CDATA[=$jssj]]></Attributes>
</O>
</Parameter>
</Parameters>
<TargetFrame>
<![CDATA[_blank_fs]]></TargetFrame>
<Features width="600" height="400"/>
<ReportletName showPI="true">
<![CDATA[/三级页面/京东-京东展位明细-月.cpt]]></ReportletName>
<Attr>
<DialogAttr class="com.fr.js.ReportletHyperlinkDialogAttr">
<O>
<![CDATA[]]></O>
<Location center="true"/>
</DialogAttr>
</Attr>
</JavaScript>
</JavaScript>
</NameJavaScript>
</NameJavaScriptGroup>
<Expand dir="0"/>
</C>
<C c="6" r="1" cs="3" s="5">
<O t="DSColumn">
<Attributes dsName="指标3-京东直投" columnName="dqsj"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<NameJavaScriptGroup>
<NameJavaScript name="京东直投">
<JavaScript class="com.fr.js.ReportletHyperlink">
<JavaScript class="com.fr.js.ReportletHyperlink">
<Parameters>
<Parameter>
<Attributes name="shopbh"/>
<O t="XMLable" class="com.fr.base.Formula">
<Attributes>
<![CDATA[=$shopbh]]></Attributes>
</O>
</Parameter>
<Parameter>
<Attributes name="jssj"/>
<O t="XMLable" class="com.fr.base.Formula">
<Attributes>
<![CDATA[=$jssj]]></Attributes>
</O>
</Parameter>
</Parameters>
<TargetFrame>
<![CDATA[_blank_fs]]></TargetFrame>
<Features width="600" height="400"/>
<ReportletName showPI="true">
<![CDATA[/三级页面/京东-京东直投明细-月.cpt]]></ReportletName>
<Attr>
<DialogAttr class="com.fr.js.ReportletHyperlinkDialogAttr">
<O>
<![CDATA[]]></O>
<Location center="true"/>
</DialogAttr>
</Attr>
</JavaScript>
</JavaScript>
</NameJavaScript>
</NameJavaScriptGroup>
<Expand dir="0"/>
</C>
<C c="9" r="1" cs="3" s="5">
<O t="DSColumn">
<Attributes dsName="指标4-淘客推广" columnName="dqsj"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="12" r="1" cs="3" s="5">
<O t="DSColumn">
<Attributes dsName="指标5-AI推广" columnName="dqsj"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="15" r="1" cs="3" s="5">
<O t="DSColumn">
<Attributes dsName="指标6-品销宝" columnName="dqsj"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="0" r="2" s="6">
<O>
<![CDATA[较上1日]]></O>
<PrivilegeControl/>
<NameJavaScriptGroup>
<NameJavaScript name="京东快车">
<JavaScript class="com.fr.js.ReportletHyperlink">
<JavaScript class="com.fr.js.ReportletHyperlink">
<Parameters>
<Parameter>
<Attributes name="shopbh"/>
<O t="XMLable" class="com.fr.base.Formula">
<Attributes>
<![CDATA[=$shopbh]]></Attributes>
</O>
</Parameter>
<Parameter>
<Attributes name="jssj"/>
<O t="XMLable" class="com.fr.base.Formula">
<Attributes>
<![CDATA[=$jssj]]></Attributes>
</O>
</Parameter>
</Parameters>
<TargetFrame>
<![CDATA[_blank_fs]]></TargetFrame>
<Features width="600" height="400"/>
<ReportletName showPI="true">
<![CDATA[/三级页面/京东-京东快车明细-月.cpt]]></ReportletName>
<Attr>
<DialogAttr class="com.fr.js.ReportletHyperlinkDialogAttr">
<O>
<![CDATA[]]></O>
<Location center="true"/>
</DialogAttr>
</Attr>
</JavaScript>
</JavaScript>
</NameJavaScript>
</NameJavaScriptGroup>
<HighlightList>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性1]]></Name>
<Condition class="com.fr.data.condition.ListCondition">
<JoinCondition join="1">
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[$shopbh = '102001']]></Formula>
</Condition>
</JoinCondition>
<JoinCondition join="1">
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[$shopbh = '102002']]></Formula>
</Condition>
</JoinCondition>
<JoinCondition join="1">
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[$shopbh = '102003']]></Formula>
</Condition>
</JoinCondition>
<JoinCondition join="1">
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[$shopbh = '102008']]></Formula>
</Condition>
</JoinCondition>
<JoinCondition join="1">
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[$shopbh = '102009']]></Formula>
</Condition>
</JoinCondition>
<JoinCondition join="1">
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[$shopbh = '102010']]></Formula>
</Condition>
</JoinCondition>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.HyperlinkHighlightAction">
<NameJavaScriptGroup>
<NameJavaScript name="直通车">
<JavaScript class="com.fr.js.ReportletHyperlink">
<JavaScript class="com.fr.js.ReportletHyperlink">
<Parameters>
<Parameter>
<Attributes name="shopbh"/>
<O t="XMLable" class="com.fr.base.Formula">
<Attributes>
<![CDATA[=$shopbh]]></Attributes>
</O>
</Parameter>
<Parameter>
<Attributes name="jssj"/>
<O t="XMLable" class="com.fr.base.Formula">
<Attributes>
<![CDATA[=$jssj]]></Attributes>
</O>
</Parameter>
</Parameters>
<TargetFrame>
<![CDATA[_blank_fs]]></TargetFrame>
<Features width="600" height="400"/>
<ReportletName showPI="true">
<![CDATA[/三级页面/淘系-直通车1-月.cpt]]></ReportletName>
<Attr>
<DialogAttr class="com.fr.js.ReportletHyperlinkDialogAttr">
<O>
<![CDATA[]]></O>
<Location center="true"/>
</DialogAttr>
</Attr>
</JavaScript>
</JavaScript>
</NameJavaScript>
</NameJavaScriptGroup>
</HighlightAction>
</Highlight>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性2]]></Name>
<Condition class="com.fr.data.condition.ListCondition">
<JoinCondition join="1">
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[$shopbh = '102004']]></Formula>
</Condition>
</JoinCondition>
<JoinCondition join="1">
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[$shopbh = '102005']]></Formula>
</Condition>
</JoinCondition>
<JoinCondition join="1">
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[$shopbh = '102006']]></Formula>
</Condition>
</JoinCondition>
<JoinCondition join="1">
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[$shopbh = '102007']]></Formula>
</Condition>
</JoinCondition>
<JoinCondition join="1">
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[$shopbh = '102011']]></Formula>
</Condition>
</JoinCondition>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.HyperlinkHighlightAction">
<NameJavaScriptGroup>
<NameJavaScript name="直通车">
<JavaScript class="com.fr.js.ReportletHyperlink">
<JavaScript class="com.fr.js.ReportletHyperlink">
<Parameters>
<Parameter>
<Attributes name="shopbh"/>
<O t="XMLable" class="com.fr.base.Formula">
<Attributes>
<![CDATA[=$shopbh]]></Attributes>
</O>
</Parameter>
<Parameter>
<Attributes name="jssj"/>
<O t="XMLable" class="com.fr.base.Formula">
<Attributes>
<![CDATA[=$jssj]]></Attributes>
</O>
</Parameter>
</Parameters>
<TargetFrame>
<![CDATA[_blank_fs]]></TargetFrame>
<Features width="600" height="400"/>
<ReportletName showPI="true">
<![CDATA[/三级页面/淘系-直通车2-月.cpt]]></ReportletName>
<Attr>
<DialogAttr class="com.fr.js.ReportletHyperlinkDialogAttr">
<O>
<![CDATA[]]></O>
<Location center="true"/>
</DialogAttr>
</Attr>
</JavaScript>
</JavaScript>
</NameJavaScript>
</NameJavaScriptGroup>
</HighlightAction>
</Highlight>
</HighlightList>
<Expand/>
</C>
<C c="1" r="2" s="7">
<O t="DSColumn">
<Attributes dsName="指标1-京东快车" columnName="zzl"/>
<Condition class="com.fr.data.condition.ListCondition"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Result>
<![CDATA[$$$]]></Result>
<Parameters/>
</O>
<PrivilegeControl/>
<NameJavaScriptGroup>
<NameJavaScript name="京东快车">
<JavaScript class="com.fr.js.ReportletHyperlink">
<JavaScript class="com.fr.js.ReportletHyperlink">
<Parameters>
<Parameter>
<Attributes name="shopbh"/>
<O t="XMLable" class="com.fr.base.Formula">
<Attributes>
<![CDATA[=$shopbh]]></Attributes>
</O>
</Parameter>
<Parameter>
<Attributes name="jssj"/>
<O t="XMLable" class="com.fr.base.Formula">
<Attributes>
<![CDATA[=$jssj]]></Attributes>
</O>
</Parameter>
</Parameters>
<TargetFrame>
<![CDATA[_blank_fs]]></TargetFrame>
<Features width="600" height="400"/>
<ReportletName showPI="true">
<![CDATA[/三级页面/京东-京东快车明细-月.cpt]]></ReportletName>
<Attr>
<DialogAttr class="com.fr.js.ReportletHyperlinkDialogAttr">
<O>
<![CDATA[]]></O>
<Location center="true"/>
</DialogAttr>
</Attr>
</JavaScript>
</JavaScript>
</NameJavaScript>
</NameJavaScriptGroup>
<HighlightList>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性1]]></Name>
<Condition class="com.fr.data.condition.ObjectCondition">
<Compare op="3">
<O>
<![CDATA[0]]></O>
</Compare>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.FRFontHighlightAction">
<FRFont name="SimSun" style="0" size="96" foreground="-65536"/>
</HighlightAction>
</Highlight>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性2]]></Name>
<Condition class="com.fr.data.condition.ObjectCondition">
<Compare op="4">
<O>
<![CDATA[0]]></O>
</Compare>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.FRFontHighlightAction">
<FRFont name="SimSun" style="0" size="96" foreground="-16744448"/>
</HighlightAction>
</Highlight>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性3]]></Name>
<Condition class="com.fr.data.condition.ListCondition">
<JoinCondition join="0">
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[$shopbh = '102001']]></Formula>
</Condition>
</JoinCondition>
<JoinCondition join="1">
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[$shopbh = '102002']]></Formula>
</Condition>
</JoinCondition>
<JoinCondition join="1">
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[$shopbh = '102003']]></Formula>
</Condition>
</JoinCondition>
<JoinCondition join="1">
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[$shopbh = '102008']]></Formula>
</Condition>
</JoinCondition>
<JoinCondition join="1">
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[$shopbh = '102009']]></Formula>
</Condition>
</JoinCondition>
<JoinCondition join="1">
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[$shopbh = '102010']]></Formula>
</Condition>
</JoinCondition>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.HyperlinkHighlightAction">
<NameJavaScriptGroup>
<NameJavaScript name="直通车">
<JavaScript class="com.fr.js.ReportletHyperlink">
<JavaScript class="com.fr.js.ReportletHyperlink">
<Parameters>
<Parameter>
<Attributes name="shopbh"/>
<O t="XMLable" class="com.fr.base.Formula">
<Attributes>
<![CDATA[=$shopbh]]></Attributes>
</O>
</Parameter>
<Parameter>
<Attributes name="jssj"/>
<O t="XMLable" class="com.fr.base.Formula">
<Attributes>
<![CDATA[=$jssj]]></Attributes>
</O>
</Parameter>
</Parameters>
<TargetFrame>
<![CDATA[_blank_fs]]></TargetFrame>
<Features width="600" height="400"/>
<ReportletName showPI="true">
<![CDATA[/三级页面/淘系-直通车1-月.cpt]]></ReportletName>
<Attr>
<DialogAttr class="com.fr.js.ReportletHyperlinkDialogAttr">
<O>
<![CDATA[]]></O>
<Location center="true"/>
</DialogAttr>
</Attr>
</JavaScript>
</JavaScript>
</NameJavaScript>
</NameJavaScriptGroup>
</HighlightAction>
</Highlight>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性4]]></Name>
<Condition class="com.fr.data.condition.ListCondition">
<JoinCondition join="0">
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[$shopbh = '102004']]></Formula>
</Condition>
</JoinCondition>
<JoinCondition join="0">
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[$shopbh = '102005']]></Formula>
</Condition>
</JoinCondition>
<JoinCondition join="0">
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[$shopbh = '102006']]></Formula>
</Condition>
</JoinCondition>
<JoinCondition join="0">
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[$shopbh = '102007']]></Formula>
</Condition>
</JoinCondition>
<JoinCondition join="0">
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[$shopbh = '102011']]></Formula>
</Condition>
</JoinCondition>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.HyperlinkHighlightAction">
<NameJavaScriptGroup>
<NameJavaScript name="直通车">
<JavaScript class="com.fr.js.ReportletHyperlink">
<JavaScript class="com.fr.js.ReportletHyperlink">
<Parameters>
<Parameter>
<Attributes name="shopbh"/>
<O t="XMLable" class="com.fr.base.Formula">
<Attributes>
<![CDATA[=$shopbh]]></Attributes>
</O>
</Parameter>
<Parameter>
<Attributes name="jssj"/>
<O t="XMLable" class="com.fr.base.Formula">
<Attributes>
<![CDATA[=$jssj]]></Attributes>
</O>
</Parameter>
</Parameters>
<TargetFrame>
<![CDATA[_blank_fs]]></TargetFrame>
<Features width="600" height="400"/>
<ReportletName showPI="true">
<![CDATA[/三级页面/淘系-直通车2-月.cpt]]></ReportletName>
<Attr>
<DialogAttr class="com.fr.js.ReportletHyperlinkDialogAttr">
<O>
<![CDATA[]]></O>
<Location center="true"/>
</DialogAttr>
</Attr>
</JavaScript>
</JavaScript>
</NameJavaScript>
</NameJavaScriptGroup>
</HighlightAction>
</Highlight>
</HighlightList>
<Expand dir="0"/>
</C>
<C c="2" r="2" s="8">
<O t="DSColumn">
<Attributes dsName="指标1-京东快车" columnName="zzl"/>
<Condition class="com.fr.data.condition.ListCondition"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Result>
<![CDATA[$$$]]></Result>
<Parameters/>
</O>
<PrivilegeControl/>
<NameJavaScriptGroup>
<NameJavaScript name="京东快车">
<JavaScript class="com.fr.js.ReportletHyperlink">
<JavaScript class="com.fr.js.ReportletHyperlink">
<Parameters>
<Parameter>
<Attributes name="shopbh"/>
<O t="XMLable" class="com.fr.base.Formula">
<Attributes>
<![CDATA[=$shopbh]]></Attributes>
</O>
</Parameter>
<Parameter>
<Attributes name="jssj"/>
<O t="XMLable" class="com.fr.base.Formula">
<Attributes>
<![CDATA[=$jssj]]></Attributes>
</O>
</Parameter>
</Parameters>
<TargetFrame>
<![CDATA[_blank_fs]]></TargetFrame>
<Features width="600" height="400"/>
<ReportletName showPI="true">
<![CDATA[/三级页面/京东-京东快车明细-月.cpt]]></ReportletName>
<Attr>
<DialogAttr class="com.fr.js.ReportletHyperlinkDialogAttr">
<O>
<![CDATA[]]></O>
<Location center="true"/>
</DialogAttr>
</Attr>
</JavaScript>
</JavaScript>
</NameJavaScript>
</NameJavaScriptGroup>
<HighlightList>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性1]]></Name>
<Condition class="com.fr.data.condition.ObjectCondition">
<Compare op="3">
<O>
<![CDATA[0]]></O>
</Compare>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.FRFontHighlightAction">
<FRFont name="SimSun" style="0" size="96" foreground="-65536"/>
</HighlightAction>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.ValueHighlightAction">
<O>
<![CDATA[↑]]></O>
</HighlightAction>
</Highlight>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性2]]></Name>
<Condition class="com.fr.data.condition.ObjectCondition">
<Compare op="4">
<O>
<![CDATA[0]]></O>
</Compare>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.FRFontHighlightAction">
<FRFont name="SimSun" style="0" size="96" foreground="-16744448"/>
</HighlightAction>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.ValueHighlightAction">
<O>
<![CDATA[↓]]></O>
</HighlightAction>
</Highlight>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性3]]></Name>
<Condition class="com.fr.data.condition.ListCondition">
<JoinCondition join="0">
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[$shopbh = '102001']]></Formula>
</Condition>
</JoinCondition>
<JoinCondition join="1">
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[$shopbh = '102002']]></Formula>
</Condition>
</JoinCondition>
<JoinCondition join="1">
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[$shopbh = '102003']]></Formula>
</Condition>
</JoinCondition>
<JoinCondition join="1">
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[$shopbh = '102008']]></Formula>
</Condition>
</JoinCondition>
<JoinCondition join="1">
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[$shopbh = '102009']]></Formula>
</Condition>
</JoinCondition>
<JoinCondition join="1">
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[$shopbh = '102010']]></Formula>
</Condition>
</JoinCondition>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.HyperlinkHighlightAction">
<NameJavaScriptGroup>
<NameJavaScript name="直通车">
<JavaScript class="com.fr.js.ReportletHyperlink">
<JavaScript class="com.fr.js.ReportletHyperlink">
<Parameters>
<Parameter>
<Attributes name="shopbh"/>
<O t="XMLable" class="com.fr.base.Formula">
<Attributes>
<![CDATA[=$shopbh]]></Attributes>
</O>
</Parameter>
<Parameter>
<Attributes name="jssj"/>
<O t="XMLable" class="com.fr.base.Formula">
<Attributes>
<![CDATA[=$jssj]]></Attributes>
</O>
</Parameter>
</Parameters>
<TargetFrame>
<![CDATA[_blank_fs]]></TargetFrame>
<Features width="600" height="400"/>
<ReportletName showPI="true">
<![CDATA[/三级页面/淘系-直通车1-月.cpt]]></ReportletName>
<Attr>
<DialogAttr class="com.fr.js.ReportletHyperlinkDialogAttr">
<O>
<![CDATA[]]></O>
<Location center="true"/>
</DialogAttr>
</Attr>
</JavaScript>
</JavaScript>
</NameJavaScript>
</NameJavaScriptGroup>
</HighlightAction>
</Highlight>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性4]]></Name>
<Condition class="com.fr.data.condition.ListCondition">
<JoinCondition join="0">
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[$shopbh = '102004']]></Formula>
</Condition>
</JoinCondition>
<JoinCondition join="0">
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[$shopbh = '102005']]></Formula>
</Condition>
</JoinCondition>
<JoinCondition join="0">
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[$shopbh = '102006']]></Formula>
</Condition>
</JoinCondition>
<JoinCondition join="0">
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[$shopbh = '102007']]></Formula>
</Condition>
</JoinCondition>
<JoinCondition join="0">
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[$shopbh = '102011']]></Formula>
</Condition>
</JoinCondition>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.HyperlinkHighlightAction">
<NameJavaScriptGroup>
<NameJavaScript name="直通车">
<JavaScript class="com.fr.js.ReportletHyperlink">
<JavaScript class="com.fr.js.ReportletHyperlink">
<Parameters>
<Parameter>
<Attributes name="shopbh"/>
<O t="XMLable" class="com.fr.base.Formula">
<Attributes>
<![CDATA[=$shopbh]]></Attributes>
</O>
</Parameter>
<Parameter>
<Attributes name="jssj"/>
<O t="XMLable" class="com.fr.base.Formula">
<Attributes>
<![CDATA[=$jssj]]></Attributes>
</O>
</Parameter>
</Parameters>
<TargetFrame>
<![CDATA[_blank_fs]]></TargetFrame>
<Features width="600" height="400"/>
<ReportletName showPI="true">
<![CDATA[/三级页面/淘系-直通车2-月.cpt]]></ReportletName>
<Attr>
<DialogAttr class="com.fr.js.ReportletHyperlinkDialogAttr">
<O>
<![CDATA[]]></O>
<Location center="true"/>
</DialogAttr>
</Attr>
</JavaScript>
</JavaScript>
</NameJavaScript>
</NameJavaScriptGroup>
</HighlightAction>
</Highlight>
</HighlightList>
<Expand dir="0"/>
</C>
<C c="3" r="2" s="9">
<O>
<![CDATA[较上1日]]></O>
<PrivilegeControl/>
<NameJavaScriptGroup>
<NameJavaScript name="京东展位">
<JavaScript class="com.fr.js.ReportletHyperlink">
<JavaScript class="com.fr.js.ReportletHyperlink">
<Parameters>
<Parameter>
<Attributes name="shopbh"/>
<O t="XMLable" class="com.fr.base.Formula">
<Attributes>
<![CDATA[=$shopbh]]></Attributes>
</O>
</Parameter>
<Parameter>
<Attributes name="jssj"/>
<O t="XMLable" class="com.fr.base.Formula">
<Attributes>
<![CDATA[=$jssj]]></Attributes>
</O>
</Parameter>
</Parameters>
<TargetFrame>
<![CDATA[_blank_fs]]></TargetFrame>
<Features width="600" height="400"/>
<ReportletName showPI="true">
<![CDATA[/三级页面/京东-京东展位明细-月.cpt]]></ReportletName>
<Attr>
<DialogAttr class="com.fr.js.ReportletHyperlinkDialogAttr">
<O>
<![CDATA[]]></O>
<Location center="true"/>
</DialogAttr>
</Attr>
</JavaScript>
</JavaScript>
</NameJavaScript>
</NameJavaScriptGroup>
<Expand/>
</C>
<C c="4" r="2" s="7">
<O t="DSColumn">
<Attributes dsName="指标2-京东展位" columnName="zzl"/>
<Condition class="com.fr.data.condition.ListCondition"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Result>
<![CDATA[$$$]]></Result>
<Parameters/>
</O>
<PrivilegeControl/>
<NameJavaScriptGroup>
<NameJavaScript name="京东展位">
<JavaScript class="com.fr.js.ReportletHyperlink">
<JavaScript class="com.fr.js.ReportletHyperlink">
<Parameters>
<Parameter>
<Attributes name="shopbh"/>
<O t="XMLable" class="com.fr.base.Formula">
<Attributes>
<![CDATA[=$shopbh]]></Attributes>
</O>
</Parameter>
<Parameter>
<Attributes name="jssj"/>
<O t="XMLable" class="com.fr.base.Formula">
<Attributes>
<![CDATA[=$jssj]]></Attributes>
</O>
</Parameter>
</Parameters>
<TargetFrame>
<![CDATA[_blank_fs]]></TargetFrame>
<Features width="600" height="400"/>
<ReportletName showPI="true">
<![CDATA[/三级页面/京东-京东展位明细-月.cpt]]></ReportletName>
<Attr>
<DialogAttr class="com.fr.js.ReportletHyperlinkDialogAttr">
<O>
<![CDATA[]]></O>
<Location center="true"/>
</DialogAttr>
</Attr>
</JavaScript>
</JavaScript>
</NameJavaScript>
</NameJavaScriptGroup>
<HighlightList>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性1]]></Name>
<Condition class="com.fr.data.condition.ObjectCondition">
<Compare op="3">
<O>
<![CDATA[0]]></O>
</Compare>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.FRFontHighlightAction">
<FRFont name="SimSun" style="0" size="96" foreground="-65536"/>
</HighlightAction>
</Highlight>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性2]]></Name>
<Condition class="com.fr.data.condition.ObjectCondition">
<Compare op="4">
<O>
<![CDATA[0]]></O>
</Compare>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.FRFontHighlightAction">
<FRFont name="SimSun" style="0" size="96" foreground="-16744448"/>
</HighlightAction>
</Highlight>
</HighlightList>
<Expand dir="0"/>
</C>
<C c="5" r="2" s="8">
<O t="DSColumn">
<Attributes dsName="指标2-京东展位" columnName="zzl"/>
<Condition class="com.fr.data.condition.ListCondition"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Result>
<![CDATA[$$$]]></Result>
<Parameters/>
</O>
<PrivilegeControl/>
<NameJavaScriptGroup>
<NameJavaScript name="京东展位">
<JavaScript class="com.fr.js.ReportletHyperlink">
<JavaScript class="com.fr.js.ReportletHyperlink">
<Parameters>
<Parameter>
<Attributes name="shopbh"/>
<O t="XMLable" class="com.fr.base.Formula">
<Attributes>
<![CDATA[=$shopbh]]></Attributes>
</O>
</Parameter>
<Parameter>
<Attributes name="jssj"/>
<O t="XMLable" class="com.fr.base.Formula">
<Attributes>
<![CDATA[=$jssj]]></Attributes>
</O>
</Parameter>
</Parameters>
<TargetFrame>
<![CDATA[_blank_fs]]></TargetFrame>
<Features width="600" height="400"/>
<ReportletName showPI="true">
<![CDATA[/三级页面/京东-京东展位明细-月.cpt]]></ReportletName>
<Attr>
<DialogAttr class="com.fr.js.ReportletHyperlinkDialogAttr">
<O>
<![CDATA[]]></O>
<Location center="true"/>
</DialogAttr>
</Attr>
</JavaScript>
</JavaScript>
</NameJavaScript>
</NameJavaScriptGroup>
<HighlightList>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性1]]></Name>
<Condition class="com.fr.data.condition.ObjectCondition">
<Compare op="3">
<O>
<![CDATA[0]]></O>
</Compare>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.FRFontHighlightAction">
<FRFont name="SimSun" style="0" size="96" foreground="-65536"/>
</HighlightAction>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.ValueHighlightAction">
<O>
<![CDATA[↑]]></O>
</HighlightAction>
</Highlight>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性2]]></Name>
<Condition class="com.fr.data.condition.ObjectCondition">
<Compare op="4">
<O>
<![CDATA[0]]></O>
</Compare>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.FRFontHighlightAction">
<FRFont name="SimSun" style="0" size="96" foreground="-16744448"/>
</HighlightAction>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.ValueHighlightAction">
<O>
<![CDATA[↓]]></O>
</HighlightAction>
</Highlight>
</HighlightList>
<Expand dir="0"/>
</C>
<C c="6" r="2" s="10">
<O>
<![CDATA[较上1日]]></O>
<PrivilegeControl/>
<NameJavaScriptGroup>
<NameJavaScript name="京东直投">
<JavaScript class="com.fr.js.ReportletHyperlink">
<JavaScript class="com.fr.js.ReportletHyperlink">
<Parameters>
<Parameter>
<Attributes name="shopbh"/>
<O t="XMLable" class="com.fr.base.Formula">
<Attributes>
<![CDATA[=$shopbh]]></Attributes>
</O>
</Parameter>
<Parameter>
<Attributes name="jssj"/>
<O t="XMLable" class="com.fr.base.Formula">
<Attributes>
<![CDATA[=$jssj]]></Attributes>
</O>
</Parameter>
</Parameters>
<TargetFrame>
<![CDATA[_blank_fs]]></TargetFrame>
<Features width="600" height="400"/>
<ReportletName showPI="true">
<![CDATA[/三级页面/京东-京东直投明细-月.cpt]]></ReportletName>
<Attr>
<DialogAttr class="com.fr.js.ReportletHyperlinkDialogAttr">
<O>
<![CDATA[]]></O>
<Location center="true"/>
</DialogAttr>
</Attr>
</JavaScript>
</JavaScript>
</NameJavaScript>
</NameJavaScriptGroup>
<Expand/>
</C>
<C c="7" r="2" s="7">
<O t="DSColumn">
<Attributes dsName="指标3-京东直投" columnName="zzl"/>
<Condition class="com.fr.data.condition.ListCondition"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Result>
<![CDATA[$$$]]></Result>
<Parameters/>
</O>
<PrivilegeControl/>
<NameJavaScriptGroup>
<NameJavaScript name="京东直投">
<JavaScript class="com.fr.js.ReportletHyperlink">
<JavaScript class="com.fr.js.ReportletHyperlink">
<Parameters>
<Parameter>
<Attributes name="shopbh"/>
<O t="XMLable" class="com.fr.base.Formula">
<Attributes>
<![CDATA[=$shopbh]]></Attributes>
</O>
</Parameter>
<Parameter>
<Attributes name="jssj"/>
<O t="XMLable" class="com.fr.base.Formula">
<Attributes>
<![CDATA[=$jssj]]></Attributes>
</O>
</Parameter>
</Parameters>
<TargetFrame>
<![CDATA[_blank_fs]]></TargetFrame>
<Features width="600" height="400"/>
<ReportletName showPI="true">
<![CDATA[/三级页面/京东-京东直投明细-月.cpt]]></ReportletName>
<Attr>
<DialogAttr class="com.fr.js.ReportletHyperlinkDialogAttr">
<O>
<![CDATA[]]></O>
<Location center="true"/>
</DialogAttr>
</Attr>
</JavaScript>
</JavaScript>
</NameJavaScript>
</NameJavaScriptGroup>
<HighlightList>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性1]]></Name>
<Condition class="com.fr.data.condition.ObjectCondition">
<Compare op="3">
<O>
<![CDATA[0]]></O>
</Compare>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.FRFontHighlightAction">
<FRFont name="SimSun" style="0" size="96" foreground="-65536"/>
</HighlightAction>
</Highlight>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性2]]></Name>
<Condition class="com.fr.data.condition.ObjectCondition">
<Compare op="4">
<O>
<![CDATA[0]]></O>
</Compare>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.FRFontHighlightAction">
<FRFont name="SimSun" style="0" size="96" foreground="-16744448"/>
</HighlightAction>
</Highlight>
</HighlightList>
<Expand dir="0"/>
</C>
<C c="8" r="2" s="8">
<O t="DSColumn">
<Attributes dsName="指标3-京东直投" columnName="zzl"/>
<Condition class="com.fr.data.condition.ListCondition"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Result>
<![CDATA[$$$]]></Result>
<Parameters/>
</O>
<PrivilegeControl/>
<NameJavaScriptGroup>
<NameJavaScript name="京东直投">
<JavaScript class="com.fr.js.ReportletHyperlink">
<JavaScript class="com.fr.js.ReportletHyperlink">
<Parameters>
<Parameter>
<Attributes name="shopbh"/>
<O t="XMLable" class="com.fr.base.Formula">
<Attributes>
<![CDATA[=$shopbh]]></Attributes>
</O>
</Parameter>
<Parameter>
<Attributes name="jssj"/>
<O t="XMLable" class="com.fr.base.Formula">
<Attributes>
<![CDATA[=$jssj]]></Attributes>
</O>
</Parameter>
</Parameters>
<TargetFrame>
<![CDATA[_blank_fs]]></TargetFrame>
<Features width="600" height="400"/>
<ReportletName showPI="true">
<![CDATA[/三级页面/京东-京东直投明细-月.cpt]]></ReportletName>
<Attr>
<DialogAttr class="com.fr.js.ReportletHyperlinkDialogAttr">
<O>
<![CDATA[]]></O>
<Location center="true"/>
</DialogAttr>
</Attr>
</JavaScript>
</JavaScript>
</NameJavaScript>
</NameJavaScriptGroup>
<HighlightList>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性1]]></Name>
<Condition class="com.fr.data.condition.ObjectCondition">
<Compare op="3">
<O>
<![CDATA[0]]></O>
</Compare>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.FRFontHighlightAction">
<FRFont name="SimSun" style="0" size="96" foreground="-65536"/>
</HighlightAction>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.ValueHighlightAction">
<O>
<![CDATA[↑]]></O>
</HighlightAction>
</Highlight>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性2]]></Name>
<Condition class="com.fr.data.condition.ObjectCondition">
<Compare op="4">
<O>
<![CDATA[0]]></O>
</Compare>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.FRFontHighlightAction">
<FRFont name="SimSun" style="0" size="96" foreground="-16744448"/>
</HighlightAction>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.ValueHighlightAction">
<O>
<![CDATA[↓]]></O>
</HighlightAction>
</Highlight>
</HighlightList>
<Expand dir="0"/>
</C>
<C c="9" r="2" s="10">
<O>
<![CDATA[较上1日]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="10" r="2" s="7">
<O t="DSColumn">
<Attributes dsName="指标4-淘客推广" columnName="zzl"/>
<Condition class="com.fr.data.condition.ListCondition"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Result>
<![CDATA[$$$]]></Result>
<Parameters/>
</O>
<PrivilegeControl/>
<HighlightList>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性1]]></Name>
<Condition class="com.fr.data.condition.ObjectCondition">
<Compare op="3">
<O>
<![CDATA[0]]></O>
</Compare>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.FRFontHighlightAction">
<FRFont name="SimSun" style="0" size="96" foreground="-65536"/>
</HighlightAction>
</Highlight>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性2]]></Name>
<Condition class="com.fr.data.condition.ObjectCondition">
<Compare op="4">
<O>
<![CDATA[0]]></O>
</Compare>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.FRFontHighlightAction">
<FRFont name="SimSun" style="0" size="96" foreground="-16744448"/>
</HighlightAction>
</Highlight>
</HighlightList>
<Expand dir="0"/>
</C>
<C c="11" r="2" s="8">
<O t="DSColumn">
<Attributes dsName="指标4-淘客推广" columnName="zzl"/>
<Condition class="com.fr.data.condition.ListCondition"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Result>
<![CDATA[$$$]]></Result>
<Parameters/>
</O>
<PrivilegeControl/>
<HighlightList>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性1]]></Name>
<Condition class="com.fr.data.condition.ObjectCondition">
<Compare op="3">
<O>
<![CDATA[0]]></O>
</Compare>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.FRFontHighlightAction">
<FRFont name="SimSun" style="0" size="96" foreground="-65536"/>
</HighlightAction>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.ValueHighlightAction">
<O>
<![CDATA[↑]]></O>
</HighlightAction>
</Highlight>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性2]]></Name>
<Condition class="com.fr.data.condition.ObjectCondition">
<Compare op="4">
<O>
<![CDATA[0]]></O>
</Compare>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.FRFontHighlightAction">
<FRFont name="SimSun" style="0" size="96" foreground="-16744448"/>
</HighlightAction>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.ValueHighlightAction">
<O>
<![CDATA[↓]]></O>
</HighlightAction>
</Highlight>
</HighlightList>
<Expand dir="0"/>
</C>
<C c="12" r="2" s="10">
<O>
<![CDATA[较上1日]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="13" r="2" s="7">
<O t="DSColumn">
<Attributes dsName="指标5-AI推广" columnName="zzl"/>
<Condition class="com.fr.data.condition.ListCondition"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Result>
<![CDATA[$$$]]></Result>
<Parameters/>
</O>
<PrivilegeControl/>
<HighlightList>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性1]]></Name>
<Condition class="com.fr.data.condition.ObjectCondition">
<Compare op="3">
<O>
<![CDATA[0]]></O>
</Compare>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.FRFontHighlightAction">
<FRFont name="SimSun" style="0" size="96" foreground="-65536"/>
</HighlightAction>
</Highlight>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性2]]></Name>
<Condition class="com.fr.data.condition.ObjectCondition">
<Compare op="4">
<O>
<![CDATA[0]]></O>
</Compare>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.FRFontHighlightAction">
<FRFont name="SimSun" style="0" size="96" foreground="-16744448"/>
</HighlightAction>
</Highlight>
</HighlightList>
<Expand dir="0"/>
</C>
<C c="14" r="2" s="8">
<O t="DSColumn">
<Attributes dsName="指标5-AI推广" columnName="zzl"/>
<Condition class="com.fr.data.condition.ListCondition"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Result>
<![CDATA[$$$]]></Result>
<Parameters/>
</O>
<PrivilegeControl/>
<HighlightList>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性1]]></Name>
<Condition class="com.fr.data.condition.ObjectCondition">
<Compare op="3">
<O>
<![CDATA[0]]></O>
</Compare>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.FRFontHighlightAction">
<FRFont name="SimSun" style="0" size="96" foreground="-65536"/>
</HighlightAction>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.ValueHighlightAction">
<O>
<![CDATA[↑]]></O>
</HighlightAction>
</Highlight>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性2]]></Name>
<Condition class="com.fr.data.condition.ObjectCondition">
<Compare op="4">
<O>
<![CDATA[0]]></O>
</Compare>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.FRFontHighlightAction">
<FRFont name="SimSun" style="0" size="96" foreground="-16744448"/>
</HighlightAction>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.ValueHighlightAction">
<O>
<![CDATA[↓]]></O>
</HighlightAction>
</Highlight>
</HighlightList>
<Expand dir="0"/>
</C>
<C c="15" r="2" s="10">
<O>
<![CDATA[较上1日]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="16" r="2" s="7">
<O t="DSColumn">
<Attributes dsName="指标6-品销宝" columnName="zzl"/>
<Condition class="com.fr.data.condition.ListCondition"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Result>
<![CDATA[$$$]]></Result>
<Parameters/>
</O>
<PrivilegeControl/>
<HighlightList>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性1]]></Name>
<Condition class="com.fr.data.condition.ObjectCondition">
<Compare op="3">
<O>
<![CDATA[0]]></O>
</Compare>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.FRFontHighlightAction">
<FRFont name="SimSun" style="0" size="96" foreground="-65536"/>
</HighlightAction>
</Highlight>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性2]]></Name>
<Condition class="com.fr.data.condition.ObjectCondition">
<Compare op="4">
<O>
<![CDATA[0]]></O>
</Compare>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.FRFontHighlightAction">
<FRFont name="SimSun" style="0" size="96" foreground="-16744448"/>
</HighlightAction>
</Highlight>
</HighlightList>
<Expand dir="0"/>
</C>
<C c="17" r="2" s="8">
<O t="DSColumn">
<Attributes dsName="指标6-品销宝" columnName="zzl"/>
<Condition class="com.fr.data.condition.ListCondition"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Result>
<![CDATA[$$$]]></Result>
<Parameters/>
</O>
<PrivilegeControl/>
<HighlightList>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性1]]></Name>
<Condition class="com.fr.data.condition.ObjectCondition">
<Compare op="3">
<O>
<![CDATA[0]]></O>
</Compare>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.FRFontHighlightAction">
<FRFont name="SimSun" style="0" size="96" foreground="-65536"/>
</HighlightAction>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.ValueHighlightAction">
<O>
<![CDATA[↑]]></O>
</HighlightAction>
</Highlight>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性2]]></Name>
<Condition class="com.fr.data.condition.ObjectCondition">
<Compare op="4">
<O>
<![CDATA[0]]></O>
</Compare>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.FRFontHighlightAction">
<FRFont name="SimSun" style="0" size="96" foreground="-16744448"/>
</HighlightAction>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.ValueHighlightAction">
<O>
<![CDATA[↓]]></O>
</HighlightAction>
</Highlight>
</HighlightList>
<Expand dir="0"/>
</C>
</CellElementList>
<ReportAttrSet>
<ReportSettings headerHeight="0" footerHeight="0">
<PaperSetting/>
<Background name="ColorBackground" color="-1"/>
</ReportSettings>
</ReportAttrSet>
</FormElementCase>
<StyleList>
<Style horizontal_alignment="0" imageLayout="1">
<FRFont name="微软雅黑" style="1" size="96"/>
<Background name="NullBackground"/>
<Border>
<Top style="1" color="-6645094"/>
<Left style="1" color="-6645094"/>
</Border>
</Style>
<Style horizontal_alignment="0" imageLayout="1">
<FRFont name="微软雅黑" style="1" size="96"/>
<Background name="NullBackground"/>
<Border>
<Top style="1" color="-5197648"/>
<Left style="1" color="-5197648"/>
<Right style="1" color="-5197648"/>
</Border>
</Style>
<Style horizontal_alignment="0" imageLayout="1">
<FRFont name="微软雅黑" style="1" size="96"/>
<Background name="NullBackground"/>
<Border>
<Top style="1" color="-5197648"/>
<Right style="1" color="-5197648"/>
</Border>
</Style>
<Style horizontal_alignment="0" imageLayout="1">
<Format class="com.fr.base.CoreDecimalFormat" roundingMode="6">
<![CDATA[#,##0.00]]></Format>
<FRFont name="微软雅黑" style="1" size="96"/>
<Background name="NullBackground"/>
<Border>
<Left style="1" color="-6645094"/>
</Border>
</Style>
<Style horizontal_alignment="0" imageLayout="1">
<Format class="com.fr.base.CoreDecimalFormat" roundingMode="6">
<![CDATA[#,##0.00]]></Format>
<FRFont name="微软雅黑" style="1" size="96"/>
<Background name="NullBackground"/>
<Border>
<Left style="1" color="-5197648"/>
<Right style="1" color="-5197648"/>
</Border>
</Style>
<Style horizontal_alignment="0" imageLayout="1">
<Format class="com.fr.base.CoreDecimalFormat" roundingMode="6">
<![CDATA[#,##0.00]]></Format>
<FRFont name="微软雅黑" style="1" size="96"/>
<Background name="NullBackground"/>
<Border>
<Right style="1" color="-5197648"/>
</Border>
</Style>
<Style horizontal_alignment="4" vertical_alignment="1" imageLayout="1">
<FRFont name="微软雅黑" style="0" size="72"/>
<Background name="NullBackground"/>
<Border>
<Bottom style="1" color="-6645094"/>
<Left style="1" color="-6645094"/>
</Border>
</Style>
<Style horizontal_alignment="4" vertical_alignment="1" imageLayout="1">
<Format class="com.fr.base.CoreDecimalFormat" roundingMode="6">
<![CDATA[#0.00%]]></Format>
<FRFont name="微软雅黑" style="0" size="72"/>
<Background name="NullBackground"/>
<Border>
<Bottom style="1" color="-5197648"/>
</Border>
</Style>
<Style horizontal_alignment="2" vertical_alignment="1" imageLayout="1">
<FRFont name="微软雅黑" style="0" size="72"/>
<Background name="NullBackground"/>
<Border>
<Bottom style="1" color="-5197648"/>
<Right style="1" color="-5197648"/>
</Border>
</Style>
<Style horizontal_alignment="4" vertical_alignment="1" imageLayout="1">
<FRFont name="微软雅黑" style="0" size="72"/>
<Background name="NullBackground"/>
<Border>
<Bottom style="1" color="-5197648"/>
<Left style="1" color="-5197648"/>
</Border>
</Style>
<Style horizontal_alignment="4" vertical_alignment="1" imageLayout="1">
<FRFont name="微软雅黑" style="0" size="72"/>
<Background name="NullBackground"/>
<Border>
<Bottom style="1" color="-5197648"/>
</Border>
</Style>
</StyleList>
<heightRestrict heightrestrict="false"/>
<heightPercent heightpercent="0.75"/>
<IM>
<![CDATA[FLu`r;d7j;l8]Aj'6;\=lWZC=J-$3*SHBTZe5X7cLe51ci'2Y_$&s1s:OVUPcW^mFZ(a'Cr":
,P?UldnpT(i,1n$qE7?iF2<XL7fV4+#40k;2;mXB8t"/bZN`B2>$W_60R3q!!VK-e2"_@'Mk
ClF?$Ar+V?.-b@,TNuseok&0=PS)p7P_UOC4/egBq/*V^G&+XRXo(V="B)tBGhaO+#c]A"4iI
`:R3aN3,)<fRN7b#;Ulm.6TB@:NfPLkJ;&QfCJk_Y*6O:KorJVd/@3qE=D650^Lc.-E>$\54
KqlMqK!Sdm*o_@V&;n:b5aIPF3Mp9mIQHq1N)LKL=H(OquH`Sn[pE.=GRc`[?cDpMMu?bsD,
fi@$\)2HGB5t%aE?PEE$5<3d/M$;*"5WQsR`7>%S?]AD.o;e$dg3,?Z7ft74s49)5qs/2ImG2
.Rp@7ZR5M65r0<0r4&-T\t_MZ!4o5?A,"q&UsMG9)`N3;'!NDb"M_Um&:!bcS\,#8[E.d(OM
:SIB)=[iWodODaoRre%oW6*fVO1G><8*lu/sfo[F0Hr32SB$5*l&]A]A^b-&us3@s`HNDn]A;`+
ea\U.T`jFR"LeB21On#9XkKgkZKA=(eX/$5O/>#g-s+dK5l/Z2<Vi\eK3$/^KC;U\fTOLAiH
V\qYBp7G#uQ2Y]AR(WUB>n1nPPY1#E#>6DL`H5N3?qUlM^oO;r^rF!GZu!1?q8l>HOo86/ITi
eKoq#6h24\M!b\&L^6:e`RP:P=bR]A7>^jaP+YAh31=r/_Z\9.>%pUS/_!0U8g7YRe+fR'u,_
P?(om$h?-%rR@5Ku<E2[m,r?E3>MTHc#T_aq2-'047pcqMk@'J!oWbaSP&KYDIr[NN@]A@JQZ
,S9IF[/4FM;"s^T.%c/3?L>6?LP/Z0Md9H4H4[AohAPk>&2W.Z=9:)#B=$<:;M[$)Q.I\+qK
V$[:M8%e@^p,cbFi49$!(fX"f.b*L".&gKeZK/.c<B'5.Y$Cl(g>qj#*H*(c\<PrZ,5c_ck'
,,`-q+O=+hJtXNIjBaD5?iK=s58jJ2o<_7>BN`E@KL)[k,_7Q$:kkd"fBBId"2c)]Ab[01Gij
r:=h!#o2hq1hu%+=H,'9f5GB#5!oG'R^p:g,Seo=+ug&@"/.B`:8nrR?O\N'[eoK=c/G`'J?
&,g#ajdZ8klTm0]Ani#[V?cbakg27gPe*V\.Bcs*Y75ih(3WhnIfqCa/D,PVfSon#;/IPiV0L
p0=C?&"YP,?]AMsC3;">+1?X1AEQ<[7\QN7;MABT[2X/S6knjlmOLW?HdPcWhYp3e4</8ak=,
/YXIAL`)Ho-GL9AP""E[?.J^hB`g#"B(S*3k-4H[[U94A8ce1FJt,&,/me9SSMS([lMmi[@+
0LODYQ/3Cc=mf>:RpH15t[;[-'q*2+V&q/"@I<'^tTQdf4626Uj'QfX`5X5-$n(As;M'6RO8
B9n#-[Q=-$0a0WKN!Fiqn49F:7TTt3G!!`]A(Wps7IR3%%cJcQ!?q2?%.<;HKq$FV:FG0+<0P
chQWpo_X_.eJh',8=Ym[JtB&Y.==LF:DRAp!DQkMhE![!?#sTtdV]A7X<BYfJrj.:4)8Rk:>%
_lFBJ@E!![Y%OK@I=Q^j;9ZLF:T7#G&'IS'g,t\VYj:O^uW=\ngmV$aV%!#>%,HoU0F?;7k/
G*<_E\ut((CU_Y-*5F3r:qH"qM%q3-K@fbbq3d(:Zp\k+7M'1Y:a#(0cnp8)"'Z0EE.Oh\1\
f>MfKQ6M&5RKQ/B*ub&=(upI2PaM<hl1W]AH>r,\5L=WCnBX[A0*-Ubc?HTXq-SeJ09VS'pM!
@EhX%CgBf/(Ob0(Hgg1_rPl;IBXbP'I626e\MB;?FGQQgThDMtJ^t&72!lP8dtmOWD/4\#B0
e!7Hh8Y5c$,2EQD?=QiGB4LrQgKbY6Tb7r8iJK+OP->VL.55E@2,j>lQNIm(b;F(cEo8HG.o
GA(#)8g"&54$WV(T*:NdB("WrS4MM2rkXS,F".=&,iuf0'p7ZInLT01AH@*2@A4+$i1l,TE=
pqBV-n/R52[e)i-F?l/)XD.A%$u51"/[]AO0Ad:-Gg+_jWiuF)7#6@&o5'9Nf*.'8I=>F62BC
0?@L%M^L'a`Epcqi"9-DVlMN@r'dDZ@=<\f>=`lNM)HtrT,`e,/+<Hp=3`1b$I=M]As.T75$+
6>;8ncpY9&fRn#P/Rb=jJh\(+!5\i_QM;tqZ_5/F'B]ASAXrQQO"]A'6;+jmdh;u)2-6Pm-)M*
fC<*s3EG$Rc7%>QjTN/kW9ed!6.^/I1]Ag,;";Gaj>MqA@F-#P*&kUB5]AkW=mNM894r3#Rr#$
Vh`ADk(0O!@jn;K>YO1!@RCMe^orj+:ba[-*c.AgMTZ4<q2osU\]Ar_8@WoViPUukK+ea/pqQ
5\)r<>e>h/":LZjm0)>Hi=Z@/47piJ%>Z(E/!BaE((RA't;:dj^;ZaHHBnbBJ3SWcO+3RAF(
,4[6jF21TFM(BM)<^WfG_pHniq7"0lrfX5,Cf`3DMjJO[QQ=.;(58%)G^F#Ob4G5Z)Jq@]A\B
OPj_H8!PrgZfQ#jo7lXnCP=]A3TdsshYZ%D4X6M=Wf&hZ.dCQhC9$hA15W^q/*g@@'Z2_W&`.
XA:P47AXmk)J[1VsHuKT837b9G5<p+b'HAIlXg@+ND"j,'A8'X8U*&TX[s`$&IK2U6,\lRlT
"^")V)Kqs*M^*VqN.aP)rjKDKeR^I%uPoUVjce[f)j$;IRf#$gfT).o*LC$CJKQ<M-qM_pN$
WI8Hmup6fR$*,7chfZPEc6ba>t#FX]A\BH/)hdeMPnNlOj<Pd3S+K74T%/0:Cl,&5#=rq=[B"
45F&_Gn'NlB^pcCP"lOnWP7Q(+-Pm)O2j%8qL',a<O1hLCX;%MCQ<BN[kbPb:1fmg*?Wt4a"
m;*i2k)!hX=8tAcMF+bQ4TK4HFU%aX.:YK)"t:+k#m>=h7q')WC;kPC's1Q^e-[gl]AH('q8`
9(.V7>H>f0QuH:T#hEVZd8Dp_nWOA43WZUD<bpc'NPC*F>d'W$4p]AqZe'.9fO,1?c7?XHlEm
!&M/^]A2-dG39eEV3BB^c#]A:q?@_c/Ss`U?d5(u8I2i,0$C:Ceh&KcJeL$W>h%gVsYI>ml8/G
En[6W4T1S!U*J07BM!Z^+tf]A)7[%mmb5JU*3t"Am47"),SqZ_e\_Y/I>0Apl$,/00\nLNGOC
GY>ZP?X`hjR:-!4K8;[IZK-&XGd'06THHS;$oQZ;sWqh@nd.M=rpD([r;FQG%4G_o0u;d+,c
qT^sFfI-1XCm6$Fp/Y.A&E!'#k^+tubEhYR1dj'LNrldmYV\F)\`X.Qb>Fn8@<WucT'U85pn
^TNhrCfVK1T):LO.MO[_B<*]A"F/"Yp[7<CWk+WI0b>^UZ]A#"+=_j\A.hBQ]AD9l6&H"BZ:>m0
PrK=a^J<hn8qc^\Tpt'q5$r_/jdJb#I.NO7`f1&gna2tS:rcg[unGR%+:c)*%^sEf;h,V\F/
P,so*us-gYW[LUjBm^qjOrWD_$uMJpX:+XAU$jB),nI=di.\cPC875),)#\.H/P?daU8%^5)
u.T:f&O?1</3Qh;\s,RpSLrMVZk7lh4R*,fp?CfD^X,;?+oN)8\'QGN1Y^Qri>,<=!!:r^n!
`4]AS&PE:U[<l=cQU9BK4aK\BPb#+-UEHj5upZ]AZQPuUD:"kpkn2g<k"B]A]A%Eq&b49lcEb9$l
(M9fe'XVPMD46Wl/r1_mV4.2Kca(9j@tlm8^5"'ol"K:IQbX,mY;KI.4,G6OI.5o>_Mto?fn
'48HY=2(PEh)aT<R3!GO&s.F*?E5R@V+TbuO!dW63&ZY_b<B(tcDV^KUHKe45e&e):q7DEhm
^Aff7)>3n:/dl,IjW3BB(pgW5B1.'Q?0]A$GSWE-ZOP9/RF'G%HGpW1RPWIfTWGqYUS@+2O8C
q<NrbmB/L4Fk9`!QnbkTGo7.8idP%$9Hr#Qfi,O+b.%#Egd`g?d]A6JDA^*GOru)gsjBTdo*a
['qh8R!kW>bV$0+mZWU'$F)O[:0gU'=0m6sV@R*k=P=?87d/d5WX4aDgP=+"fcS8e[R>2^'<
J<oj/Z/0]Al,Hl.`r:sCjoM.qnfrIluBa?p\PTL^<gpVnO#W[V1^"U=)V>M4]A>!4\2ln5h>c;
k3S`a:N8QHj=N'qCpI0U]A.N@<KffS?R1?IQB]Aqg\K0<6)>lbP,gBYH@gnsXM;=j9DsYU-j1p
sbItrSto8DP\>-N/gbWmJ9kfW@U8;#%]A]A6+`0Nk7L5r[AQn38NIsTHSV4@3_-G\qEbQ;JWUE
?agF]AT4\_%]A_Wb+bm]Au[1ufYNBSY3K8_Uh_I=E#X@8X<JBZl"hN"Es`80o9-3FH)V\%4$cEl
nA]A!T3V)n!1Q/!soG9`JY>gL#*c.,i@lA!8>_*OHa"%-*Q/qhjMNiWM[TIm(=*S5;OkQkH@8
O88#VF>;YEMo71#mYOpVtW;n?Zc>n$`\7fl[Z,^FB+kpAEub$0enflUU$@FIpghpOC4Y2)m@
*W^;Fr+g%f@[bP#h5?P+q6$'B='%p2RVS#+[:1Lle<%2LhVQQZY7Vp;R`WYMc7*iXH?\LgTO
%ON(*91CJ.U3JlIaDuRji7,Y!I[i(UZuFh93OrSi-]ArC)@duBNkYt,mCJ)h1COdH>FaL1e#$
YXOi3krNAP#;4d:kLl>UTiGG2IhBj;[H?"\Wf=KL3f(M9,bTne`1Q3[gNe#MSE'ie83d&Rm@
SaQ*nQ64/7Ya)+\/h5RRpZ=@pZ4,_9l_"055IeE_6fG2"amOLkpii:bg08ufs2-K3V2-:,V`
UF,*(Y.'I9fKBhPP%u1AO%:(EoW_III,+R@65s`4?B:pC@XM<(OaU!&<aD"R/tk#\R510XdT
k?h-o"mjlEY0"G-""hK-1C^[mJ`bfFu?K'.!%/0Y$IfhN,;u@;Zg6*46TErpSrUZD^GUi6%f
FtoU;MG]AV3>J)BNG1OYcO)`,7M2!RDD#aT5>`\Sm!8pPgK-dIbFRNZ:Z_Du=>?EXFiTq(g`&
,ee6[@C6g#k'1%T\hbUung[JX'I>VWFT!.i$ol`Qn2.Io7aYlmS1iK[fNFj#qhVAHKoKl\JP
9tC<0=q<*V#%>hF\hHB6eKqqrJH`1(<a]AP_)LKZG''shKaqGIu8^n]AJT%$39?W%u5:bu3HrF
6ohBo;1H=8OscCR7I'^e\gbDj'rOI@RmuES#qK9r4cqKga\LYW=)*kIC_DbMA`o_cg''_R]AO
"V&^@]A8BEF@o3KmuKk.Q8"ldVdjd/Dg_'I/i]AsEjcTnT[A.")SHFKUB+=aehncRM%&et]AnE>
[n'<4bFf&`MQtsre2d>3Da^E6EgPZm0A.`j88F4CYf<+WK^2/B54DHOn#`2aPbk-+F^mZ!]AX
VIgW;Z2IH0mWd/eOnWGQCQI5Y!_a>US<jqTlKL6$:Rel(HMs#I?%^\bko6g`[obNDa7"?'8U
=!>6?kC?8?@BDt4I[Ze!65d$)Q7_m.]A^(7!#%cl4?pbNQA!u27VO>4>o#_otP4?<[g=aAYO4
6r(RtR$CW_[CQ-UX-OShd0NhP=6A>m>QOdjs?i\$inMnrK=AYW>"JXXZ<:9-;)6IHFaTi9uA
24n)9.!VtQV:&ebTI_T,)3rHtaoM6D-.F=e=J)8`H_J/J?ZTO/,?+bC/VQ!eqVS>5j&K8NQO
T@DIgtqf1eul0KC0nI_AOJW_RKWtGp3UW`%A'\FRu:j6C:M7PemFV=n7hp5`(k`q,eL78e&9
-F@*k<*N"rr7EURQ)S2M)[Ypc\<H/<Y=UqC@u>)QB?lFYLZMi8!JSpV['*0l%'E``ZrG'rs=
)GEX]A8sgsNI*j1-C)ef!,2;`nd`pf]A#\+<RHail$In?#r4N\K.$s,@;/_;c54o3-,SYtB6s#
??<J]Ark"q;T&Id0)Shaj'il%FV;*Wu9NbY<#qmC.SDISDX!n@i]AXT-Glhg1&"h=c@k>mhAJ`
c(]AdA:)^:T#hmM7ZkG^Ruaqa>ens'Z6kbS4E!j$m.6ckM[Ig"Sl@\U&6+P#HE&PG*XN_7;]A(
OLO6D=8;(1pErQUs$YW^(m$eZ.Xf3?V=tP@=@R,gdM8E5OCE90$SeGCrTs'g6LS84ihJbI_Z
L\HSa0jGpe)L0n^\C._'`:L#Kjp_))Q%:Q=+hqYV]Afd,:F3kAR[)"e4II;O`>@a8:-pGt)C^
/q;tC0+,>Fo'kPmJ(I`d*fj"B!ZJC=$9Xap9Pn!SL1&$fHI.lIGe":7rZ@hC?jjrO)I?@+O&
TIdK!H%hqtub=2sj!.WJ;EoYD*l`Z%,Bu0Z21i7X\W?Ir'+hkD>pu77dVZL3#KNfmIl5W@5T
1!4NBpk'5m5#uNYBMBHKM%$V]A;NJ`h-kK93#LhJW%mR0\IW7t>t:8c=*2^9-o#&G1K!ebt`<
GA4epn-^sP>Pm8/9a?ZYY,g+;[+Hq^C'_((2._q*?@;Df;9"k(-F?]A<O0j]AW_./4YngTHb)s
4<45JR97dm[Fd#3Od/T[sF6pC#NQL0qL*-9)XG8,kI9i!Uo?6,K1I!^@hSa;SqYdIA7gQMQK
rg\=Kl(INs/P.$o:XS`Z:KCF8OhcBJmB=G<?dm(?W);]A*_i8p+6s53ECI+AfF^LiY5&OLZ6D
i+Dmo6]AaA7">dM1R4F@9N6o1.Jl5;a[QWF0X1G"Wd!l@a"ff4DRWH,<3plK=Ah*H&RM**!d%
"M0PEKN?;N8F(H%R_"g*GD8A#T@5I,gl^+I.MlA<=p@YtBIBNn.70Cna+m\;,bc9Z8+qiB8f
">;sI/7mFc6'Nh9_^;<9aoDV8tNfiddhkVoD#YtlZK-:B1W=cPGb`BCCfdW!n+'OV,JtHqY.
mTI2^T8[TVduemeP>iE[V#aAHt2<*X+0rl_^!ETlRq>:_op;/^o5$ft,?jZ1s`*K]Ad7>D'0b
6u$"b1So:52'gkhM=`;t03S7Z3-.7ACGYEpA^E,O#q&N;rt*/gXo7j&fr`u^:L$\)$5KII/^
\!4cjqG:i..4`F]A$OfQg!3"#8Wj12CF-W,9F;EjfYa>LVFQZSkAmcHutqVLl-0:>/Iu?6+^D
SBLPP03CIe)bHOb'iR1VND`an?bdjFJEkn.ejBUUG0/OV_lrE`@mkQ/+5-o4,N`+s4%HA25G
m3:l5H%`fgb:qk[%I('VNT:mg+$5,O7GHa0<8k2:dZ13,<m(U%>\ARn,R=F6a9-LRB4*8PjG
6%9iMtLr3;1ZlAhm-V\ZCjWC.Hh^5#^ME_dQ>+ZWe[+7R7M-;4%UIM$HK$s."pA;'<c1.R`>
^Hn-6SIatVrm,Zk*HX8+ELZWe?8P9UVoQI[cALiJh?X]AnUU,O.cWnXY(AodVjRXS")t6aNO/
EEVTR4K#b$J"T2='b017M]AU)43gp7MQN>i0PRq[.*V\T=,*:o6V4mhVf0:HP0ran]Ah"-ODdq
OH\$oTSF_A6KtBPW[G<t#S@[nQ1WirY,@Ko7n->l19&n7h[ZQs">sc9_Ce+mV-RESsH@tUH9
.=OHF3s*:<ZI'2e?:niSrE;/]A@idi3_:2L3@N_83&`"37:F4chHcL8^U90XTI4IiCe7*oY$p
b^.b+_bMo)]AM&mtMI=;>c!L8-i=*A[mqSFRobB9=2.2`n:^JVc,8S%im1]ApZSfJ?O@9Vkf^G
;Qr%Y#>E&trq3dk<G11#HVDGfrnrcn_eG2G>.U==Ii&F$4[]A>]A9q1F#-E#-OTO.Z["dW:N4S
W`-8;g$M7*1h2kb\1KBYe0PqX'%pAp:[GojLQ4R]A?ro6Tsg,msQ4TUPs6-\q66%.dL$m]A`O5
T8[<PIH/:5TeHlZu^Z_"/Fd%g9.\Tm)r$`c<7rteL,6T(nWLkbC.(0;W%iOVA!3=7\'!paSq
hRdno=733@iUfA2Vq()Z:!$K>,b".6GR+G;X*6WDSXR!ar9fP00$`En+<q;%RM0im*hDtHk2
t?deVGbaS$<9Q`P]A_E-OS;KiP.i:m[RLK,T=Qq]A,/j[lPQ;S4UGZY)dYbLN`VF3.L4UoWKbj
=E7VTo/J;pK2k[=3H@oc.p#]Ak)Bfq^<tTR@635niU_m5H2Rit.#uTrCW>h0KQ7=PrY9[!4qP
mR934_kb`^.8_9o?*q9XpHQ5p<SD`GT![<sFp_1;h!I*!2+!Qfn(jH$Xn:#M9PLa8N1+GQUF
m"[CgJW?B!"Bj.Jrf/c92JW'PQq^lr<=7R%ci)-+g#h"V$#VEO[C:^ck#&rh9s*KG&6B7a:c
jK$i9OtB+?E;9.QB*:]AK5>fm/%\3t6H=\_WE_Yk@dcN-b)!Yic-d'mGhh"F*+'^p>Zu1?<c*
YiS#9C:e;]A7:kfV?Lf>R(8%)fI1V/=8GrI<2fQAeHp<>p4i*M%LmQ><sI?&CJ/Cr#bU<Z1<Y
%9h.G/J$4SL@6nJAmWatOVsYc2pQUG?.k"[n:/AL3*V%-9<jE9&m7aTnk>tcqc_#Das;Rq0'
,?jpBktNnc:(8bjD`(bldDRK'usA7t6>a99nDUrICEQZ4n'*==Tu:5&G,YfW=3CV?tsE$8rS
*gT+F^dA+$2MSSAhP3dk8nDZAX41kqO*'Y_BMQr]AsYb`PiR'";?Y9i+TK7j%CBse00*hZmlf
SL`7E:L1pI0f7TLVr1-?Tn=&GSb$!^n!PuA$+J6,[gM2%Gu0;1C(:aR"+qRK[(p)InW%I@,9
kOAUhMF+B5Shg51Bt9rr$228)oHaUmmqhA>qjHd*;,rRsF\gmtV[@4B_d-M^YfMRu_en18uD
5=ISD.j;m6;aL=0i,^kbPPD.TII.PK"Hfi4hB`oTHs&H&$T;lF%X+\[XS?]A!U?YTCT[.%(K7
p/R$qC'XZoA_/5mrV,Zt+PpZXVu:^`?E1H51B-rAiYL+OBV>H_<X!56d9[EXBO0(_74m:%-s
JI@Ior-i\;';n"/0Yi$8i]A/BjYHuIN7X\L)/T7tC6Hg:#_#E@Z([qZ5u%K#Ou<f*M6-YW&tr
PtmNIDM-DcNqn5;OQSP91#&Ob[tL>.rfKC:ihJY^%">\'(m(*TWK2\R&q["^\2pPUcghJ3YF
#%3YB#Eqrr';+L!scWAV*+q2#a'I-jiE(R1bc:7,cHgeeL%Qu/X*9t)]AIc$aY_5LsiIm";TZ
>cS&YNU^uf1njBbXfVK03WAXh>qZSgeI&VkHnt,lMaDQuI4,9fc[@]A(.tX;bE3=XDf*lU+h^
,RG'&rSCh#H^ugW>9!6)Oljmq'MZ%C"Zj:A30`h!L)ie52@5>Ld*LEbM$fF>dcdUaWe&5K^d
aZLt)9_Tk]ABZg8l`*9q-chFOk(&)a+oH1Nf01<Rn2:\:U``1,]A#XV$k92o$>GIs\;Z.O)f`X
=MnW::OtabJCG<`p.IjrJ/C]AQ-VA7>1.&X\,925C:4/3)*q=NQ^gS84M@`8Ch,D@a]Aul`r';
iFADh*ehLsej#CBE^s*.+d>l:Vr%)*:^=9k<e<S0.ld>6-FJmAm&$l0BubrR-ll@6HANkYE)
[S%f=DtUqapT2&4mb-uY[V\uU1o^sGfh>'=K[4$l0$Pb!h'n&Cc6?$C@)EQQqKtGA[@c:fi,
e/]AM?t3n[<?',WURNp2m8ZpNK$*c1d$16`GKG]A)g6So!5'(P'N6rJ:E<j1hs*WH8TjBA-i2<
24(hSBcGc/_C--CLFnY8J%B)S(_FJm+]AQgQDZT5oUO_=M-a<GOhq#;HOmn;q8'j-Cp$V*ai;
\u'6`MEJO,="2Mo)83"b7\\&cS7Hq,.`9IjEddO?niO)S"Ep2WjB.q*S-NXa*rC)%Z.9&5Il
DGW&EjZLsP(e&ncF?4aYX\(_UB8@Ik4[J*hr$,!K2r6fsH$!\SUn^pqk1YXi*EQSZgeKgo?I
h&0L2)Uh4,L_,"/Oi(elc]AI:VpF.)['4OrpFRO/OPrqB-"DVAb;Pi?:[gIBkGFH:H>XhHkEV
lprm_\IB;0'%A+Tph113^W667QDU]A5OI^X*2X;^AYtVh0fI)egAV;BV@!2_UubbR_<dgVSkf
QR7f2TcZ%Wiq?o)#,5^iUX`K18)0E+M38Z<ZDFP4L^!pFeAm2B=k'H4a`mo,HQi<5V3\j.J2
WHK@3G;J3hG;WE$`SHoIMQ(B$,34L@XoERgW5Q<o^tsY]A=GWe(s[)-GV-K+g#>=p"\Jg^(%Z
mR`4LHeq]APZE^$!oEJ^A_%=_DlPm79=B<,li,:7;.H8TjQaSR3IOjRgbok_7VE#8,[3l\I5h
IXuQ+#77=*C.I_^S-#X^#U'XiqVY"+1C?&^-G/6=J]A]AVSCG+@?3@eLEet5bL$?,E=@$D?[TF
\pB.^sa#/us/0o5JQ:"tXZoMp(L*`V1PDR"</I*.#i*Fb%X7<g&FBk3sW6)'3:NT*j=`YSQa
!l7chOL^La!1CcRX#:QRkXuFWL\G'a:0On/CL<fVY%i_A>]AgTr;b1qD+jg>k.VnDi0OuCCR*
OJjG2$U#m:n,5.7b9FYXZ8CWK:DUFjn+NHI/9mnEPpl%Oh*6jRMk7;i:j1e:8m?'o]AbjlCbd
fdN#qBqceem<FsDMm[*(jg^Ro"ZI^u%uD6o`%]AQ0cqW8-lR8AmDLUo(TTe7YijG'^?pj>.gC
RRRl#$D&)(k?\rI$UtL.ZuZhn]AConEL$^tNqsHs+i>R+ppdG-Z/'.bEVk63"h`5"5fqn63":
KXN48e;gR9_=SGFS1PpVMl+@<]Al<Zl2cCWt5@dc1-_idZ]A*.dR3Zdg0#8;e*g`tip"'Z,8#&
CH5k+1c^JKR?MscA^Y\fLk/-Bk@!;OU;^9+ejL<BTK<Au+!&hjYa1r@UQ[^gcpZMTrC?1rHl
,5tJePM4T'V^2*b4b4*eUpp@2L!"%r)_f83BfjYNF.asiLM7Kf"PP[^&k?2:`++JFd^Apk8+
kP/P![e&,@r6T"`$qM64/nPCE3P%aq'ErTM0q3(ER!_Vf<hU3]As@/auP%gJ'Q#s35q^_uVg0
CL?#@Nk<"QWaI54+IrS6U3JVNj`I+tHJP&h("N:##q]A>P!n3,HkUV+goIJi[_3s3j*OW$3I1
Fm[U"r"0m+gX%l^e5t4s\L!,^tI#d_A5b$f9H)LNe]AG2D$nQY6.SW]ARL>]A-_GLHE:>NE3Mo:
&RltX6UYN^pR9@\hfu/c=KB2?39@2R20fkXLEENc17,J9oNFgnp0TeW$DDgk^<b#W@nbbmW6
`.'#dmgB6M\M/"Ad*Y5b!kJdGmRY)Q5I(#ZPdHuA_-o`buHg<XBc7"f\neP>r?#5@Jb`6'\g
e?/R*l?l'*X5PGE]A8l)[WuiGI.D?[XA;&R?UKncOgO3=RpDBcc]AL3*9Hmo/CY'Vd&cc*a/Ri
6sme+a;R"V>iQs1aD%Q,>C]AN8I2A(33Bj<LRTt"^%GmK]AIr&G,*i8a@Io=3pf#oCV?T%*Jj9
f&W(rF8U6LTo16a%_9:]A:l295l#,<M1Qg9s7n6/%t_L>Y%#Q=Hk;Mn;gUWP7u^)<A?s@[u-q
$mKW#WF=%VY`Tb9H+Rhbd/bp:hpr62o1n%2NXfNs+FtsPJ_Jh6ld_CD8f8q@Vmslsm3Hmtgo
%*R??<Bo+'X5.a:s]A'R"P3S<h_E^^c?+I(P42[SlLgA@g\^FR&YUbZ@k'+1G>\75rr*[IiaZ
N:npod#,A/b&X[u`;-FW_"D_ADLaPO!Le'Cf\'jJg2_-T:_HE6`=I\Ys!998TIPj2-hI7!&q
,*47I?B*;*4lUh5G/EGqbfS>(amtGfJ*-OtNiG;DDZ_bs&Os8.?D'J"YIm(I)+aUj(jEf_ml
7CQ[g-`Wr#COOgdQRDiGB]A0N1HOm=;[Tf&VUM8?r`9$1bln.dY8ac&P,8Ua*3dT*IG"g81d.
CQg9!o8Ya"/fudilL(-&SF-/i`J)>"W*$sm(s8OQRpg.15,e7X1C]ATf<]A:9[A4>j`A#_hB$[
F+tCJ?]A*Tqa*INqMLZ`l83=Wd:Xdl4+3eH%"oSEl`su0L=G0#L*Z#(/%.;"Vm%&nFR2[g.q?
T=lS+4BX+SJ\3r1eiZjYQ%dQ08"dn'i:,*ZWj*T/@S+:Q+pcA=6F!Q7Kf@lb]A<caa!5<9?:-
'-@3\l<C\im&o(o9^,e-VZ#jY%3^L!X)p'p+UfnkJm#]Ag5Ji:SUMn^agN=QZV'U0)STc9e*e
VrC@,pQm-9EF3Q9)3R$7S7B[Z[^<(_f)s/n$C[,aDJ9A(.a>'hM:mR(()]AXZ\]A=$"UY`Kk0(
lb>h]Ap*&ODk5<+4N9/qD::H+aro\nq_`eRUa:`@8c@d*g$)JJI\CR>lY0!=2tcr2"sNZKa/j
`%3]AbC$_0;bqVe\Luj5"'W0g0V<^XgM7:m6<Ma,,WFU2Z:Hh1FoLbd2?"@i98:UGYRK!.JIZ
PSDR4P0A)^;#jAknQ0S[Aha1cN<3QD*HO7XEHfd(IO's.c1e9Eptb-O^m[dCQ9buE.=GDR+G
KMYWoG!C9D/)mM8)&>bJ@[aS+IXa'a3!;4mQPl#0Zhtlc.l0cQE\46J&u3S?H?XXXQ`6)s\k
IaDJeFS9h#!&8*Y.:+FfB"r^R8em(qX"#Ld,KKM^Os,$'5G_BV&O(?>o=(,NYu),0nnS1M?/
l-4mQO3CmfL+i;A$l7"PL'X:q"[kRX-,O*s9X8b6,Li)2PaA2#R>sOc2$6oBZDpOC2JTkfIm
\UuahV2A+'YECQL9R=+ll76n_Z6O8H5R_]AkL$$Xjj4[cCj[t)_Q:#kQtuDgmq0B09=g^D4dp
XVP^]A!EmMGr4$k9H;cYXJrg9]AX%"Xk3lQ/m"C=[F!5GDQPc[r(p6#-Rl;b1h`PhYQ3D`OaJ_
iMJtTXUn3]A6rW'mJ!Fc>A)-3(2PuECNM1(YoG&UIojW'/s%u$5CJa\sa_hj@0o4k\KeXZ._'
#!F2?QU&!H*Ns^aO@WlLos_m7Lq)1fskf)NncBUpg*>A[.m;q>L1%Xnl7%.^=*>gHHjS&S!5
ur3!t1Sd)T&mspWeBr$2kO7/76Z8<7lJt8A=f,.2rYe(X\6h<O1,Nco\N>"YDR*_5J]ASCm^1
e*3_Qr\^Z6N_f1B9Sn#12#4tQ5;@B\o2Wk^^M7CC>0mjG:-lX85ek]AB[4au<A"-a&fX2Mq':
IO<qJ2&=\KG9LViNLksApU@2$'.Dqdm:!Q`EdD(u!R]A*m-kKfIkp;RAF:?YS=cCjl5G12lUp
W51>:l?OgYZ1&G+78]AOD`SCq[,Y.8![t_&kmb:T$G#W1*\eHL(n1:%n6-<NE+HuMI?$".M0D
\.V`99S8?!El)fTgg`'nu.(pKh6"K,p\d"<b]A62o#p,@JL!VX2WR2^SrENV:I4P.e-k78O8a
A-E7Bene_3Y_#9=3@BIt.7P2*=bP0c9!:K8N)S+h<DQ,>IWo5JNndd3l<dJY[c=oWlf'7rUh
[!\trD\pshoK]A"dI3Z$e=^eUT#2q^X!-W9Y#H;MM'hZ^$!9&/8!;J<+`13/WhH4`h1SpE'fc
j'+[XSs;<[!)5\@]AA8f>euog-.KTdr?3,$t]A?^?J,,lk<N&Ua`;9+<MLMW5X7SBMARH-=9Z;
l=0+7$W;e0<b[ULB+i`)edsX,4o!>j/6I;i=a=gYo!*7/;_\[=XK1/1%_bau$ht^'^<o&f>6
m.[cYcI<_7I:S`64rhN^V@_[[NpDAM_@=/#+;mMW:S4kLmQVj<JU&s!g--iAjK!bK:('Ra@1
.@*WP^l,eGG`&5(^]AXm>V@OQill5`jHT@i)X8R@MdVb'amdAqb">R^BNi&Xc/rj31g\UO$Z>
\?6<G#&lU1OD<<o%[e1YO]A_!531YFjA(E(rU)di"`h-;bY6>)O;_d?#[WB'#$]A\[BT68*W'7
GMEpUkJ0*2>;8c'9RXTf:DnMDpfC?2T:o4Zb($7]A`?p:%T$ST68*o7`7M&%P#KdL(&rOIbl\
DIUtqa$X2<g%`Z7VUJ2Y02J]Al8Jq.(\eVPt8W5*/28!9&LOF/C_kPkfX+c$lcQ0oD8\<I2AG
/CI@]ABq1f`&LBiL9cY1&M[0kofn*<Un$Ts)oIcag28a]Ant7.*`BEJ=Y;[PoI<gqLM"1@)-!W
'Eb_Tr,JKZq/3!?GMKR)ED@ra1laZI[1r\ZAKP)=oX_38La6jct'THe0HXY*8d,JD-%el<Km
9K'C!]AYD86<!R,Hn*ELD<aQM37d!AdhnR7X0[JSLWqT8LgPR]AF;cA$aK$.b\i$`$0IqIIe;(
!_PagTJZ/(`LVmnb[RhL4l)KpY:\H&EL9N2l:T)CdPSFZ7Mb4e!73kFljl/:77ag=G=s3b,^
q]AREMh+fPRdb]A^iJNMGtqYLKQnugTQ]Ae@=oQ6NfPg'=aU$2m@Jd=WcJ![s*&oiOur:2.!^3'
WCp%2=5:6hJRGoJGQRBV'm(e9g8#3BVeg$Mk-^F"^\/U7)^bG@g19i`]A4=d1[EC>&^^hT<c/
W<U&C^CQu'6K_K2,(S0Mo)oUhe/(8BHJLTTj(l9J&*XakQcVG$04_PMg^P"_Ed:n-;/hgk8O
JY^>T?`>GB>!gj7.gEiO$"@Z4'X^RHDjGEp>/Z-Ud>mDL"GZD[ju8-%bKbe:)pJ8oSW=f\5p
LJg0j-*VI)u-SfFR=B[>NC*622h1)^,?S,,V.oU7XUr0Oi2OAJ=-%q\%8g?,R`5N8b/N]A_jH
<i7/8Hcom?">HZX^"C*_%/(!%N)S$XKPnjJd4#N$pd:7@H0VB_A\XNTG843c<7:)<fnc&=jU
cQ;M-5%9:tV$TJ-ae$]AF1kr\CmK$_>?6g8UsjY=+%&cPq@sA@%X7(Vim15'ESf_.:[$EG)oJ
imKQ_o7ZBU*C1=Yul5ru1W'l?/VE"85T`7Rek29W'!CTjdkp[K$W@bV2mtkf,dhhGZ"']A4^O
nE^i12]ABi/b,Z:%q!5F+H2TNN3\h9e=hM#Z/W/\Q/'T6m7/tb>:,oH6@lo/3K!o;FB]AMoj.H
%"rPZLSE"32LG.GPhN2^&*Sa$XZ5U.j+TSk]AP";P"I;mfbGDM5Z?+Abj;&3"q0*s;$K0qnRF
bMPOmA[t+dCffkjk5]A;%kZ[p(SCWifo]A;0aj8/[4T]AI:$=4lV"D>`cBFGh$6m-sFNhgT4gA/
Hk]A7^T;"8p@fB1D_bXld^<F_;-Q0m"Vp&!0nY\%JW`@e2X[,N]A-\D#.1^0D\n4(3-:1^n,CO
bGSp^$!n4/8\u=i<4$g_SpJpO?*^=?>\^Ar)5n(XL(S%%@gN%o:;=[E4@Plu)bCR(rXC^BE=
hq@HE/2?W)ZmMVm7O`A8kUjKZQ>;-U_&_IRj1"RBe&q!?"17r<.+NL8oci39A[.4B6(A7b=I
>CEQnQ+@HU&$Ed(Y"eW6Z=+f$:M[003Bjh>0jOqqK6m@&KnASIM__RJM5$tiM@*/Oqs<!&ED
j*;gkiP?J,']Ak[6s/Ps+AX#@n+Vu7c*h&W_=opf)/I&m4!@79&)bh4J`B1"5&-V3dl'<e*G+
JF$9.90:CO7E`Z@o,o=D&t`oqq5HefsM3;JJDr::qGqETt>nU0-M6WW&',cI63%SW<^W(=`7
Q-$'H-;H2n<4WT5UX23K/6*rTY__l2jF^j.:#L*o.kHYU;mP<1^4gk"Mqae#_[P2oli$K&!B
HBQdfWnhL>[@p%M^^?LX$XVB'FV*.s3P#&PtuJ5N?;0;=,1FB5+/M#0ccDrpUYi&aEuSK[k.
(W*1C:R/_,odc3"i"#4:5/Nf%:_=R3DtHf?!&)bR,uY#+PUCa"Z8,<&^XN<RI8\680EpbPmg
Qr(K,i3s%/OWqh`gSKm6SZ<M\k%fK#i;0lTS4W7sVT?!l[$P23lZjBXhoBC$[9W8c-a,WU^H
NNPq*ZXmV,h&dc0biKC5(k3.=,I*\4\9ql:M/[dm;c)1?=R[qkl>&PfHr5:Z>bR:qiO;%onR
)>-]A03OPg4X8.99mOrld#4$)MRM!eK(\>4$AVAcRTgm'+Tn0_qS#jX%leq#:\28rm&T5:\DA
e26"[p/(Hdd6n5]A;ns`GhZH'MqH>l/o=YT2$XYeH_iGG]Aj*F)jp08(*e3psI*$'E]AF.@I5+8
>*mLF!EZ?BOH?b(aXhdm&5TJaue,oP@7csR^IiE@ASb^10ofp*rZT#nF6\7pYFNuZLrSML9X
?6%"E?+FZAr;O7,=V0n0P<ZdRlWl#o>DDI@<:seQR\C[oVt'4=;:qc]AP`%K5#TFk%LIG?h*D
CYl^Po3rYG9n-%h"K#]AN%"]A8-ktA:jdm!OlnbNX9^J>=,ZMWdZ<,mKCPgW]AXoR0.I]AY=)$a)
?2c&^Pk*,65&jkC>823C"i#Uh`a@l94.)n!/Tf#(&PU!RR?EWk?F59I]A&lHWE9/>$Q2tstaB
R3pLSVtp*8C!EKbV<]A)Z^MTKTC1U/cqS24+sJT5;d?!E8=hU#kS;HR'@.+h*!a_<FPOmGY?4
H&@3*cQD[W=mE-[7'`;%EEO=g,5$[Gc?IeCjHVSqe$+S*su%$1F2UEr$(ikb]Aj2E>4e:<d7a
9=38%KKpY$Phm6Nqld;UJX>,I"o;iCECk[>>T[gKnj/Q=!`lRg/"c$<FAj_,r8ld\4WVICq8
BF.Sjl98V?/<ggC6('[UP3?\fOq)hEZ"rWn_CEOU:DSQnj!$1O)@.<cZ<LlM9uLVWt*/\#aF
Ea%Ve+#AU,bb^*AU?)9]A&^K3;6_]Ad>]AU=uK\l0s3;ScZYH1-hGm8RDj?m?XqMR59TO?H.gJj
#$6)F)rM"B%8r/EbdB&@<<loL2?h]AeHj(p*9oDiG7UJ3CqCF#SNba`_1'%'GZ)/m0`Mi:.f,
rPO2JM>R)K+Ta*:Mk>WEba[@).H^7/.B=rKU=Z1P77>"OR/"b'0eMg?1#.=3BY>51F*jNQWd
(^kL^H-*j(p7pnMs"2$M?YT,oT_LM"oeFr$8[Gg/<]A;8.[HT<)+1B`j#-Vq$[GhZCLK6?e='
,-W3L=Xp%N]A_<G"c/o*O1-X*)T#.&\mZr'Dq6OmI%@X4`e`\A9CXSq(dIp8HcUgg88"`&QHk
j<1Y7Zp8.=N_:UdBlUFat"DmMQ(YjkEoOL$H$>1G&U.LU+Y?F`(&56k4I]A5E'fi-Aae#@QP[
C*j]AP@s`<9_=tYrML'W2a'tYb'kmV!$/[HVF3-<fe_g0/0tBVl;rB`fUL8MrVrgF[I"YANn*
G"T(*'Q:@u!A(J++`+*=FRE:\5\)ZJSXa?AS8c5*-,RO@`=9d[7CkM8>?I_TFJ(Gdknfr#nd
bR^-q'foES[:b_BoUFmb4+]A,_pPI_V,4Co*EWc/Z\B=88453!+Z1Z8i=+EkM;6(&;b2V\0Z[
nreDJd.7$e.D]A633_7X#Si%.Z+asO.,gP)Pr3VerZ6']AW`898A\f"rF:#c9HU.20Eg0lSkB"
<ZZ&"g[9BDHq$-l,rX+EumOe$*eGDJUdM1+"(RX<WceJB#m^?Z8N]Adh^UpR*NP3K.(*"mQ@q
WLVE[Vbd_ao60I=>;`*"b#E>5l@e?6CD1KYlZPR@73B08#*]AhPM4-KF8ONiK%2N$%0CocYN.
]A2mb';d6XosN\hjrl9/SD'K)^Cu0O2mQ[mBUc9'X=Pe'JH33]A[VN*=!Gjr@F7$!k:MBohGTu
d[&_"OT4h;qP7s+nP=;N\@\8jqE0LE"mi+=\\H'.I6<O/.'mcr@&bO209[?o`Ig(\LOJc>6/
T4)JODp#1?V-Rm3&"T$h9%Qamk_7l[$,)N%IospUi=`D@oJ54-L`T&,.suS#IG&!@ZscoK.F
HTgfIGDs)G.ClV&9diIFm!;GecIQ/Cs'*(0Ir67m<3Qqn#!eSA/1-30^MJVJ0H/OTn^Ih1d.
Fp'S4)"Z*BNnEGVe^e>4"FLeD8FXQBLRi?MTPu%m:F2V;5l!2d6Uob5cMVn&!\kqDsH\hY68
%L`6r&(mSQoakD^[Z&8l3F;`3"F-E8P>DHYg2*9t0A@/HrLl9aBqGQ5"bCES7$aiH/[DeU)a
8MjF%)cETOApS"2f7kffdqtN%#Kqo2gKW"='G;,9rWXn]A4#>8:"u1^iU]ATTB%;oYK(&`Ik*t
\'eUfnMTJ)4XA$=);kRrEP2C>:-!-IToqfm9BSX&j4Cm*;e9cCQW8MEEk\%NU4'-J-;b*8s*
nPe!?^nep2_1_Rd*?Dc6HP^R3O(Sd/*f1&4lhQ*k\\WajjIELZ(B^mn.3<Tk%'SK,&U$n#)i
ueh4Hp).>-+0IV-r0O5f5!q8.`s:`U'^@[o<q9UBPX5''NMcP\6YGU[4Ndp#MXe6k"[Ak84`
dG3O?*gaX4tAb`?L?%H-5FmuC2sRa2Kj:KNX_he6H7K$g1#&D(q7E59]A)^r,pu74#?^*:G-D
:$$`J$6h!A=DBP#O;js$go2d@[.NLCW+kJ&/NiT(D=\1*_lmTae_t"2qmJafH7?SC4f:W9>:
s+EUE.%[I35CjX+U@'Hg\W13S4akeO:%-g+A=fKr2fW/+!;<?lcnU@e^3QZlPZ^FEclQ\t7h
_&8f858#p&aOdLHR6JK)m#Ia/D;\Y>dV)+Z'd'YXQ2Zi7Tn*IYD)^pZm?4]A@42UPFYUufo3,
g/Kn[C_$+,"Z+8#<_9@]A$9N__U#,P\A#Ee7c1H93%\B8&\WZa_Y:.E_5`<Zc!&RZnaP_c+"b
P-G@h$bp3TmQr:ie"%RqR,VI*U-LR?q%r#\%HS.s-/A_]A62]A;T7']AjOn<F#FL@GB:J>%%:gt
&(b'8lPA<51m%dU<FOTOceB^RX"m5q>qknb7-WQB[PocIY.LNOe*#I0p6V!3e-72O[KgmU,J
!(S^X)DC'BrbWJ@'(]A=)D2/3Q$Ju)@]A1s9<jL6clZ;VW_qg'Uo=o)h(IiXlY!!Z?gm[^Hm:K
s2Agoop)pn`oSWeNbmk*'EEd&X/1WtLl96T7aGd/`YhqMj]AZmD\Jb)[nq,9591$B0Pj]A;UbK
:lsg_"HuP[YL/r;brX:mm8.\4]AT8pHSVNUD>m62UpC_I5d)o!gk,YeQOcK0HXD)GeeT4_Cj_
3&OP,TAq[P#VJGC!Zd[/Ka`tchcF`Z]A[B.)`G(.Gr`qh]Ahn0@p,/YB2)4r;iM&8'm.F?b"%D
3eNtR1Fs9T/(M9oEku=bQh;M.G4,*s=cEsX1YT.d>J@MoV[m'oleMJaBUl+LrIorojRlMM#<
J"MPY(R(5GaOGEY$/f'jV@8*7oFi,7Q93/-e-I`[0l=S)>4b;^1.Ks'YQb:OBWL@@ke*#?ud
Xh.HA(FS#"*3Terc>-kFPi.L._eglcfclh(>,!a!tGIrD^q-W4R!:I$u36Ba\4?OB`Zu5BIh
h7\$EcLN^>k1t>bg`E6I^VEbc;9-_C.8-hHL8!I?_H,^KqE4+C:?,WZ3>lQ)r*tt&e4W[PX=
g*-bR-tT<25*S%hroDZjE>N3upU8Z7W=l#>3X?7>0nl(FbRr.O/X3.#n8LRdLQ$b*m8>';E5
mHa8XM_*\BL1uN]AdV-\O;5`Ndf_07t5::NF4_U<p."-O:lCukp#B(ElX;=("DGGgYWX!>J.Q
9E(i='r(X/Ar*Offk?g#k`bU4e^%ge_q#Q<XFG$Ts&^4qdBN]ApRF<\mo1-D>L1;`T5*?s'Y,
$$o=LX.#+?3Z.F\9*H(.#K);a?:9*jHgD=pj.Q&EuCXn>7<PDQ2Q^kTSqi&%E'6R-?#X7rrp
48V)'FJ!B,$.&B2^]AOtD7KIt5=mLZPOhTCbMu%+G7-ibWBj02#eRfDqf?X%C+sCH1'T)bI+r
[LjtbNA$coHQLFt^._,W[V<XafVSGS0s;'pQ!#Z.lb+_P$bIZTB"4U]AdC6IV&eb5s]ARB<3,.
AZaB0D6GifK0n13A3t[=rFSF""OCs'G-Ku$\c/_ZOlK*CQCJ2nZN8MP@mZ("/WOA]A=2F^mH'
rlqgW^=on+U"lhAh$Zjh[gU\1eI[q>N(N!X;>j$=2cbe!/ZQb-gmnUfo(T)3EKR@.K?)$D(-
]AcA:ENoXWXQ`)mqgc@4UB+QVFcZ5MP2)9mlZYAHnj/]A"`)^Adt#DQ+!D>Su6"%Ld^4C?i:)Z
sb^=(#qjW*HN@5N;NQ6bUf-A\Er(lmAQ.lbuQsr)?/M<D))U/3Ct92".1dB"4?0-5a(30FrV
9HZm>\/QqQ&sW9ns/ft4GpIl%H9MLd(maUj^;@!P6..VN+5b$k'fH"?Q+9E#2)?ZgU5o]Ao.l
37(J41c'<Eep:bsD<+S7ABBARk@0pmODKLR7g`b>X`,C)r4le%SBeunr6Ou8hY.hkGE<oOeh
:\5;PM/%hd6$H\=_h?M3-au7WPC:ju?U5hMI'q%C'^al"1C-hE*JM<*\DSqg+l=\n;SrDgS!
lL;t.fS*"M0KRG@t8S=[PMXZk$"A(5Cs1"+="b%^D`@Sb-DY/V]A.(PQ&F]A7E5mhjeH\Tr"Bq
cUK_\k-eJ3u3dr_f;6;eTVAffIJMhX/Zc@\tU3(2GuZfN6OK0A6dcAKi7`NW6FSKJogrM-W!
QQ=?bB:]Am$h/4bIO;<H_3rTu?l84g^$G$b)2;O+8G>R5#1@dbk(O4T8]Anmid(3:Y'i?kJho7
pU>`UcMq7m9D/F<]AAUF=U4f-;\+dYuT.Y+:hO\`IK`77kPX`1sfG";R-iDMn+c!E?!FN!0D@
pEIriID$pZ#gT#\A@YJ\At#DgB(jL,JKS7Yj8#f?Sl8g^pF7mb`Lt\CI3KPro;gPB.:fD*'b
AAbO-YW5R@p:(c-XI$HcaGO"cNq9U5@SVCN.d0PZW'21\s^0>p(EGI?;n6oB)E\F.:U,djP7
K=:FUUJGFODPp%$<)[#a!V<@*A&WeD^TFMQqJfemjKsIA8`dbV!"35IX@Jk96ONJ[VsBgs3!
h</A'3XL*,EmM0p.TJ"l9cd$u'g\E>h#?R7_an8\g1P<#ihLe7VfB_DAiiN)pip6^EQSYi>q
Rp+?nlHoEQlkq*m;h5CRh'"3oDS:U$0_"h??07YrLV;J\=3^fs3m?a8`(\RY[<W05'OPTMgl
Eu@0Prmd4BH^An.]A]AlEmnO#H*uh/[UNNnce;qg^\IKd%ss\bg$f:[I^Bnt`*b4sKjs-B9;BK
4JZ4=0`"mXP7iSX,&l3]A/gaR&_*cP$!@(3#mM-F%P`.esjemcHCiT=O3%bA51#qe6rk69a\_
h26,"2[XYQ9o"a9h<+%SKf$4:&cB)T1uPlH@)CTYg?,uQP&9(.9<\sWO>%!#k)D50,dFeXaR
^I5Y[2fWuH:)AumA,cAah)Ng3rXr54<C9=D=B_#7\Jk#br:<rYDOS815dCZ!/_GO0K7p*!X#
G%AdqOu(d+b>+a/j"s;iR"gRK?tO)19%cTV@Z1S,7L*EAbc&GsKP4'!RE9._)N6BTEuQ.fkJ
$\KV\d[;HU".gNV0PgXl'.;f6+4a>1`dXo/G"]AOCk#j&iP"'T0=\8`?$f1NScsBgoR"FX'pR
"ON=[\\T9&CVL7q0C(ZERL9Fi_+?XB!@@(Ts7C1lq9T3pDU[_YBF;k:BNQs6I?Q,$VJ1U1u`
K]A'*qB<6X(K*@0Q:!*:['qjOg$>cZ_,kA.]AGJ\a9<AKi2[*><`q[sEW>]AqLmr+UU&q(Xn@d<
li]A/g_^#4F%\F@btA;tI'/*@4V-el'c`mkXPll!YI$-f4N_6tdb%dJQ[(mIgZ]A-"Uo<@c0ij
#ts4\_0jo*qJ<^iQ6G%iZ?trCA%=cff$gX..&rd_R-,t&@3dTG"a^g-R8nJdO(U+Aj]A=R5-s
U:_\bM.P,"9-E,MGl#o>(`WnbRMMhM(DNa_74jY5Bd7[`CRdB$?l[0r_K(;r"@Y'Y$p`DjRK
AofC\VbX7pY^Q.d)T/3M#^kit9Qu3OJXt4A>8F4]A$akbKMCgd<Vc)B-K8>.[8\(LSs2&pe)\
=kBQQ<bFFRPg.l"q.c]A,,bYX2=QW(ZkJ3A;2^"?[1iM5)#X*;aA"DMSVP9X%F,D=W8fB4&)Q
h_ddSE@4t(I+KiO853'B8p(I8fR7GFrjakeL-.Z2l8Niu"lapd[/`/ND[k=seD(u0G9&QWg!
k;oA'2hmT>9o2u^O9t^c)7,`Cl/W_V6F+!@!ahqh@;^,cX:O.0;^">N.fu=9;r+GL<#sBYP_
d&03=X`0"CndX,$;7KMhkad]Ag'Ua*@cTkm2#WTEW7^9cYW98?#hG'ER,PE/?^`&$Ug&_j^%)
G#IHPO@A,JoLQ(iO6)onNF,e]A==e@*<H?,3/gZZ#o@iq.lI^r2_AN!TWZf&#!p;gM_NuZ5_%
:-&-d;W3.]A!4%t,Mo;h-YuFHDc107Xj^KR.G`Eu839lJpo"gF#Hh09p@ug_/..)2jlmRKK2m
W4SMV9B9S.:krn19m.e4=1RNM>u5H3^4N4Xr`_X5B43@O/d7$"Ra]A*UV4(o^0dpI<=W/T-2Y
;3YIphSruf"]A8@&#tO&^j8"[+;D4r%fC.56p?t3^m!6+.-[BsRYD]AL0JNW(D@RR)Ea)i-:+9
^ahSsdXYW=9mDq+H0JSd-Bl*KANBk+ZGP#j"_C`!6rWQp($kmm!Pd<u+Y^TL+(=7?&@n'qAR
\o:+@^-dh_=WB(K0j5JDpUoB,2CuoBj[1i4"q\.?rJ',>gB2[V&8iQd=LJC_kbgX1NaE]ApK1
""LQ0Y%<BH06_Y%o1QUQX9L8d;9JP`a$V!*Kl;&J-JuB(K$+\.*c3cLS4%27F;B52\D@Thbk
#>GoZ^6n^-CYLEtBlDj,DD0oFgVIH>P8jdr&eHA"N#nfkdr3U:F)o_Ep$,\0buXNuE$+tW)/
qN:lMKYc<l4\`@B*g+#(+`t:Amms:uP.B;jltF"O2aV#hF9e4u5uY.R*\658f*_gV/U0Q"]AC
VR(H;%ZeNK>'R[r4UKSZA7D(Jsg[HQ4sn9Tb+9KH.0DXG0?P$qHH3T\HjC9"Y4sgst=V$0O_
m[FDr3SPfo=hUgjDO&N@H>k&s!48`(-O`K(53`_t!`-9[kjTRe6#/5I.d\2RDB!Xe:W//p)6
?%%s5Hd)iEc$>E*A=bTUeS9n-ur,peiVf_=JfY"HlLWS>C9%#Xcq!jSH\CkJ'5o%i9-Z+qhM
>r9A\0aO]A0ceagp.1T/\7Ed?.sURo?@_SmE43=8:VUAZ""G4(Cg2HYV."<lJPj(LkNWJuPK5
IJ<J`a(E_=q1EgQfYBd1ErisP!S`7hGO>&6k+NLur(pQ1<T8^@c]Ao;H;\F1_BFthrGHU\^F<
TqW7(I$$h4,0+=4V9C##m%RZ0g\]A`!V/,B-3]A*G-j]Aiop]ARY4^8FK^26>a6O,bp,]A`(lBp\:
rT4G6f'TkGY91c]A2&dEeTi/>:lk+GA0^[J_=opomt?A2MB)mbrdZ-Z,l$WdL[`B.*')h$iss
7Kf'o;Z&QS.$pQC/_GC=\-ZD6E%Ch8`N_s9Guo\8POqCj<$s(A"BVJ[1G,ir9Vsr2A9*01cH
3Il-!l/CVdtkaGm[`.-;]AC"O<Z\U!T%5m2(nF?*Io?h@20`d47HYD$W(fEUKtNBLCbQ(,"LT
-)]AB7E";Q#WfM#+0s,rf=K*eo>a56/OH+UMgL9GW6]ArD$7lK3WC(-q6++>eScOXO/P9DngGA
6*rm)`>VfI=X2S,UWA<'<Ioo9uH`ig@4Y$>#*10rghAr2NSn;uF(`!sr<qKs)AE/4ZO,[g<]A
Gm2Ln-\C1^Q2LK"&ppUqX[.8$s(4CWg,mZi8SU,KbF/skajuHXHM0k6:/f16":\r?8%,]AGPJ
*nCof.Zg`mS6rr((uWRqG]AV;Nk5BNJlK.VTP*+ha7&hog*@UKMBo]A#7RWnYb<)i^9MC(2q@'
!t-4`-:1:,0_D&!R?)Ll\tN:h>3ib\pA&tsEno0#1WD,LSgG-6c*AOi@H6_CS-Ng"U'5O$hb
P4_4gK-'><E9lqiH9;)TG'*UX8qq&@:^_-?`gf=hNgsad8anRf-ds_&-a2R1]A4@=j--@k9>E
"!ZJSk2m^-TFIRcqi'"-1Z8PNlB&%JVPn6NJ'(aISO<XGJk\mqIU/p&9TEc=Y$!]AgEU:5e6j
FFnWF)A=ejl1l-S/gbB$CF$:K-o3:VQgb7!s?$^3/Zr2/<EG"!oZ:_W$36#$hJCH)FgPdQ2S
9\eRXhC4DR(dJXl6:cJONmq+O)<b-5[7ILePah-C=p4IZG!)2^42^tl?bC"\Cam`YM(S$i*H
q%K]AnsVXk,'!D\u;g\>;S'V(1?E1-K38q_FtlJDsudMpNr.[Yd2un$W17J`9c&,;rNZ3rcgh
ioM>kqa1jPVV*dB3p0&aXPoe?[7!\hbQn=a4&j^5Qr<W]Acoi&(]A`*OXa.meDoR$Pn$(8KSI<
"'9^<;F$H"uljX;#H2eE47bRetN4WX*#r2/`ZQ5@(]AZoJbusni5.Ilc1`<Ug3Vri#%_cMHk&
_R0:g#E]A,9!,,5Nq37Lm3.f?fQ<,8]AUUP0654+(Z"[i3u^bCjc.B-C\E#ot+DedBUH;SbJ=(
N+l>9QO6T*AMg]Ac$o#-TaG<4CbeEQ[Pg$!-;M=:/+BKC9njq1\kqSE;iLi5+_9@/(I?f^Y&M
X+>poeQS->t!E9I1'_Ebs2DC!2r@%;%f0@`OY)71_b3j=m%7_g#YcX^F"H'-D]A8UF_@YGuLO
hf&CnJ#+i`a6^BuXV`0dSb^@]AC6ndfA14"!5B.Q"BuGa"/Ne&)GV?e%%QP[IFabueXi)c"^W
Xab)(9"?o+o=S`[D`$LtD(Ml*M^q\#\_kT^-O0bWE4ghKnW#+S`g(OdheSQi3piP2EIHJtc8
"M=K;gp3&LW85$mhbrnMOHKi#OBgT#-6Z_$8aKuU.G`>t0Qf_i(H_/9HamFPBMmJPmV+PmM>
<!d'Go@$4H=C?phoW_*i(K'I.<">=YUU:hiF%4h)'TQ]A4Jk:>'UAVe_iEj%><Kk57j>l/Pk*
8Vq<=G)JM#q\POGU$>ck4mnX!l^EKBQF(ln1uY!'=:C&<F0(2A`0<[V?Cc7I:+PJ+@9n.t<Y
BRi@4GXaPgREB;dM8W]A1h1k0Me`sh/jZ%8tY:t4N2#@T6,A8U\U20)?3T$1J#SKAd8D`9M]AR
HQ)bs0jGXIuZfh*E]AkIeuOLg@UY&>]Ah5*L!u1D8a_DEl/g4AN3tn<'5cR5l>f[WT/0n]Ajn8H
`#F`X\2D\dLGd\_^4GJ&6kJLs&rb.=?H9rJV(%p`#_'o7$\)$,A(d.sh]A8a\!]A@W]AG0%qu6>
)b&qcjiU:f=ocRe=4Je6KI.udYeCGX!/o.cX!<$Dg%EqGU[K#MQins#.`tpnnFXmJL-YpeOV
F`Btf'tI[Jm@FUHr@GjploK9tNiDA@((eYt$Fhk^n#*3YF:4&ZW<`+qr)G=HP#54=9R[NpP/
08:Qt?u>QrdC8HE4/Wm-3@Qb$?gX+cW!1"!oAIG[1*)Vu@>d*U2F1jE]AL@D=E!JMl6!f$@lk
=a^c&Tt9iit(=22?rhif[dRl"W;`=]AfQghp,>lE&?IA^)IH@]A\74P&s3=Qc4%Ha^;55ljd<@
%2eH!rg[4'TWa(%[T(J2%f<?d'8jacJ$m-E?0JiIG>V!8;hW&C?APKS#aq!:ScF="2.Ddu/a
S@[QZ:jZ!E2iKAj3eb@:-5;AKMuOfZ">tam=7cN&kk!HhR4<275pkg8FsQ"lT@454B9iKm)F
fPj/`I:l4m6@hMknSPKQ&J3kjteHWK/UT&LVH5t:]A(*AYBWr>SMAO0s80F6A\`/Hp'i?^*:I
ruBFYN3F`ag,-j@#tEi/Tq"ullW)c?3uL3&*3*df#"ndt<S7MkMmB<@0S8#U7HRV3\g@!>/`
P!/]A;g?6hss%oeSbDYGH?uTfeY?DZpcnkMS4#.#;c%5m>dEp,EH1-NTZ[&O8ekFGM@s3)F;T
EMbf9bB#qX#oaU=>Z>-ihjmGLR"27o2f!!J&$73WXN"H[^f9&Fb1["ab;3)/./]A<+]A6!)8`q
1YC^1FUA-@C)[HB[D]A9*LfcseDTo^Z_[.*IOiC=H?EiJ7lk!A8K0BWcDm]AJ\24p4MA7YH(I:
2qQ?BfA9;YlGeULbn\M*+?c0r=4NnYk+-CE'O`;Hi_;K5_r=*K%fX(_%=jOeddMTJ8R`#1`#
BZ9d,,#hDpJLp,c<;Mh5\n?;K`\Ks?SNi)'*=JtHL0_\-c)5($JhQNJ-oA*!cV0<g@La"0mm
,m:[l4t+%$'2hORLs<i.gS,6+Bn5aY_0b?E]A!SU9\[lnqX;W100f[A_oRU]Afs]A!4]A(`Y.H=j
h`sg&"Xj!5`<828nM2k7@CaJdHbjj/T:]AJJTO:Qc^?7Xm,T(\(dpNtft0/sfZX1IQ`nS!bT"
WgbDC/XQ7_Aso2eX@*8bZ9agG3$AqPO=d+<-EOsZ-_7eWF:0SV'=oNV%e<B&TW07N=J\HBX?
X^:<s)-O/#!m^,JRQs7;KH'"'AVSU$IS)A[a_qA2/s%XpBa_\T65bneNYM*9C46Q;g)iEnb^
msH[eoLc"8X>D;.5>'=FGr,2hS@6g-e%h'iq:B9=SR7>[<ZsYSnmfEGeD6Tr$qp_ds(9\9V-
e)iQRe`(jM\pkOD9Dq?eqoB6Gc7eHOk.PU1F:5qVs$LP)7SYc:mQMT9d-AqMX,V@g]AtCJ+a\
6D,a?%ir/>tSiXmDs'dSO5?miFOcn8]AhG8Ugc]A(o:f]Air?!gEXrEqp2QpLWhaQ29Rd)3)]A4g
G7'&9b]Af.WTp@8JYps9!(4Q_hp3SBA/t<di*QY+[H7\!A:*`.Gl9Ks3_Q=0Y]Ajb_$&C%G&2<
ph1HA:Ad<tVR_9]A]AbdQ^^*5rC]AgnMO18_3HpIlR%ul4[]A>[!L&!tPP4:/2.$Q;M2auIPE,eq
n:CSj6j`'2rWRB2.qcm&6bqc4S&tRA$ifuWps3S<iioP<\\XL!fWVi&PQi46BJ<^iI+/Z\"A
Jgn9\SUQXnsmKS+Z:jc1>5OY7"LjI8(D8-[Y8VfRhN8C4II8o'^3HbF8=WQbf:'G?2c:QM5%
E'/tD8'ThM`-:+@J,l3'`OQZod![^4-+(,AAr-t's(KDrQkb$OKeRR(?81*:AJ!7&=4$0^O^
JFE'o<WlVo/;<FfaeIf<7./!)Hds:j6hsi*DFLei<+($'RC9@s'9a=*toK"/p>+*gd`iaGR`
b;:J*lp($;1j!VpQ>p-&QK>lq2V$TfJ"lN/h,k$KkOo]Aa\C<4?SM5es/b>=b5N^Dsb2aQF+`
;<pFNikf5pRKeF+a*^.9!h'(0)6E(8K(eK_ARXC>;**p"!7L$4`J8gJ!?_\Z!$m+(J0]AXjO9
(FG4Tf3p,_6AS,j6*g"!@n\!$jjo!Z:u0+9N_m+:2QY,_6AS,_./%!K[F>5R'Ida8eb_ScLS
HP!B4:'(cTo!K[F>!0R>F5R'Ida8ea48-0Y/8K\*X#p9Ob!$jkV!#Yc.+9N_mH3VFj8-0Y/8
^O8_C!q^sAj$$k;<Oa\5*s2djaJfe^RHi#c]ARM[$!Q(0rqEXnm;IX[VuQN>~
]]></IM>
<ElementCaseMobileAttrProvider horizontal="1" vertical="1" zoom="true" refresh="false" isUseHTML="false" isMobileCanvasSize="false" appearRefresh="false" allowFullScreen="false" allowDoubleClickOrZoom="true" functionalWhenUnactivated="false"/>
<MobileFormCollapsedStyle class="com.fr.form.ui.mobile.MobileFormCollapsedStyle">
<collapseButton showButton="true" color="-6710887" foldedHint="" unfoldedHint="" defaultState="0"/>
<collapsedWork value="false"/>
<lineAttr number="1"/>
</MobileFormCollapsedStyle>
</InnerWidget>
<BoundsAttr x="0" y="0" width="950" height="46"/>
</Widget>
<ShowBookmarks showBookmarks="false"/>
<body class="com.fr.form.ui.ElementCaseEditor">
<WidgetName name="report0"/>
<WidgetID widgetID="deadd612-54d0-491c-a6c0-aab49338f8b2"/>
<WidgetAttr aspectRatioLocked="false" aspectRatioBackup="-1.0" description="">
<MobileBookMark useBookMark="false" bookMarkName="" frozen="false"/>
<PrivilegeControl/>
</WidgetAttr>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="0" color="-723724" borderRadius="0" type="0" borderStyle="0"/>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="SimSun" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Alpha alpha="1.0"/>
</Border>
<FormElementCase>
<ReportPageAttr>
<HR/>
<FR/>
<HC/>
<FC/>
</ReportPageAttr>
<ColumnPrivilegeControl/>
<RowPrivilegeControl/>
<RowHeight defaultValue="723900">
<![CDATA[1066800,1143000,723900,723900,723900,723900,723900,723900,723900,723900,723900]]></RowHeight>
<ColumnWidth defaultValue="2743200">
<![CDATA[2448000,4032000,1296000,2448000,4032000,1296000,2448000,4032000,1296000,2448000,4032000,1296000,2448000,4032000,1296000,2448000,4032000,1296000,2448000,4032000,1296000,2448000,4032000,1296000,2743200]]></ColumnWidth>
<CellElementList>
<C c="0" r="0" cs="3" s="0">
<O>
<![CDATA[店铺销售额]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="3" r="0" cs="3" s="0">
<O>
<![CDATA[退款金额]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="6" r="0" cs="3" s="0">
<O>
<![CDATA[实际销售额]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="9" r="0" cs="3" s="0">
<O>
<![CDATA[店铺总流量]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="12" r="0" cs="3" s="0">
<O>
<![CDATA[支付买家数]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="15" r="0" cs="3" s="0">
<O>
<![CDATA[支付转化率]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="18" r="0" cs="3" s="0">
<O>
<![CDATA[客单价]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="21" r="0" cs="3" s="0">
<O>
<![CDATA[总费用]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="0" r="1" cs="3" s="1">
<O t="DSColumn">
<Attributes dsName="指标1-店铺销售额" columnName="dqsj"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="3" r="1" cs="3" s="1">
<O t="DSColumn">
<Attributes dsName="指标2-退款金额" columnName="dqsj"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="6" r="1" cs="3" s="1">
<O t="DSColumn">
<Attributes dsName="指标3-实际销售额" columnName="dqsj"/>
<Condition class="com.fr.data.condition.ListCondition"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Result>
<![CDATA[$$$]]></Result>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="9" r="1" cs="3" s="1">
<O t="DSColumn">
<Attributes dsName="指标4-店铺总流量" columnName="dqsj"/>
<Condition class="com.fr.data.condition.ListCondition"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Result>
<![CDATA[$$$]]></Result>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="12" r="1" cs="3" s="1">
<O t="DSColumn">
<Attributes dsName="指标5-支付买家数" columnName="dqsj"/>
<Condition class="com.fr.data.condition.ListCondition"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Result>
<![CDATA[$$$]]></Result>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="15" r="1" cs="3" s="1">
<O t="DSColumn">
<Attributes dsName="指标6-支付转化率" columnName="dqsj"/>
<Condition class="com.fr.data.condition.ListCondition"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Result>
<![CDATA[$$$]]></Result>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="18" r="1" cs="3" s="1">
<O t="DSColumn">
<Attributes dsName="指标7-客单价" columnName="dqsj"/>
<Condition class="com.fr.data.condition.ListCondition"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Result>
<![CDATA[$$$]]></Result>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="21" r="1" cs="3" s="1">
<O t="DSColumn">
<Attributes dsName="指标8-总费用" columnName="dqsj"/>
<Condition class="com.fr.data.condition.ListCondition"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Result>
<![CDATA[$$$]]></Result>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="0" r="2" s="2">
<O>
<![CDATA[较上1日]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="1" r="2" s="3">
<O t="DSColumn">
<Attributes dsName="指标1-店铺销售额" columnName="zzl"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<HighlightList>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性1]]></Name>
<Condition class="com.fr.data.condition.ObjectCondition">
<Compare op="3">
<O>
<![CDATA[0]]></O>
</Compare>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.FRFontHighlightAction">
<FRFont name="SimSun" style="0" size="96" foreground="-65536"/>
</HighlightAction>
</Highlight>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性2]]></Name>
<Condition class="com.fr.data.condition.ObjectCondition">
<Compare op="4">
<O>
<![CDATA[0]]></O>
</Compare>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.FRFontHighlightAction">
<FRFont name="SimSun" style="0" size="96" foreground="-16744448"/>
</HighlightAction>
</Highlight>
</HighlightList>
<Expand dir="0"/>
</C>
<C c="2" r="2" s="4">
<O t="DSColumn">
<Attributes dsName="指标1-店铺销售额" columnName="zzl"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<HighlightList>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性1]]></Name>
<Condition class="com.fr.data.condition.ObjectCondition">
<Compare op="3">
<O>
<![CDATA[0]]></O>
</Compare>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.FRFontHighlightAction">
<FRFont name="SimSun" style="0" size="96" foreground="-65536"/>
</HighlightAction>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.ValueHighlightAction">
<O>
<![CDATA[↑]]></O>
</HighlightAction>
</Highlight>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性2]]></Name>
<Condition class="com.fr.data.condition.ObjectCondition">
<Compare op="4">
<O>
<![CDATA[0]]></O>
</Compare>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.FRFontHighlightAction">
<FRFont name="SimSun" style="0" size="96" foreground="-16744448"/>
</HighlightAction>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.ValueHighlightAction">
<O>
<![CDATA[↓]]></O>
</HighlightAction>
</Highlight>
</HighlightList>
<Expand dir="0"/>
</C>
<C c="3" r="2" s="2">
<O>
<![CDATA[较上1日]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="4" r="2" s="3">
<O t="DSColumn">
<Attributes dsName="指标2-退款金额" columnName="zzl"/>
<Condition class="com.fr.data.condition.ListCondition"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Result>
<![CDATA[$$$]]></Result>
<Parameters/>
</O>
<PrivilegeControl/>
<HighlightList>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性1]]></Name>
<Condition class="com.fr.data.condition.ObjectCondition">
<Compare op="3">
<O>
<![CDATA[0]]></O>
</Compare>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.FRFontHighlightAction">
<FRFont name="SimSun" style="0" size="96" foreground="-65536"/>
</HighlightAction>
</Highlight>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性2]]></Name>
<Condition class="com.fr.data.condition.ObjectCondition">
<Compare op="4">
<O>
<![CDATA[0]]></O>
</Compare>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.FRFontHighlightAction">
<FRFont name="SimSun" style="0" size="96" foreground="-16744448"/>
</HighlightAction>
</Highlight>
</HighlightList>
<Expand dir="0"/>
</C>
<C c="5" r="2" s="4">
<O t="DSColumn">
<Attributes dsName="指标2-退款金额" columnName="zzl"/>
<Condition class="com.fr.data.condition.ListCondition"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Result>
<![CDATA[$$$]]></Result>
<Parameters/>
</O>
<PrivilegeControl/>
<HighlightList>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性1]]></Name>
<Condition class="com.fr.data.condition.ObjectCondition">
<Compare op="3">
<O>
<![CDATA[0]]></O>
</Compare>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.FRFontHighlightAction">
<FRFont name="SimSun" style="0" size="96" foreground="-65536"/>
</HighlightAction>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.ValueHighlightAction">
<O>
<![CDATA[↑]]></O>
</HighlightAction>
</Highlight>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性2]]></Name>
<Condition class="com.fr.data.condition.ObjectCondition">
<Compare op="4">
<O>
<![CDATA[0]]></O>
</Compare>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.FRFontHighlightAction">
<FRFont name="SimSun" style="0" size="96" foreground="-16744448"/>
</HighlightAction>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.ValueHighlightAction">
<O>
<![CDATA[↓]]></O>
</HighlightAction>
</Highlight>
</HighlightList>
<Expand dir="0"/>
</C>
<C c="6" r="2" s="2">
<O>
<![CDATA[较上1日]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="7" r="2" s="3">
<O t="DSColumn">
<Attributes dsName="指标3-实际销售额" columnName="zzl"/>
<Condition class="com.fr.data.condition.ListCondition"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Result>
<![CDATA[$$$]]></Result>
<Parameters/>
</O>
<PrivilegeControl/>
<HighlightList>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性1]]></Name>
<Condition class="com.fr.data.condition.ObjectCondition">
<Compare op="3">
<O>
<![CDATA[0]]></O>
</Compare>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.FRFontHighlightAction">
<FRFont name="SimSun" style="0" size="96" foreground="-65536"/>
</HighlightAction>
</Highlight>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性2]]></Name>
<Condition class="com.fr.data.condition.ObjectCondition">
<Compare op="4">
<O>
<![CDATA[0]]></O>
</Compare>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.FRFontHighlightAction">
<FRFont name="SimSun" style="0" size="96" foreground="-16744448"/>
</HighlightAction>
</Highlight>
</HighlightList>
<Expand dir="0"/>
</C>
<C c="8" r="2" s="4">
<O t="DSColumn">
<Attributes dsName="指标3-实际销售额" columnName="zzl"/>
<Condition class="com.fr.data.condition.ListCondition"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Result>
<![CDATA[$$$]]></Result>
<Parameters/>
</O>
<PrivilegeControl/>
<HighlightList>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性1]]></Name>
<Condition class="com.fr.data.condition.ObjectCondition">
<Compare op="3">
<O>
<![CDATA[0]]></O>
</Compare>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.FRFontHighlightAction">
<FRFont name="SimSun" style="0" size="96" foreground="-65536"/>
</HighlightAction>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.ValueHighlightAction">
<O>
<![CDATA[↑]]></O>
</HighlightAction>
</Highlight>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性2]]></Name>
<Condition class="com.fr.data.condition.ObjectCondition">
<Compare op="4">
<O>
<![CDATA[0]]></O>
</Compare>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.FRFontHighlightAction">
<FRFont name="SimSun" style="0" size="96" foreground="-16744448"/>
</HighlightAction>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.ValueHighlightAction">
<O>
<![CDATA[↓]]></O>
</HighlightAction>
</Highlight>
</HighlightList>
<Expand dir="0"/>
</C>
<C c="9" r="2" s="2">
<O>
<![CDATA[较上1日]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="10" r="2" s="3">
<O t="DSColumn">
<Attributes dsName="指标4-店铺总流量" columnName="zzl"/>
<Condition class="com.fr.data.condition.ListCondition"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Result>
<![CDATA[$$$]]></Result>
<Parameters/>
</O>
<PrivilegeControl/>
<HighlightList>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性1]]></Name>
<Condition class="com.fr.data.condition.ObjectCondition">
<Compare op="3">
<O>
<![CDATA[0]]></O>
</Compare>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.FRFontHighlightAction">
<FRFont name="SimSun" style="0" size="96" foreground="-65536"/>
</HighlightAction>
</Highlight>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性2]]></Name>
<Condition class="com.fr.data.condition.ObjectCondition">
<Compare op="4">
<O>
<![CDATA[0]]></O>
</Compare>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.FRFontHighlightAction">
<FRFont name="SimSun" style="0" size="96" foreground="-16744448"/>
</HighlightAction>
</Highlight>
</HighlightList>
<Expand dir="0"/>
</C>
<C c="11" r="2" s="4">
<O t="DSColumn">
<Attributes dsName="指标4-店铺总流量" columnName="zzl"/>
<Condition class="com.fr.data.condition.ListCondition"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Result>
<![CDATA[$$$]]></Result>
<Parameters/>
</O>
<PrivilegeControl/>
<HighlightList>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性1]]></Name>
<Condition class="com.fr.data.condition.ObjectCondition">
<Compare op="3">
<O>
<![CDATA[0]]></O>
</Compare>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.FRFontHighlightAction">
<FRFont name="SimSun" style="0" size="96" foreground="-65536"/>
</HighlightAction>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.ValueHighlightAction">
<O>
<![CDATA[↑]]></O>
</HighlightAction>
</Highlight>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性2]]></Name>
<Condition class="com.fr.data.condition.ObjectCondition">
<Compare op="4">
<O>
<![CDATA[0]]></O>
</Compare>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.FRFontHighlightAction">
<FRFont name="SimSun" style="0" size="96" foreground="-16744448"/>
</HighlightAction>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.ValueHighlightAction">
<O>
<![CDATA[↓]]></O>
</HighlightAction>
</Highlight>
</HighlightList>
<Expand dir="0"/>
</C>
<C c="12" r="2" s="2">
<O>
<![CDATA[较上1日]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="13" r="2" s="3">
<O t="DSColumn">
<Attributes dsName="指标5-支付买家数" columnName="zzl"/>
<Condition class="com.fr.data.condition.ListCondition"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Result>
<![CDATA[$$$]]></Result>
<Parameters/>
</O>
<PrivilegeControl/>
<HighlightList>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性1]]></Name>
<Condition class="com.fr.data.condition.ObjectCondition">
<Compare op="3">
<O>
<![CDATA[0]]></O>
</Compare>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.FRFontHighlightAction">
<FRFont name="SimSun" style="0" size="96" foreground="-65536"/>
</HighlightAction>
</Highlight>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性2]]></Name>
<Condition class="com.fr.data.condition.ObjectCondition">
<Compare op="4">
<O>
<![CDATA[0]]></O>
</Compare>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.FRFontHighlightAction">
<FRFont name="SimSun" style="0" size="96" foreground="-16744448"/>
</HighlightAction>
</Highlight>
</HighlightList>
<Expand dir="0"/>
</C>
<C c="14" r="2" s="4">
<O t="DSColumn">
<Attributes dsName="指标5-支付买家数" columnName="zzl"/>
<Condition class="com.fr.data.condition.ListCondition"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Result>
<![CDATA[$$$]]></Result>
<Parameters/>
</O>
<PrivilegeControl/>
<HighlightList>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性1]]></Name>
<Condition class="com.fr.data.condition.ObjectCondition">
<Compare op="3">
<O>
<![CDATA[0]]></O>
</Compare>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.FRFontHighlightAction">
<FRFont name="SimSun" style="0" size="96" foreground="-65536"/>
</HighlightAction>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.ValueHighlightAction">
<O>
<![CDATA[↑]]></O>
</HighlightAction>
</Highlight>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性2]]></Name>
<Condition class="com.fr.data.condition.ObjectCondition">
<Compare op="4">
<O>
<![CDATA[0]]></O>
</Compare>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.FRFontHighlightAction">
<FRFont name="SimSun" style="0" size="96" foreground="-16744448"/>
</HighlightAction>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.ValueHighlightAction">
<O>
<![CDATA[↓]]></O>
</HighlightAction>
</Highlight>
</HighlightList>
<Expand dir="0"/>
</C>
<C c="15" r="2" s="2">
<O>
<![CDATA[较上1日]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="16" r="2" s="3">
<O t="DSColumn">
<Attributes dsName="指标6-支付转化率" columnName="zzl"/>
<Condition class="com.fr.data.condition.ListCondition"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Result>
<![CDATA[$$$]]></Result>
<Parameters/>
</O>
<PrivilegeControl/>
<HighlightList>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性1]]></Name>
<Condition class="com.fr.data.condition.ObjectCondition">
<Compare op="3">
<O>
<![CDATA[0]]></O>
</Compare>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.FRFontHighlightAction">
<FRFont name="SimSun" style="0" size="96" foreground="-65536"/>
</HighlightAction>
</Highlight>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性2]]></Name>
<Condition class="com.fr.data.condition.ObjectCondition">
<Compare op="4">
<O>
<![CDATA[0]]></O>
</Compare>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.FRFontHighlightAction">
<FRFont name="SimSun" style="0" size="96" foreground="-16744448"/>
</HighlightAction>
</Highlight>
</HighlightList>
<Expand dir="0"/>
</C>
<C c="17" r="2" s="4">
<O t="DSColumn">
<Attributes dsName="指标6-支付转化率" columnName="zzl"/>
<Condition class="com.fr.data.condition.ListCondition"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Result>
<![CDATA[$$$]]></Result>
<Parameters/>
</O>
<PrivilegeControl/>
<HighlightList>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性1]]></Name>
<Condition class="com.fr.data.condition.ObjectCondition">
<Compare op="3">
<O>
<![CDATA[0]]></O>
</Compare>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.FRFontHighlightAction">
<FRFont name="SimSun" style="0" size="96" foreground="-65536"/>
</HighlightAction>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.ValueHighlightAction">
<O>
<![CDATA[↑]]></O>
</HighlightAction>
</Highlight>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性2]]></Name>
<Condition class="com.fr.data.condition.ObjectCondition">
<Compare op="4">
<O>
<![CDATA[0]]></O>
</Compare>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.FRFontHighlightAction">
<FRFont name="SimSun" style="0" size="96" foreground="-16744448"/>
</HighlightAction>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.ValueHighlightAction">
<O>
<![CDATA[↓]]></O>
</HighlightAction>
</Highlight>
</HighlightList>
<Expand dir="0"/>
</C>
<C c="18" r="2" s="2">
<O>
<![CDATA[较上1日]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="19" r="2" s="3">
<O t="DSColumn">
<Attributes dsName="指标7-客单价" columnName="zzl"/>
<Condition class="com.fr.data.condition.ListCondition"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Result>
<![CDATA[$$$]]></Result>
<Parameters/>
</O>
<PrivilegeControl/>
<HighlightList>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性1]]></Name>
<Condition class="com.fr.data.condition.ObjectCondition">
<Compare op="3">
<O>
<![CDATA[0]]></O>
</Compare>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.FRFontHighlightAction">
<FRFont name="SimSun" style="0" size="96" foreground="-65536"/>
</HighlightAction>
</Highlight>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性2]]></Name>
<Condition class="com.fr.data.condition.ObjectCondition">
<Compare op="4">
<O>
<![CDATA[0]]></O>
</Compare>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.FRFontHighlightAction">
<FRFont name="SimSun" style="0" size="96" foreground="-16744448"/>
</HighlightAction>
</Highlight>
</HighlightList>
<Expand dir="0"/>
</C>
<C c="20" r="2" s="4">
<O t="DSColumn">
<Attributes dsName="指标7-客单价" columnName="zzl"/>
<Condition class="com.fr.data.condition.ListCondition"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Result>
<![CDATA[$$$]]></Result>
<Parameters/>
</O>
<PrivilegeControl/>
<HighlightList>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性1]]></Name>
<Condition class="com.fr.data.condition.ObjectCondition">
<Compare op="3">
<O>
<![CDATA[0]]></O>
</Compare>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.FRFontHighlightAction">
<FRFont name="SimSun" style="0" size="96" foreground="-65536"/>
</HighlightAction>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.ValueHighlightAction">
<O>
<![CDATA[↑]]></O>
</HighlightAction>
</Highlight>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性2]]></Name>
<Condition class="com.fr.data.condition.ObjectCondition">
<Compare op="4">
<O>
<![CDATA[0]]></O>
</Compare>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.FRFontHighlightAction">
<FRFont name="SimSun" style="0" size="96" foreground="-16744448"/>
</HighlightAction>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.ValueHighlightAction">
<O>
<![CDATA[↓]]></O>
</HighlightAction>
</Highlight>
</HighlightList>
<Expand dir="0"/>
</C>
<C c="21" r="2" s="2">
<O>
<![CDATA[较上1日]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="22" r="2" s="3">
<O t="DSColumn">
<Attributes dsName="指标8-总费用" columnName="zzl"/>
<Condition class="com.fr.data.condition.ListCondition"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Result>
<![CDATA[$$$]]></Result>
<Parameters/>
</O>
<PrivilegeControl/>
<HighlightList>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性1]]></Name>
<Condition class="com.fr.data.condition.ObjectCondition">
<Compare op="3">
<O>
<![CDATA[0]]></O>
</Compare>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.FRFontHighlightAction">
<FRFont name="SimSun" style="0" size="96" foreground="-65536"/>
</HighlightAction>
</Highlight>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性2]]></Name>
<Condition class="com.fr.data.condition.ObjectCondition">
<Compare op="4">
<O>
<![CDATA[0]]></O>
</Compare>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.FRFontHighlightAction">
<FRFont name="SimSun" style="0" size="96" foreground="-16744448"/>
</HighlightAction>
</Highlight>
</HighlightList>
<Expand dir="0"/>
</C>
<C c="23" r="2" s="4">
<O t="DSColumn">
<Attributes dsName="指标8-总费用" columnName="zzl"/>
<Condition class="com.fr.data.condition.ListCondition"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Result>
<![CDATA[$$$]]></Result>
<Parameters/>
</O>
<PrivilegeControl/>
<HighlightList>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性1]]></Name>
<Condition class="com.fr.data.condition.ObjectCondition">
<Compare op="3">
<O>
<![CDATA[0]]></O>
</Compare>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.FRFontHighlightAction">
<FRFont name="SimSun" style="0" size="96" foreground="-65536"/>
</HighlightAction>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.ValueHighlightAction">
<O>
<![CDATA[↑]]></O>
</HighlightAction>
</Highlight>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性2]]></Name>
<Condition class="com.fr.data.condition.ObjectCondition">
<Compare op="4">
<O>
<![CDATA[0]]></O>
</Compare>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.FRFontHighlightAction">
<FRFont name="SimSun" style="0" size="96" foreground="-16744448"/>
</HighlightAction>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.ValueHighlightAction">
<O>
<![CDATA[↓]]></O>
</HighlightAction>
</Highlight>
</HighlightList>
<Expand dir="0"/>
</C>
</CellElementList>
<ReportAttrSet>
<ReportSettings headerHeight="0" footerHeight="0">
<PaperSetting/>
<Background name="ColorBackground" color="-1"/>
</ReportSettings>
</ReportAttrSet>
</FormElementCase>
<StyleList>
<Style horizontal_alignment="0" imageLayout="1">
<FRFont name="微软雅黑" style="1" size="120"/>
<Background name="NullBackground"/>
<Border>
<Top style="1"/>
<Bottom style="1"/>
<Left style="1"/>
<Right style="1"/>
</Border>
</Style>
<Style horizontal_alignment="0" imageLayout="1">
<FRFont name="微软雅黑" style="1" size="104"/>
<Background name="NullBackground"/>
<Border>
<Top style="1"/>
<Left style="1"/>
<Right style="1"/>
</Border>
</Style>
<Style horizontal_alignment="4" imageLayout="1">
<FRFont name="微软雅黑" style="0" size="72"/>
<Background name="NullBackground"/>
<Border>
<Bottom style="1"/>
<Left style="1"/>
</Border>
</Style>
<Style horizontal_alignment="4" imageLayout="1">
<Format class="com.fr.base.CoreDecimalFormat" roundingMode="6">
<![CDATA[#0.00%]]></Format>
<FRFont name="微软雅黑" style="0" size="72"/>
<Background name="NullBackground"/>
<Border>
<Bottom style="1"/>
</Border>
</Style>
<Style horizontal_alignment="2" imageLayout="1">
<FRFont name="微软雅黑" style="0" size="72"/>
<Background name="NullBackground"/>
<Border>
<Bottom style="1"/>
<Right style="1"/>
</Border>
</Style>
</StyleList>
<heightRestrict heightrestrict="false"/>
<heightPercent heightpercent="0.75"/>
<IM>
<![CDATA[Uq:bG>@/4!$H7l=G:>+E$Gg"?EOS8b#'ZEl&1GmL`>qQi[nti^PSPk=:o$O3]A*<WO]AD(-lGM
\h`c^QqY3KolE:U7`RYA^QAXV7\5Y(2R#NIuh7K!1suX,V^_#t.'F1O>)Wp^K-tRjf&9)bq\
^kmou)4UD$,85@M-A4,YD_s>Y=%#OMH?_]A,$5(E)2qrM0co_0midJI9l^NbM44;`dP?Ss^aN
.OT\</X]A`AGJlYLa%gP:;MfSc:rkANm(^'bDUsG:+g<2X/a)!;C(RMgA@SOo:W[hFX8a=Er2
O&E^g+m/_X/f,3!<$Q7EtJ/,]APJs1Dl8(pEJ"R5+5]AW]Ae\[GmAU4EKU]AZ+mZ1CniU9l'S*>T
5=H1$7_"($SW%^jKs<`Vr.T+qjmd4B'`%aIL@kNCJC9MkZB.tks't9m4^_Lo[rJIh2FHD:k0
!)X^nI%%=+9[$K,X>g62NQa1;pP6VTL&MW(1<Us(gJpc<`3Rn#j9d)H(bp;<46<`bUBJ`\.0
7V>>?I4<fC0*B4IO+8KSod^k[Q)KrhVqd=gR8I.Ae3UD.'njR(pRMbqj2]AQSf?RfBgrF*C*/
49nr'A+>U>3QO91.eHNCN<`J2QZe.#Ob-snQ>E5?kLalc*(Ko(uG9%B=P,^c4kRirqM*Bn5C
,rfd^W<:<`Un[V3D#-7Jg.cAj[;J8\Bn+@#PURlf1_J_8N?L2j=n'kA'.k4nkiAdsQ69YZkZ
9L.b8+1*_8/^]AH%Ccs0UE`K4:m7:l,ks;IbRc*?/6-$M\)BTcpql;S>@hc`_^b,$8q(E._H9
TJFe&.n:@q8?_+dPm)M;,d9f)&=cbsb.r/R5A"Q6qVu!a.T1-m.KaOTGqZ\U9N.7JDWss*`A
A:fHQ5I_eA@ESL'P/Bm>?j8FrS^4uFQcVC'4Y^,B]A^@,r>;tbPB*h*b?'R1[e)Eo,VB>r^d8
h&j!B8+g-G!.HtV5`]A(]A^"0qd6?"7FYK4HW53JfG"!X;+\-`uY/]AIPh@o2*9,47jfF->dX9>
%'+/[O'MZ=]A%<pka[WjO!Xf%c>L7:\T+kHd1^d-'?Voi#'OcaQ-XXbTe74*N%JPY[A."#$"R
4#sH*g.Na<=Q:Zh>:K`1=naeW'Ol!E)_\68q[P-?#<!:+V1?2PI%.Kdc''Y9lanJS8FM$=mC
oLmr[7g(Y?U0oGd!4@eIQ[q*p2??gT?TNgCItR*nqC5EV7,L&H"NMYj8O\TQO>oiQq0G,)E&
@P1Z/X+-GXos&bg-S);7&W+K"A4m[YE'l\<V_Yc[h9f0N*\-)!oqp&d,Jib[H7,6dC>`mplX
#TX5UuHP`Z[j1KS:He;YG#!L/SbWSWiBT+.,r_7qSP,_cD!IIm8<E&hf75r-EA6kRt\b`R'o
o7[:RhCU9G:,WCX1[ZqT9XMr*Z5/Dq%?;=gCl60\qH/tI2&8L&KM-_DZ>B*Rdl\NFWbkWJKb
l-F2`7VI#uq]A@p^k]Ag301BmN*rh^'A9g\Z2YR'K3+'`;U_mJ[bAri:jrijVol8Vt`chc]AbSJ
Fa:Q+#N,dXKtu\WN.ko6.[lBsF+VJXh[g5:u=b0:X*Jm2*+*6R>ku=)U%.3,j^<457W!>s#u
IUG6`P-fWr2&uaBiZ1pf;A>'.QV#oj?HQ0$ZNIO"rl=Xs0(J`$_=G.0HGnFt@d&&pm\HrU$q
_JuJd^C<nq3]Au]A(fRuT&`=S[/l>%9lqfre+"bC^b80q2n!d3'Ec\;#r-)Wm="RtJhliu63R;
^BWr#T5$,Du'8A^]AY&`Ds,p*aKpdO*u/<&:&>-i'@l*nA%i$;$g4mq4HY\PjIZOcYZ,l)ch3
]Aj^>R]A-#[!fRA,]AKC*mR5jWIej"kGJ66,r0`\*6h:n^k#\LZFFUJ#O]A0)rqO.tg(.?anE?m.
Gut.qTR;Q-gp90W)8lX&C0rqE/ZRd*-PT5X38%X)Mh>/^i*W`,dCb0K8XZb.MWN98.biV'p9
tcRhTh37fSu7PI3GG]AoSu(Gch>ee<5iU:SrqHa2f*E*3TfB=f_aUM"n@oKYAl<$?CdKtq->1
hp-<o3#CGZA"YsF_4Ls*LV*,ke%WXP1oWR#:59qbu]A]AV0\diUpYK@?l4hAQER<lX^a"Z<%KQ
f:UR[Ra4jr:;qY8GRY2tJ=3pBp.OiD0MFqA]A+,cE(.+TdmUR'VU\q^g=nUY0OE#PbutQ,VcF
]AH3Vs7J1DXjT8Yl2]A%X&GsMkq)tN<n]A_D\W\(ad8Z"u=scuU2lNh2[?T$S^263"INjF\#NQ`
D7ap7$+jcHuGg.7_#ICF-RF"jq1K*F>ZmM!CHtL=@]A*N((FGY#T?@T-3f&)Q9WNd%=a?Q!4H
kXHmeAYLD)s%LmiA"I/]ASoQ[FlH$W]AV-n+,(([4V)CYu%3W>rNO_u2g^T(_YA9$X]AfQ$>o,Y
9un%%gGh(g#<KW;pIF&5C42:mJA[hY_@!@AK;0hWIQZ<;8`h/J>DLr]A1(G\D<\3I.]AOd&&.p
cZ'i*=lfJTX(bOI9+*rB)5P7SU*0U%eP!]A1D"hI,iWrioO2<]Ad$PY=&LN;#51X/GZe:.+3*`
k[al!M14jJM!H]A.``HcZ4`</jHk".+7T/=)+d>4DVUYAtX/@.2Z>N:E+MW&0Jno`R6Gu\.<C
9;6HF:E-;3UpTf\,`->rWp3/O_gAIqW.pS(t,Y:m&uLi3kaN*sdaLfEup?06(=JF&l8?Te*/
Ss0"=I0[f[1;kq^$pO"UTlLA;o:Vb#>4@G%LOgGSOk(;5o)m4cJk#[X@`*3Y2o8YX)L9gmY$
u8raY$KB$8%g.)@d75P9bZgdPFJp[qf["AKIWN3WT]A"?"rml@b_g8mI(c-Wb_*kUmD>gHX!?
Z5ZUu,SMWE*Uc"BSY:7=dfTc^YYm"$!h]ADoKWT(?0JK3<;H*RFAtNCd$ZB@MU#cK#4GPU.M=
Hr^u^98h-U+Y$uOOkPKRWDc8E!tXsd+_pGV(+pFkBn.<1KVJ<[#,]A@L<Oo!Ba9jp1)8P&e#$
3/'BS;lX=P5LT@WQ?K%2Y,5eH@t^;IeNRD(r&`pak_N`G%G*_]A`^$]AV8a%Dc>cPN+E^ESdCT
3eh6BK'-C49a)WkT\*J9A$;>Q7)P(&=!>j&f[c%*cT/iN'<pMdpZ:Z@",;BdH7qG>q+UZGC`
oP"'7H/fBE9HO4Fd;%tX!ms)iTIo9WBWQfd51%u5[3i!AD&=W#S_Nu@XTSuj#X</(s,iAgEo
&q=B0p[4@gYm*:q'\6MD,mF>@B`ZNBG5U;cm#+,'E[IkG!7'#<`4!u:K3b!!gth[[-*o3SdG
%@Vhn#F&%u-e^s[88U!&P#8N'@Z2<j+_]AW]A=C[D]Ab3@A"F<#k0Gt(4="0EK=#5LQfh&)\;@*
GbhpJh"<9sIjUQGOiV'lLECNC8(_qmIKRr`hG_BBp-ACOTt2m48b@$3l3$!VY!CL%MPn.3l,
n?!O'HpJVOiG2J??HiMY2R+90ZSal7:aGu.7l*0B/'Kka7D<j)5,NVD2ZYd_+F?TqqNU[]A)8
PijL/#c7sTY^470oDuR*eQMi;"$?3nk7j#`>pM2&Wl7k'QE*=-'k`_QG0N'Y(Fg*(J6+?UT,
!)oVO=tkRa6]ASV/R%>pV`9n^WaeMGd*\2LL$S@W[gVbF5F_bH[$@n[1?kCRI%lXRD``rFr0P
a7cKU1do?`ZFIY1P$k]Ap#%klIj:A6oH']AdlFPX"',s=aJh)Bjf->;UNJ.,Wm6>Q[$eFYQ5JJ
MQYhq`\mF6L*/<NjN,fma%M9rdg-AH`mq?1ug]A@Fc9?QGuh4((77WZi>tgZ#n'r5`lJR>=8"
2<O+tX,NiBjVW[m[fVrUgU?;M8qNJfT3+P&p%/s>UWU/'+c"l4UpZuK;L$BTXAsXbjb^4JCg
)=.B3?QG.qE)i&Odi(sh(;i54)_6V]A@5Uokp1Jc$9>rbdEZ;8Zh?`:_R"SVGaX'61)5afBFg
oFcp`LZ=WDTi/sBO:$GnHYTaQs,W\3!o^]An8gSkGGK6M,<aH?Z7/?g(Z#[PTK)iFrho+_Wm]A
-loS$8GGd'Tnc^&V*4%@8VY3A4'*S*8L#[tgnd._H+(AVoo<]AqZlLO]Al4&0sc.+`0^GtR+^;
75Sj%7]Ak$k7P[S1O%(/kZrApa%H(@'ZpG`C#c:AI[4>12&H8f0V74jE"D-dCX>Mm#q9KN<kV
sc;_!4qo?d[?^SOM&F]A7\J!*OtK%gWjBtpg2f;-o>>5PZ4O^B/&h+ETP/DS!R5CgFO^Nq3>@
$X+^3(CF36l?>\je/rap@=?Zk(fO<4SKJtf$)oI]A`/A^hW#'4p!96u;qPB6PIf)th<1\qlpC
*$cS'E#T=<IP5Q?u=<_+o27=-D>qS/\akm(`Y?05A8/pIpu<Z[G<m1C/G1D\d7H=0,U7fC3'
'8m@uE)E>/h6]A8B-R]AmK\A?8r-N7t23r6,f,Oe_4MXI<PX'A>S[[14Q`mWWAaNFXh/#&2=9F
RRV7hm)M2jpDEni+,!aPLT(?r,)7Trjig00:R7p@(.Zd1CJI'#2jIZ0GeX7GgW2bJsC>1W-L
m4":DDa.aC@2;:2Sd]A)/3F=QXBF*=f]As6/25Fp[JQANfY^H-gD:A+fB"BhQT/!+CJ#l?SjgM
p%)#_GUA_ScP3$QWR,3DPBt&?M3kMOaf6Bf@b>d%r]AM=b'(U!P/EiB,T)a<<,=>`]A!m"aoNf
PPU^+/GN65#4^O5g)Tp#c%FhA[F$&K'K.U,o@7CH8P6dY3T0[$-a@GW>$inrfJp=:Itq768k
,R^0CMtq0P2O)l,?`D:b7,P[-8K?9$3ja@d2fp[PFS!3-X\jdY("11%RqXs4/@>n%.]Al`rg0
+>o8k5Yo<9K6[>s:(D%]AG,W/9)A:p(R4&9i*,*@sD>"ooT`6gR@]AK9-OC_3i^aW5`&j*$s.t
#'L#]A7]A^B%X-ffsgC?>2[(HF#,4laV#DtS/s%A]A^cq^T+P=&:Eu3+sC3R.m<4(i@_t[YI\u'
lgJ-(*p!e[9B<0qb#-rB0FqMr2k;!?.CO4OE_@W$8jDlV80"(GYQ;=QkC[?-ns:UkQrX'%&m
8,\1\)lbCQSg%`uN&^Z>Dm88D.DStktL5WQn!Qa`.JkXQ9`AmPko6R\%-DJQq0=X>h?DYJE3
iIS\aOKt\r(I:nC'>r-+r.`B"j8.tdANT#N#IHNWS]AQuZ$<!J\0p/\4[`.lGZi<Tn5IsR'<,
okA4,D^62)'uOZE=k_F:K8e?]A7NY@hY2t3d&\M=j3?-o]AG`65m/%"%\EaWj<cN_%D!T-*Lj7
^fo--W;GG4jQhL[5loNtjXN=o@f+&+,fnj=^Y80,qKg'.jE.q>2fWUM5G]AIQ6]A\]A-^)EeCpb
E+[9HO?u.+-^9'pq:G&9r7aWpRd\<QaY%te4Ak';/=,"X=1CTM7,X_gGJ,<':[$q,:9pWP*+
H*>O]A+LTTt*s/j-\b0-f>@o:\2Wg,&!W%qbR^dOtdI]An4#e'O3V>$sN7\M>qBsk\)&^`pm#[
_fo,Wf6HBA=@?_8E^!iX4:,i,_@%RfpIRFC0FBXR[t*Y?^;__md1#31e8J]AYl;R@Skfs90]A_
5^tltXohdK5C%H<$m$<0#;hl<L-$5cABiiMc@9V1>37CA:!2C-didD7]AL`T@A[kSd0-H&h\>
5>E40WCShUXAEt+,okFiB%REhq64D*85^/eR7b9g(?k(U;Ba&#5BC0;T%;`G^qs!F#_6Xdc_
+^N2b;aN@BX:mYnS!XJdnlX=Agk4h9-a9(q;GhYj0^MdoCHi-lhkk#Hb5$+kq!)p#\p]A4Md;
5%=37"ee[ntR-qrru!VD;ah"U)/?8^O6L1BYMaOkqD@j#W1!k.9`Y;(FK:*j!/'A%Edr6g`K
eaa^%NcD<aELPfJ619<n\/.XalTF\l4e$_jL!P'>ff"4'P-3L8GH^FQ%]A*W[%J6Ai$q,14Lk
7XA)d5Pf>\98]A\TH6bF#,37'9+)-@nbAd(U[-1Al!=%Lb$?>Q,D_7J?riE9OnH_F1Z[WL>Od
Y5ko+"7c$f$ho&ED5&jhuT$rh=0H.X(?6Yt/BTj(kfqcZshapHS.[#l_P]A.PbH(Gu=&Ic_Gc
@3<#4B$+fO9r7C?:>7/#qj.6W`$suTT$=uOf/[b&d(mX/TPr=^tggBp\lo>7r(5n\+ohprV%
RY[T>Y\HI[8?JbR:u5puU@`HdJFIZJJ=aTMpo?DJ0)&/:?>p&B'DPXl'2eJjJL^oq8MrPt/&
eNYjfbe!Zj"bWqoEc`/n?Z2m5e%0@3VEZj`Z3Bi5Dqg[J>f7Yh9TWl]A]Au^[d/@F<_q-.1AI8
4^$G"ia`o&38S.$aB.ZM,j-fU3(H+mQL7m$$?h8>M*a)ij'QfHRMe3@RIWMCUm)Y);LLq76^
aPEsQTI+1O74jrKIC&A_MTSkk"N)_[3Rp+o:hEp<1;==>'(5<A.HCraGS6d"J(;jZ'n)UT`&
3I_b4:P@-$//Rj<=s<)8cPj$gXdJr.u.Uf%D%7=$R@OMpKdpq?]AiWG=u?'J*=2;N!Ct_u-%Z
7Z.7;hKh=jm+gBBODND`r+8`s04*_X-);e`F&d!cGsb=8D+(j@J`CMKZ<\GVtlZ!%'_\LJf%
>qi%7n`=m@*u`8*5RJpJQ3pSjRD;U50WY!&746dl(1d0%PiQ`WN>5qR6(d!#NdBq_JY&/=1<
*7R09MOG1+ZnSG[:2#:VVjM!Fk1R3(J85d3;8Tl[)A:'I:,k>%LE1HDGViG0IG<cDXp!g%<"
@:0UtTP[$T+-)#Q)gqga9RBIdZ$/dI\.aU\U_1&KEA*&iXs&afC7ug0=URopIK:=ISfqC`s?
)^Nn'>>GR;_:[eL_uYg)Wbp1%f<tb?BPa.Qu(:MS-)&=P?b,FdV-e'\E=q[bGn=7@hsm0]Abj
PnEfj_Z).<VMWgm?RaKoPV]A'[Q(CJ]A<6?[^Ud@FXZ%^Zk+qFLbL^c%WVT/-in<XR+cPE8*)"
D3I<6,]Ah\B_+g[Vi3_rV3MbABgWLGq`.bc:+FmN#0;S0uI%@Qj//jg:A`>3M9<7m3C`)REqm
04AS9SDY=p!k[i)1R)5@?U'e!js*\X[oE*Y/3#Fc^RS;II=ZE:!tuL?-*FgJ["giTQ<lg;q6
@g.tm&!5i&"ZT6)Xl?:TigP/"l<]A\6.!oK+S0<*?(l,Q[US.3K=g[9Napoh=305@P0cf?YmM
uB>b_qK?n2T$1:]AG6AcqO>,u":hZp>a-at<8SZ+c8Ag&,fCAIZn<cV1bi)7T!Z`*^?YDZbp4
b'34_[r`/)06/]AC0E<T30`J'PqI+2]AK_8EFeP_'VE93H6q4c1Vr!6KM`3jM;cJ*4*p60ero+
-NC1XFi[N>Vm7G#W-Q1Me1]AEag1c09:L3n$PfA;#S]AK'lNb'mQY7HEH\l5^-RFon5Pf(Mr*E
H4%o#0@1cC*jUdnu6qonnPE1Y!S1dStY2P*o/<m<3SN.#6@;0Z<'hU`+m>d]A)n`$:i/3UD-+
#:3r\n7QkrXakp.tI)<%"W^[YJ:JncqhXpB)U7qNA=O'W;YWOLKYef.oln+"Of;nW.U/@)Ll
;TShEU`B(]A2^j7Hb%`K]A:&)bY#JQ,s*i6c5Zd.F#,uK=ac]AlN`%B?]AMaC6Qdh5/KU6HT+U&b
ShYp&C4UKqpc-<9l!4OMdF?`.^o0@+9*Jjcf=g/[SD.r!O'N)7m,a"q2fpY%g&'e+8sid3J@
Tj=<,&tLT5/oS3S7+!;0;2[p@_N\?L`>X5jB@q@AYlMidB3IDIRUZ8l'>mTo=WAC\`V:C>;1
IDnjsPt4fsmr4[rj;`53C=h!;lS-djd+Hh[f)3_PgtjCLTYjj2ffibKMI#^*N4Caat0<=G]AJ
*+\8$^04q7?fJk96[S<+*Q81RDou3s".V9g/i4,LHlUM?O?'b6U[Bls[]AHYaUSAV>C-L*cP@
So85>X(;SqNYH,)p*8N1qiQJ91X8m0Z;:o>?,-j5uc`0REB+1*I_-LfS]ARe`S,qG"6@]A"j?`
>pQ!\i3*&4B=J#S5%^PV3a'\VN,5_El\[IKeiZ[@3e!pg.n8#OptPgUapTnTJ_d'5\r[!3I/
6&@EmSnoPckhVR&LiSUYSurs,V/bPTpbn718efskR),Z\nlARM`pDdEQZDo^U[kM4K4*18i\
LfGcPWM:kcN3b<A&k"BE(Y"/9dQ[es\)))t-3:gc6a)L$(pn;-J'86tK%]A4SgC2R8e/c]A^U1
-hmAj&Od@Z!WO^2rPhh",/hD>:NK"c3Xo(GKmD-J]Ao>@]A]AEZe4/Uk"^.)ucNAClQ'KICe9T5
?6^U8>:C@OWo)gd(C:&Op\2`c:[;OJn_eb*mtJs,U1a]AHs]A!SI60HC^Mbr'eCmW$+Te`5S"a
,'M]A,/!IH5MBeEPmUqf-5t@jt!YIWpmW3uD*?=cn5Vq7<DD$f8eQXS0fALWk#K/cUo;.FhOJ
G=B9f>>]AGF!k2MU$W[r^=+hpu"8OE!@\-/\*5LpoQ:hM)Ab"KsQTsi$9t!_tYf^`GUt+2MDn
l9MUR5:>!Sk',2Occ""#uOlT:nCTkpd3Gf,VQVjL+6YI!K#Nh1)*F(1'.O%7%te6sZhh;et;
_>X?<AGk'Qp='7V=1=f^XZ\fltlW`Y/4^F,E?4S&#1/>&Xhl((6`?#UP2kDQ((D2Y7&5/s_R
hDF5aqdV!4sY]A]A8Z*3&hI7O2/DRrQ"_o4mhiVqQLme`<4W;?PZTk#O+W-RV8"ZM9dX5r+GoR
/\!d#bXTZbCZ1;Ks-JC4O3Z`R8GPRJQGC'@&e">9V;ejPspGY2K'TH>1T2uD>$i_W;-/OO=#
_gN#>RV\VtIpWH'!Ap-h#Ft3qn'HM\)*4VnWr;!s/b\iCe=f,ND-J<B#?.0qR*OreQ%>pqVj
]AI7GWT'M$hO1=9H)A]A2n=Xq#\5Z\MC6WV<K(3UDJ1!-::R()A@i/U@-a'q\/Y]AphOY;X'@#S
Nl1XB.,b?el$.=?`qr'F'389nKLPd!HICC`9j/78f`H#-T.P+EEjIIUY@r!05BMHq^P%'R;V
9E]Ajh$")f;Q3DcBdB:Ym@UmrL`2ZI"H*?WQP-5C3A#aU=+PH5-I&/YOte864;i9=(LkFK^22
)#U!IWHd'Z@r>>k8Tm9E.<]A2&YN1*F:@=$Qj?MPju1CgT<Ef;<,_W7BZ#HaT'=]A:TcO*,*k6
.11/2Ps?M@?!,B%bWWN?NHbDO'&B/1T7/u3!5?@uV<I6.^8uqpY,b)+BN40`YR-bB!neMT\E
;X#N]A$ff#3@-!o2nkO$Nio[r!M%oE-)X1,C:a:PkSA*28'h6D8ujBM8<Ptc^eF'KOHRP7et-
ci\.rZ;E$#!J-@[YW'j"PP3<aK=hEc1d@>;(`-\D1a\SH]A"8qeE1GXCF`ZI%I1XJfsQCWb6A
LaG3D0<O@HJu%hCtbtV4<EU,!C0K+JGSs7O=$fb'a%4^,i3')C@q=\0E9Q.RK)$h(@@1[dA2
D82q7"u-j=7aVTH:YH#;mKA&;i&[.,qZJ(XV@i>,`^0Pg60IH<E%KTVL_>kh8Xq/;BSA%MMt
^t)>j9<=>:!0n;0#O[hA(a$`.NMb(^m9!P?VqGb>q6]A5<S4V\*i16G3HOV3m:eCjCYr:n_3S
4m18!Ci5P%T.SbT.Og&.k=8HT!;eBVna-Kq#2#$e-Y&@,4hV'40DB;3UWaoHXdN^s7";m9l6
lDc#2qI&=lcn1CQUs73n;Jh'42I)i2BU+`r(nIY1N]Ai<1@GJIidSY4PWH=L#`Brr@R@\q%,<
="lTRl95NY-^\:h!pd)C^\Ea7T3>,?`?a_MrTp3s!-=mgeuh;QQEBi),ZkF$S2jo$3)+7Sm"
+b,X"lDN==iFeo$e#.JX1SHL@FW4XAQtWWU_Q[JiJR4sq0:9f07CF]A/+;Ru^o1Gf/?+>A&Nc
gDBP,XiC_T;%D@Y)mTlR+mdrjH7>^(Cu-4dMI(h?U-n`?!$)L_EEERcQ#OVrZ<"Yl2>I]A(:l
V9W#**'!;P]ABD@EpL\'9Dk8WMk*L^pHs?TsKo.dAUAY::u0*2qI:s;)3gGVU@**L1jiGO!/\
%()^sc7/;i-e0]A[Id#ul%?c9l/]A>IUk8T*5Co.5ph/RF5Roclo\<gd6[mSiRkd12a#@VHb=7
gu73Z3Z1`ds8`lZ-J9;p`Ul-MN<@8\82B-:MY&SDGg"-9`ubE.NJ.'n!&S@-LJUR[?OVGK<F
SEWQb'X<be&;/Z;4"kOa+fF6ZI'mHNZ/n@sc!f:3/LI0o0Dq:AWZd@du;h0?PtB!ZV8ABNK+
_5]A;$qm,;lJN64!/W='aX]AAOiLq5n544,r:br_fVqbpUt\Q.DL2tU88AgO.ne6=p,Za^mh[I
R@80[-g.YK'O?`22/.0IPdd37hAd<dN]ApqF$4)F"ZRf^Rcb0.HCeS;pX]AT!Jd(dS&Lq=h24H
?&B+:u>m6G#K;i2-n9]ADm]A/5^0H2.`@>'fm:(E26as'R\9W`2rfR8\8rr-n]A/o@`Y=c__Bh[
]AmtfN`'Mf29#^!+OV&g^2'(X5fpP<@%'p'V`B-7b#$(?EeT)(<rTf-"o3Mqc@aFOKV8gJg#B
$R@-pEHgUCd$ps_mrC:HVX9[#'WRYaG+GRBg=6cgJhD/:X&bba!PLD./Z,!qV(DZ^07Z+YDX
edc5]A+Y$TAr$i,go$<BR',pkHb#o\;&fUWq/L2CiYuU0H^WZY4mUaR'##EqDM>%[IIpTd_ab
;)mPTjnJg#"QOm_(12]AVadV0]AFa$dGX,8dMY:D_L-D+j[_G)qpPUqR%g4SkBW+(mHAj!b/2f
S.74eK%uAJ67C-4>;J`>2jGp$t(-""4>#`P$UuZe9'qG]A''n_F_9*(W0gYc2Hk_=s":@=Y/o
"fGsLQNsjCUHN"i"$#s.hQ1AHq1(ZUSj3A-5M@F-h#bGcibOWLeLufHa[UG_XAfJd2-aIRH0
jZ0JOmGF7^0U+G3$8E;2e*M.<i>*5:D6H))Qf?-#kCXdP'PdQW;HHj4AFr`]Asn/F1_QLd-QY
jO<tCHQ&`k:X3R2n@n`3CdB&4lfb2k16f#f_LVQh\e05,ef@mD]A/iX/!<hWN]AZ"oN>W-.J7Y
cq)/O/kY.9G`I32W`Y/T]ASqnT82NbkRCo[%?XL?m5>j.k@BOn43nS5mhi?Ek-;U[o_#ppk-l
.k)m;>##o/LXi<!1OrX%6kLZu(S_mApn#]A+l3Y_.'Y%sq9kH*A,9MFVI1XZ5q(F"DIe<D(0R
[MGA5V-,<;d8f5Gr9$tW(=edgQY\(d/*pMoHX<AC?$">Kh<g%SesQU<;#J\S4$<G8b+pe^kA
[RD$0K.f;n^E^LoB(^uWO3JJJ\`T&tu9-l&^N!lMcRj.u+H.O\B^7,6Be5RiC>06b2<+$T]Ad
G&,(I:Bq<K^1S<i(;MZ^Xg,O/)@Q?sp."'u:-m_*,7*>-Mb!=:dDSg!^Cf&h-kD]A>%3)X<)$
^q?_5C*>R6Bl."#^>)J9q7CB)Aciq1uI&BTND?$2od[AgZc5.W06-o6oZR3O68Q_,7I?>s:s
:NXdIm(P>V?7Wb3A=Go*9<*JV?Sd<omk>;"1Xb?6YB4:JHjl5"44k8GX0B0*XA]An)-a-UNd&
m4==F'pW&P)nPG+/:bae5]A$-MRR)12-3>e3.PCGhn?Cm-OTTHc!LM\7O=Z5=\Qe2@d&'"I?L
uqq\Q`,beH'ZDKduM-D,U?aqJHSD[pAWH+g0ah@H^2=J&'b&%?/3FqDN7l4*7%C`3YT%!%ID
CEf0Z;Z-#6T?(I)_T=Q#G.jP=7(kigG")@WCHg%<[Mm'$l<P1G;E:&nUV]A&(l',S'"4Vr=3[
K8U9VufW>qHJ0'7,XnpaVWZ*@8=44l1D/bknn.5Ip$&^EBi\%hu`q"nN.pa*%L`37okHR"iL
PAI'CkUQ<i!SWA:I-YaU-/IE)XVNs`c9bW2q]At&G`(V,e`XZ.h[3hfhjfD%a=:e8_eq2IlIN
b!pBd(AEUNnNnuY]AJ;qP?^Jb&@WVj6Wr?L>AftL"nb!;-69nAN%f\95>;j5IDPC@Heu.Nl5o
b15CGS$.Lg#6+$bi@6MAU<X-/I@pKloX4a/Ef--oK]AMuR+_Pf3<H]AdOeKNDLtuepnU%j@a:V
OimK\"Ip(\6,@g:0;KBe-o54.p?H5j0"t%EpSpTpnL)Dik7c3TA?L6l.L+D7^.`6@GJ42A@J
tE>`g+p)$>j%A.:iS/%8m1bDu0_[F>QpA1Rdt'BKi"mf6Z>C/$8=O-Psmghe;8bhb$tfMbBQ
E"sS\]AK..d+UUid#Wf%4b?eb%Zc(E9Hg&$%Vl^;s+baY1#X5]A`V84Z'b0(qC$b%^j>(j.GHW
b8E"UK(HdQ;8qmP.`C`^pZi)%O3g(Ji[rA!3MQ3S2HGC86bOQb=!H6^1HL;mJ!9pkB&BX:NT
qDirTBGCRi_K=S'i9at67dFb1e4?hRD=ce-##$,FC$h/n7N-M^a'(IA3:RDGDlob]Ab?4L%RQ
jm?jRmfiKBQVh3Vq:GD@Yl"q]ATDYH$TI.%*<`,lF+@)%L>`#Eo\?ZbeP;]ArI>#o@A*7fT8SJ
>'VQ4Zam)-ijd)4odH2(J9<$U2pu=/A[Z\,R)kIe&Yu_mjP\HL`(e4#D13NETI!LiSg@?i==
:BpEhL-.*E93%-]A\Y[lZ1oVdp`mJ&8&;i#9L__/m/n.lQ9U;4TAj9-pH-isQQ)iJVgI.Kp`n
=lL0C\<qE_nD6skBV;W75=A=RO\"L2uXR&O='<'RA7Q^(,Sh`8DSFRLb$'d1;S.n*g"8phEK
UhC!%ArqI4lYB3faQ(drg/5*d=k,T<ucbX^"CEA<2Ecq%<Jg5J-_>Sh]A^A1aFrdA(IS+Ig1q
Ofj"2@pY7jr[=D/0[H0/nm_J)^C7n]A?"Cu?QgRI5b%Tl&@\"=LS+X:5X^Zt#K[G%a28IK_$,
K/LU%bm-9F.0Wo]AiHA-U1&0F-R.i@aNu"9`7bJg&f)1g'bnr.38),%7D6kI`rorZ>o%,h&(n
h]AN2q(nc(GkOZfSS/D^>mkO-(c\mm>\?[.%rs7"hB2rFcKRmR3`#ikOVo894%@2pH&".sFiV
lmroRUc?s1%>/1"293fbGB;DYWU5JqLAP(5*W%D!?l7)Eg_X]Af)t*(2K24ER;&H)\L[u^JS/
"*82S8G?&g!"RoTS<TL(<D(XNI!QeF&(B`O@o^_?`GHBY8@X:j@W_QYPN3b6!6(B+:;O'MRQ
gqZ:mXQiT`>joSl45>D)m!>m`2!+8kO'T:nad]Auma!kpf01VsED9)5S$Y,BX*04;eGF-k<eQ
kJ6=.Zc*CKTo:KMA'8MbSui:X1:9f$;1O>.IQ"KmL?9NpD]Al]AE]AuSq>eio5:o1YDW,sk#0FR
C4;R[:.4qI@5&2m.1_P7M2D4Lbc-(eS-HOBns!V++K;_P:8DRFNePKXMG6l4+YgjVV)Wja4$
ff`b;9q6,jjnGJYBsNWk1-?)_qk#"1=g96Ih1quS!ae\P2;l=ET/AE)Qe?&*P6qDe[GtlFk1
cN-iP6QdAFscWlKFk;..rSD2[5(^IG<#GfH?1%_Dk8RLm15YeCoAA9fg5M0NirND>&*m(E-T
/AQ\=F>oO9WGesJeh>dkL'C#,'D1rQ-=cf8_LFej-*:".(psP(+]Aj+N<-R1D-S[aQrq!r,g5
g[oZ??;mTl-CA'$T^VZ2`$BTSJ"oJ:#O!X/'^Za$<-sr0PP#O6BfIIr+,X^Mpp_4+m!QaeCD
9fMH#'F>l:2fU>5drMYPn]Am?@UMuX-j,\9\G:7aL@2;(clYAahU^4B`jf8f>G>mjK'RiNg38
kq_=0`+u&TiXSGd0>j*<7qDg^"'#hKFITTGr"@Q3U<"``S%c9"[m,CJu(aGTga'4?L>t[RqW
=lMiCK&M6&OYZHA>g(#3!m=ZUs:P#sU0GGcsA%jP0b!Cuu2!b+ZEB$%'(EPFrCVaEIE#;n0(
h:D!a;X7'q,>KFTK3DMT2hsI@+iq!Fi62)4q)YM$i9o\>U/_M8>N9Ph!>J?#Y^O,CF1HeFlH
'lW[:Anad=%q`%V]A6*h$+;1*e"pWBCBn"Y$ggq`E$F*JYXtBK"@0DIoIS_APY^K5HS,B-1NG
J!cc._UkhV(Su(7E<s5^.14`dh<'rKOnRr!7@OS"_`F.<`8K.(d:\E3UaoHu!oe3'ci%=5,$
>$qX1@?B/G;1]ANCLZrsguggPm[*s]A.:M>/D46V`I:f"?!]AYK\+@IZM%nbh[/8XoWZ2Wf,GfP
o&VG)XBR0Q%!2S\BkW=..Zg0`ipC2CL.i1b^&h<4bRHe37P[baJ"!-DpYZmQM@V578t^Ka"2
,J.[$_3:5[`s_%2XV(1R.+N6%Zg[(99K4sTln(*T9#7f?nH-1Xd]AsfM+pOsW%>jjUqP[Wg(b
A5W]ATE_5\%hT_nt0Z$kafpZ>h>njf*^E+9m18W>U/f'+7BQse`*eMg<D[4S&n*KlT$sBhs&]A
"!B;^>Si[?cWb)34ItX7,I4pg+Gahco4C?/%Tl]A"Z8ubGm6%smFf\ptYYAfXoQi3QsHR>J(6
.g3)Gk,+4js(=HEIS2WkW\Oo^J7AIL)RE<#n[>6c0u''d`b_T:Z)1IOClXQ$4::rMtcQO%*2
k/Lf?=c,L0?l1aLAEE'5NGUPA5bF'*JPMd^/8!Hp73+4idrWN1MNNd,Onpbj1N2Ws/eARojb
4#QYhIer5e1s/2PJf`]Amp"FaC!PW?$IgXQe:A6'KJ#1rY*@\1^qX"Vg-(d-D^UU-XF%]A%&\<
`@+%=UWm]AYU/]A#u&R!eZnN[)+'1d6]Af*4"9XdAfSC.[=A%*;*YU=9FMCSHD]A2IZWZ\%VpStp
MqAgs\)Y;h&Pcu1=;_^oA7*X&R:t@$bUoBu9bQ^5?L1i$%Krc_d=N$e\%6J'WlAXAiMbBh=r
nAY3plZK+Sc(c7ZMVekH@*o6_'mo0V,P&MjtK0\e_a,G?&N&m&O,ggp/=l.TI/(r@QMDK8IH
6VNs7R)QZo14ATu%K[<Ya+0a,<$Z8FRhn^RU<LRIe]A^iN,hIfq56AA.K]AaU2XbORHW"R8cns
Es=m4L(%>P!?n4@-g0#GG@D$HOTE@8F`o!?!kddS^#m+tro#^pf"[9NX:N0K1El_C<PuQ.Jl
hn+]A'i@A0&5mq0Y2d"S8rPRXJFtGU[0[DE-k<kj*JHtCpN%#Q3-bme*_*++/!,G9=d/TIF@/
$IZ#,lf>heM)1^orgMq*m5LC9K2/fr2ionno)$!]A\V9u3uM*JeU7=\m`DDi%QHTNW4V0LqH*
:+LUc,sH<[4_X(Fj`)QR7V`SWqZ9)*p&jfFM5#?Fh<.e'ZKO*WGR6MjND+uW'J<@mPD/gTL;
BK`kQ[gH.@L@8o?>q^)d(2!W2O,liY44J,*4#CCNY^?DJV$H.Ab"agW[M>3nS^\$X^rO@%X#
[8mD.^[)]A!@K(\oH#W4`?c42<JLBdWRC/9\=<I,#gUPW#j$,KK(o;K<//6T+1=38EY#unF,U
J9,6-.*@0ik.\)=#7J]A%g"4WcBV>TJ>2s6Q<@/,TL$W$LQD#P%E(\`=s1LeEN(GPW8]AYEb_a
JpQ:^[FZFPf1:ir[&79>EpnO>Dabn>:66aOo5>)n$(7!E0[a!3i#IS(WrdH'.,.nN3;lqlZV
bQtd8l/j-=[qRg^'cu4!mUG:h2+FXqu(la*H"K4CST)T:t-@RG"P_j0%$6U8gH_W#0bQRO9D
WVRYftAWh6m&oAo@berj6&7L*jZc(MplUiJ6:C=P^5NWL(3?1%(sUDRPYEN->ZZdKH]A/]A42\
V'9*N('V$j9Ila/otK32A_AZ8o-k<?LW&+A6e8TTeNYMRjFPL@Dh%B&?B(bf>fCsbB(=IVQ0
#1me)$X"8O+_J`[X_,Ud'5V6NT]A-`F!mkh5cmOWI6djm]Aa+X3\1o-mAKi6.H5-Ahg\!82gl_
e4W!%6rk*!/VO;mtA_K)q]A>GFn,9hND,`4fYNj*aiP7'!hG2p*H**!/rmK)l<(l&3M&`:BV`
Uu(=Yi*95@m$.[,JQ\?<Z`]Ai2_hT#38J?cQ\P\kBOkJrn/Kr#;T9338%oFs[mtHFb9$UB:If
r6_@T06N+6.8HsG@L:Yn_5[+g1DEjqppLmU5$HOl(gF)h/^r@R]A@<tY@hioM/kEk;b)-DCHO
*Wafc`Z*e]A*;hLb'$1%lhl-<a5oA2\V,?FXWo\Zj7\-G&DLZ&e'nV1q81Fl6Solu,<OIoB9T
@a4`Tci2+%&k!!b0H>qHnHX``uTnnQK9r3<\aK'd`*sFH4;u!,Kl^RuW438&Q(+0W>KJZTTs
>C5l<kj+bffcehtNT5!`Icl)d+ERZ$Hdk8:"BiVKgP$]A0&Wj4GsQPO-)NXPH>ESp&$%o6`&;
TF2e0UgMZA@PO\)okK;NFK`j>OHs)*9Q(!1^lHKp:[C*>qAg@`R/<t1-OtU&`-d?&$cNui0+
Pkk)MdK2nfBAR-B#S,5ZS0!A\).f:D:*VDuSE(Ea5X4"#<T+r!p1J'tkbKDeCd.fucW%K_ac
H:o8""8+>0)\H)rJ"Y`/\$iB"K:/$e!UM>$(BY7b>A"ClYdOYKiJ_Y=S?-\sXk*5U,R.k`'u
co(>LdjW0XHI\o;eR-MRDda<S$4\eo3V/9cEjYij[gS+hS1cEWF&9e!hf'bNB+OR)O3_h<7%
@L]AEum&,cj0k;k3d8W[XrB,e#tjBRVR$/pk`IJ$j:Yl<K^"3dW\Ag:\c!0NNu@,Q"'I$+;#5
%o5Z*\[-^dlSES,$Ui\1CJN&U1k+J`UM3!J;F,6;0eY9`>:W-1=%LNMU]A#8ZI[2B)@UF&UCr
oCiY410h=4';YWQWfr5=)@GC%8Q2WB$E$@MDtm<s#=`Kr9;<GG8t)t6SFFO2$#)lk;Pi_ZXg
&Hk3VX,3tX?-2MVP[+=f\RO?n7O+!.JWTEFcDd6kjq'#4*X^)j=K8#/Ei5KV]Agufs*pet^&>
WX<NtND,5ju>1H7hr-1m@rY::VeaU\57p$I^N$%fPFerl42[EO50"i@3:[%]AMR+i+KQ\$%+M
VF/O&s;ci4"e'<^_?CHb!L/o[FOY*Qk6t+q:P&HOaG%8in"$7ff5-/rXWgjqq6_#om%j2NeM
'7C^$_p[_Q9o^R[B`JJ9(3\>Qf9FH7\&5d:KV8^=4P,4cNC`(lR,j_Y`TTD7fBD5%T@-gd6H
N^D"O>]AURL9LM^>pKlp_E,]AIVpOHV\R<:f`qYFF!^Le5DW+p-Vn#$jRT?0VTtMl9fd.,-1]Al
4O1ZoTPO(uHtb6as"3lIB8hVR>:ijZE!+&_-Yl?>@a7<_C^=O+/h;t8-C62]A\mOV8r_HTiT"
mJ<O/"!=Cr6@(,;Z%?!:/\Kr;;/+gWV_eb!1'2>#f3,dCFS,:MI)5".52!A(lbO?'jj;XM&Y
ihmT]Ar"qpf<hhs*ba@oC(dh_KHR,:m%Bh\(^H]AP_e[,14CnMf8;k+el0)^_[!9>>:!Op0#=g
=K-%ATlu.0K]An&:le]A!o$&>QYnT(R@brGL2=QAjR=k<qaW=7:LNrLhEoI'd`#u2ObOZ4hnW:
uR@p^_3.4Br^TYEp8>I.HH0-7L+B;.PdFJm!3jF*)3L?.Y"a,9OhTeCO"b$)mre=3pGr8f:*
9]Argr9Q57=lrKpZa=\'JPi!2McC(:lW%-on-m-I1a6@@F<SSV>PTWpI0Ap9YD2GF7np`G7_b
]A?<0u^#V!B-VV<4-XliqdM%ANs=6bd_LBF+52>]AY?qsKZ]A5iBr#dBMFRN6g0MIR"8ItM_XI2
((oEL^2m\9'(Xphr:h:Nb54GQg_U0k7Xl3uScT:=bnIM0!#25l?+9jR5DPjes/tT:Xlt>k&d
s_ckLYQ>7QEk_[5Mn_.[2p#$2GI;c0p4X$h]AQgF1J.[lmn<m^V'IrQ^:f)?7;>O0F\"*W/ec
?TO6-!4h4ea.S!7:9U$_0m'iTtg/fs(aQ/8[\jiXl+F*]AQ&n-j<JnX-6u/aWl)G;.ER?d0`e
Qq>%fd_q'eJ('Sc;OmTu[aR0#DUXQ5pnV!(K0Kf/i6m[C(f2B?96O8q-pPd>#o[/UCF2-X`o
kps#^;9hml/7YP9lqdNm1au9q0-tI:pNgPA4I3DL)6eSKi>R>L26a^-+.2cTiU1Nds7#'Eth
Wq+d4?Of*PLSh/dg24-@,6+1Z5#,GY5mf._m/bkq]A>PF=OZWjnKNbj[V1Bbgq-n0l]A!7ti7%
J(V<mWoh@4ikO,I!`pnrh0<a/#=qU.%[SgdWYan#j#iF42d.B(AlARGqV=?2I+9X$.mmH$2*
,MNBF7I@3uV/4Q@Gngf.4FoSrY4(<(kh1OaH9[ek0o3T#&EOuut0o$o_=R\L*+-AZp%<LL"\
f1G;TJ`WFq@>?>qWVBt`hHmF?X^E"MUJ@s!WtmH@>kuZb)dffe3nZinDGJ)$k'48gRaZ&F8"
')F:'Ce]A;5!?qo+,bIm=-I]A6a*?'`/JuDA3TsTP%<%LQI#Af9R\RW*trA2&mdk;\5Wl:SC/m
jHHju@7.l,npAUKr29#8^:N&sI0b7$*_n*iqkHB>g.brs5&)W\3U[Q0LG*kIRX:K#&f8_apJ
@uneF+$8<+-8f]AV.`_N=d,9Pb3+%$D'iME2ETn3*:k?=io>M6@&aWXl.lT261>4Y.(j=ZNgG
nV$NV1?@/"`!T"^BgY'tgiD51!J#c^0S2k@)ndO5DeWF&>-r)@BGOR!KI_Wt$t%'b/1\q'e2
R;Xo`29-=qTTTP'rG:rkol'NE<9N"i4,bn<=Ob<2%o]A?oEu#AtE^:,Fmq]ASE2<1PsncSghFT
uSgm;Id75*1aHG2GI2!7k4dZb!Y_$"RjZcM>`Cj($c=+sUWVJK1T#;J_(j=3OJNSo'b7"hQH
@b;VT6Wg*CnCm!ERC>45`C8QlV&jJL6UfspL@A!Ln*O7`&4slQ[4sJZ);nY7pR&=Yt[]A(Gl-
RY<>_AAS;C(WOk7rj=Z.Z1;V2fp%)(t0QRRVOj+AQ9jdjC/_B/BXb8fS_L^ihZUS[=W^%CH4
s>c5Qt3%55qG!'5&W0'Zm`8bh^TNf:VC0=kOE`K.Ga?0]AH^jCJ_pST)sM*m7qo"\JV7*jpGc
%XOBOgQ7^/=%jMYV/cBqec_,@lBXpK]Acf&k[!0b+f4.^KYHm^:)Gb^"6W*+G?MueEgEgPMj&
-GHh'bqjS)NZ]ACm8KPD)e($1&aS(RnG*=UJRW+cW<pe!OU1lRj8b@!if1dI:7^DJ?6jfoK9o
UlHa)AKo,b,SQnF(FJ%M"V6CJ"XFlkFG!I._#aX=P37aoUSAAK4L,)q4%,^;]AI=<LB&F=SKb
gbDMNP_;YZQ+H*_(H3)hFi[4nHq;VcdGuc_-sIO'm644)6^/(6$Q\D)`o!pS$2nielu>5jEb
@kMFeH6g!tT4/0ST2J[9;dd6SO<0uu^,lO"['+j\+5e!c%u9qY:NP3NcY73c*!(>[suIs=Ze
YaTgh(V8tT#$_qjaqN;%>Pp=XmWFlU,WTKQLQ$SR0Qpua8+d]A7X65G41BS?'F=50R<1Tf$CX
H&YG"F.U8NVgb,:Pb>\D-D>cj4!:PJ90kdQ+rM1R1j?LX#*J;C[S]AZ'!iOY1$\k]A.+!1Vch"
Hem'E`!Bj;O0T[`FOo1#>_m0?6p[RuP^0YH9BV(ge"e\0bBW=(P4GG_=Kd;lH:S(po81<!`X
9ZNe4_ir7:*!o]A8Z;5_/ak,kDN8"U_n8i/P3=N1JbDNZ_uo[LfX0a?[HmI,YG$]An7*)PuJ=:
P9?#)P2:I!5Z19k3A,<J"jg>`FKQ\E^a!dOi_dNB-u-6iWV`'8ptETrB]A?GFSlDebY6a(pnZ
qC^JsRTW+2cTt#<!s&cW+$J[R97QS[2B.iWB'\6tDNkX`&5a75@)7Ae(b?N#POHth<9V->g%
%g670KVlKF=/ErR>pQd]Af;0?aAl_aGj5U+j/(Z1j4P7M0tt0XuC\/JX9Z;Qlm\LMI'NrJOa(
I>hj7%5&P`$W=CB*ep2*qZ(["2n^$*jQGWlp;n#=#N)EI>$SchPN/GBUO\F%+1')+urX!?Zs
"I=4<aVOVLf`l"g]AIFr$h<MbQc%uYdPqk22T,6_=uP7q_6`m^h[7!2\;Pr<n"iM/mV?1BfLb
<+E,]AH8ntuJI"Xj@.Al4CJHnQfplJ7[5N37Dij\8N@/3A$bH#\84&D)H=Df^k?T.)q!&.Ds&
:^/LM)!]AuIH?Cj=(_XCF'RbY<K"h?UB%Jf/8om.*`bNks(R9J+g"D'rAm:n7@I2=l%,Xg3q*
#[qB-TK_aCfiKM1#hX\.QSCdZTsj;_#D64?d%([(F7Q=GMB'#3Dh,UW,n)OT3.**-?C2@cV/
]Ao/0W.]A#RPa(X&)P=)]AU9P`G45VTH/Y$F'uj5.nR`'K/B;g/.PlPGM+C`TIV'B,I$<XeLWJ^
pj_KY0/S(bCF27SJ$*=R@E*jp`V<Vj#j29no;ob'f*T:+?MF&jt4+(c_j+ml*Pf7GF;aOMW'
*=JPhrp:1o#[+U8Pe;`LlIBZ(X+dsGG\Z"PjK?F"^SoLseCGUssGp(b7,h]A6``N?%hRjAj[n
>Eeh['*k^I^EtJ6H\T`Q'6Y#8TG+HVh6Dk@1UB@5jM]A>,?5c[`ETa($H,&2!bCbO2VVUMEc@
%u,G/W*(o9r\Hq(cEFddt^8<:nV:rB27p<EamEp>#YFbC$Lii&<B\"ij`3kMNWA8LXab<1^d
eq(,JuQ12stSFUgfQO7J$Y%^bq&2^bi)TqO)CrMgjrrUJ5=E5kq.6EC*F$5:t@C*JFC4WM[.
n+dlVIE<WDr61q%4.sr=KG,ZXtqc%XOI!b%;H@M<M1?/l=sq"Mu>,maF!4s83?r1&;gH*(ll
Ec#:Fu>Y\9LdUH7):;1=OpYgn^15fJ*R-N(sPUt&:e`p5]A%;-Q,b<c\bdAG$U1oS'9d9K]AdH
ZHhG@=E?QlO0LaU_Iri,$/92NR#&elI[FfZ;di&UpG+J!12m^tB"[?8clQ2V^tRfrBm/3n3M
JN5Wa9^>Z#Nsh.*4kFT2DHgW[$K)=W@Zf3,)td!MjD,gqcXA9X?=3LtW\F2UL$o]An!UFbp+O
G5FD=QcXLBC)JGb4JN]AaQ8'X_0/T1FNq;=[5YD#VuS?o"r1e;(,d&`.ap!(@j20X-pm3j@sK
7>j1^U-pI>EaF>bj3489o-KXEc[6Ql_[TTD6#k?X!C*g%enXK+]Alp&ahdcn<SH+.1',;T5+%
T;0Fm-nK_pGq?o@gp&<c8(I_ef(p?oD&ke#<XIgZ9GE.5[:H$#*K^5"9Sch?W$^3E(OA"PLB
@s50h*"T1NR@7/<+]A.06T&DOa]As%E78%K9Uhm=QlrMX;JP7qr7?N"6uSTe%4bI4ST$)2qo3?
q'-YXp$)Eg@i"dc;`4;,h4\KVf>,8BscO8[-;\#`TZ,%5_3%,Y2[E8;8HS@./O4gZR@=cT1%
PpVn04/cP!31i'4s<`T*1eXWrQo3cQYlim#,n'Jd9bV_>C\UtUkaTQ]A9kMdhqcE,T2r$n5Ie
&_O+SNWfUl%m,@Ki$)VUooGDID@,uNtm\<O+ftoUT'pG`ZD;.i1t6E$bn4_;a0EQI1^=hCP$
,mo,reP+UpW$_is9W?/#nY(dO:1C=/u9j+c3r3j#kmB)21Kob26Y9m72<,N#N(5JJM-;P'HC
cn_T&F@b^g(:/S"B6hrSOPV-!K"]A<[pa3n*6TH;mZk]AU3P2M8G'_WKX6(-kT=lPA)OF#/p'9
WsbgHG5&M\qYc1M\KM=0;i`-^u#V]AZ5<B?T]A16U*o8ZS1,Eb%Gp\7c.&[=2JEc%V'E%:dXQi
B:-u;_[Zmod2u:gQ#K/+aA]A5#;RD+H=c]AYYsRjto4fEGX-fe!T4<f3V_+*SM<gC=K)A3#=Xi
dI^Ng[[0EYoApr#?'1UocK$+9$<2kZjM6IRB@gP,kdpsf"Koj)eR=.2Z4CP1"fJjB#D9RXKr
0=kYDtXl$3WXk=A^%=W$VbfN#&*:?$=?r:!9t[A`%&hgRoABI)on@JtmiY1bsk0GV'&ifZEY
;ubsc`Gg[W?g8['pX_3s4ceUB2%<(i(oP[r0%_jW`3rWN&J3Hm$QubkI\Nkj+8*X#O8sW_Mh
]A`3oA(o#\8_MZhn,9Q[A&f0G$(#q,(&DaXN='`q\SL,&eYjdcEA(7oW2iE8bF6e5,)`2jS6m
0d7J\P2nE4c"5T(Tl#NLK\&i!rMT'tRB*h$sW4gYGh-/Gu_2)'m,p&Nc`CLi'97K6%4f,=og
/^<G(M9%+8mk</\jWEB#"`WrJ@_$4`UPNp0Z#_l"3oS.o6<3'4XETd>@h`@N)7Ouo/L:bSuC
^3>&1rD-/D(.To4XT0k!X&ACR3Z^&$neqrc#%=khQkSi([2O,4Z0`ma,aiVLa94tX<4_onu7
Ti$/1,<PL*9V,NM@rX83X8ZYt\cFOlG&VD'$S?Q^.]A69F2un,[l_OciajQG,?0f@PqfClnHA
(S8E:a>go.0LIX^(%0<=5K*gZ>fMmg5gIULM3@kJe_g8so1#Q)Ko358:"/ofP*6qL7>#2oSB
QW0lTf)>`09Q*g#cjQAet$hC5"&a-qPEIreacQoBa4T[pi"3qVC"d4/!U'Hgj.a7(rm2&em;
/`-I/VR_R'TF+d=_*l0[nenNqp>]A!AkgBDaU*E]AX\f1]A+Y6P?!c7Y'bRnk/nYGQ%:[j0LPL1
[-YI5:i,u3liIZ[8"n`3KU_%=Qh8C^8,(+P9<?F>6gYlsuI#K6QBR6'Vqj2oG,IhNc5Am?7X
o$,%R!c,r?Mri4sPQaJrC:7u1Eot97ds"co'/2guMbpN@1LW[U=o>;-PudOddjK&anS`d%Qc
3-&n\2$:[9tST_4OFIGrV9C)scYdBO%ca:U\NlrE*`1EtT:ueb,@0>J"b&^u8[35BmrXK,1?
?;%0UT)HXLE.=7i860$[Ofgn<.G+<b0`;I:(7GQ-7$B`JXH`hhCjlF:J<a*q)`%hWP/6BFh_
)Z,k\&r*Z96GVkl#p>9.)JlD;SQO!JI%a"]A@QR?OLT\m3)u"PY)-l@7N2MK^Ie1ir;!fMVL;
t@S_(>4lZ5#537JSL9;gLuiPC/g8"=%&rfaLgeH3%h=aDPh/LXp2[qi`1b0[W3&[p<hL;A/M
C59+pHNlBc6$#8MQHU^f7DC7'Kl^+#+R*FMpuAh$V>Vo98\:pS@HQ:n\PhMnoMPV<EU,M7W;
dIgqGtD\04MIG'hi*6Aq@jWQkCDae&+Qum]Aq^8_4).r\t+5DF"#ITp6V^NE![CQ0@*T.hm=%
_#j08aW[lnp`\.pakq@:r>PkDO]A.1q%ae>X2A)nV)[^CL[=qgi]A/XbU3B7@#$Ig,uS.Xm0>E
_['rjR#R^+dl]APEqMY8rJImU8_/bT8:cJja:K:)%D(HPrEPm1l#sPbJ]A)*J<'rFd)d1hJiap
bl4]AWUO1;C9pF6Eo.k$:[/Lii<a13^(B_M>?/1VKFm134mrl`ScNM+H&Vj5Hd/E@&mpSN(`p
E!rP/,91tma=-8`%Pa7/1.Y:#n05?(Tg;cc5Bh0%^TqIh39=/DpZuF)!C&fiGG#*Cj"@LujO
V)F?c7:KB6k*33Y&uo-UaE>Z"T'W]A/)N"J'8dYW>hsf$&)LedeE,t,ml*Y,#`45;kWRPH&?T
DCh6or+19,US<JKmm)<Q,G1MQ_+7>_;.SFOM[[bm!PCatE#j71=arY-"as0q)(&;X'T2XWT8
0TmP%?t)12+sL!iK[O^0V'j\O\?h_<iO5DCKZ``]AQ1F=j$5oZQa`dDh,a%M@'c=^0$\NjEqf
<npccEfSZWuUrs16DEQHq94F4$BrX`%bH<q(*D7,IRk!Is?X\O>i3b4q)527^1nu>6og*imW
`6c$p*`:"g&[Q0)([>m[ZXfACcp'iVS%/I["cXZW\,uat2<j%D@,]ALjb3`Kt]A;%]Ap.ND+,rN
&dsa+og<,`&7RiB]Ao5mge9MGV&<(Ran6a2Td`IVt6h7C1WLKb@##;p3b-ID;^]A=4NUTFL)l%
8qe<lB`TJ>M2'&IC/OdgMf:nf&o0Fa^FDc*.!s::&pF"9-SmY&gbm7%<krN)8ktNbc>/EFt;
XB`Tb<Y@e5LO4LD-dXbTe%@Y*it`"&Vc@X^qF/.e/NI6FGE<Bq,"PTH@"5j82c'g@)iR8)o_
!k4Re)o^)8`Z^!4hjO!iMODKDkM-ur%eOnY']AnmhOD$!$S;=7%X[cln\FL;gWn6CKFMN+"NH
ZsKe[_/'eXH:EfiUc6O;G)=I_;f2?t.G[oh0D.*gSYO;]A<XlVIEVOIc<7WI:VBuLab6gbHn>
<t:U:"7/airB,SLhl)VVE5$6XKpWo8RlbNq49+$H@K;=;<]A>9i,pd=)_f`IP5QM@Bm%%>`_.
YiPoHaV9\gWLRj0sd2OeWoq-1;rV8qia30SD512gCU3TJil,j7)$(gHQR'7igcm\Sl>^4f*f
`DT8G^N:%+ZSTYjad^RXYFGo-0hKtD7rDDD3Ur.19/t'ZDS"Y!JXQQ6)e&VHIUs5jb]A^Ic1m
!+WS1HX+gpg94,i-#a%n>RP)a352!fCaE99bsQd<:Ch28qb.t''#aiV8;=tH^:c]Abkgj%W\k
Ij=Qg4=KF+2L."!NN#q":[!r\2&nX=6e:HL*HNXZ:Y%3j\#<HC7C;>\VO(GI[Y!@9CGY5b0j
23m9bGW@FcF+r%?%F9r6D[2r1j5&1E-)ZV6En/=<\?W)Pb)+fX8CDV$:@-&/*#2g3++_UANX
1=@'^,<'t0^p&7"eE^&:r5JNj7X^4''N,?CWTXT1\/8/OSHepl6o9of0D0*]A-$m52TfD23s1
lK!(.e31E`gJM/)uA$R/mkLantG9OdNtc/0J3mGK<;NS5`ccRkuZF(%G!(Z$aYR(*`j'"8dc
-=*l))d>R>b;F8qQej=;Eu0+Vdg$_d@7B)E7(1Oa`jNp8^`f06t^ITS-T;;D&K7Ss$6CH$b-
RFG!@!J-9&OYC5h01g<Ta?fK(@OA:U^t7"=^6'Y*mR'1YQ]Ajm.BBtO4F@cqHB`"8Rf0:k_eW
m.hZeT%)iQ+QqrOsr9KMfJE.m/`R6ruU#,2PA,RWb6@c.fh*.FTH1d=f,Z@3D_N7Du`u#tNU
AV%lMR_OJP$5$t.i_f"h[A"_7Y%SGM'A(9]A0Tm=t"iRLiLi*ME,;!g:uW:QGne&((JK:3/aq
E"BDO^@FE_P4G^@l-_7>GT'7?ON/6Yr(Gac'3jGD=h%;MK"o^U?E_Vn#NZNZJ)aJTbb,ogiP
I/C$Zg<icsiqDs]Ap]A@'c=W!+2,F1db,^jG6gIc_H?0LR-%BUN\,9H+=?Q;gK*A_K.'!Jj:'Z
fc9981gP6O@H=>qW9s@6LZCTh1$Fotn"?57:LN(D.]A3Srrj%//![CCuQI0,kZ<\!\a'^Eia9
gbh9=!GT_DHb#QVfc8Z:@6L*IZ'<$^C>JMhpOhQAPGc.\dZn@5)AVf:uO&l^d\jp3^:djagX
_%'q:]A=l*&/0=8Lj'#Zs;aC8i<<C\qjP*eZ0`lFtoIS^^Oc8)Oebem;F(X&A8aM(%L4#H&J8
7[jGUu8B$8Uo)J'=BUCCX3h5F?,OKf#Kdtd733e'2d!:ed,L\'j:J%dHmSelPlA>(HE6]Alc%
I+`T+&=l1e^Phm?5@(a#[uYLHXiO)bl"+nk/c%)og1Lb<j&)MVZ5T5>5`5Af,bA6AtH!At-N
eEg35kYiE.h2U0Lm&8!?qrK<oIJ!]A5o@pch^"atu,!.4<:=&^cF%aF4a4_V*4Z7?B7"YhT_N
^:dD;LYu(VOE0`MSi\c5IF<_0@sI.RuE.jGkh!*gbe_2LnFa3a"aPnQbH7m-,r/3Rj;$>(K4
Y6PLE4$h.YQ7*-qp4:It(2_;NQA]A^!!ER82:,DMNkaZdD0<`b/-@E=2l@h9+091cS*Wpg0Ip
d0n6C"[[R-9"*NVG2BHn$ksU.'*#`%;-pM9P]A3O[GQ5^X[S8p)B#WQo$cBKNq,NGIuljOa*U
tLH]A7.M'NV4pT&a:-;98[XTuQ:BB8PCVZO(@Q-E^tL;R[e(<&'2;VZV\7SO:<lqe;^d?p4HM
kdQ=-\TU?KfK3BKIaE-DWlp%n"I`cBWk0Pi@#I=0F:Y)-(NHb$"Y_,FhHuB:LkZ4TiMf#bc'
sVDY#333"Q!K.-&d5t&G>hQn>dq/_=@Jjm=l17;Ls'^Pio;TMeEW<:XI63<_XDdU=G1r(5$;
gE3_chI^jtTg-:Ih2-NAO6'@@f(i._(Y9K92:l$M)0-7$8gnm3KaRCn(qL_iaK6%fH5-\(/P
bDU_h?-B(BY+,Rr'-t@)#[[=RX5<GO/KXflLLQr[FkFQ?5,T4PZ4m\Ui=d(A^OA#JZ!!QUuq
q?jX6alQ:XDf)0A$(f6Nc[YGXrKWY/0LWL?GpF""E1&&2314E3)"#F4aB?+DHrG@5KOp`+$.
cIK7:%)+/'jiAaH/?'!p$1Zp6)Q;gQjP!kiW8MEIn;r"[Ojh!`-o-99c!S;GWLq9ODnbP<=R
l%>JBrO)/umRY=L;UkLk=L<0CuAU4c-1eYoA$6278W;*apHO:3,;^KiDErGdF2;bC$SrVd>/
\Uh8`K,;(&u/%5?tY(u`)i@.dOamR5E,NmR$iOns1!i$d%Y=p!^p0SVaD(+D0#*X1g*Ll`H\
"C*2lb]AT'XUkp'3]AnSAYC?1[J#<3VX*HZS64AEfg"M10EdS#uEX:9TIA>mOCS6q5fmr(okdi
g@CSu3`1=taZ@`t5!XoHU)V,rF*>YF\7NNKGkg=j"$Thul"Xs4r<bIAjZTuimtgOS!>Xc"e^
_s`H$"[A8s]A%KFuC#&@>cK)U[46A\jD2d^<4Ws.Jk(d=/7D9pt>HZG*drAquV_sjL#\QZjlG
+5,$b#Z<k2%+.6pL7P*gN\b]AmRC+p?.AF!e%DR,9+t0OV7]AF/%/o<At+q<.9O(#SoB&7%87q
if(ckMShP>e$\(o:br]A&NC5CoNHus%)n!tS.iGtQ=FPM]A@L;[T4R0A1"F3?H,%+;Ctj^0>5)
'V[P!\0"Z9O/lh8pn;tSEn"l,dRK=(Lr^t!_KcBP(aD7`4=d"+(SWS,+^WkGlUD^PldT(V&1
`aR6"qW84]AmVS]AcFY>Qj(Ck+67))XWhhpdFW7gt=jmG`Ht@[7,;8gVjcH/<H#dr),`Dnf^:'
59V>%0h@]AbgS$g7jM+BaFi,GQ\12Zjii@UCTJ23%5@rrJA_@]Aeh"2Z0J!3Y*Vu5T<6,NO(A\
7&LC=,NQHZ2utc-q=&:9R=9IXf</6l-J$Yk@`4s7r0,Q><B9Z'KgK.W!_*GmNLb=oNl5-m?\
j#X8lEKt7!I5CTN?IN=UXfh7!'4eGCBO(^$qjO<p+[XZh(eV;kf:R(S0/H4i>,*_8dN(P`-=
ggO&<RMaY(7LBcFHpK9PMVRQ.Y_\rMbN]AI9D]A+PQ!i`NM&BkaW=jn?ZYM2Yq,NU5r,guj;W.
5$X*D/$MEcU26#g?t5K'(e%/DPpD(j3"2%uIUKh<t.I^`==D!q76D"I8kh]A@+L>nV7.UgE,&
c&\p%=#P&cm#MB924f$tHqZHipkH;2\s/g!9to-7CElK'3l3K)jdG%C>V@hcd:5:%r"5(Q$b
Fl3U[dCa7&>nUF8\.g+46W)F*]A0>VV9$/kL&,jm,ZG_XV9^Rqc:J<,;B[GE#*`+#N=[b6!"l
LZ(,QXfCr,1a#-@c3EB%jT_`;*+1PA;D.hR4NtZoI1-EgNS=>L5lWOFSAQeiG^il"sh6CJPe
am=adH_YKCU3'sdd`b_q&JEQaSA\\,R62Sc%/jKNj,!5rW2oT[laG)Y'GkVp9?9"A:rPnkL(
FKJaCeScE-5nf<#=&pebo+`b4H^KXYB:F5ZJk.V7$;1L/"((66e&pY'7@7(_eS[T=Vn./nh[
_$u@qC3)]AceQ*6as+B-[3tT8gr`3ULN>.,LX@I+cmcYUdNs-.#j?'ngi!edgMQoc/:O`Mpq+
9qHMC'9Vd_q]Ai7h=8'>+$H/:7P&-@h2Zt4cY[.:&Kb@dpsPKJ(q&]Al>cB*3j3STP.JS.//>9
b#fWKBa%f(+?&8g#b/gj.RqFc7aE73-p8o[b:'qc9:!ntA"t6MrK$>dE;JkYk#T8cm9]A*/_c
S>0&Vm$)\-;a2P*p=)p+ej[Hm_C'o/Ltu7a21*hEV.Y)JlT!/fZJ]Ae^HGB]A#'M2<ih_Y'Y83
:7Y3*0Z)a0DhT2pG8*6d5"^)==;IRMI,I\8_G@jt7u[)FM=)B-5G;Cgs(j"@(n/DtQO,0^"K
9\VRk,RKr%pi^uQWZN"?d@>.Ud=$&r3bgJrWFlh5+Bo5ie+TVglrAPS4fQG?$J*tDNpH1>7$
d*dW^UBG1k=fLd:apSkE4@I3jC\*_/)!(HE"30Fe<bQP8Q;:cppoN8rfH)h0D,;K(">:Npf"
T'\,=(4YX''h=?HkrHNG45*1tgi/mQW,H2_EA1\ERX*UhSbbX[ifZ\eI_M/Q[1ul,RKDqc*i
oo=jS9AffpDlJQPBO@V;Mu:?H0/%]A5Fe@UjF2:!BpKiYTikbf*<P+:ZAVp]A@DFMU+%%hm_8=
m9+i`;8oc,RHc8%O'`:Qg%Z`L7m@Li?!qLr+"V2ZG4lB"M%QJ_J*_B`.5AT#/XM!,iQ?@#n1
rjB<^8KXOLH8'3[0H7C:+kti(5Jk0HYtMg;AQ@"Ta2\`Zl$R4kdk+N]A8XB29gqg8#mHV$k[L
b@3h/Y*B9/_HH?"]ARF7)"MGFgnM(/S]ASaL0M%C[[%J(*l9@*!rQA:-$t<g7Mg@a[nRp4VtAK
b2i$<%,TBkMQ6uU0a(Fb[cKnc#qgQbRnN!mM$.40qK=&qkH7jTN%#WSt!$f@cO"s>@=_^g/Q
D#dtD3EQD%JTMc^+,E&QupFZckEo_`a'?ef'!!,@Yp6-<O_e`@)t/2Q`5g5hg4&5Z]Afh#Df;
pfP1f2=L/!r?Xk$m5a?pE"UlZ$uqZmPKABW/N#Rtn0fFYbbY7ibS7VokuSauC9Z]A*6fhlPp@
Z!9AV^%]A^:f87`hH@Fd`-;ua+hA\[Rb_Q!(g1A+06R>tEe\?6tSJgZ">$HAV]AQ18WJS18l?#
Z^8>u]AnQo*rFIbS0(pJUGLBkW4!m&.R,pFWn#U,:SZ:i'ab=]A7R:gd[KR^LDRE,/E&5EnjNX
/km*D^e\^'WC2rRMCE)lko8%^RcZYa9P8CP@4Za7:N^./3%Kb9U"jpHZ"chbi?VQS4E9%lW8
PU-ARG;B=LUhgdDP]AOU[Nh>\?Q:OaW9r(&0,K6Fl->E@Po=:,'<P,_aKHB:b<'_^HM*raWD3
>-pOf\mlTnp"56T(RlErh)XFog&cESngH9`Iak#I[C*^D0]ALDim:B5XA+N80gIKJR09+lp*r
'-Tf8@m16*8iGfda1hbkp9Zfd7jQa"r*aor2e+#taU::Wi1;#3]A9?!E>>202eaGG;mDK^C]A,
IDkp\$[lA4osAlp5f_),osd0o7P.hBaH<X%5BM`L8Q!(*q<=?AH8hV`LaCp;%NjGkalCa%.%
'eJ?i-W[*b%_2ZW6/'h&uk9K#a7qW=_\?[1R\5LJ3=bTOCmf$%j'l)ud6C@(8%t>n<1oN+47
UL3Obs3gJ2Vn]AAgR.r:*h++0M5=/o`4FaT6@ACdb;EQre&iMB6+R7j56Ek9XCPX8qU0DVa_)
lJ;L>@sZ[Va#`tUZ./%E<1I-"YGI)W,<h4<^,TC4*>\PB0t'ISLq>$42Dg6)D1fA%jmbZ#J@
a*F4u7q7Bg)6jVh9]AeT_c?J8jbZQE&(E]Ad2>CBY_>[>tT\Z_OO*YPeNpG2dIH_S;QGV2qn!r
n!;49rhuHc'rl7keZRSkRX1M!Pd,`,p;\`,C^Tlt2W3'Vf`Z9o^]AcZ6mV)BMuKl`An)'4Y3S
(7l<GF[P_'I:'N=rRrRuXQHIbB>lj8&q5)B77Va3?9!'6t2ST_J>H=X-&KK9m]ARbW(LH?0*g
Nt]Ar06f6rD]AooaRhQ,>Dlec_Y/<&%K/@_r]AbZ#J7ba4\lC=["oB!AOo3>7YogT,@.YLW9A5@
O4NJ+>+g+8*&SrRi5o>`io(]A:+__4ZI_=mhF.Y1o'1j2X$>HB8=b`'suoI_Z_jq!9[h4sQ0\
V'3@i_DKUk`hCoO?tk7d/JX.cXGKn^0r;OR53WNge/3aYGnA&B,WGb''-8^]AO(\=53Z$IY+N
KjBoK6l@bIOgkEAf*54/W`^ef7q?KSFc&=2P8_>k]ANMG3BWPruRk-@Bp9+=P^l,+`?Y?jJgJ
m&aatbM*4<Nf:;bOqm1[grTCY_GgIr!T$j^Y&++2U1b-G;0^/*od>+d_9laCNjf0Tm<'douS
QkX5F]A48i2/p3Q5B')D:&f?kX=n`;-Zc4['NqkYU#.]AU`%FK6]A@i_M5j!oPZb[!>D>S4Xett
F6*Jg5/J4=<&8X!O[GKH'\1O)[g2/@U!O'ub;,ZSm1<56ui#.>W6Tgp1mhkOnM=#nh$i)K\K
)qijIRF;b<80.dAD,m_fb(#r\&hMY7;Jk$,FIA3WTLO'1ZSA^RoZ)6.%086PYY$G/N.^<oF*
3t-Miq^5VX<SXQ=?k%lS;DRZU;G'gT@3>$e,D4bO\QAOSe$9ANimS4=<SeQWUa-0\%%-*dr:
fRq/Kc(s(._;:q/4,8@!&N"L_O0o,V$'%OfM%dJ(c/gElAqZmN4nOXT^3W4K+?Z9J_VZs!e1
[[j[VT+EY\lV"A;=25;%Au63ZCdnh2daj4)L_=#A6g@1`CLo1AfjARO+'u"@GhB+D33#fV2R
G]A:Vkn..kW+M0D:SY=:LX,kPXjqeH=D'&FES+eD;Q[-;tD0/e"[<:Q7VdZ!T85%+h[Ok*RCA
PsF3d]AuaI7Zot^iH/lMh.n2d,Ed)Hk2-qs#54>GQY.6NK'<s.8/i0@_TOZ5(b;P[j]A,SrUY&
da,aZ25VoO/E_YD@ni=N$k4hY%6\pO6,q7EobemIa(\Fge*p_u:Y[$Bjh&.'e4P9WQFYNf.h
u)E6sb7)-t6/r;m_N1al1m/ft0I-!iJPapE90TH`>d>FLHN*RIAdY[Y8#F"'*kT8"l"%AA_Y
CBBm]AK0L,ohV^E/-!=L;=/NX0SU]Ab]A6<M<,iA*a?hMMR4(0i==\SQ'iJ:!UI*q^_nMaB\bKN
o&lnr8F9;.6@Y'msgY+Sn_)pFm\8<X-c%ABIZ:M8u_YV-X6GKY2DMLMK@M3Z/f'0L6C4l*Ae
YqMZHoH#@1bptg?aTk^%BapZ08R`pmklF1e<j6W47]AbC=[tNkKn<mP:AoW<n2#d%/#bSs4"\
Kfp)18nA,&;)Bc(^Mgm+_<loGV8c`^FoT:4%CR3\Kq^%Jo!%ThB1S)f/AuafK95UHTCPFLbs
S97$<R6:(1)?1O8L7/TciY>/#b:Y#Weo,D()Gl72/PpD:#9m2pV,K+`n)<UV#a8$V+p_G[NH
jo=X]A2Nq%lO]AnSnOJa$?-NJX;>C=^prqo.L9u_QhLs20GEo;["W+lP(+>eY,6J_PLm)Otdf$
4Ya9nC3Qt`U/iRE1l:q0Yh#7:mtiF(ds*B)qMXbBNYdiVKM)A6bDPKDg+3qLilIR3@:28'><
7\J&1-R^QHh>;_d#2SOiZpW45KcU'D\1kq=e2YkE+%/lg=8ZINN@[>W2C+s^7H@o_*GVsrKR
Z.K&%/3'gZ\Ku>^lHHOldk]AJ<Tg'"7q94IX<4E'BGN\BBLKo54#E?g\?qm355jc1.-DOUE&-
BcKn"bEBSA62r1UVis/5s8Hkj0<">t11.$_,("L/Yabu^tCM`q"'att]A9)$LX/q7ZfKnLWF(
cU=hMuU6%'"W&CISPXPkqWcQQ@;otIR]Ap6>nTWCPBpI$A9t3knutq82+mpUq=X7L\A%l(3IQ
O9+`:!(Kt\tfg^@nePQJR!LA1&)r%T?`/8_Sh2Bt:a(CUs;X?SC9?=Vkog&._CMV5OOe9([2
VJ:Mp[S;6lgK^]A-e,IE;T!.lqT6h#f.#E@#l#2mr%jgQ]A1g&pdHVT?5:JQ;Krb%`0fd!>*_P
.Dt6ObN;CG!AMqLo.bedmV+>*JX:\J7<D9l]Ag%LnfIp\hn4p9akB4rcUIN97eq1i>(OhM%)Q
7?&hV+q'<G4!jX05i2-a*(l%AR[a_T)]As0*+iLfArMM`@b:Y!=<@S6G0X+@qsM>N:)HCG'Fm
-UtGK\^3F:MG`g$M"Z^rPch,N@R+,2#2i_+/&T&"j&%[IcdT7(_mh*;M-jI]AAN)jTU)rT""#
/2\DcS$&'W:k=k%C<]A4.\nV'+F#J((fGT$H&AVbT%>,F,:>f0l7$6e7QjFWFrfP83t2r7GZT
m\VRB3gin`$cFjG&BP\>_mCGge[#ZFM<[SI?+Q+%/RBL)kd1;K:mC4X(f\tI\RE4t.^s9id@
'D#jLrVf7Q^.ogdO-9>8;Wdn!3b)r>;#ikZ3BFk=qk<I;6n<dQ^KVWXte1:?-5?c>Y!>Eb\d
j:M*:#$7<0O*A3?BG/Q:B[T@7KZcgUj8XS`_l304X+']A5()Mdj>.7kl`Q@?SC)+>0\?J(u6?
4%sf-=H<mVsG'*V.?pSV,87;9=j?[jH[<#$L&9R6J-FIB7ad<93qCa']Ail``7rl@p[c^ON-<
koQAWuSa1>&6\hkjckoEoCdXpV+FhH2g:64+b@1H6I]Ak'?OO)lHsan]A/k//V"NeX36k[p+"0
DM34&AAOg=dE]A6%FQ5uJ6Sc!mlia2cV]AYL>:+_YWdaK^`(KInk]Ab*-iokr2IpjCY_=gIS-No
\H-!@FNm/i/A7.qPpqZ^jBUK&X9n!IiZo:$RGnI*3i=UkqO5`'C3A(YHVdPSdDnE=!N#V0/?
:)F6E\KbU\1VZr1'GEgS75'Y]AL?I^F\PMT*71rr#_X$M@O]AU7QI<TmGpe@fU_1a2@66b9F:!
jY$GN)IhV@<HE#^Mj[^;c1n!P>C4B;P\a4U@=<m5;]A$8*c*/Jd`!7j9U24fp5G]A/)p/2>A<t
\8qJ9Gs$PKX@i?%tjm>bH6'@sCSlkrmaQufi/(n;>o5c<C=c0)UO^42ar=YQscpC%-5I'"`E
"!sagZ6'%R=YSnTlOfiXO`O:BVC0!Ua+M5d)njXar^l^PP0%.8o$D":JCXt&\`D4n"A9J:$`
p_[`oL<!jm-W3^83o1_]AZ\i%X7lsO;MJQ5=cY,99VA.D%QqdkG625:%%uY(MjK7N#VV2VZU;
9%Su&UL_mcA;OJPZQ,`:IRIZseD6NAjoQXF>+$6n^NS*bR8:@A2'&hBtI3KjGa-U0#(R;tNn
>u*@:!iKsB'roNCWN4J32(o8Ac=.mqM+c?p.5d7XAYuf.]AZs&7\e_l+uG,a8DFiPc6HOXgEk
&5?A0r(pfL$Jbqoq#R:'t^]A1d_?Ut-%TR&Ju.Wn&WR:5.9<Jm/GPdICrR)S=T6R,[.nZ"3je
EUo\u.]AmshM?i8]A7^LBsqD,5Igr5qp)>4f.<C`PN[q8-RCL>eD5@jWOQAK_ZE/u'qImnIX,'
5_WW"_g!T=jc$Bqlj_s*Z7rVcI!OVm;s\5lm?H?_L)M]AB%h[pQ-LDdsf"adcet\"`]Ag5E:Ac
e,Pk!@%L"qh*d?lJddY.:On:'m%Y^h=*3@$DHb:k9:6<\E7Au5NmE+:q<W$7b<mFAdf"/+d;
o6ds$[8Q$\pSXlaj5+=O\pn^ND\c.+l55WFa0)43.\A9#N=/fTr9_NP1;RN'LR[!()[M9opG
;%>^;aQrIT:.<Z%@i4>H':(hLBUOce-FFQqoZV'TUN_;r]AiB_IB8Su/iuI(Ztj?jJ9FCV6:Z
a:T5&P*0"_+GUZ<q!LTE]Ab`iRa"Y!dGf%majt<R+;.e'AgiVt1)FpZ]A$oaI-/GB0^VXoMeC+
_"lrbKbh4PXVQ\4cLqC7<uo.rY>Xls;eb26&1M&O"OE=#)-D`X;^h`FH.IhJjqQe!W-]Aa)r)
SG:tC>kX>d?4hZV\Nd?^t5GALlYC"_.k]A>M^>HX.#]AStL'b2A>1KV2MD]A#'sCf<8kT<V7%sK
b6-(=:*)Fe1k.aTpM-T@'Arr2HoTM$@)<E?,)ul`8jU7f\R)lSRdeh8EM-0X#5Y(A$V^%.;+
,-VLm@BOICD0`B9B0FQ>r-Zu8!$gs(W?(XI'!6kP`Co&2th]A=uM+^?j'dpGY>E`8Yp?(_,rd
NCTuF[#[r"8=,q$OQSWsMj8=IgBNN(0O!5FY:"aRATZXlJ!4tCk94Q\=sJEJl`u]Am#*oJLE?
SD<UdcfGefuNJ:l0`KpfPK00X>#@C12U#3n3#KR/lMk/E9?"Qans=Yg5$gIU7V=okIgY#Pml
]A7^!i>*Z5OpTeO3"g6"ARM__`R*He7O?2f2nP$jg7O'D2t#Yi70^D\<t$,.gO*&AE(r:sXdF
.>Ke2-og>1@8b7TN/S9fUAs,ei)EkC8\r!Z,j9h[",cOMJU$/.oTNJq;H-L&k[R$Ro0u^5(.
:]A2.)qcbC4)*cmtVSPGG4be;"N>/UgVSE4.[u%>5uV=dt=>(\6NXZ:?:o`VGE5VoM7L)=*WV
$>l&G/I-cKf]A3<":N^r=PAM18%#US,Hj>WAI`<4cDg3*UD-Wl!qfnl+8QU@H7Yt?oa8'\`Pr
nlcJg[$l4fc9LBlos<IAZ7-]A2KMJFMhR'WD]A)+_778+,fB9KgSoVZ#\M3O/-5.Am04dC@E_V
@?`B<_'WY#Q'7?_L76:^X*ZIa3c]A"6l1,%F2P?,(:Q5FWtEB;K/!TVcSY0=f8%LsP+(rTtmQ
*/_*,a=g\O-DH!oF\6:"3,<GhA"e6hE)$M_;8&4/*llbjWJj3nSroASDTjokj0p/JfZ9:cVO
$k)Mq([Q[N/W8s/+>o[?kfVW;nJ"5BD8cE!:uM)9amT"\S)qtel'(\CnF1S(/!*1C8gcM*bI
B"e08f)oU*jKmf1WLmlg&(t)Sq@Lt5Ie.lD\8XoBr;C&t^46'(SMKQUJY&W2s(uX<=dAa*]Ac
JBs%&_-5X9e'B#7R,C'><cX/ftMRrQPXek'o/5jjX%/#,3c7.)u7I:Ak.;;-sFQEC9"HjN@)
n;\&c@M\U&P^;/*#=/,]AM?2W$g'`N>NT:]AY$]Aco:t+Qm+Lro5^XTV=,Bd,1GUE^!R>f+iY1c
=`prj4NjA=Lqs:huT*^4!1k0]A,YD?5>tfYU<;CQ_]AT(W.[JPaE:ea2LACtp9NJ+/5?%26Gq4
_1Y]A@+s3JqqAfoME?>V?4WXP`uprm);9bpm5l,]ABnm</fAjFc/P)&5*3VP3h^@`V^CggbIDc
=@)+V1f;Q5;W$AiI?..WUOW!1/O9&;WUK:EqmuEFdfn>JCB`REV7s\\CJ7L7U7:4`,s1e7:u
=Kp,D&$Ui.c?H\UioB5Mt6B;l3Xr<c\?)WQ@J8"_6]Aj3]Ae+A)4Wrf!!YX6gd#r\A^10G!rR8
2__+B"DT^J&NilnX`_[N\oE8R[s%to(P*(2,bC8<*r[$RI-.C$NK/sF1._UIl7;.Q'_tj2e>
1bH>>aO<<DMX(m\fB1(5:p"#kX.oQ!cG3--_l<9&m5\oHV:@?j_1J3Gl2;<]ACP@8),ma-LnH
hZF.<3l8u/g>QurXse,MA9q/<E@d_R3;*J04L#CuhMd5Ro<G^oXa4uB2/%tj_6f`Z\\rm@RW
4`iY.SNhG8>^,-KebZa*h0H6gkp-3)s01'e=1X?5e??VM^6&,NCAlnPVOjs3gHV/B$NP8KrV
lojU5=2J5DI`BR\O$7HG<S3Oi7iF5S4$=!<(eA5K(qH0spl%It=ifXmjReP)C!(+p-s.qS.`
ui/.Am)51s[65#61jHn%-mcje0#bV:`rt]Ao:N9H=r29C?p=mp[X!C(Dri!CeUJ.A7P>NiR*r
r4ZVO<5$-iY((adNr)H!2,,J3e74uTF\,mir:a?FtXiI,#+QW+c)"_)1Wn4kQ(IoL$j`0nAi
n%&)L$8c/M]AA\A4b;5S4$=!$)>^!FcP3"/.;3&HQtrZiqj%J.A4STe/OR!H]AHk"XkRF%YV7j
70Ls<F<IpoLcKtqKXLkL"OM_H(8-H`3e.]An[K&#ed"0OZTSNS/&D@1"&O6TJJ^>/Tjo@FRg&
_s#5R0V[J0G'Y!'1\F!lQ'D#=;XF+p-snBF@X)!$+<06<eu-s'J*RC>N:rC@F\8e8fSiD2SB
.\>lC?PFqn!e6W4[i#eU:rj3+"!$(S13e72G3Tg@K%(cm,joKQ(r@`38s(NA5#<:iHF9)7m6
9k=q1+XJcbQI&/qHr<Ns&4Y\(>tPbciNdRa>*_X%)Wsu0b9oZk^S_)r_FDd4Fgo_5R5[9U-0
lRatT%^p7)-H!'1\F!lQ'D#=;XF+p-snBF>)_!U'O[rtD*.!Q8s4J(QnYM>sr68,3,=>Z:'W
gk:<C+o0?ormS0-MN0Gid3@Lu!<~
]]></IM>
<ElementCaseMobileAttrProvider horizontal="1" vertical="1" zoom="true" refresh="false" isUseHTML="false" isMobileCanvasSize="false" appearRefresh="false" allowFullScreen="false" allowDoubleClickOrZoom="true" functionalWhenUnactivated="false"/>
<MobileFormCollapsedStyle class="com.fr.form.ui.mobile.MobileFormCollapsedStyle">
<collapseButton showButton="true" color="-6710887" foldedHint="" unfoldedHint="" defaultState="0"/>
<collapsedWork value="false"/>
<lineAttr number="1"/>
</MobileFormCollapsedStyle>
</body>
</InnerWidget>
<BoundsAttr x="0" y="32" width="950" height="46"/>
</Widget>
<ShowBookmarks showBookmarks="true"/>
<Sorted sorted="true"/>
<MobileWidgetList>
<Widget widgetName="report0"/>
<Widget widgetName="report00"/>
<Widget widgetName="report1"/>
<Widget widgetName="chart0"/>
</MobileWidgetList>
<FrozenWidgets/>
<MobileBookMarkStyle class="com.fr.form.ui.mobile.impl.DefaultMobileBookMarkStyle"/>
<WidgetZoomAttr compState="1"/>
<AppRelayout appRelayout="true"/>
<Size width="950" height="398"/>
<ResolutionScalingAttr percent="1.2"/>
<BodyLayoutType type="0"/>
</Center>
</Layout>
<DesignerVersion DesignerVersion="KAA"/>
<PreviewType PreviewType="0"/>
<WatermarkAttr class="com.fr.base.iofile.attr.WatermarkAttr">
<WatermarkAttr fontSize="20" color="-6710887" horizontalGap="200" verticalGap="100" valid="false">
<Text>
<![CDATA[]]></Text>
</WatermarkAttr>
</WatermarkAttr>
<TemplateCloudInfoAttrMark class="com.fr.plugin.cloud.analytics.attr.TemplateInfoAttrMark" pluginID="com.fr.plugin.cloud.analytics.v10" plugin-version="2.3.6.20211125">
<TemplateCloudInfoAttrMark createTime="1632721873013"/>
</TemplateCloudInfoAttrMark>
<TemplateIdAttMark class="com.fr.base.iofile.attr.TemplateIdAttrMark">
<TemplateIdAttMark TemplateId="d2c93326-03bf-400a-8d77-983116b50229"/>
</TemplateIdAttMark>
</Form>
