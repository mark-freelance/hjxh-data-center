<?xml version="1.0" encoding="UTF-8"?>
<Form xmlVersion="20170720" releaseVersion="10.0.0">
<TableDataMap>
<TableData name="指标1-直通车" class="com.fr.data.impl.DBTableData">
<Parameters>
<Parameter>
<Attributes name="shopbh"/>
<O>
<![CDATA[101003]]></O>
</Parameter>
<Parameter>
<Attributes name="jssj"/>
<O>
<![CDATA[2021-09-01]]></O>
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
	isnull(MoreSearchll,0) as 'MoreSearchll'
	from ls_sale 
	where shop_bh = '${shopbh}'
	and date_time = '${jssj}'
	),
	tmp_2
	as (
	select 
	isnull(MoreSearchll,0) as 'MoreSearchll'
	from ls_sale 
	where shop_bh = '${shopbh}'
	and date_time = dateadd(dd,-1,'${jssj}')
	)
	select 
	a1.MoreSearchll dqsj,
	a2.MoreSearchll zrsj,
	convert(decimal(18,4),isnull((a1.MoreSearchll-a2.MoreSearchll)/nullif(a2.MoreSearchll,0),0)) as zzl
	from tmp_1 a1 left join tmp_2 a2 on 1=1]]></Query>
<PageQuery>
<![CDATA[]]></PageQuery>
</TableData>
<TableData name="指标2-超级推荐" class="com.fr.data.impl.DBTableData">
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
	isnull(ManyScenesll,0) as 'ManyScenesll'
	from ls_sale 
	where shop_bh = '${shopbh}'
	and date_time = '${jssj}'
	),
	tmp_2
	as (
	select 
	isnull(ManyScenesll,0) as 'ManyScenesll'
	from ls_sale 
	where shop_bh = '${shopbh}'
	and date_time = dateadd(dd,-1,'${jssj}')
	)
	select 
	a1.ManyScenesll dqsj,
	a2.ManyScenesll zrsj,
	convert(decimal(18,4),isnull((a1.ManyScenesll-a2.ManyScenesll)/nullif(a2.ManyScenesll,0),0)) as zzl
	from tmp_1 a1 left join tmp_2 a2 on 1=1]]></Query>
<PageQuery>
<![CDATA[]]></PageQuery>
</TableData>
<TableData name="指标3-钻石展位" class="com.fr.data.impl.DBTableData">
<Parameters>
<Parameter>
<Attributes name="jssj"/>
<O>
<![CDATA[2021-10-04]]></O>
</Parameter>
<Parameter>
<Attributes name="shopbh"/>
<O>
<![CDATA[]]></O>
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
	isnull(RestAssuredPushll,0) as 'RestAssuredPushll'
	from ls_sale 
	where shop_bh = '${shopbh}'
	and date_time = '${jssj}'
	),
	tmp_2
	as (
	select 
	isnull(RestAssuredPushll,0) as 'RestAssuredPushll'
	from ls_sale 
	where shop_bh = '${shopbh}'
	and date_time = dateadd(dd,-1,'${jssj}')
	)
	select 
	a1.RestAssuredPushll dqsj,
	a2.RestAssuredPushll zrsj,
	convert(decimal(18,4),isnull((a1.RestAssuredPushll-a2.RestAssuredPushll)/nullif(a2.RestAssuredPushll,0),0)) as zzl
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
<![CDATA[]]></O>
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
	isnull(TaokePromotionll,0) as 'TaokePromotionll'
	from ls_sale 
	where shop_bh = '${shopbh}'
	and date_time = '${jssj}'
	),
	tmp_2
	as (
	select 
	isnull(TaokePromotionll,0) as 'TaokePromotionll'
	from ls_sale 
	where shop_bh = '${shopbh}'
	and date_time = dateadd(dd,-1,'${jssj}')
	)
	select 
	a1.TaokePromotionll dqsj,
	a2.TaokePromotionll zrsj,
	convert(decimal(18,4),isnull((a1.TaokePromotionll-a2.TaokePromotionll)/nullif(a2.TaokePromotionll,0),0)) as zzl
	from tmp_1 a1 left join tmp_2 a2 on 1=1]]></Query>
<PageQuery>
<![CDATA[]]></PageQuery>
</TableData>
<TableData name="指标5-AI推广" class="com.fr.data.impl.DBTableData">
<Parameters>
<Parameter>
<Attributes name="jssj"/>
<O>
<![CDATA[2021-10-02]]></O>
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
	isnull(AIPromotionll,0) as 'AIPromotionll'
	from ls_sale 
	where shop_bh = '${shopbh}'
	and date_time = '${jssj}'
	),
	tmp_2
	as (
	select 
	isnull(AIPromotionll,0) as 'AIPromotionll'
	from ls_sale 
	where shop_bh = '${shopbh}'
	and date_time = dateadd(dd,-1,'${jssj}')
	)
	select 
	a1.AIPromotionll dqsj,
	a2.AIPromotionll zrsj,
	convert(decimal(18,4),isnull((a1.AIPromotionll-a2.AIPromotionll)/nullif(a2.AIPromotionll,0),0)) as zzl
	from tmp_1 a1 left join tmp_2 a2 on 1=1]]></Query>
<PageQuery>
<![CDATA[]]></PageQuery>
</TableData>
<TableData name="指标6-品销宝" class="com.fr.data.impl.DBTableData">
<Parameters>
<Parameter>
<Attributes name="jssj"/>
<O>
<![CDATA[2021-10-02]]></O>
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
<![CDATA[	with tmp_1
	as (
	select 
	isnull(Pinxiaobaoll,0) as 'Pinxiaobaoll'
	from ls_sale 
	where shop_bh = '${shopbh}'
	and date_time = '${jssj}'
	),
	tmp_2
	as (
	select 
	isnull(Pinxiaobaoll,0) as 'Pinxiaobaoll'
	from ls_sale 
	where shop_bh = '${shopbh}'
	and date_time = dateadd(dd,-1,'${jssj}')
	)
	select 
	a1.Pinxiaobaoll dqsj,
	a2.Pinxiaobaoll zrsj,
	convert(decimal(18,4),isnull((a1.Pinxiaobaoll-a2.Pinxiaobaoll)/nullif(a2.Pinxiaobaoll,0),0)) as zzl
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
<![CDATA[101001]]></O>
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
SELECT 
right(a1.date_time,5) as day1,
sum(MoreSearchll) as MoreSearchll
FROM LS_Sale a1
where a1.Shop_bh='${shopbh}'
and a1.Date_time > dateadd(mm,-1,'${jssj}') and a1.Date_time <= '${jssj}'
group by right(a1.date_time,5) 
),
tmp_2
as(
SELECT 
right(a1.date_time,5) as day1,
sum(ManyScenesll) as ManyScenesll
FROM LS_Sale a1
where a1.Shop_bh='${shopbh}'
and a1.Date_time > dateadd(mm,-1,'${jssj}') and a1.Date_time <= '${jssj}'
group by right(a1.date_time,5) 
),
tmp_3
as(
SELECT 
right(a1.date_time,5) as day1,
sum(RestAssuredPushll) as RestAssuredPushll
FROM LS_Sale a1
where a1.Shop_bh='${shopbh}'
and a1.Date_time > dateadd(mm,-1,'${jssj}') and a1.Date_time <= '${jssj}'
group by right(a1.date_time,5) 
),
tmp_4
as(
SELECT 
right(a1.date_time,5) as day1,
sum(TaokePromotionll) as TaokePromotionll
FROM LS_Sale a1
where a1.Shop_bh='${shopbh}'
and a1.Date_time > dateadd(mm,-1,'${jssj}') and a1.Date_time <= '${jssj}'
group by right(a1.date_time,5) 
),
tmp_5
as(
SELECT 
right(a1.date_time,5) as day1,
sum(AIPromotionll) as AIPromotionll
FROM LS_Sale a1
where a1.Shop_bh='${shopbh}'
and a1.Date_time > dateadd(mm,-1,'${jssj}') and a1.Date_time <= '${jssj}'
group by right(a1.date_time,5) 
),
tmp_6
as(
SELECT 
right(a1.date_time,5) as day1,
sum(Pinxiaobaoll) as Pinxiaobaoll
FROM LS_Sale a1
where a1.Shop_bh='${shopbh}'
and a1.Date_time > dateadd(mm,-1,'${jssj}') and a1.Date_time <= '${jssj}'
group by right(a1.date_time,5) 
)
select a1.day1,
a1.MoreSearchll as '直通车',
a2.ManyScenesll as '超级推荐',
a3.RestAssuredPushll as '钻石展位',
a4.TaokePromotionll as '淘客推广',
a5.AIPromotionll as 'AI推广',
a6.Pinxiaobaoll as '品销宝' 
from tmp_1 a1
left join tmp_2 a2 on a1.day1 = a2.day1
left join tmp_3 a3 on a1.day1 = a3.day1
left join tmp_4 a4 on a1.day1 = a4.day1
left join tmp_5 a5 on a1.day1 = a5.day1
left join tmp_6 a6 on a1.day1 = a6.day1
order by a1.day1]]></Query>
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
<![CDATA[#,##0]]></Format>
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
<CategoryName value="day1"/>
<ChartSummaryColumn name="直通车" function="com.fr.data.util.function.SumFunction" customName="直通车"/>
<ChartSummaryColumn name="超级推荐" function="com.fr.data.util.function.SumFunction" customName="超级推荐"/>
<ChartSummaryColumn name="钻石展位" function="com.fr.data.util.function.SumFunction" customName="钻石展位"/>
<ChartSummaryColumn name="淘客推广(流量)" function="com.fr.data.util.function.SumFunction" customName="淘客推广(流量)"/>
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
<BoundsAttr x="0" y="0" width="950" height="294"/>
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
<BoundsAttr x="0" y="105" width="950" height="294"/>
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
<Expand/>
</C>
<C c="5" r="1" s="2">
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
<![CDATA[/三级页面/淘系-推广流量-周.frm]]></ReportletName>
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
<![CDATA[/三级页面/淘系-推广流量-月.frm]]></ReportletName>
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
<FRFont name="微软雅黑" style="1" size="88" foreground="-8355712"/>
<Background name="NullBackground"/>
<Border/>
</Style>
<Style horizontal_alignment="0" imageLayout="1">
<FRFont name="微软雅黑" style="1" size="88" foreground="-13408513" underline="1"/>
<Background name="NullBackground"/>
<Border/>
</Style>
</StyleList>
<heightRestrict heightrestrict="false"/>
<heightPercent heightpercent="0.75"/>
<IM>
<![CDATA[m<i\K;s2jdem3!*Q0iH>]A+rET<[r!F=>(cu8R'rHU68ETe07;="VF(S87KeSfih$!PuLRW;,
Tj%MAR(!J3]ADZU^/+F63n`;&0R*.&oo-==]Anm?JU<@)e&s`6I,B.nO+-ng0uB-Uq-KY*5'+G
s]A\e,O6_*bbCG0pXH-KLliHlYnGs*,1jY\jQ\QRQl56'is]Aj>#JWqGhoo?%!<A#e54H:@tSr
7g&CTV$l6\a,SHZ[Uams.&W!gUBC@J+:nUQiDAXq2uI7*hKWM`N^:&chb06Po"k@I<#"]AGOM
X/[XD3R$TIN]Apugq#>H^4LhsZc<5=j]A->4Aq:+K$aD^$T":%'O0JWqf+6\A)-p-sTMF57cab
,']A&FiWDm2>D\?Zlej&oOLO@g7cd9Ne+mO4@8,,Dea-snPh2W[PN^fiFN+\.CE!l+=YX0u_`
OuIO&n*%@fO4]AEt]AKh`pI=,jsO)WIo<KlLOH<^VrXQd<n0]AhE8;PsV2R4(r\kOGQ^uTtg!u*
G`]ADlsP\LfY7I(041T8W)\Y;A7G#YE+9Oh1o/l"R1j'HQ6QD.a+4s$,,W!VFOEZplW$m@AHC
B)S+S0l.c-O8#\)I5)@iBk)9\_Jo4`kIT>dPGG9M0$)]Ac9u(H]At@5YBt<Lo3<Kss,*Y)+%lp
V7;7>nSir,>7J/.8rbsu96@.>VIV'$9UpoZo5p#+@7(VDaTHt^HaVOG$?5[<Cgfju:=BIVW^
gl,aNY@!6UmKM6\TR6PHqatO>\`gRqh-]AT8rUEM)%Tl\0)U(8o/L)Jb)alAS:hP6u:NY2KJ/
FQ17uiHZ%X$9_e1t0TAjkW6^i_'@qBNQU'c,cr6_gi.JFY9j;g2G&N?"Klfe[PX+29Dr[&lD
!0TJ_bTZ2U^HKh3([;/uOJ?<)`abRC?BS2F/\.Ii5=["dnH]AOY7.0OLCE3;B&,um(?M0_GU'
(FDVPFX"PoCNFRo@@ThV6[3L30%`(_1&fYq>oZ;Tml?/1RDuS;sCHLj>gWu/>U,n7I4WK9/Q
R4H)s?pIRN56^#UC0<!hF/7$<LR(%iLFJND)fC1J:dT:arI%9K<()/Nui9,iV[H._$X<P2*f
:Y+KphM'^jRUf<h,oh*0N_(O]Al?B#T;Sl[?>$jV:IF.LZ*nOQsfS-&GIA%9__;@G^[?ZrC%l
_+s/i_ojAATuRLR+DsE:njFRjeJ2=odeK\>^kp+Ame(Vt&4BGC"Qo%]AkNTfm^`N1GW.)Up>p
0FU]A(Kh%("+Wqc6j@t/_;.kWK)Z]A;tXE+djC0U3e^+qm'.d;%M/V#>LYI/;pNQonW0Zrq3:)
71Ta$abEs=JOrR2mt@"7@H`[SS8\`F,,\HItc[UK`G6`E&QRe>h'=$0%.dFk"Td9)cMU0&'2
p)/Q>5/714D*l*qDt,^5]A(>U/FgRHk[1QfI\D*6;SQgUnH1F!,g6H)3&9**H!TRs6'h+LK3S
&BJnUoa>+P>;,aq&(g(_qCEtdGjfY*TLi,=&1fh\0VQ\gR>qff^F6nF=pO#hJ1N0s?ieF9>W
4J`(_-nf7Opm9.s8Kbh%a.bX?@;uVVb?Y]A==*XUi7!+"2ZP@BQ`B"Nn_DUa.(1gF*!J]A*gLT
P2FJ$87r&RSD)^f.mn01%I0oW-%0BqQG)Y01EuTL8NJ1!G,)Ed2oVVe7l6,re-LOuQal#0/Z
T6ko[o(#\$E4tf$&mCAA!Lj(6i)hLkengA66E8keWNa#?F]A]A.8/9`cA6IBT9T*!lYgQilF$q
I<AJ^FugR?51r^irJgqC^A[I8<I,J3@T5n'H,p'[mKL-ur:ko.><fRuc"#qmPmkUW>N<s8$G
mE=",GB$D>A&YXP[)Qk-qZSHDWTGJoXp(IA8a*fbAg:XUZ'HprZ65OHa(-ng_TN21*81Qhps
g3GWhWB825+K(Q?UeN0l-Ve>,^H.LV.S@fpiQ*9'5W>64"qS6s1Zumm)E:)X>]A_Ef5H;#.q.
I'SKfP:YplP!jLO!Z"++L8u:mECLoo&P>dblEr[(%'gTdegK$I*:ti^S#G[q\85tkkYj9ml8
fLgm$j8T]A(j,p!l!0PR*t%0#3r$>+`KQ4LH$?M^A^ZAhi8d?eWRjIjD%/TW0$9;@N8'F[mS7
e$(nXfIRS.h?RMA<#/cr&D$u06'j0l\PCo!4)-CZEp2o0P5eAuXa/9Y(c+d^KRD^OeSq)%B"
Qf?l$*=Hqa3%sLO4_]A3;qN@[W$Ek"]A?8&b3]A-%42(+95!_GkS[AOrZZ=t+p[VmtU_\W"YBRk
h8V^bidq(2)Nl9*o,H6=H8A$eah<\Y`!UbEPJUNB""lCt;?X54bXM`\Qd%\`Dp3F"T(iD?JU
4L6"O'f,H_Lr5@X?"L[=>O'oIu?>l3%ad$_D4lC?fL5`f&=ZtN8-ToDpGo-Igf+r]A`K\\j3a
JL1AP`!Y;#P?A+gUq:DB)&n;LF?nE!Ebf?!s8=Q8P64]AgnL58pSa#P*1#%!Sp1?&m;'=0k%s
h1K(6)MeIX2i`(N)/(`^T>QRB*2KHbNddM"!%jMo+;%&r/A5-X\OmhlI1oFA:1Ph#/@6bL`M
'?B`V+-HW</_j\<EG[h6Rtiu*8m-hP%V5qe2iXa.2nCp\rcQCKVahGt:F3id?&cOE%,hBf$:
Bp8gY?AJ:\*a'Sj=NAG6I24ltAtQ!1*n)r6an`M!KoATbE**/^1D=b.brE%%j^PU/%MHJC^"
)VXK)d8DT+Xgm5@P<d'>A2nE1PY/.6=qp!`MlT1$JSrJE?-R0be>=js/c(kJh_nl00:$rnh8
FK=`^:YB-<fe:5/NdRIj[3ngRk(O[SY=V**b4n,'VG[U+@dr$;fPsU*a4HDCM1V'cYQ^6/S)
qd8]ALOb&-%H\)=WnQ:%LPM&J+`I`0q?rrn3>UEd$U]A!L_,_3V3'\AtV++0LZK,f2td7oSLjQ
0\O8LiI/;%fHcGMWCZ=(cm%s9EC.J%D/XXuXoTWE.1+`?7Rg-S#DmsbP$r_R2'+$\h`a#^a!
frATs\EX;Q7-/nHQ6m`n%:<<*eAonVdlE^J[T,7`1>!@3,UN?4#Ol@lMNo.!mI@*`bM<$!cn
s&O"Ye<`hrK.cfDF)fW"m<2U6Yg_Rrb94>XM4WmL,o!c-Tc8(`]AnXnNp)jRn&N?^l3'(ZF6c
:Kg4N%?e#G+I_V+."<(,i*=&<*0eIO)W8]ADP=Hc.?.q9Y%K5Q'5\nN5oXAcb1X\L455"C%-Q
SY/]At_UAo:3H#aj`\`9n-o>lmYdQ01'bVYeTWl'78!$`#>SB/uPXSPMA2Et*T!UL\=8l.N.S
GZ<C;*G+E-E%g;uJa/blIL]AblQAW`h]A0NCT<NBQ3g9ZsfG:GR.:=0;Blf$Y10VMlh#.`"h^0
;_3=k=[V]AWcH^oLlqadb<Z<KOQjPQ0a#CgDZK#jFFsT//aaQ\'Bo`J'&fPI\<`6-gHHRrf#]A
-IY,1lIcVOcdO\YFgVu_+[kb++[oeFQ<CqfqV'O$=0IZ"J'F,gl[aNZaWKfhQnZK=ZUS*Da`
5fU4CENZ5Lp,?W]AK?e"[D!:Wb<SU.&S/+U0A;G7?Nu(Fp=(?c`4nj9!4b,D,XCpuT0<McLmq
_K%Gr85LZ$o)Ep1YA<r:ofEP_.Jea"LcM=@]A*2rD4eI`pJf329Sti1k.s*Tmj^_OUTJ-G!Vg
c(OJMNZrk@8&KZ&fU&;UYp:<*m%Rmom;=DsWB*m3Qq^U%0K&9\F78j1*@BVK?46GNm]AD^:^S
\"e2TtX5?!g-C::>`,hV_%MfnP=XA\iVGQ>k"&]Ac&_J(.3Tl)`2KRFtOYmeh&0bA!\g(3R'u
_hFSg;\aQX)I!iAV?O7Q>kM%P2H>bQ(?.uX6*'c"h?!\Fc\&7B03SY2JLYI'.NN+U@X\o`>;
Oq[1>X$%_W8f;hkB(IJ@Pj,Mphsu]A\)\(3MuJLYnAMZ`L.8r/P/26rGUhu&B9h8R9LMA0aD7
(7fHQqensd5u8d:ockr>U^^rZ2jQaEf`Y>l):nGQ*e7HE?[Jr<LImb83oED8R_GWL*[gRQcn
DC+?P'<fC)VE5#NCSPAF5+6T7pO^6^qCLKVFs!ZMgjQ)j$^J@*!<Z5G'e_D[@>br3e=s9S+C
[@]A#.JaVfb7?8K0+E=^^c[?Brb2\.HN\K%=c*d#S@H*6J-Bu&e-l]AN.U:Gl5'UY`*fZK%UZ"
V8'h*q87^Fa4*Z$>W,>a,nD#8X9!R.1Ks1,-?7*"Bc/F4%Y>r$L;;F62rApf%1KD0GVbu95>
f(,m6AJ5NVR1Pr-g.!QC((.9j]A'N=K[:plKE7CCO>H=a>XF`eQj8WCARfZZL#?6<cB_\r$-8
BYLXoFF3\E@I"Pga#;_CG!jH_Y@1lQk3Gk]AW753mt'0cr"*isja1)';9="bZLILIl:X^Qr.5
?\Q*!;4EPUj:a3!!KHKg)9iiXP2^C.WK64i4iI[*RsrTefB_@Fk*b\S(]A5aB\F6_Uo("a#%+
(^N5hA7W`F@*jY4>CRVTp7q]A(n7>]AurW:)0[s#$U9RX7.2u%R([+nHsiS6UVu5`^//Xuh\b>
?9HU"Raj>E<7c&W_F6C'm%GYoFB4e0=m8>PO[<;&*GmtK%3VD*/5l,rYQ:fO-S2#TI5nlV/%
k2Kb1C]A+0gg*/KR:2;B;eqdr1H_em,#4h/IUc2:bh-X,aS6&i;2[>Dp]A\Zg5<a*"d/=17VJG
f]A3usWYSJ+*9#/p-QJ!/6:*PXL!99%`IB!8Z`hc>eI,,P-JVf,T#<d]A6p"L4rUb)L,0?\;/G
*N/^\'O#mT]At1sFkcf-Xf_j/l6kO>7TXUuOJKbma!jq)R_.YW=%!tb%Uu)alHF@_>k"Y&hSi
!to:?p<'M5ooViAY1u+)`JLP:i67c]AhJPCPg7HRN6J/I(#1t,F\km=4b>JqP(<BGbgC_aC[k
[e\K,iB<):=TTeN5rQ*PXigR>u:oWM7G@Prq?a=88QJ%F'W=Xk5+)2[@2S-+?Xuqi)b!Gd?m
(*-k%V2BmK(eUhl,+,^bUZp0iLoZ:-L>NR.LE%@7]AnYuPfI$'7Jj(oZhkuFV8SpQO_=,XR?Y
AAR$9QfdXGY6/1ea%g;1trD0Zu1(EbUJ.s[aT^;o-$V(tB=j0#Nhh26<g\(QK*h)V=70+FkP
/88cEbceJZKd.+t/SNs/Nmc)16Eo23mT;'dTGqWfM;02dQ(<]A7hX0Y\S4_t4E<%(R'6gk3b/
4Nj[HRTF^)/-%bT+X%J@S+W`^;#a@kd:*Z2Se;R<"Y9cq+ur'tYCiL3;r^VS.TR3oS&.*tBH
q#h/a=cs7-=*pTsINRjpj)Qg8IL+g`s87h$Ie`1jd6]APInhC_$L(4@OeiEYBC7Dl;;)#@U2p
'%LGisWj8'f%naY'K1.=5pZX^1e/;:6l;XW(hQJ9&J:NS1>!Z<`->/BL4[@:uk#H]AR2.]A`6F
_V;FpH!qV:Kth3/UqUED%t2<lQL'uCeE4J5&>c8ildi[)*P)R>Vk\2(4$jF"tq17WHG4fW"c
@`3N_*1:Dbs.`U@,`B6N,VUU[XhKZpMU?/SF^d03*,g>..=7]AFgk"0$RI%AcZ<:J9[mnptZ2
b1/?92.kKH/VYEKVS5`BM/4rd7de:E=i5d'`Yqs5Z7jGrS9;g%NXMOp2_RoGJT3mlHqVhp-r
"5LZOV5j1H+C1GM0Rk[Y;)FXfe>(`3c]ADM^<0hRN`>Ki)Uc!3]AC1l;QW!-5>j_GYpb>7AZ?.
/<b&")WY4Fg:G"(7VDL?eqJuVVu"%Q1e_PUNfTk:VZD&Md_]A%"QQR1*oO'H)j0P6*qFTpgS+
ItYKGFV?K5HtS\2]A\*Q#LA?7(Ts56rXq[@mQ?(`?lb/s*Cm.H1RE#h?kS)=?T`h%SaAJ#(+M
Io85)abB4Vq^W!q-h*9`5h5HO">OOC).o6#q52JL$$9+-,'&&Eofu#<-1C_Qg`5DV&^("!7_
p#=rA-FKBpS5([In^1pHHnL;<E=l/]A,:!$cS_j`<:\)=;dUF4LdK9]AL/KhRlEFj+K!]Asqi^o
b>qeC8eF0MZVNE,_>3:dOa-mI4h"&aPem$DSh)/oDGt$`hdUmA<eaFCSju")b,@l\uf*\%e4
_N*%A8kTIiZq6<#*U68(f2R.'nNqI+[p5BFnjdsNf`+%P=[VU.O8_cbo2H%7@J]AA#lH;oZ_f
ZQ!I'F\dN-C!ofTN&r1RY$++LZrR""bM7U]A82+l2U*H20J#Js.0]A>ZInheb-d$:@b*Ga$iJ>
BW_O#4rRDG*RYs@pWXrZR>ras#!*;qjN?hap]A^5g#P0lnY9RmO2TK8IJ:K40:.$+T\8sL6k[
bGTf'a4Gpu[q^B4XRA>Yf,Ef,_.n=oITHmSL).\@f@LAJ9r_/=?)ZHc@N)?ddP8/LdSR!>Ef
@H4<]AjJ/X%"?^P`_B7A[>,6n\DL+ZjTBU:F=c/.%(r,p_=qP?\M?);qOe(>;u3.#c"0@6UF^
63U1;=-,qfl_4F.-7I@b/XDR[./8CmbL.bNa:U.QOGX7Q(n>@:26./Lqc+0>\EhDOZ2ZPjM?
pJs-q?ZqJ`cT8mD7tkFX[hO8ieVi:YQj@jQaFj:CU$X/\&0MU,u9KKV3A_nVaV`kbZY9V3]A'
s#!gRe1CC8VZ4g?9HCqJn/mFLcDW719\=^Tfa8gEhb;s_(2d]AW0EapP?qBaZY.07&TM&.NmI
d'^S$8:[<`'Rt?Vr-34+rKn@WD\hjiD\KDW5N8etp\@7WmQO4%H'%^Xak8=^c6@=h!iZ3t[e
2-2)XA[=DV+@/=^hg6,d9>!Qnu6*&q,>]Aba<JWp-V<IeeFD.^k'UslDES)F^Il4C3,Tk&i=j
nh$2A8$0a=6B%o<PPm71G96AM0?@`k2d4n:#7F\Om)CMNRo`=K[o`'I-e-#LM/)`M8H^pA_G
Pp"!%'.4JIQD+7TC*_'euEa!5LqV2hoZokbd)_mY6N`;SNR::EV7MW(&%"QKN.Bl\+5+A6Q#
-Fi`1>L/5,*t"l+RY*>3Tbt*l#8TRgQe!mP]A3<j1lX'DBbiY<i3$AVMYQ/%_g4$p++!(drMh
lQ>/knWqEt@pQkDTNuT*l+ObE$o:GLqs$.2D3)Q&o4Jh_BC%Y"iK>?DBYn/)[::^?o[i&5mH
6^ad$-YRu8`5=e'f\;)O>e4.htp[FPiRB(8m?Lpjr'"KE/_'<q'.e4IP>-fnZ[YKrR\8.k\C
A6JsCESBiqVUBT+&hi-T)GEmW!O)s^.P!Ljb>K?C%W69f"?_$$"b9,6IrFn%7N<sV^YWIJKW
"t'>29N'4N^=EQ,F]AH:gX24/U."_XHVs.+H(J5mli!l`_-X5hZSlekpBA(S"0M,F3>S?Lk)M
e?<$pSM?GX.*@BWdIf9c8pFgMA</;GL7d6=_QhnAFBcia*-#4V'QnRk^tk/ZEp[:B&QLqaBN
9s)`W7.2p]AT^4hY`'s_!F`@o4O=iWmFYf[8l_^f`tQgmOuRm%Y[JJ8$Qss(lAuX>h*M^4U_R
>2r`TXCfLO)fat'$QT/NG+cZDagS?KcfoUI`C=X,AdT-LHclL]ANp*7g2E=t@8_X?\sZs:oWO
=0s)Li`_5#(L=^fseppGFT3[M?t#]AcS[_5@b%lB=i(44fO)2PMq$2.K&$u^G]AAU<2.k/shHP
UV@pf-X+,/EUUuP7ZB.5uf`c!^fK4PfpU=Ue$q/PP_"u>.-:2?%u@]AMi%h#N[J[P10bdI'e<
c12&!7G9a:UN@-?305^mlDX&891i;Fa5NM(r6//H.\0@O_YP\g"-g?UZ*tQ,bMijt4=@#j$9
!u_^Gh7&fZq4,G%njE9[g7oZD.ZB/^lA#UQFh7*mtq;@^D6a<m++/$:9;E8[h)0)fgflU]AT,
aS[Ptsk)`"^OW#*b8RW$i+L)[\c4?Do;X"B<Kml@sUh8`W<kC]AA3q0Y'AmAZV<3#%p[Km@b`
YB+*7<Lu65WC60P\08ppQh-S4trLo$"]A#d*5bl]Ao0BKTh*,7!I+!d]A)ZrIi1)OZH*?R0[#$/
_?"l`e='Tg_De`-7OYN\M_.RNXm8_a(4J!@/V:(eL^b_90F]ATS#7i]ASbaWH<XXd"_U]AB%/t<
&LRUEKM"`i1ZKaAUg)o^bI.S5pZQdrMaO?K1*p?hS3%u/Xj`ZpQ<,!b?#E!)K7-]APBA#-!1=
UsMacd(RTtXV$E.FdX,"-A#Q6]AZ1(#V+GbC^3h3[H#6+gX$uHjNt]A^l^8#M;R\%8iDO0OS%2
(8/E!q\57'9Y7tn<n&%^U3<GJa\O+0Fm*Z(ZB=p00:oua0/f2-6,XYWQ`(bt.G3Y0$7CF%P'
rKp;pgokjH+^A!(#F.b`n`)V$)[b3S%t@=/u7,h7H?9QYm.M%'JPh,]Ah@ujl(VR6)'-$c\dZ
f/PLdBJDI<%*s/o'2+8nd\3NS)^>5]AsT(T>Bh!V%i62k,#i\=)/^A3N<&(\'\$]A:)Xu2-0,t
!QZ\uUK1ugDmH0nJ]Aj$;gPC"1MP>cjbsp^$5AZMXh<5=NQaXD(L_jCKk?[op1gsCb2OdL`/H
,QKbm9+u7@+m@[j_7a'gUf3fY:/&N#en9]AR2Hs<Rkorjp:+)s.<tVs3D=r"8@9PQgPYL@k%j
]AdKbD>P_EuIH\8M'f9e_Eqqh_*6NnMj%i'?I4B16io2'uCc9haV3"HaKi&jusJb)]Ah#L5[?*
]AOZFGi1\`i.:JrJHsIf"WfW6'mSY!<8`?!:k8ks6NnMj%i'?I4B16io2'uCc9haV3"HaKi&j
usJb)]Ah#L5[?*]AOZFr28ILPWm[shH+$i^?X2+-LT]A8ru^'2WQd`EmWIFblfh2I;lA#<NutQI
?r&n+FR!('s#d!saJYFL$"-67SL^8g:e_Ir7?!Xqe*BUnPmRIs]A'5-$A7([0PV2Z_rX>Lt\g
>ZuD>X+Hc^W1"ITmXN2_7=%\)><fJZ29=pPlasVI/5:%&Dfs4J=u,#Z"VgIJL7#=I]Ao5^R+T
5f4A-m.^.A1VXEu3HV2!me%aUDftSf_dc:`5)+#Z^oJ9GCcAjY%G>4l8k<PK27:F2=<ttP:j
sbcRl)c+))s$UdogL-Y-hJblI4*c3/cPW:O-L1^#US!Bq:+7^B%Ykd#?05/^%,,uXdZuW@H7
@N*d3hsoOeH7Mt<jTh2BL8$j;Yn3VPr=#IID!N'3kL9FkK[H>S)p[)>_M]A=D3Oi!K?"65n%r
)pTc@$ncOYb+:/G1b8p-Wonb/@@Fc@n_Y*re+Ds!`VH5*?;Ke2&E9$/RbIJinqEkd1@P<$*i
uMV>5j1eeJ%LUGE6n@=EfgKpK2X#Fn]A!CO*13,?]AT@(K`7HDG5r&=cB5]AnVoEX;kc$E&Mab,
QrL#]A:0=lJpmJ?QehRidTNj&Ee~
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
<![CDATA[/三级页面/淘系-直通车1-日.cpt]]></ReportletName>
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
<![CDATA[/三级页面/淘系-直通车2-日.cpt]]></ReportletName>
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
<NameJavaScript name="超级推荐">
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
<![CDATA[/三级页面/淘系-超级推荐-日.cpt]]></ReportletName>
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
<NameJavaScript name="钻石展位">
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
<![CDATA[/三级页面/淘系-钻石展位明细-日.cpt]]></ReportletName>
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
<NameJavaScriptGroup>
<NameJavaScript name="淘客推广">
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
<![CDATA[/三级页面/淘系-淘客推广明细-日.cpt]]></ReportletName>
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
<C c="12" r="0" cs="3" s="2">
<O>
<![CDATA[AI推广]]></O>
<PrivilegeControl/>
<NameJavaScriptGroup>
<NameJavaScript name="AI推广">
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
<![CDATA[/三级页面/淘系-AI推广明细-日.cpt]]></ReportletName>
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
<C c="15" r="0" cs="3" s="2">
<O>
<![CDATA[品销宝]]></O>
<PrivilegeControl/>
<NameJavaScriptGroup>
<NameJavaScript name="品销宝">
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
<![CDATA[/三级页面/淘系-品销宝明细-日.cpt]]></ReportletName>
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
<C c="0" r="1" cs="3" s="3">
<O t="DSColumn">
<Attributes dsName="指标1-直通车" columnName="dqsj"/>
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
<![CDATA[/三级页面/淘系-直通车1-日.cpt]]></ReportletName>
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
<![CDATA[/三级页面/淘系-直通车2-日.cpt]]></ReportletName>
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
<Attributes dsName="指标2-超级推荐" columnName="dqsj"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<NameJavaScriptGroup>
<NameJavaScript name="超级推荐">
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
<![CDATA[/三级页面/淘系-超级推荐-日.cpt]]></ReportletName>
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
<Attributes dsName="指标3-钻石展位" columnName="dqsj"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<NameJavaScriptGroup>
<NameJavaScript name="钻石展位">
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
<![CDATA[/三级页面/淘系-钻石展位明细-日.cpt]]></ReportletName>
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
<NameJavaScriptGroup>
<NameJavaScript name="淘客推广">
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
<![CDATA[/三级页面/淘系-淘客推广明细-日.cpt]]></ReportletName>
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
<C c="12" r="1" cs="3" s="5">
<O t="DSColumn">
<Attributes dsName="指标5-AI推广" columnName="dqsj"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<NameJavaScriptGroup>
<NameJavaScript name="AI推广">
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
<![CDATA[/三级页面/淘系-AI推广明细-日.cpt]]></ReportletName>
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
<C c="15" r="1" cs="3" s="5">
<O t="DSColumn">
<Attributes dsName="指标6-品销宝" columnName="dqsj"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<NameJavaScriptGroup>
<NameJavaScript name="品销宝">
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
<![CDATA[/三级页面/淘系-品销宝明细-日.cpt]]></ReportletName>
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
<C c="0" r="2" s="6">
<O>
<![CDATA[较上1日]]></O>
<PrivilegeControl/>
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
<![CDATA[/三级页面/淘系-直通车1-日.cpt]]></ReportletName>
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
<![CDATA[/三级页面/淘系-直通车2-日.cpt]]></ReportletName>
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
<Attributes dsName="指标1-直通车" columnName="zzl"/>
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
<![CDATA[/三级页面/淘系-直通车1-日.cpt]]></ReportletName>
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
<![CDATA[/三级页面/淘系-直通车2-日.cpt]]></ReportletName>
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
<Attributes dsName="指标1-直通车" columnName="zzl"/>
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
<![CDATA[/三级页面/淘系-直通车1-日.cpt]]></ReportletName>
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
<![CDATA[/三级页面/淘系-直通车2-日.cpt]]></ReportletName>
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
<NameJavaScript name="超级推荐">
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
<![CDATA[/三级页面/淘系-超级推荐-日.cpt]]></ReportletName>
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
<Attributes dsName="指标2-超级推荐" columnName="zzl"/>
<Condition class="com.fr.data.condition.ListCondition"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Result>
<![CDATA[$$$]]></Result>
<Parameters/>
</O>
<PrivilegeControl/>
<NameJavaScriptGroup>
<NameJavaScript name="超级推荐">
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
<![CDATA[/三级页面/淘系-超级推荐-日.cpt]]></ReportletName>
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
<Attributes dsName="指标2-超级推荐" columnName="zzl"/>
<Condition class="com.fr.data.condition.ListCondition"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Result>
<![CDATA[$$$]]></Result>
<Parameters/>
</O>
<PrivilegeControl/>
<NameJavaScriptGroup>
<NameJavaScript name="超级推荐">
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
<![CDATA[/三级页面/淘系-超级推荐-日.cpt]]></ReportletName>
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
<NameJavaScript name="钻石展位">
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
<![CDATA[/三级页面/淘系-钻石展位明细-日.cpt]]></ReportletName>
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
<Attributes dsName="指标3-钻石展位" columnName="zzl"/>
<Condition class="com.fr.data.condition.ListCondition"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Result>
<![CDATA[$$$]]></Result>
<Parameters/>
</O>
<PrivilegeControl/>
<NameJavaScriptGroup>
<NameJavaScript name="钻石展位">
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
<![CDATA[/三级页面/淘系-钻石展位明细-日.cpt]]></ReportletName>
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
<Attributes dsName="指标3-钻石展位" columnName="zzl"/>
<Condition class="com.fr.data.condition.ListCondition"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Result>
<![CDATA[$$$]]></Result>
<Parameters/>
</O>
<PrivilegeControl/>
<NameJavaScriptGroup>
<NameJavaScript name="钻石展位">
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
<![CDATA[/三级页面/淘系-钻石展位明细-日.cpt]]></ReportletName>
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
<NameJavaScriptGroup>
<NameJavaScript name="淘客推广">
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
<![CDATA[/三级页面/淘系-淘客推广明细-日.cpt]]></ReportletName>
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
<NameJavaScriptGroup>
<NameJavaScript name="淘客推广">
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
<![CDATA[/三级页面/淘系-淘客推广明细-日.cpt]]></ReportletName>
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
<NameJavaScriptGroup>
<NameJavaScript name="淘客推广">
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
<![CDATA[/三级页面/淘系-淘客推广明细-日.cpt]]></ReportletName>
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
<C c="12" r="2" s="10">
<O>
<![CDATA[较上1日]]></O>
<PrivilegeControl/>
<NameJavaScriptGroup>
<NameJavaScript name="AI推广">
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
<![CDATA[/三级页面/淘系-AI推广明细-日.cpt]]></ReportletName>
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
<NameJavaScriptGroup>
<NameJavaScript name="AI推广">
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
<![CDATA[/三级页面/淘系-AI推广明细-日.cpt]]></ReportletName>
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
<NameJavaScriptGroup>
<NameJavaScript name="AI推广">
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
<![CDATA[/三级页面/淘系-AI推广明细-日.cpt]]></ReportletName>
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
<C c="15" r="2" s="10">
<O>
<![CDATA[较上1日]]></O>
<PrivilegeControl/>
<NameJavaScriptGroup>
<NameJavaScript name="品销宝">
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
<![CDATA[/三级页面/淘系-品销宝明细-日.cpt]]></ReportletName>
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
<NameJavaScriptGroup>
<NameJavaScript name="品销宝">
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
<![CDATA[/三级页面/淘系-品销宝明细-日.cpt]]></ReportletName>
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
<NameJavaScriptGroup>
<NameJavaScript name="品销宝">
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
<![CDATA[/三级页面/淘系-品销宝明细-日.cpt]]></ReportletName>
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
<![CDATA[#,##0]]></Format>
<FRFont name="微软雅黑" style="1" size="96"/>
<Background name="NullBackground"/>
<Border>
<Left style="1" color="-6645094"/>
</Border>
</Style>
<Style horizontal_alignment="0" imageLayout="1">
<Format class="com.fr.base.CoreDecimalFormat" roundingMode="6">
<![CDATA[#,##0]]></Format>
<FRFont name="微软雅黑" style="1" size="96"/>
<Background name="NullBackground"/>
<Border>
<Left style="1" color="-5197648"/>
<Right style="1" color="-5197648"/>
</Border>
</Style>
<Style horizontal_alignment="0" imageLayout="1">
<Format class="com.fr.base.CoreDecimalFormat" roundingMode="6">
<![CDATA[#,##0]]></Format>
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
<![CDATA[FF7_';d6W2*fm$>U=-Z-U/[7)/LmJ;]AgEnbT[H,P%k8tJ"JhATmnF'.+seAF-aXEk-%l8l6Q
kLL3Ua\/hn/@>cd%lb^V/6*F07ODS7CnRk\.Z*]A?5TqgpqKJC9#VQcCMQQ3-XclkjkRV?hEJ
6l^g2iSZ2>\WI]A!M7N5V`kDC)0[I*B&hE)hZrp.^dgXY+l5C[giIe_skPN7a)G+29ViZ0,ZH
_sMDJ'Dd.QE1=e8:KlRE6%@6S\;$e:_+s1WJ-t'0Y:=ai5JPmkG?JOE;$-EbKPaI2g;904Mi
t_28"I^;ERiBT+V5,5!Iil%Q!i7C*buCrVYe[@)qcOcLm,q;:_fI3qr++c%pB:DN]AE4b\q4K
=g4OGFj=YG'ukN'i7iWgrV>2)^SF&<haX3,rFgYrNdd>_44igQF:57"U#Xr%hZA-(3C`%(pK
d<UbQmTO?'=9.bNE-fhnAg2O'M^)Koj(XG%#eM!4oqISfl`FSR$q;>IQ\H9ha=5Qc%'QRT>f
-/1=Y^Iju>jB2kWu`MWfh5H$)i#W%)T7uLe<'_N1j1%3`uNn^KQTa7aXc$G9EMM;.2'%3`$J
t+C6qIZm=_&pF:03/k;noP#7=l6TP)qE5Nh:/kp!sO:;:d2*BGEb3*TDO[5V'/pr(naO'0;-
RY2m7Foi>HZ#c#@N)r$%Fn'ha22X!b?-fMg/RF3ZK.#u):X`U6$ML%"#6#^C8YL.D/2O_S$_
m+&5h]AjY$&/%V:J+6fer$p"8,6;Q::GFen<"h%F+Q!SiZF:DPNZNVF'";&XQkp(s!rj[Pf(b
$;Omdr>b5R^,FfnX]A,0.A&RJM#`J_6'd&NYE;hanKrEXsps!k.:mk^oRCec[:cdS<n9KKJn?
sAqc]A;.HrOQX^\VBX;t/!eK@a?hoqb5?$^"k@%]AdmCV)g:&d0^fWXL.S.cFl=N`O$tUr@M"d
ACKHNL<tOn[38L@HGWT[U0(m?X6`-gVDk`)6YsYNN.4,K-+R)mEZjN*_[FVo<lH6[$Jb'QD2
m/[@.\r&NP5!P$W-XPR;5.Rf<q3qJZXk[IZTXHG,nG4de-I[R=`Vm6K*I8P$WhIhI(e&X2"!
P=ktSmsaD#Bu_@!hmctkd!Rq!5TG2.Tt=Sl.5PqTK-hG^CA\?<elSIej%AiR#oH]A)%.7Q#0?
5FQR_U"'NRVL/AUa<[^"h:&3I`<.3$,`e1cJ[tYi>`k=d"^ep6]Al03GA,++#$fjWn-"ETQZg
&k!u%W7?:eZc1J`5QDkX8ZS-7mY3<KMJHJT=%TC1S/9qT$[*6D-0GVZ9.>TLP1Bn*0h=RAn5
rd,c.Ea'ERGMQ8*gWgI5J(jc7f[A>0Tpf>9,/HhLm9&(1$G4aFTq5F";g&G/o:h!=B]A=i$'X
EXmrGVNl^OfYN`ABlXZ\!*LgeANk4.jEW6O(<Zi(&.<?-%W,spO+[iRGB\P!=E$:Z0I8rM!P
^-8>NO<R.?4>##W/skDmFcT^sZ[gl(-3Q<p<cZh(g\c6Q/A\Mbbo>On;BK-NI!q%;fmd+B8U
u.So.jUlpgt7MGPfK\!^0GLm'jGrL@$&/7-5R)a48/M(Yb0T;f*r.A#CEXj7o&E2Y37JBbQ3
9f3u(AEXt/]AWgu-d%j`DCp3/gZ1N.oRR0)+kPTq%<EtJP&K%6%AX:+/S*.%Z$]AMk`41A6ld>
gQ%!<XGpNDMBfV#AatmqdO0rK$?bZ]ADY&Mp7j)I9X@f28b\G^T^\V<D?5%bL;#In2%[%6eTC
#r$Ulr]ADML:%Lq\\LJ>4Fl5m/ReEDI*c%u2[77!F*J%mCU@Fm5X.U*>qDi/=oqeGmSARo]A_J
\#]A-nl"MBki#OP#me/MTZn+^)0[Z,2j:(D2:cd,,llE"c,.Qs#Q5r\eDq]A!Z#Po`_m(J'eW-
ks)2*Bf@L2<jP.jYE62!V,F^2IVP>Cq\^7@g>$@>%\OK=@iBA$3/.I;l<dl7uQk1$bH_UO9D
%?rXrL''+\F1+"LaQP6@-)0Z+3:31dc=M;nC+HX*rQ#!g&mQZ3bj.Nm=hD!A_X+Xkf*`lH@2
sahiq)ZC#BmV'dbh:r]Ab0E']AU(`4UAhQ7m`9$/J2?qo!_\LCHO]Ao4$j#VjX@F;*W#bf+Dm3!
IoJa<H8X2-:<ogJ%n`KI"Xkq'^uCOkeh,S6H1'_o22=_hTP0f.2T*)RVj4nJe9fh=!4BAmSF
"Y!9r2QhZ)YI#:jm>j0q2:]A1L5jH-61b1<IM-c6K>p,a1Xl=%3m!F$6Ru<*8=LiQrD[%/Ih1
N6B=6^.s]AD^*Be<s$$`#KD9*#W0M!>TsHU)"A3$q[Rmi??_CF;)s<q>!A_[RWAKd*_d?@I)k
*/Kr#'6hfLb%eOaXo1`W!-]AWKj%q;t"4btu.o<OiGs/mcaB;_)O>1GD,W!gE5nT;*r,>RcJg
>cM7>,t,29QQ&cWUK0p_[kR@*Xr_BWGgBi7_hYLLfIo7FV?!;@Zt'C,\0<+$0$u(2)\FnGrm
_>+IZ;pEA2h8"`V.lpNAPJE%G(E.URB;`9O%ImgeVKpog?Yp_j-F)epXP)U+]A<]AB#$M*&d:[
r>9[[T5`H_1ESUR*-+d)`O?h'nMs1+ZuHl.:U:snVd<=SmCLUmHJE+X4)pt_U+.^5D>pgA/[
35)6j_S>pD>'K^7\mUbY<m=YooQ_E6Xo6MILYR6<-"?(h3&:FWdd6-0lnU,M=+3.@#d3<VBd
/N.QRN&0@aZb`_&a-g&+R/%'t;-LsXRX5i;A*:)tlF,n'CK%2^>=L+M1TXhbBlVEt;Q>7VNe
BKkO`I4qLb!.N#Oj3:0r=J=:X0[9cP@8P9IP>t>=V%L?%ec<u(PK`/P;JQW4p5m+CA@CNRLN
TS2VG9W4A*&H&&-1jFS1;-=AhqV<-'6@&,m0KTO/N>Bm+WFQ;BCc^a8#%#fU3M'gHI;#Kf##
D\LE$W!f*RFf4eJQI=QL[fZaKM&$;ABM]AG`[ad2IY0GHG.$02$'Y-@#l7-jJ_0jOd'QTki?$
S,iS6L5CdQM$^*g.HJP81NjLuS1N"2^_^6And%)Q'CF:,G.qc`Eo"Y`EDZR8-u[*QfJ!\j_R
=e:X-p&`ljl!T+2;1O,[OL7TVXB2kIPK;p41]AO"J=[NI,Xs7$M@#^B]An.q2KhFjY"Fo3Q\rO
8$W:WT12T,_aAuMfXq0d5;:^-5fD`%R$Ts4,tA^I`F'jRs&=KerF;XCRCmHFl4u#Nk_17bWR
njG`dC=%kf+1"?8E.hMiNjB8+H`$5IT^%W8mR]A+?T?kao*2$gk'>=&'#W"%F>A1L5@EBY>a\
i\?[1"0DeikEXX?_'fOZb@"bCb@E9q^dRpW"p&n),#BIg`5BoeC4Dc,p'cJE/Lr;H.pR_rg5
`+/-J+nCfo3uOgB%3i!Q]A/IO":"7MZNRg>1j>,;;YguaaJ'+Te=$UHDJ[WS6>!@Rmj`0Eg]AZ
mW"Pk2mF@GWHRE[-.8FIL840u/dn`NeCWjLKc:ZAZU=/"[=-WhU--JZp_s$4#o=l2e,bFJS:
6b#gOgo#J09:borOY0:+jJfF%Z^-E:NnpeccfbG-tM1j/&W_$j9ehcHS]A]AC^^"FMb8T#4DfN
I1]AM0@)$>P+qrnMu:MW>O?#P6X_M&cmZ$)6Gnn<"Ot)+qp:!E[N7.onp<pS[pY/[s=n*cA(j
7,N8W1YO'qX^:YE`T.E/oSD(7A_rg6H?GSppk#0?rk+4eVcrosS=O9+iSFDFG9mJKPrSD)c=
bJrKO=IpYD\2o-IjLnU\gBMT5@V*0?<jd8eZdulAmuaV#W*h2F'5$_XE2a'g\bjTK!AR5"6`
:3SQsoi')C:1O+8H\M90a_0m/%\q3*&$Z&AB_[s'aC9Gako#J^&q\%9RZ,?54dUpl)6I)[sg
rc<+#H)7f`MlH=Lq8uR`):#`F:E<6aHuNCii9WckQAFJp\kEIB,=]Aj[t:[S/_1i!"sc!)mJ)
]Ac)TaE^dL*dq8QM1$6%r)-oqTMggA1!MKF:$40b+mdkuY9bX=$KUYg_@GltR.A4muTU>s";t
k9k#8UhD7jQW#R]A8NNZ,3oTD/V^L/hR>\H]A*:JL%&*/]AY4=dpYVJ(INk?"$^%CYBlrV_k4-G
1\I#4<U+kCL2R8E!Vs'gJ[aAQJ=E/<HRK!HOk$:>&&hlo3`ojEDNXE<eWQ<H>[rIY%YcfbHj
R8tHN>)e>MaX3ADJ^^./%0.M[VGO;p\h"b(^PHh<:B/>3hpt%0t&[=IL<[r,`iE"ir@NI^`Y
6s=(gNS*lmPo&>'p>^r^=mm8iX78R%NgEfk_"nb#^d'J83>"ATFH^^HWcE>0$Ea+Y$1A_R^7
:UoHp=H+6@C?aK8omG$`[)[dcT#*HE74WLgJJ7%*.J`"XF>4Ki#X:4+T^nt)9MD5`V4.8)Dp
OOuSEm&S%#.n))*Tqj#Op1[^*'/R;GKi1`%jZqSl;5.Wn=&d4;:kZP@_>BdgUO-H)F*R:cV2
"HJXVQtXS%[91,8-nli"sWi2=,QM?\[Y/JFF9tT@p'lGT`)H[N3!LVQEQ"Jm@P(hjY[TlB!9
#NAh:*DMA?[#JD1Og=h18%luSrbIWpCp#D;f>&FL7?C>?YC$W<uUre)'N#*!hO.2f5Q!uZYp
cppA%<pL(H$pJ_?Fc',Isp@WUF=:hH9R^i5HLh%`9I%aG.S9Oj/2Zu)7-EE3(;F]AGV%!Zl'W
+Z!`4oFlqqbVL9X*Wp28P?TWTs7^]AHB_YUM4<l.'3U:\=PK"*\6LXSMZ\&TPZ6P]AFNXkH6G[
WGLgiZj=1'i<o/WW5!pSaN27?JY\c='(!Ufp;t>7A>'Xo,q7fUF6p/`89`gK1IuS;A>4+S[d
LX@6/\BJ%anA@mg<J20:n8JiXP)nH#X(!+p>\WOY+nJD?dRtPD9\./]ABXSFRXD71DjTmOk\m
='!_&2_DOB+mBZBl:f^Nq_YKujL.CdcQ8HIE8W#`[%X/-tpnVrHT7+5bSC3Pgp$R?/7]AcTuk
d):jYFU^LF.Ci'EdC\)'B@\/k'W$f1)I!ddVQ7Hg/-aRP:<[]A:@A1dS+sRK8bi#_A^kTYk>)
gVE<BObUGZ3M5cu)6:NMUO-3gtgSb3Q/jbSeI=LH"%e<P'7Eo8#Td!8,Q)!kAl1$(_t/q+E2
&9S#Vfsf_A[*(*9iP1iu;;OEW=G]AU@/h9Irn9G"oj]A0`69:Sct0"@Ju%PYnl7*5Ms(NgVPo#
eUWa[]AcQpbM0`3?@.fX9<$MOEf@I=9d>_q2%L;Fnp]AC[`IqcYo;:\#867:Tb$$20tW177)";
o(6tmp^-:R-jPB&B73uIh&)BK;!;^f:Fpp&]AoHm:3/(q/[VhZBBl1`:n5%j)b<dm[_752)-k
JfK&/"/Ha6chj:LcgK>j+QpP/QaL3go7t\DuZp*5h9E5IOm=f.DKoU.c\C4p\#pZd`)MP9A<
1)RWN]AIjY$]A^>/$3hH$IseN>nL1?5_sQs%&erTS3\[__Shsn8(HMl+hCBn.g!#Ss@oCB,?N_
?TMID?b@%t6M%mKZG;kR/<>%M!.%ZPm5ahP%LWh/?oFFV^]Atj@(iTGZF4r_9S'@3e*qIq.P#
Ij>f;"A;`@1E\!rtX0S8g6pabXJ6SGY8#:bg\00^XSGL%ecQgKQc6@"-Ro?8\^VqG6pn)@K%
F?Q'0<<[$nhjSXQt0!X_-Y*>+D2dO-Po?UtqC`I<aK.!$HRqiom3VlE934eD.;t03!l;8*M\
(Y#;lpT23(:2T)j^7TsdU%90.UII!"$jP+0c03K2E,A8S]Ao".!#\C&d33)Ohg#41)"ZhQS&i
tD[Unf(*&EZJT%*9&<7PJYck:WVKu[Da<UIAdonh2*XFFm4=-h^07kd$#!UH+=Oc]A6U*h%8*
0FDLcJD6gVD9e%85%+b"Ql@NS%A\<"q5+gjq;rA]A$Ue_$GWk5#OKH9PY-I56m<oA?,hnQ/M-
#YG_T7K]A:^rPdZ<FTk.q54LR6jWL^#7#+V\>>J:T:jlH3U_rMa5):#*Gl:%Y&I!;LW_$\dW,
2K=/5fMOoj0+pBfBQejBs8[?KtBdEp"cRYCfCPQ<%&J5#/\2=r4IsH7@D%]ArR,1PmlTgss9C
IC5[%mZ&^JNJ]ADFb+'c<?i[>A>`9`"0DL7"nHYM+-Xm-QWbUqmg!7S]A]Am+6!<<K:W9QbaM7e
:9+/K->;`T0TJ!LO_^1^#sj3+iCBTiW'_3lF1Ri=4%(AW9;pFh36Ep3o,WdXh(]A&sfkAe8k<
g*#i+aA"qCq<8c\2E\-\:2MHj[99kf?\b4=%,7SjWIl!2,*UT3EYG$>%gk>60L%9b5Ng2G^2
\JC,W\0OYj)blSp1s%@\ZM&:-\J^TM'N?8"P/R`alfWq9ip<C`+#e`:u2r+18n(mcN@a0rTI
N^rX'=RC3%RbG)JP%oE^ZepK7q*iakH]A;/0#JBd(%84mgS6CH%Ic<V6!/S>W^rogb:6b9j59
0*8-E*sj[EWA\#Yd8t4)i^o.Ip/&![S:LK48.iZ*2lel2O;H`GJ=Fm2NEcs!%'K'N-ba+dmK
b&"=E(?(8L3E@u]A@L59s=Pn1Cd#HsU$Y8Y7p6+&s(\llWD'H\P&)FX-4"YB20\=.SJFG9!oF
%#JA5H[8;N#B,7C#cN(43<JW]Ad0aL]A72rqb/T6<9\r4YJah</%S.!33gLt;,Mg]A*k;^-s)j'
+3X/_KJCoX7\VTY9se_Bnu5hl[=#pfQdE9a.sPfBk\"Gk7"96#9iBht\N8eL_i*Lqu![Gos#
k&o,*uI50t%:;@Ql[Xl'jit',X`0ojkQ?IQhU@m;m)`>=eQhY#*\<Hf&Np_-&_q'#d0_t^H2
gX@XC4qX8Jtr,iLO4W:Gk3-I8)fg>/WBVL`u<r/`^2?Q"835^"S%,s(m]A_>R5[U^MI=IK1Mc
%33"/XXX7iAGhrsgid9"&4Rh]AK*G&BJrTa<d5piS6MeAWp\h2UlLQ&T7PEqJ%T4im+7L$7o`
^;gU_f%.0_B?@><m-J^YkJKM?0WFc\2+nc@mQI2?N6GP!2QK8LBQoMq"6B!cM33p:E6=,']A#
\#W##ViN9_gq@iF87NO0EoFUsJPa^dc1t2YKH_jFVS@e_:TO$NO2038?b$UuSdhluJ$Go?R&
1q2A/pR.DKX\^d9H>;N)aC=r<$!\;+eDJacbbR3&f_K3nM3f]AMA&kGp`&ql;k-5rGoL!uRTM
)`mo*5uM[U95JI(rh&D6;@kO@aR8Q[1d9hMQqT:MM4^>6dD:`6W*UhEON$Fksh803"!Btp+k
q!;Id,'.,IA+&U2W*q!`Pb,G6GE8i"Xng`ngeY:2>p.f7u.FMkjA(?Np4/HMkph'[6<`mBuq
`.5.B\.N-L1;goB/I5TtSJHcOa9`kZWg\Wk1M6pUCLf+#e@Dd1Y7,ImRQ1/1:O35<(KO'aC'
/*D@E%)26tCia%sC,H8_$kh,>#U&:E;'l%`a'er_**RB8^bNgNFqrJEmSW1jXX<\L[:^M\.`
N1J3!00fkM=mech9*&_%f#MD$UnY0T>H[?r9ekQ?1pPQj$<dn_g8FU0LJ4(Wb.U44Hs2Lg=F
N.X]AA#*;s\B+7-nJK(O[\kp.d$>fXCajJjQb\<YXu:Z4`bc@GbTFM<nD'.>dPfE(LHVK;P3T
@m9\d@%gAJ=g/LC!8ei18=P1$[p`Zc)Cb,]AYFnQfstXKf$[P0FHigWr8e0cq:%ZZ-RU72S)I
e/5sLb7-!ZB?QBqCHG2\WUD/\l(5u9F$;_0?Ef,J2/QHE,A\5@q`p/)'@8+go_/]AXf"lZ:]AV
5\J!2o2-lFg<PXaSlA1jha/e!5@Hg'!h._%"j-To1I!HW)C-5mUQfjKeD9<0X;SpF*"Q9M6W
-1<:).?[9j2V7EX3Y<Lr@<5X"=bPi>4]Aj1S;h0s!TA%GXbP5tYo$1+FG,?tD`2oD/A1O'Qqj
(j;Cqj-FijFp^1?c#eV_/#`&gW9ceFg8`.3$A?f)Igg`eP8i;CO%QcFes#H+.O<e]A_2X;"0C
*U]AbLYp'V!864V1@-L/3H#]A)uNlR-@=.(64S$6T:95S@&^"2sT`'Oj@o-;Chk_7'<T<]AtA6P
E]A4f7"ig-UqBdfd-6'fN/pV#qI/1a9Q0Q?rda[^&0BcGSprH="("5>_m\-:/Q_S.td[`p"(0
g#''u1ll9HsUNQSm4,lA9_3Kn.Dnc!T\Za4Pdcjtu[6pSeRsVS0O*c]Ad<mq*%2I_/90/W.C'
N"gMuZ[HUXgR]A1l?,N!Xl?1^SANl;tQ:?YjU.H4&!^R0)`X"X;=/RtMF%^s.LCR$H++RVNNc
bO*ic5F\ZjZkEmXL4O>M(n0I;75Ii7/taU22^Or_8WD>LH^$d:JLgFp#.(g#Hdq_=R3#@^l]A
@1Q%&$,$h1A$:PN(TT+sAR]A%]AIZAc-aQb6)2D-u!:MIb9J.bYbbR5e\H?=kSS:rV@T.[Dt,e
+O+I[lM\DJ/!&;/Nn7hL$c3SUp@kp[.g[3O32;q2#_/S0[Y_JYnGTZ%ehs\1i^Sb1?0mL#GL
k_8aO>n`5Q+4<c2tk%F&!?V8&am+#B1KNnN"><p'*VI&[)F7OmgfR7ulnH?g*EC?B2$_Ok'h
5$Q5K\LA9/0]AEHTrkLn$X"[96@gpnb-QT>,Qh:_e`F_IGHg,0Ui8M6[re7=q%-\4OF/gue?d
qe_ZRB.S-3_jPGHaqgc&u'Ohd7aA$"<hPUYM(aB8]A=dcQNqF&DB2Ot4),nSaQFg\6_Wq*#d7
l$lDDh>IBpb'B$@#EA^Jo3jdc't(*Ih]A+)!2!$5U[YVEC#EeQ_S%8@$BW*#ssA%b1JDY1-V/
d-tS%JujTU`9`!W=X,`^FcURBa'o5AOV'\HTj?qqd[p=+#E8&>AGA[uO&1mm>."1bLnmpeYA
*XBg9a;fZ[B*Xk-$jb^+T]A9cK+&R=?>o4Rc/US[H^@e2u[<52N9J;TpnMcnIE*V$-2,p]AJ6%
hgp&%,Z-3Jif,bc!O2"QiV^=901YpGKIThNm[DN]AG!=.d+jWMl+)iiuOi?S!-oFX3K2e5hc1
chdGE&`C!/mj[]A@r_1SHh(#Bd,M2_(F9+,#"C<3bAaehnagcS4/Bj9"u-.Ff"U(W=-HKH)+L
GHgBc%PLt0^8F5I]AMAUpq<iqYIO2k>p?@6QQOROc&";V>er/MU9^rLQ7%+)2OdS'rlodcb^;
O\%-jO>7gs%8^?\ja&OM[$m?+%n]AJ=1DE/7YeWXGPOj+-afdgZ8LAVVGSR8755XgXZ'HWqqW
Oi7]A&[P,NPAJ3HGKhB->.X@^\u!PV-8Y%Fi"LHG'QqgL7`81YU=>?M=4I%"ri%H!oaAZMU/s
@*cEH5i-(>fht-Ksf-,R#V0+WBiRPqB(,W0u]A&0'kZ;nL]ACCi/?gsS415%OltM:n0eC6$!hm
&<')h'3PV<hZQ,pa4n-[qM0^e#*D9P?MLfDr-F)3%3_d>m4!UES:V:"1a2`OoDgng.DG5`!s
I1BG-QQQ>EjT0bK`19&5<NB9/%gi&=uYDGGVT!Pc7I"#lF&/Vo-*oLmY&S#iY;Np[\IU?D;I
K8N;rq_(H*&s\EuYmJPE*iSNK*>mHN\*u@2Xd$c/Z5[F`3&'D$lTt+_<qXV5@=3JBRjUL;Eb
!6==KXhMT,XHc@-o$O#h?'fnTmmBk2d50?-2L$@V4_FGAcekWEYmr/q94Q[,[p[A5K`4c91N
e(:qm$?.-Al+0=SP`h>iiGm<]A"0b$3BI6k(2_nZ59V]AVE.GfE_q21ol'P_O,Hk#?q#rTu*MM
Cto!%#6jU1Z&c[388Q_HOI2KhFUs%*fg'l-3'[Nd;Du^cV42O\#1u5rZJ#rZgR#0FNloDN\#
%'2d/1D7SQp.W"PLDA1Acf5YYAlP2jWsr4,9Qa]A\8i76]A'-:):1JTj(d^Y<LRSh-QaE'?"/X
F?#%ogWc.,7lfQI,Q6GL`!%Uic?)r=8BNCN;Lu9g[UdN2DOi"R-Apl,'-^uo5"SP8EjH`e4a
hHP<CuCQdaEF;BM<nN9]AN3h=nI$NiQnq56nb#t/VPMV"%iap6^F@L#(+A[4'tFC)#7g8a%;Q
L$EJn#>6Z,?=dSF'aAX^FMH2S..>U.ln$hU$([eW4l]AStRB;K%7*]A[P6`Cui@k'J\BG?Uf^b
j?HNgtfAmb>MT^5%46A@"%OYo+u1I-L4EOet89I)9l4TJ7@a8XNeef\2q+`pMB?9@rKCdblV
K.3IUWI->O1-9lB[u4NdrdHaZj21%;k$oHar<90-_>P*ELXA$)-hV9MGOM%/KR,r_>QH4\6f
*F3ZRk_8I;j'$<57%VMg%LWs?L[!8DXC"_EoB+U[i(8H/C`*A\&??E+Q:,@i_^Am]A^,gT<[G
,oe:B5r-&U`MTXTh@'MNO"66lL<tco\r?=4pbti6#"hp^",bgfXO(W/<lMIquqY]A$u.WcEcG
]AGhoHP3<&Tt3r?OsMR$+2M=Wk-QVYU61ir$9c1"Kno\0m`XB?hQETStHX\`dHM[f`5[Lef&;
sQ?iTq\*>bGaVR-L,/O_%f_kZ*KqN8NBLZ4"aKIU!3@o.cUt]A`hVi&X<l[**;fSggkILhI*f
6T2@4Mqf'?\sS*BY_pl[0gOXQ?Q>#7\3\Oc(+kHZR7NgF/&,:Q\2!<QEh.%NHSkFn:fKtGOM
`A)"5ML]A;*SGF^?=/LdIq$-4Kn/K@7=)YW*-.c/:0(+m4aK\X3j#83dQ[R;"-r^'sYUh_cj0
q8ir2#]AS@g-:,DFuUK8d]Ae!=i=H1Dmq5dpGL+%eQe<Xn)7qm?"D)u<9??9jqJm6WI"B[^(6?
=n^("COMt_G_Z`.,<u:Jlmpu6d@fl(6MDaUZKM?B9mp2"PI&^\SdstfrhO5g\_'b*6:oha$<
oP/>_nW:pZ/(4s2r!O^W-<BPgq+mb<OeLQ:@$rKkR&Ak323B]AG(pL1%9RE%UhMhT*K9V,NVV
DCQs"6Q9HJC@IVIG_Sc4hO-:W6D@#/01#gDM._n>I+S*C\/KAtMDTP/>b@$sZWLJ"1$jt&!>
P*Zhl$[dCpSUT)ns!_8rC>4&ebQBbs<QS2sbL'SOERVT=b&^OE"0=DYd#I9nT=GM8M]AJ5pI+
1_')11sSn1McejTW!;Lrkf[UDiojpP%qV>0]AJrA0V37"u8-*)Im'2#KCeAR;K@nV:ljP5o6n
240qX-3bB-Wnh>>Sjf0e=1ug[`@+ubBU8YZLDG`#d1W]AF?Q%nEN3MZQG@H:e838S[fI?i=RX
i7gLaggJDL]A^p+!p,M5Rafq9#Boq2gM!]Am(RXmYIc9&lOQeS\e"-+;c4Ejfd)Q#6HJ-4k`)j
cp4P+nm@I`,`D/S=;rMk_Q:\+TN-@+\13:`i6]A0uoW&)mfZ=\U""JtLA_&RTJRIeR+m;,.a7
)t$&64)XX??@I!i`fmPs>2]A+h!);'$J=u=QbC]A/gaZeI[bHkUoJ`UR3=ii2!OcI+ke[G;Bms
]A`@SN3e2:3TFFaJ4E$RJi!?=3#BO:YV@fB:BlJ@o*DWJ#\"8EZb4Glt;%Xrsh5l4C<<+l-_!
SEX(p,))hD1oKCfugr1?i![%&Gj8\sgm.u3<l0Mrjp:6pt^Bc-;&HLQ[W]AKl1<S(N'p<j2ks
!D2(?3L\P7ki50EZ9'/Xs[O4(T(N2'?f!nQ>:g@PQ+nCs#hTe-h810Erhr)M'ih[.<Is3roa
7ZO)0PXNte]AO_FCC!qnc-`='MY9;q,k!jo5-kLgBs0>\Tcg8i))K`2]Ap5SQDa"j5(\]A]Aj([%
js"NY>.8d9P/SJ)`[%%apo-MVJo.\mNu6154#QY[LtdgNe#]A'Br>p"X`:AqU[)OY<.[S0rjG
=U)$^rh!0gaT-4'FTqPCdVZm>n;H_*fd4r8H&:'MC.-FY,Sk.to'L>i8(nDEo4'b+LjEd"7Q
;r+?e'A"3rgE%bPB0hK67&':HC9a_7gS?_IZqX=r1+_o_IH=P>.D!a>nWl9>VAEY*=c3iFk^
sklA\DP7mH&q)\1#JflgmHb.8jl@rT3]ACmC:R>JGZjL`=''j7IhX:nJ_M32U6[%r"5JJa//F
O3$EY]AAA[#AHB^068^dYLBWq$'F2T.Ms$\8iKp0S1CZ/fp#ft63T8t,\1oXa&rQ"**r?-cH`
I2VR<gM`K>PT^^q'%eN>Y5b7,?pkQ0!N-mE<42Og1-M.e@Ja<pahgHeffU4RK:p7ZqL*5K/,
]AVJ)*42]AmC,AhCmGSXk1)>'`umQQR'5H`^f:U3d'j,!j=sf90Z,4iKO3p<oE:_dm@:00#@2/
E@K[gM[Y"[2OF*RFB[5.R>sg`VN1ghs3f\W@-E%"<Ds@kKLdS>0[)1:X",%QbS\$<,Ge9cJ6
fJ'-VVLF`N%D6u[1S\(/m6%MH8rrS-iTBe=@"(HVJaTI0.Bq-HX2[I%o9Oh[*bC;5>2RZs0!
UY1llmR9hf.ci,\.q9CDN0bCM;@cXDB%]Aj;-&i8[7n_$n:KKV"cLT<\oK6rJ@2-cJUiWK(2O
CkBJj':";FQSTYQCOud]AX946H>5/AQj@b\C8C.r4N6?Q/\5KHBD!CHGX+cD1[_l8.0SSsb&&
cBRgC8J$ZGB')_j5c\Ln4hGJ'('OWK\X[pAT_'Fl'h\lYrXm8Ihmt^2<&bT,4DIU@-%]A%jIL
h8Oc4[]AFNdXS9#/56T'3fXo@he!=.phY#ug`O3sa:,`I=t5bOT0ET:$-Nf,Ha]A\S2Me=lfk1
@fM)+d]A-Y;<^\s,a/eYN-Op:/J)B(6XmaU<55fj63+'W`Xg6umsb_LfEepo<CEFD#>fo*FM4
>HSO"X4>&dKFS%'VW`=bZ)0[[/GUOqZl]A,T]A>ldXpt>%lrEHFSgGT7SipnbNI*P;EOG:rD2q
A,N'e7;j"(X#OGk(CBY:[03"cS,%a4WC0td;Z/l:8Q8bd*?KG%kB0@VQZaIPK[c%Yq'[488Y
nLKAm=,/DPB9'[d@;\a8QWMEY<b^W#`hJ2e!"q'sniuWTF[$h$Qu;5:[.j\o:%t(A=\foeEI
J//UjS#:6Bs.&<Y'C"MtoP<t`,q%SM$?9"$Ym1(qO*L4e%W`fp'-;L+s4J!kE3@s2CD$W'sH
b2n8o"^&kAa=76=\=Ua3X9^7hci7Ve/n'lo*[%=.L;'Ba!**falj@T*<u_C*I0hn[nhPN&Lc
(Vk.L>jh0pM4aZJe1+\VR\r7'lEaE><c/_RRODtC!Ob<*6UaY]A3l$"e0tlc$\?c3N/@&]AqR'
"-'I@Mdf4Mq8c:-3/;8dH8VEm%\gm'5[2?TB5d]AC!]A=9*c*SYPBWI#.qd-U%f,$KJQF:j!Z?
LflW%emmN57i4/SM*P7<7htBLMB(IO&*QV^H?\KtFZ[gsU*F\tCmD8sL(9!19Y!Q(Z9uaBc)
[dR`iVDPF[0Jg7fe3Q`Kl@1*T7=p23!kUfTM;^g3+9,kE=U*oq7_q?Z(!NOSLVs$4[Dc:PhL
>esg!$t7;pF*_A4(+iJ&okZSM%[#[E?A>tXPZ%@R3CB5Y+>g$Yj_VqoW[#3C9'9$:^Fs-hJs
.qGXd55A>i.l?>s3G.r07cc'=.*X4#1:n`KVm8I>[(1pTUM\R2k1S<")@-!M8L]ACG0T\']A6f
R9TF`Hr8?A-Ac(e;2C#F6UCK<61]Aoh8=M8t+)kV6?PH`m><NelVk)Q-b)g!E(r-7N"aup*BH
mR2I0QZH\-a]AGimk16Qk*r]AWVjXmT4iaork,BT1dY:)UFnO5ATnp7Xe-8$+^Bf4JsTqW.,RY
=-Vacc+tuYeGoMCH,=1g!<-XJ*@5.!hbmB.PC=H\+`-5(GC[5dE^^C*=GkgXlh,\>"7i*;*<
dnRIQI$\'pl<2uYnM2%)i`B]Aq,;OmkN/]Ac)WH($AV"^tS7qHOjnc0@c^"bPoi:qJgKTYHW"#
_?E,Ll%O)C@G/]A:Z>-@`'":+;'H?p??N'Np%8ip,XC4)ZgW\.@h'*d#(.FVq45V2iA$b4'"p
L\p]A9`]AO%Nd&!nkEpJi!\):ju0m$D84mTEgi^"<<Eaj[m#.Zia=%9l@1Q)/_9!Zk0I_4U3Ej
-Qoc7Zgf/1!\p,d&*(:8gMsi,8;Qh7#;V_*:'PaiZ-td^-u#jHo;R:[]A?4p<Qsm:eB(O:on(
1g75`H($bHjINF6dc1UNIr-G@"KV0(N.h5,,%V#67?BTqV^Q.*Knh>4G@YofDi=.rUrjQ_hl
#md3Btu6s[:bPT,DU*fL1>&)c%a<L5C/8oTu,qMT1I$IX2>msH(V@-A$sGr<b(n1:<[W/qVB
pJ7\?>A;lSmNC1FU=;8hm<R'VZ(E36`+UbXX&7p+:%T$M%QA/674)K9D'R:#MRP\B-n#X-qf
iHfC:"[:Fi&9YG;loOk"o2i.QlJ+Er-!MOe@$g]A/*V?fj6Fc/Ef.e5/JJ[_h\Su`@:8@^#;o
CS#^G]A#V,qFZPQ)'%dSDuKNij;E"=c5i8iU2=9g'lZ0*es.2[&c-#!;>"r$GE;t?0CLD@4Bu
g;pGTKf*MT2QeZ`Ro8/+H-iTX+SB*3=0'U8MDYQcBdM6%!F6#ZA8ak<(c'difIeYec_8)5(Q
2<N0+l;tS"2`\\^mQR%A\(5i-7,9o36Rql)=da,,sGPi#7mFJ2SdCWNAlqhR>Dl9NUAG0aNb
C8\9lTL.tl@g+'$^ULjJe=<@(Ij`lNU);8hV3=pP8%bZB/m9[]Ak*L!/gnj.!auOek;1lb+uY
p]AqhehI1&E]ACe[rF`0/-)mb`MXK(gYf^$Z^lZ']A!A7qrA.fflqq;K"FafoF/aQQ4t.$iH?4r
13>i'&>P=-2EPH2=r.8hJYdI[dfVi2K!mO8N-@7YSjV^V,a]A['0QY32U,8F)Z!-c8$V]A_WZY
8QR$pP0]A1gG!S[.nfh\3;4smX$eP:#Zg\$2"2)]A0_<*X`OT$W?q1Q,Uik"Afi$SEi>'70D#0
$86S6oe-&EgF5pWFnKOWGMS#$$>k%ar[cQD+EIfbW?%J^E%Z)\)d]AR70.L)_:BPY39(jCMD4
ZL.V1TI$^g'*d4@5@YBXAoY[!lE,#P>K1WI1E95*Qk89,Dt@0l_9aXsPr?sQAl%Ons8=6Q]AI
'T>b+ZG.,`9oXFRrKPq0YB7VdDkU4R2@Kbqp;=L)KtG$i/]A&^q>LqQt3S,*F5Wf>Cqj;2kWC
NUu6QhbC)tZX,g9C&?a9!cOP!C_GgNkccA2fAXBTi#X(j_p@p"eb=oTIP$R-ST9mu\_7Z<'K
aT4kXC06-JjFP!4F;pgX!1le8+=9i*4>"[g$pZ8$=e(9t"O-r-VU=%=7l`OusjR+BVU7DG8?
Q>stGsP%j?\f4oaK=D#dg5<RHO_SHIeo_a?SL^;R%*1ORQ[OOi,Q3:jtB01[;tLiR7I"C+Of
V^Wa*&Gd.(u\N.c&)3ABQ!G.3`l^7Oo[^D'UGZ=r+0_P7.=2&^JPYngnZYdZhA7Bo/H6WTI,
/]AT.i3>2Hc%ms1\^3LAhetl_h'Y&XlrT,5h;"L?.08i(n$`a6%+HK4&0ff\Y[3B!t^-fo[W!
U/mf+E_M_;NbNrgt_h!>1jY!T]AlE5hC-o'>X9jZt.Gg5?1b$SuR_cAc&Z@QSu:c68>6QA;jj
Dq/#Qs(d&SS':&H.WP/TQM>sZCbZps7TiWt_j4EP='P.pm\_^RYqeE24kFZ4Ij.SS4*E<VUQ
;2J]AF2ZRI[HI3WjJu^?@K!0eZ@bu9KlDfSiR?'f+Y!OK`DE$58\WEj5%mm-UBa$,6r98/IR"
d"s0[mhTpR`5<9ZZIm<^T)d$UZ*K;.RQl8r$5>6BV@go\a>qb<(V_U5J,9(E3iql7_&IMFt?
F(F.HNVZQ@5O3j5#QkI`G81PC+86HNoCmFfr2G0&ofq64"5BJe@YRm'*)T"L52Bu24;l?j!P
^Xj+gJ56\`BqTpV$34HDa;p/NNPgKAp8P48O-(o1OG2j]AlKi1ct:j[t_4@.`n<gl74?,k9r%
L85>1a+"Pu*D$pdPf_j9t\Ip"*P!]A1=b$aK,k\6>V*Y0;p'jQ+FV\u+7mZIDp]Ab]A1b$%,uc8
2M*mG4=Wh5sd)M8X+qGk`hdR6'WsK`U,.nmtMKaaeX*2bf3bV-em<2c@+#N8kc.oNo0>2Y0W
OZ]AIZg+24.='KY'0Y>YLRJ.d`o/4iRUiia7Rp?>9jD`OOk='i\=V]AKppNC3j6td@A>GX(W#*
R-Zk.i@r$rSeaZlNj,?gOl8lfi<H*qdgO^=oAV[;/U[-PY<Df<`l;M065SHtjsq7;-?"[m+U
+$(`X$\"#.+Ea?Mc4AB2/"Q=0P:(7[Bi*=L\\qWQ>"9burNWj@;85!!0qe\_6#V\Sk&V`[Q7
YUU^s1=Pt_/4C;RGMJABeYQQ2E^S(DS6h!9&-ZkG.+W![0XQ\oo?MF$Tdd<##R8g_grZar:@
Hi$B-D`Ma9-,W;.b&hTX7oWM`bN6Ph/*F=$+*MX%Sea7RRAP9^[449m#;<R0/0$,&BMTF;hC
IjdNcR$cO42O%Jmt9W2Kr,X86ki#IC.<nJfYs'kc1`UI'7oSIVdae#aD/89Cs=Fr7p\7=$R8
?^klHHJGG"%srrGL!bD\T8F-GQodFb+snhR^43)@n1r1p)R1acT/TS5;RY/"r*$)cbHF/m[3
LauN#Rd&WQc2fhBD#!VbPTq1T]AqJPNLl:55I7hAs^%]A7aI0Yl^U=R=f8f:+'R:0VFU86_5FM
u,O-'0d_VgT?,e=bpkO.?=dC_anF>ajAL\U)r4(uq_U36J,"gHkgIRGbcUsdrC+.(\.1JKkj
Je>;Xk/]A>'a[&Sjg);KpSqMOn7KLW>@uS5cY,g(U.T[N,:El=Fgi*W#$HgDk@rdE`X4uD/oa
naaPgG/l81m%HPD92i%1XbEjHi1M4c'6k7!5:Ds,q7HL9rs"*]AcS.*/O`QG!GTki#el%hTUf
I1duYTkm/ekl3J\UOZmp@]A%>sGK%@9RaB<9H_c%el('Br`9KP0^#l`CU02l`W4,Wg-=;h^K'
'Ts"G19Q+`6U)Kq1nE1!1L$Cs6N:f%0>4a2;@n>=.XKnmt?0Vn>i?n(;j66=3#WMIYXbd5\5
k^d9;(.\.f35Cc53!Q7qp@r9TuH"6d^eQ:Ut@@47LJp=PMm[6`j4,;sTA(n)aL2]AoYj#M7Wf
_^baluKHX-E60D>ePIf9B'n,[mi`&1df93?PgVi97[nS)Y0i6B/q.'?Q4@DMB4[g=*RL(g(q
jmn6_dY]AVGGYK]Auq)P"YCdac\-LTJqfd7Fp"2=^[)<39ZYr4OSH3Ap;p%_Lm#a*Q=Ou6(9!W
93[2=8s^g6WZ1;?2b1(IRO,>d;VM&Z0#_F*qRP3+=%O^==4A:=P$-a3.J._:?bO/D6_k5s[N
nM8j/D.k1Ge&h<V-Ta$HY>2MD3O\N$@#d[VF-:;)94Gil9EE*XB+.GJ"^C#YnC(#G:c_+iJ:
gQ&)IW,,=)&gSUBrVl=\OR#/ar@HOlJXdh.D6'oY\L>jX0LlI[d=.AWQeNX>._kq7\RT+0Nn
u0JHYO_aaSQU/GOKq-4oCAFUBVVH9CaW!<i$/b<"tSd\:"'[IH6chXi6&.s0=Y8\fQ/_%\WJ
jS/N`L%$?$<tJ<FWRF2N[GaD0XLAE!*?@oK,:=sCtp04ZdBeWg'1jAsF#b+k$5q02l"AH<>)
>iI"p^=gf-pKnA[b=OqbFPMSs\'oY9L@DANi*J^:b<HnqYl!HW9EfdFOQ*;$e+)p5*,.G)nZ
@:.[5<<I6P)i,/BhnoO)VZMdUrMd/]Ao';D\/E5'R70oe-.V+qrmCrXcR&o]A^)M@Kpnf3Aa!S
n,tIr>5TcKq6c^j>lH:\"PB$!D(MC3q:noVXB8HqFjF9!&TOHfEVLLNh^X$^T%mCiiQebp@"
e!>q,1P4bgYO.$-&W.Q4i'HEr8RC>SK$.Id&g3VT1T9DQ-&aIdFPA(Zs>:nfC+?UKdQpiN.l
@_aPU.<&om(PR-YK"l)o"2_I1QC@tPt'9A=LHX&3Yfj@4o?U9l)YgB"2.)RK;JK@L\mX&FLb
eN&lKr087\bs0`n3=$:H)`9emWaE#\O!1?QY7*_bO_N^Xj]AJ"3J:R#^3,&O!"MQunqZE<^FK
V=<hJrl3IPt8gK%Tc("Bta=OlrR1\KU*/Ao83p2KsnI1[[+Dim]A)@gd1gIQ@agbkG//(HJE+
8?ikK%>P>;fgoqoZJtnbLdi+V,AuVk'_#6T;k(Y>EMh*M3YW[J*!4jZ>Ff/#a=1S,Y(a.2V<
k+CoZ/GnJEK%HG8%#&."X><u^j8!:-MjYV&0"V]AC)BBjO49RLLg0C72NZK6.M@YH_E9V\Iaa
VIh-1\]AioS"Vr^"\/BL5ffVFb+=qkYNi0U#BbHP5FUR"Q)m-Z(p6'h_4B+&13pkkq"XQi<aq
I.d5DeOj!c?W2+*,Ltm1/d-GqFAYGTjJtAM[uogRZd5Bh.ZejqDPd`B%ZA'*m(XF?^+@%Q*S
-Q3DQCnsX7(9o*jb,2QQCj\F0d5Gio7F]A\8eIH66'(YTbgtG7`sJdPZK/h5,AD]AjSj-G0ER:
p^/srMjV3EL([pYsA]A#sR'h_VEmG=$Pf0KdY#7`m_>QXmPj!nV1dNBEGB;5d5SIKq#kUBreU
qES--_;Y^(sFP:%"pA!.J*&,3>*CWYdAA6:+'f/Gm:a8e"MTgg'aJqVN5k6TtXZ>j8(<$5]A-
&^^j6UV8+R/bIuT1[3d;i"P4!$;!da16d(lS5EaohZH>psr(gr#TX;.*')rLBpW&Ue;0%ju3
+uHtQ;"fIDDrfjIDb7H$b_Rlu+U[VZ5?jQWA@rV&lk^s4jl_^4'nbo>UD3D#*USj01dXt%FR
Oc!9t<r_i&'d\AsAo8nSoTOs$5T-e+-qno#5s<PU5(<b\9kf+Y8cu6GVc?2bE^hP[%?LX-)F
7H*kBW3=P#7\8M(s?jDImiPjf&@?F8_J%bjmG2;S,g,>eF'BD>f>7&h+R?r:L>e5=MTp_mEh
ZR(]Am'1C*O3#&@$dV907&;-f5^sHaHDV.o.^Snt'SsqhQK(`DEUB;=IMg,Z#IkKmBE:B72=p
8<RGrWnd"fO;r6H?CQl[k;hXGMQko9rBe21MnAj4+,RXi.Rn<!O<$t"uGr)Nq/ruS)DcWq?V
.>r3ibMKui`NFN<J.J]AM[[`s=,[Alc@kfrbbKH2XZ[T`2orJi<Y`igC$1C;>HU2pdS4bZh7g
55A<$'`*0t1-XfI.`OBrKu:O:h/@D0L*:[FY$+UI'tmFnE`<ZenuH_A_V.jr9pLh:c01g/"]A
\[^=tlFmSg@pI<h(V_+TQp.=@BR^kgee2%gd0#IAklt,BfZnehC%Vl(\jX#:M`4a.lJ[p]Aul
k5JfS7]ApN/*96/r"L%:ngqhZ,Jo<D<"qjj^(-NfXcuD"bH_,qp(_i,4[ARNCE$Sp9f>car)p
T6_`t'.b4=Mn9'I[H,P"+)38BZ#rgFlW)Sb0:1ei=`1\$'lWmYjTH#7_lEA>1a>O*U!R<GIu
kmUA2kSL^^PUReL<+ue*+N5\_4FO2Co'bClXt+uiW(F^.D!\Ei=hJp:n.?6ZoG2fH>Q>S"L2
VN]A9$WI%giN1d<Cp^3OCYT)AthjMUF;8Od,FU4P\=<K;NM:`,9BeE#:SgV/`g:Mne<k#.@AZ
TIkt.1j>#BtjiQL!-\hnO2D^Vh^-5*j=%clGY]A+E\[s#iPKR]Af`@n?*2lHtr<T&'F0**+>40
<-/n>8Z=@9pHd+"^j`dYT`8e`dSU-?4T[KeBRk6ni!gMZSL[f.?1-L)mICIZYl,b)cabZ,ir
Vek@\^iUJ)[VcLbGBi@pE8ZTnEDpQ\%KFXp^$56QXhaeeFnm*8MFmB3Kq$k;n[MeMRfOlJd`
RJ.\]AX$DE&Wb/IM6)'/jR;fuPcBQ,eUR5Y*-1_$<5c3FL3Er&ul;QsAX6=GC&MlBG)HdI@*c
[B.02NC%h"rcD5/M4L$0bWafQo>d+d6F]AJGmr[s3&*/hW)nRQ7^q>rHA8r+]A2F4c76IZ.2-a
HbWC4fAEVja/GH*cSASuIUl=j<_[l'%R,'jgcIu8Igli3r_gSu^hNq<e3%C@+6Miqs=mdp'5
&s&s2Sai8?]A6bm=Z0Ut+dh/(c0EhWUu<sZ%U(q&`r3eC00-!Znp-gXkT=g=3cDJ88CuBS&?u
&Cr;N[lN;V)CF\G:Le]A*UHE$7"T<HsbG.[;!plJ\>uf]AA!f;_/6";F)+%U<q-9UPrAIS-GHu
0CS@f/S"IdjAfE#PCe_0]AMcnPo=_$,)V7ft!Rb<qD.\2K-nJj@H?k*6/-AiiG\<+SZK0T(>I
1MHB<'f'Sn@QPS>GG]A=;76=GuUF!Th`m1NmrAsnq;G(^iEP_2Yshj&Ed]AgCHf#/bbeK*!:Uf
s0gsc5\,)f4kGDLj<nY=pqb%<g=fEqqh>o`7Pr>Q<Yus6u"H@P,oj?-0O/k+Jh+IbJZ.T'iN
>lI?X3EqZQ)P3Ma+%p@?qImml=F"k6O>n>\@F&hfXt]A+[REf/Z!)S:o7('NA^Rut=-";7R9J
R7S5Jig4QYWM:3\38\n4)[>,-A9i?5C@j;Ta)+Oc#%DQ_Q1`3%YhYlF;u[OL<F6?hun:"I(4
ma)ou?EPVh[al0eA8ZbDD^SKW[0%G.+R"PikE!6-d[$)g,#7Z'*[NombNWGd-gstO(RGgJ:!
3+pP&+ipWJdg;?U2c*!B_i(p:4mFRu7_*ai%P86[pcTnZ4nfQ22?=Oo@!]ARpbM=,1bFLfQ/"
br4Ct`b!YVjC1*p3"&H<mH:A3F<t>%!4`TXfYI`2rQ5iRR?`.VL`19Ln<3>L@IkA75a7-.gE
L5[F05[F8)"Bnui[h`*Ea]A*@TDeQB8_U`!Ven>3pJ!pl6hZT-"("4f+37]AI-h9<o^Y`Dss8J
9KWp7m$O<sG^\S*n8UO;6G^Wuj<.bC@,W^d\.W3>-n0_O0pJnoWO*HZW&QL+aiA5)]Aq.,;o8
*0i\7;>S$IYh>&YFoNFeru'?>S80#.Zq[&>lOdt3aSLH87KfI>-afKuhXjR2B"P'T`LL@N=@
PjL6ZA")Lm0silmRJIBY'E[=g(KXge;G<qnpDDJ\9Ar8*$XT.U,^Xa.jt0q4BU3f>CCJ[ro1
5W/aWQ(*d:LgQk'U>.huGLt(eRK+Xs/NF9HVb;KC7fnoggK%+n4'/*\MckVMCB]A'(nLfg$\p
iU5tD0cH[XId@-kiZN+jQaA"+o/J6"&&L\VD!Ms&+aK>U(5?[80"SX2d9qA<sX(cXA0GjYA7
"4?q,^Trs0T@@0,a;JEI[L#]A4UkV6>@jR.32+Y'Rn2(0P;S?X]A^oHtiNH\E6]A&QQn,,b,J[H
:J.SMJ$j?g@81@g>/u5H'M%C^L/DQYRA#t_!$WO["[T_WdK2]A9-oF:%(dUPe)$BsP"=XX4(d
a>"+;-r88.2-c84#tJJWreEQo!oq5P*plqqQ7bmgo<kG]Aqr/]APHnYn$VohQ>QYZ+eASk#16>
ZAprI'pUB3J??Tna$hmuZ]A;7@&WK5DQG!Q#lCCmr+B$I"mClkGFO4CU^OKoY#LEWQ"8t)H:A
-q_WcqWSL;E1\B[8Et[:g(Ea%nWq#:M1q;TWa83X]A8)P:A')HOgr2gTF1!;I9+a>@^3[qU1J
576Dl'3*;3GDrV@l8iPo%02#@uAA\Mu<M>W7>;WST%=Im?gY[H,:nrl+,Q(u_4eYq&p\V7W+
O`e;@b;\dfAAH6\,;/Gt^9FGO1VF@cV;eWLYXhNG"62M09?:3dqe^pkWRGeg9$k>AMU0kFaa
:mn1>n=#Y-!3aD'ULso8!0t/:TB?GcNd7.OR*>5SPTITJ313ISIT\*`3tEVm52J_$"?eSWt!
MO9?o#<hOB':KhI,4[iVWJJ1e7XjCE7Mou6T[sSj";<:]A!ZR'b4%1AY/6XcnACRo54d<4_+k
";HWiGWZ0a7tp#D/nX6R'/?XYp%D03+1U_Xc^b2*B=XkSb)mX3adKpM`38[ML_Kf'YRp-0lq
1TSBV39;U!`(jEoK2O>@jdI:pbW&pBBt//)\4_7If9'iHqjjk^K%[@Tb1YhtTn!dsQ'4R9EK
Y+3C9)m\.1W-<j=+MqA4q&mQ7f"dKEg4XCq8mQEU82WpkUVL8TArW1R0t`N\@;#=486OpCSi
+_PIso?Uf@5sF<p>1FK]A\k-0]A=@cbSo\sY/bO1P=g$8JLs"pXUXX/(=+7[gs)=GZ&RR%&B$T
`6ST.DR$BY;q7^dk.1HD$@3pYW6hgOX\@Ya!`We&.Z8`*&(5W=Zp$R!h;T'*keP_eB3[TW!,
h?Q(6^Z%Q-FDfGCS97b"2jN>HQsL3k-62_Hp,5.j4@(["U,,Mg2Nq7*L>N"D5RP15-^#/"-<
)#8$%cjh[q;&%>i_U9l*M2_i;TbPDSFJ?$YWaTR>q^-&m]Af@kHsN*b@ePIH+1iB$gW,NA.Q.
;3)kl'49&L`FY:VSek!>m%H8n$6)WZ2'n%Mh!Sm+5=aG1KeUJh,3tZ+7lpK*,RC]A<"8d'%F&
"=0IaY:Y77CcA^VQok:g7B^p5qQLL.lXMQH76o]Aba[1%%i":am,V*H\+-O1XuB?EmqBoD:g(
N(1?%'U:J4aPZ24lMV7'MMb?FY8L^`r/7BDn6)mb:J_p?GM=S[]AE29,Nd4*B"rT4e?&iVuY_
L/$#/3.$[8'*ZaQ$d?bZkc%^!th9,cD<D2&\0rG\_)ok/BN>U;7jPJ+Cr+<_g!$5hYO1VnCZ
U&6RN/;lkgB&_Rd1[aDZ\@/B"(>^ULWuD"DHq2Y&(1s2pVDRkcsf*b`;\I0n6c4SG1aF(,JG
Y?7Up>[otXS`o?JS_cP]AS77-JQ%B>rhjmGHC=d*n?faLb]AVH6@I'$+_q06t8;J@Gs1M:X.Ya
k%Ea6Ug2!ZQo8hEB*!a1ZAfZkj#Y75[-LDN?l'cFD><8QBfacjrKeH(YYk+#<7@heWS^BQ$@
)<ZqYC$!9+J%2^p#"KUrhb$!-Q1BJ":SkUI$<6B?*14S=IV41,4p>ns.?=qr_RO,LR'%XGlr
S6eP=]A5'W.TC'!Z-l8se)(dm4CBU<,_ZQ=#@6hXcR;qK;k-<8\kYcmkQna;me%DLCR!PsUp1
r/.klZmdCi,]AW-aOZD`!D1&/irfH]A/3tn%,JOE'R>rLJp=pWmCt"\N5Dds,$+\hs1W@(fSA3
;aUI#E;M%oD8M(6d'f:AW\^\Rg_gtu"+5MGje0`p]AS,VX,!E(tl2Bt#@*ZR"<6kF_6r)+g$u
P+r[7p>_:M(:'D]Ab`r)"BCT08JA-F;_f$OdOI+Tc`p52mWUsqTe8ME-R74`r=7Uo-scIWj@$
!9%URcAu(?cZl:SE744c_^pDd71_RjeM9Y;m-V@>Uc$*"*2WqnJ*QR05/R8b*Y"E#eiWgTB1
V-<rlh*foG+q^uBHu?Ag,9Da3SOo?T`_IUJl(X#D,'a$HC83gVgko,$9RPgqSS[EIKeK'_sT
`D9q0B3.f;2EMo:/5MA+.\W^8TNp["8@c3]Ab@-WbOgHpgckQ:L@8p:G#a%CBP/DXZ$.0rM8@
*gX]AAN]Ankp7BgFC(m!Et$T1h8B<?f6S$Q2",1Ye`fh]AZrR<iHUs",GCgFFX"(tA0+<0!/,DT
,u(Ak3u[oLh+ra5-KT?Y`OQa6!WIJMB_S.c<Z7A[s5%bdl_maS7_HDT0?S\\>?U9O]A%h]AQCg
Ef>7'Z(tmSQMCAs:lB0OTBLL;VWe5%NFcc"ien.>*&\e+ppnD_U<F9[?0R!<;\gUND8PJeSq
9c8#>H@?ip8&J<Et)?\D*3$VAtjY#C_0CF4C[R@h*_Z5IFJl%[@*/&B5@3[;teS%8Sd,n:V9
M:ruDuNh<$_^Q@2`7[5Uff6V7fI?r.dSA^7A.=84q?5QQpC^]A4%#:7SUU$LCY9&J"?BLd;Vd
8n+08aKpD\)HcZ&V\Y:8*H.u2hJpQhH'5m9icSeBM*c?K\V8r7JDB]AKl3TnN$91'qL/gHhr-
E_%(lt_NTLsUK)tt'OI0jn)l((IfOhW*+<`kHk6%:s8V^Z/?Hj.WQoWpTaJFRU[J*@E`KG(@
ZeX,?8h1NoJW'ZIuV^JLX13r)sEWeM1H2PMs/?D47+Z7G^i:TE"[7\WY%@PYA5d0>$Tq0^+X
Xm/Ho'QhrCCcAlmej;;&W,^/@(3P&;28;[j#&RT*+E3+/P;`O3]A#ppk#Y3$UXJr,qJc)H!+A
3,E6=214?=gT7VOnCR0C^s.!E>G6\mBVB$s&U-%%0aTTRjI_84b#0D5N-WL5SFK6uIb?L\L7
\\o>64"Q1LkaHVrQH^l#A"do$)NM:0h8s7KDE+6@hi`:t\o4p4Qid-nC1Ia?3p66h39rGeL@
-l!/dULAi+_q*T:pIjd1[3"mBF']AY82MHj?pn6DH6(#aMA8J&&_NQQOO.RN*F%]A-M+`?:9Ef
ICHC7"h;F/Hn[?!mV^,k(_0[jXFW(3qE73.i'$<?lqH9W$I*S/ND7PiR-N6T_ZSVC.%)d5=i
`N*4_qB)uZhHG^3i#<Wh8Bh2N6rH1\.[<HR.;Nt@1a7EX(,j[W]A.b`kai2hF[#)(Z'Okf:J)
Q%j]A,?6Xo3Q>(JbLN_(AdHDqb2*frBHra<eFomR6+pQl\P3EFUSGhnbIoX'pWs]A`M0hR:Q"C
pX&+`m7Y/_)Y?RgBrYbuHC,BlX/p73lNV@7o<G,sad^R]A?[7An1SR!*I""[nYA"<6lRKLm0V
&*Ki_^:-dl;SYcV6aoi08DB1SqlQ"FANV"Q?0tFNF^ZH?4O0qr(0+g'i]A1na5;Wo\=H4jI">
)A+ur4@ij)G@SfB&H_4hP9Me(eA\7BYWKVFYMV:U7Ukm<?8o2ru]AG/GfP.VTAW,]A;L,"h^eX
pcAj-PEgNDgW-`:YTUmp5Rf8*ATC"0"U<OSoZY&VAIJ\)k\0S5.)UDh.>U:)(HA,%7+&&+Ot
3N6(l",',/dA4jWR`IU2:#.,MSV>OJc*KI_G_3jFGi@?6j;4;.O\NV0[DE6ItJ[?d;A76J"$
[9dX*[u:jn@_nNeS7N"H/,i&=>"+b">OM%Z\<(O?.R-g[+U/T%=kqJ0c$;gQG`$o#m%[A?f:
#D[?K!Q>,PbafbsPRopiQpQOs2$5=$8`)]A_uo6:Xd'"4>SpehnD,(3T&G]AcHIK=c[>Z#&VLN
ABn$KALuj?8r3fnflgo4ef8d5CF(Z/.4B`i$Nb]AF]A4919T*RCF4o3n7k]A8?-PSP<!)9N@\4A
8V`HO&L&`Q@REg%^fI!f$Y$M)LbIELSDu0V<hX:^UZ4W-IdjJ.UIA:m,0Me<9l>nXm'5[9iE
Wb*2pP0k_q;a`(&(0JrYq+0j/#i:0eT6@r+;1s1Ne)hg;k/,$t3,PA/`Ck8C>g@A;)qb#ae6
`JqF4dph4GRMFon5DRg1Y'UIm^2K>j]A`0g>))L#:.?A]AkrE1o^q:"t:^(]AW4lZM^8\QVOY-[
C_lpb288]A4UO&ic_E%TpjO0oS*6,qirq1FiH,8Ci,;]A`2^o,'930.JM4$4Tel4j2T?asbZ:l
E]A(3gp^LP!64ri<aMJlDbWS/GA^F-FH)Lo!&n:`=h^i1o)9sNs!-&b`OG<a0qJi)Dt2=YkPh
(9)>f.'tPRj2QKKW+/@4`_LP;-P^7omojIgaBq!,je:th$9MnKa<CA9'1U:`I.aQMcG83QC<
:VQ+37=8!:]AaX=YFKSDXg,@NoGWHAg*LEg+cf2KE;d$YO*!.H5_$\lhqabd.>FP89@Bd2CsJ
q[^*GkR2n3dS@0"r4tLBB%k0,;T!*!+EC-dL<L$cU9'YTTtrM*>Q^A!Z9pnX^6?)OZ?\<&0o
%M@GE#?4$W4)K/u4(]A-Tn0o-LY6A([Ihs8.Vmn%c*>S':#.Q+a@-I&Lt)6-hsRK=rlp76J`Q
#`^d:iY^M.]AErht?W4=Qcm&B+LCI*pYjg$D,Pbn6]ApkWF522uKA20?,&.ELufhq%nD:bb9<*
]A`8*e%+-E[6ciga[!bif<7E'-0-0!JseKoG?g^?#O'duQd&!kP?k#!Euj*'N[`S:1o2:_e6m
`jM7r1?mnI%2K6$PF8I[3Q(.D/.pUFi.jL[OW&*%<V8Fbj68,/-k4HL7m1KgqSQ-?l?SRG7L
8=:rPX]AZLcLWiK)$GZU!)lG#prV[!coS^.3%;Ceg(RaO").>]ADLR7'S253,qh8$q=]A]A`Or8h
Q9eZ`7.mhYn:+Jg*+P+]AU^8rFXLdKqfY?M]A53K;VZ$.QcP!UclD([\lq!e6arjJn]AC[EKZsW
4=tC!Wn9Y4>eYt6oMp)lsqQ=AkVTf=OBA?L6^HiJlqor`pA7]Ate?@Y1PEG:.al)97%]App\H*
iEgW<*Rp/&:7U=c(5:]A&-q<LlbclY_<0+g1b1`cV#I']A$h*7O#uA:WH'Mn4$^h1lQ0@280gc
7m9Pl*aE='a5ibGPEa<$h@1/nd=+mR@h.c!\J5qC!r-GiXfWL4iWg[`9e#3&B6R*poJjM/-\
DEkN8G.%&=Yh"g^e^mTs`q(4gfM7frql^BK_u,r[+0#mnLUNBGWWpPOCF5g_NqRcAE@^:_RA
,oR.OW>p=fDTr06C15j7%iFqmMduJKR;U<CLVsd[9SJd$l<h?curdZ%O&``V"ZRAle`LQ$1$
m3RNp1;P<1Z:GTU4>n4H,AfFHYjob.tP!U8H+,:j!'-Kml@8lE(kKYm'`grN*@mu%<BPiZl`
B#3UnHAQ1>Cc2FHCq/0[\2:g(u(9KNVb?*3SjWiXgpFUL`RipTJ%Q#G#U%H0<8X+X[J_rE><
*tEAP<:]AJ>.]AVXb2I/Iu0AT6TiV6i;"oVVK`8+,ddD*3U+=3+C'2!Smur4_toK-$gicmFl0,
U:1;`fWdC%-eip%0:H\%j`q(^<'$Ao:F67RCWL;kXub89bKG%sZQY7'+Lt/)S5#\h[D+W3>=
@6%\(Vq_*iF/4$#.EeGpRsD`D<B2[DA$S:F^7k)1nCAj8(6W;@LY0qqZ7>UMfM(f"X$TK7U-
R6C`4u21bAfK^@mWr%,8?ZTamrWh%tGSRsAcp+YOcZuci=X_6qPKP[dGW-pa-5PP)Wo0tuM1
n<9B^?<e<aa"$HPqROlP3`%`C),@2=>>#_OF;?+UFu!*[fuI_)/M1*qB:Ma5FinS*e1M;g3C
G3PYmF-;qX?Xh0Zfjm-fa!<10E)U3&92[t4#E*\FRtL;C8?B#=n;]A%(?+o=9?>2E5`/CY(g<
G2#2E]A$J[brY>6q]Aot*n$s6?<6@Y>Aqo9NMB4Oi'K^+SK+5trORZk_jpgX8VI,a(ZQlQ:%#&
DZDpkXFsaZIQcpV8h5%-4V<k`.hVrO8Es#BGdEc[<>/NpC=u8^Mb`1B1Ft%/I'BH?U@qM5p&
o]Arj5Vi,@0+nTSZ9W0hqBrZ',4\nVXm$j>pH.[^tEO6c95EtJ!,58u!3ak(33cM1VN%919)H
VUn<;1\eg5f!B>OstU3Z2`-)i0@`;OSo<i5&KU%pNL;'%e+<e^c&Onfr5#m!s/:k8nOA<p"5
mHi2*(+O)V/"nI-ADkhi'C8-j`r"VLkZ+TMQZ8-ja!!!l[L+TN,V+CKbR!([BGJ-?Pe+<^^d
(.\]A2Ne)]Aa&q^-J*4$5<[s^L?/5UiY/K<da]A)_+[fOQ,R[9aZ"$#$8mQY<$YqN=qLK)D*L_j
07l#:hkca04b%MMK(k8k[qO\(@0f%%BeDB3t+PVS8=m,fr\FUNj6HY.EZ980e2tIhmbgf=nl
&$#+fS+q^V@bXXc"rH:8?FkJWL\Q;Aq%n!1$?2`i<g7M^SPQEQ=m4\h"Y/WpCF@5#+-5F#VL
EG7;aQ^!G6@@;P%mu<TqPC$2(6>R75Uc[8La2s&La4++!":!5!":!5J4K_qJ4Ka5!FPni"CM
4l"?Ze%!$V`b!$V_G$GZWc$,?Nb$&Bi,",J3&",J3FOoPn5P(70F(dK>I(dK>IcN#YL8-1Jq
8-5"W0Ru[q0Ru[q+pl$b+pl$b+pj&N!!A$&!!C":+pl$b+piJuJ,r%NJ,r%Nn-f:!LueRZ(j
uN,%Mm_8kH)9@\K-.DFE\*S>1!!Ada"a&+_cSl4IR-lSOFE&NW(R~
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
<Size width="950" height="399"/>
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
