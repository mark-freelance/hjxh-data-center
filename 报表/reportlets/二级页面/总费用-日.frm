<?xml version="1.0" encoding="UTF-8"?>
<Form xmlVersion="20170720" releaseVersion="10.0.0">
<TableDataMap>
<TableData name="指标1-拼多多食品" class="com.fr.data.impl.DBTableData">
<Parameters>
<Parameter>
<Attributes name="jssj"/>
<O>
<![CDATA[2021-10-04]]></O>
</Parameter>
</Parameters>
<Attributes maxMemRowCount="-1"/>
<Connection class="com.fr.data.impl.NameDatabaseConnection">
<DatabaseName>
<![CDATA[RoyalTtiger]]></DatabaseName>
</Connection>
<Query>
<![CDATA[exec proc_TotalCostpddsp_day '${jssj}']]></Query>
<PageQuery>
<![CDATA[]]></PageQuery>
</TableData>
<TableData name="指标2-拼多多生鲜" class="com.fr.data.impl.DBTableData">
<Parameters>
<Parameter>
<Attributes name="jssj"/>
<O>
<![CDATA[2021-10-04]]></O>
</Parameter>
</Parameters>
<Attributes maxMemRowCount="-1"/>
<Connection class="com.fr.data.impl.NameDatabaseConnection">
<DatabaseName>
<![CDATA[RoyalTtiger]]></DatabaseName>
</Connection>
<Query>
<![CDATA[exec proc_TotalCostpddsx_day '${jssj}']]></Query>
<PageQuery>
<![CDATA[]]></PageQuery>
</TableData>
<TableData name="指标3-淘系" class="com.fr.data.impl.DBTableData">
<Parameters>
<Parameter>
<Attributes name="jssj"/>
<O>
<![CDATA[2021-10-04]]></O>
</Parameter>
</Parameters>
<Attributes maxMemRowCount="-1"/>
<Connection class="com.fr.data.impl.NameDatabaseConnection">
<DatabaseName>
<![CDATA[RoyalTtiger]]></DatabaseName>
</Connection>
<Query>
<![CDATA[exec proc_TotalCosttx_day '${jssj}']]></Query>
<PageQuery>
<![CDATA[]]></PageQuery>
</TableData>
<TableData name="指标4-京东" class="com.fr.data.impl.DBTableData">
<Parameters>
<Parameter>
<Attributes name="jssj"/>
<O>
<![CDATA[2021-10-04]]></O>
</Parameter>
</Parameters>
<Attributes maxMemRowCount="-1"/>
<Connection class="com.fr.data.impl.NameDatabaseConnection">
<DatabaseName>
<![CDATA[RoyalTtiger]]></DatabaseName>
</Connection>
<Query>
<![CDATA[exec proc_TotalCostjd_day '${jssj}']]></Query>
<PageQuery>
<![CDATA[]]></PageQuery>
</TableData>
<TableData name="指标5-社区团购" class="com.fr.data.impl.DBTableData">
<Parameters>
<Parameter>
<Attributes name="jssj"/>
<O>
<![CDATA[2021-10-04]]></O>
</Parameter>
</Parameters>
<Attributes maxMemRowCount="-1"/>
<Connection class="com.fr.data.impl.NameDatabaseConnection">
<DatabaseName>
<![CDATA[RoyalTtiger]]></DatabaseName>
</Connection>
<Query>
<![CDATA[exec proc_TotalCostsqtg_day '${jssj}']]></Query>
<PageQuery>
<![CDATA[]]></PageQuery>
</TableData>
<TableData name="指标6-新媒体" class="com.fr.data.impl.DBTableData">
<Parameters>
<Parameter>
<Attributes name="jssj"/>
<O>
<![CDATA[2021-10-04]]></O>
</Parameter>
</Parameters>
<Attributes maxMemRowCount="-1"/>
<Connection class="com.fr.data.impl.NameDatabaseConnection">
<DatabaseName>
<![CDATA[RoyalTtiger]]></DatabaseName>
</Connection>
<Query>
<![CDATA[exec proc_TotalCostxmt_day '${jssj}']]></Query>
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
</Parameters>
<Attributes maxMemRowCount="-1"/>
<Connection class="com.fr.data.impl.NameDatabaseConnection">
<DatabaseName>
<![CDATA[RoyalTtiger]]></DatabaseName>
</Connection>
<Query>
<![CDATA[exec proc_TotalCostztqs_day '${jssj}']]></Query>
<PageQuery>
<![CDATA[]]></PageQuery>
</TableData>
<TableData name="类型分布" class="com.fr.data.impl.DBTableData">
<Parameters>
<Parameter>
<Attributes name="jssj"/>
<O>
<![CDATA[2021-10-04]]></O>
</Parameter>
</Parameters>
<Attributes maxMemRowCount="-1"/>
<Connection class="com.fr.data.impl.NameDatabaseConnection">
<DatabaseName>
<![CDATA[RoyalTtiger]]></DatabaseName>
</Connection>
<Query>
<![CDATA[exec proc_TotalCostlxfb_day '${jssj}']]></Query>
<PageQuery>
<![CDATA[]]></PageQuery>
</TableData>
<TableData name="店铺排名" class="com.fr.data.impl.DBTableData">
<Parameters>
<Parameter>
<Attributes name="jssj"/>
<O>
<![CDATA[2021-09-04]]></O>
</Parameter>
<Parameter>
<Attributes name="shoplx"/>
<O>
<![CDATA[拼多多食品]]></O>
</Parameter>
</Parameters>
<Attributes maxMemRowCount="-1"/>
<Connection class="com.fr.data.impl.NameDatabaseConnection">
<DatabaseName>
<![CDATA[RoyalTtiger]]></DatabaseName>
</Connection>
<Query>
<![CDATA[exec proc_TotalCostdppm_day '${jssj}','${shoplx}']]></Query>
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
<InnerWidget class="com.fr.form.parameter.FormSubmitButton">
<WidgetName name="Search"/>
<WidgetAttr invisible="true" aspectRatioLocked="false" aspectRatioBackup="-1.0" description="">
<MobileBookMark useBookMark="false" bookMarkName="Search" frozen="false"/>
<PrivilegeControl/>
</WidgetAttr>
<Text>
<![CDATA[查询]]></Text>
<Hotkeys>
<![CDATA[enter]]></Hotkeys>
</InnerWidget>
<BoundsAttr x="560" y="25" width="80" height="21"/>
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
<Widget widgetName="jssj"/>
<Widget widgetName="Search"/>
</MobileWidgetList>
<FrozenWidgets/>
<MobileBookMarkStyle class="com.fr.form.ui.mobile.impl.DefaultMobileBookMarkStyle"/>
<Display display="true"/>
<DelayDisplayContent delay="true"/>
<UseParamsTemplate use="false"/>
<Position position="0"/>
<Design_Width design_width="960"/>
<NameTagModified/>
<WidgetNameTagMap/>
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
<InnerWidget class="com.fr.form.ui.container.WAbsoluteBodyLayout">
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
<Alpha alpha="0.21"/>
</Border>
<LCAttr vgap="0" hgap="0" compInterval="0"/>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.container.WTitleLayout">
<WidgetName name="report3"/>
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
<WidgetName name="report3"/>
<WidgetID widgetID="781fd9dc-46a9-4a5f-8acb-6aae5ceff0d3"/>
<WidgetAttr aspectRatioLocked="false" aspectRatioBackup="0.0" description="">
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
<![CDATA[1143000,144000,936000,144000,144000,723900,723900,723900,723900,723900,723900]]></RowHeight>
<ColumnWidth defaultValue="2743200">
<![CDATA[144000,720000,144000,7810500,4000500,3390900,2095500,1600200,2743200,2743200,2743200]]></ColumnWidth>
<CellElementList>
<C c="0" r="0" cs="3" s="0">
<O>
<![CDATA[排名]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="3" r="0" s="1">
<O>
<![CDATA[店铺]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="4" r="0" s="1">
<O>
<![CDATA[总费用]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="5" r="0" s="1">
<O>
<![CDATA[占比]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="6" r="0" cs="2" s="1">
<O>
<![CDATA[较上1日]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="3" r="1" rs="3" s="2">
<O t="DSColumn">
<Attributes dsName="店铺排名" columnName="Shop_name"/>
<Condition class="com.fr.data.condition.ListCondition"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper">
<Attr divideMode="1"/>
</RG>
<Result>
<![CDATA[$$$]]></Result>
<Parameters/>
</O>
<PrivilegeControl/>
<HighlightList>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性1]]></Name>
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[len($$$) = 0]]></Formula>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.ValueHighlightAction">
<O>
<![CDATA[--]]></O>
</HighlightAction>
</Highlight>
</HighlightList>
<Expand dir="0"/>
</C>
<C c="4" r="1" rs="3" s="3">
<O t="DSColumn">
<Attributes dsName="店铺排名" columnName="dqsj"/>
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
<C c="5" r="1" rs="3" s="4">
<O t="DSColumn">
<Attributes dsName="店铺排名" columnName="zb"/>
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
<C c="6" r="1" rs="3" s="5">
<O t="DSColumn">
<Attributes dsName="店铺排名" columnName="zzl"/>
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
<FRFont name="SimSun" style="0" size="80" foreground="-65536"/>
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
<FRFont name="SimSun" style="0" size="80" foreground="-16744448"/>
</HighlightAction>
</Highlight>
</HighlightList>
<Expand dir="0"/>
</C>
<C c="7" r="1" rs="3" s="6">
<PrivilegeControl/>
<HighlightList>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[上升]]></Name>
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[G2 >= 0]]></Formula>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.FRFontHighlightAction">
<FRFont name="SimSun" style="0" size="80" foreground="-65536"/>
</HighlightAction>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.ValueHighlightAction">
<O>
<![CDATA[↑]]></O>
</HighlightAction>
</Highlight>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[下降]]></Name>
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[G2 < 0]]></Formula>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.FRFontHighlightAction">
<FRFont name="SimSun" style="0" size="80" foreground="-16738048"/>
</HighlightAction>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.ValueHighlightAction">
<O>
<![CDATA[↓]]></O>
</HighlightAction>
</Highlight>
</HighlightList>
<Expand dir="0"/>
</C>
<C c="1" r="2" s="7">
<O t="DSColumn">
<Attributes dsName="店铺排名" columnName="row1"/>
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
<![CDATA[1]]></Name>
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[$$$ = 1]]></Formula>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.BackgroundHighlightAction">
<Background name="ImageBackground" layout="4">
<FineImage fm="png">
<IM>
<![CDATA[I!^-$<9kY+F-]Ar_bfGqQ,Gcr&P#SkM6cCWGOeop:.IF,$gRK.=mObe;$T$V'6mr`UUUoQ%+Y
>+c[+Vp)1RR8_hr!o&h]AM%S3p40$3R?l9T'*e7T(AI.?<c78<V9>m!:#'DYMTfiKIXGR1/W<
D`,O%F!#f>H=O6Pp\M7'YE[e2?LJ_8`eM3Vp*M6Q%B<khV\[WuKX)>Mk%WQ*nfjd"=a)Df+-
fXfs\^5-?\\3c^hs&fLaP>"(ku/gdD]A7'LVS0NaZm+r9:;Q=7C?>(Fg\lM$S<)R;n_^5OcI_
81o)h#_"1E=j.b6%X3U;*gr:[jhF[ap,Fj>tGhMRmSmeTn2[-(h0FAM3t^QF3?aC"1L_lD]A:
$&PYPKH5,RUN?@jif^G^q.H+rotY[QBk0Z!KCkQt@@0pBnR$3*7uO[f8e_*^?5?c5>M\rFZ8
=:BH+!Nkc.gE/1?i19L]A<"SX!JQ4._^_VVf1@Wf7"\7I#sO+f!H_mEB;s&fCbQ_2hRH4;m4F
Sb#:+Q:7SpI:VCAn1UUrnM;mZYS_^G)(8I[n,P#-8(ItCg4M-\ur^;T_6Z0n_4>jM,=HS>JA
rRgD`SAaQMIhc5O)/<C&#Z<p^944t=sLI;f\WTPmAZI;-Z"^3J=[g)`g<#TH8r;eWV]AofBLD
9iP"pgC-D0N8o:LklX%l]ACHLet+oV42&b)A]ALSbRcYQTHZ[LF\hIYLV0hm=F#M$c>##5'kX<
?'DKrOP)4(06392Q"4-h3>jA4guU4m=EcnWYlD+Yp[j^97(4tIUoZLX\rK]AJ.QGf"'JtM<s+
m;H)=@:C/8eh>Gr-AFWd&3QBf'?QY-hfOWk0l78DIEO1KRU4ROsOlT+JaH*;oXU\h:GZR)?)
i_ndX_@=qGVSL73&ME]AgfHeFnchYM5&`TZ*^'P`Iupui@`\7FsZga(<*-VrnR5-8:C]Ar<s=[
b(=Q[h^Sik*!4SeO?[LQ`3E9@lSO]A-N8,sE&=DcWDe*9gH&eAOqt/6$TBY@LlOK^;;$$k7[t
e>D%elJDRuIM6=NQ)(9JH:a@)5Z^kEt<8/]AH<0*:k2n/ZYNiI'lNHFA(V<Vqo)TlUMdajVj+
^RjW9e>3%-7Q)qn^SJX*a*2`/NNO^T0f"-u^>(-g,$Uj&X#Bjm^bWPJG?Zn:\R_Qg$tQ>1%%
3X(Cm)Y%?(R]AA&Fnp?('/ng,n'-]ACh6.dPQC\;)2uNlEM"&2i40eg9-&Ubc)%R4lN/CoK2K2
!Lj[B=pmRfH]AZs\6]Af,$r_jEg)8alW5XKPMjqq>rI[=;&7[Cr-tm1Mo^k"7[DDh"4HqRS)<@
6E%fi(ja>#Q0cQL7[8=p.L!r4P3'_7g$*^f7r"k&l[B^nfk2T#L5$blW!$sob\pQZY0TZFIQ
.`n:d8!+a5"g8W@Bd(7I"ge:)pX0@B7-h7^qUNb_\\1a!bXiRKKW+26I`'Y:U1I;m\DD67fQ
F'?$395A$P<YG9o;O(@M1R%H9j61fmWZRbY53o`]A]AA<C@[:[p:!/(Df4!ER.526.@Xk-1_E,
Kkf'beUCTnE(r7+oGX;4ob`*"\<Ua50krE#n1dgWs$QUSnY6h'1:Q0i_Vhp2I#iL]AD7!!Goe
$Klp[\Hp<dgeU-HPFXm:dBW1f7o86HQ<tbDi]A+kpc_-K2ZK:_jnnKh,Nk&.*?_6\%n<nt#&N
RgDFi)$]A9$g\n&+<UQpN&XP!jWGtK9ph+7EVq,MLG`_7`Dq.HaOgpAqkmnWiSBn-!>FC:$A"
("6h!$Q]A,'(W9o$7jpGA&GEB,I.3iC/)51%Y\;;;o5WuC$fC%napRaJ^Hd3a@%,'Ok?7@1*5
$NG)a8MQU(3V[iGlK??kR%=ruB.DT$ZMS!/bd`25Sk(qs`Agqf6miSf$"Nlrk27Ds.Xk#+ES
4)qYo,Su(V%hkE\Air*'fUgFA"@I-b%8pClYco9k/u.UL/h4^p+,;F`?;VeTa_cla<;"nkT`
e*\Dht]AcU"&k/aH9q*WRF@h@9aPN\0XRmI;'jX!Wp_IhQMcLHrSG8M[_<-`"m:&9XRh]A"Dg(
s*jT_b_mdFn.Woab1tU7RLc'7a!tA/HW9Q5QMil/60*p5:C\1!TjFAdqYuHD2K%Sa(=9nbal
*P\bdneqnrN6#['DSgbX2CbDDcI`dJ*$QCZeS+n:&rgr*M]AdF\8"*)FfVTFA5:`#=Fi;3K)g
3X8<)`0XP*hnQhi\pZJ@[YgqQUUQr'UI['V2]A:AN+.bS?ocQ,AibTiG1']AKi!K*`^(U8l)q_
=N\\:d>WBXk@+TMNWQ/HLpW#4:ljaV`t,n+Rerl%Ml1]A.X(EY^D1+?;0<sB:;?C8VJX@Coi[
m80)?+c4SXQG!E;:&D]A@*`TIRE:k9sikkEN9fn'$i%+G1;C+[+Y/(!`0FarWU2IuWTVX4n9i
30m0LO7Xs-k7$/iPr_>Q7B5q"o/LBMI<%-ht6&$'_4q'0(FYr8Vphb>7aoFVS;Ba9Y$6e47a
ak>qYAT@/W*/k%n&\?VOWK`CX\@A62Fe[ZLquT"<Ii-R\$XKo]A)a`\lm30j(KqX1dkm'PF!Q
6_A^I_a&8_HaZJAfMbGPFC%%bJRC?t1[opTVVS1L8(+DKcC0W1<K+[aYmqp]A$-[.7&`DnRnq
r./mPF1YK\?L6Y$2T6'+.SO1b37'=mBju2=tbN:$m!+k6?T&gEQN$D4M>E1MQaKgKYBkp#sb
IbLM@%3q%j)-=oY[6ZJYH:S_O0,<Wq79#=62RCMa8rN!EU8.CQ^pFT[',HfR:[&cmDNafP<;
;>'s+%M$mNs`[>H*,l5'Ans1(Vc2_&JD85&eX^f"#Y=!CG<+b_!*jR57^[&(BW!oK(p.+KuC
c!V\obW@#k"aG2t5L?kRBg(%q:CKuC\aUq#@N5CTFN5l*=_HS]Alr0k'WZ:c`MThCFMqc0[^R
"R]A@j=Q=.UP<]ALUA0pTAW.;W`<4#%8/8uW2j`3,'`=P%NqT#uU,Y\Ico(8d%$[DQ.5pXUJdP
%:@UZ0063VP#TI5RQFWR[3h+JafkKq?Nr3db?LL*B\u;'PE!6,ajD)*aN+oer3/BZKV[PH-:
erH>j)4D\^NZZsTW=NRdH[\g1uT,A-sOhlA9l*o2f<eKCWUHTJq.IqKb^UT2GFa72_7XiN')
]Ama#7V>4`Z4KfU_X&A6B[Ie%Bb5"GFHgIZ:5,/M8fAcr5f_)iM\I^Xc?gdj$bj$"hsfWP&.E
O!FqKo"+ZPj*4F4TA&2A,SFCiJWf8\o_<:&u>%,7@Gg(3''po:I+^QDHcaKZT:A_T]ATI3,,b
6o`o!>@bg'\mUpH0K8&]AT,+OH]AdYkrJk^Z42r(C.oVY]A/qu!28LL$PWXaJ)\iZhhA.(!!pe?
M3a5o!qHM)k_'%6P4+#pEUk0>du/:_?hS3o.CV[NfR!l9H.bI82Q%NPL0AX@3DPVn&?:[*NY
NeMmL+1S<.]A3G9'\Ze6RE+ZoTe`/QQC>Ulc`CQ7d<]A<]AE+;]AZGc]A*I9M;^(kAA"b%3l.S%a(
&QV6LNBq*B<OU6d]Am]AWLkJJ+aXUH0d5#)UDKUIcrnS:0D'3`P#<ac<qk.<I_;*^D>;.W364_
g0@tk'@8A+S1CGsl'J7aLR=#@^!Pk#H.>%N'j`+HKaeBmGII&A.t\SS;jScA]A<PIR27qrQ""
m*8t1B^*#[Q]A$sfIV&j*QDP8nr!INQ/DJHe5a;SPqnUVWA%!QNiBnlo0>(Lc_c;)44JNP[]AV
u%9FG"@)SH?AR00*.Z+T`N>2s3Bu@6E2p99BYk1n"s46IH!F/cm-*NZlK`L8Y0#r:\>J%Acr
f6j$/F[]AK$_gDoR6PN@Q(j`[E89qV/#\N<o'p&/8e:tIG3:\11)RlcebH(>Y??cTWC2pd'oq
pF^iYtJ.f%ps>o_u%:@j^WeA`c"54Y\j8GS0kcLATfi`Ooq)=ee9He.S0,60H6W/cS</;O\h
_eqLr,L=1*)Xi6</n!0>Mb-=_O-#U@.mU.#\IJG'o_%@BRZ&a%iQ]AbCTJRPJ8>&/%_SiF!"c
d.4FM*De4$<2\R\Yl5l>o@U9^B48+=9'G=Do;[6-c9&sm)4?D]A1Hr5G,J<W@.btDEC2[I2;*
fe?g'prdc['"qA'T?$2KhW^7F?:f(7s9#'`KnD>6WaG:?WM(L>5f`D.CVP%LHL(f@qMT`\(l
.pSm_(SF=6h<8=h,*D>Wb:)sZp;n3R<+;U%d5M32A3tDC]AYHB^-crT_M[J4N"@i)KEM7ria<
lJ*p\-3+KLN]A$`J38!&3_D#c``dJ*P5@PH2_>O7bGeLc-ZHj&0-<G+gRd1+kZF(nJH4?nP&b
T!,pNJ>Fr9-,ANkQBki;%V:XCb>/rS#Z4bO[,5;5n)k?bR?XFg;,q:F,c?`H%ikG@D;c\GeK
KXYAFW)=e>Zdu+<ldM?/<7$26CHrD]AZr,g$Io5\RcBU[NG\*;uMWdWX#=N_5PG;\Rr!'nr&9
mu18l+T/kqrlb-RL5K&idG%]A/>'mYJ;g"ZiC#^TD[[d#I.'=K3gNt7Qr=jYTd0u8SjM.8F%)
KCdhW/L&/HW?<WbheZaHMOXWEFrOK_an=V>bF2-^B*?,tTB2FEa!A$aaI4+Ku96=fMb#eMN*
O%n,jT6>M.ipS/(+j]Ar!L\N86Y/_N!>sILALp]AZeE@]AD/_#CRAQCo-B]Are]AfR3MdF)/\-ajG
+#im3t%=0CXaSc:H&21R^b$5UPGZ,ciR'A&klYpu0RP$LNHhR)1ED1sfk!4YlS5-q"kPIH[-
g:/a2Hf^i@JsU98B,s-.BT;K9U&7RW;S*oCpFWI^o0ID&_$jERp2=@gIEJ4?-jV11P.VFDMg
:O[FVapL0nL)/?``3iNAihJM;oj`NO[:gDZ$[9ZqcY:0R)H)BOA)/K'rrYlql#ueM>&R!(Y#
V*T.n\dtY$<J`fHme)?J;Jp'8&Q9?<t(,3YiX:;[08@_;N;&;q,8Ts@k)l-C/k2Xds%h9#EW
0G%(B=K%*$,:^\/d,'BO<r3@J`nku@nQ97EQt<!ZtR$tF+5a14n>Gd3'is*<LSFDFR]A-J(R+
[`3V+WS7V9^mJUM+Zcd*;o7U^=C97M/06#]A(S,MM+"@C>+B"Nn'g*$Kfk2\Gh22mrr_3asWB
5,;d)RtP,O13)[?>Opb?)egsN.Q"FkIZ4-V!Ih8;^6Qd?"jWuO;fI"-@A!=+^L#K*Ko.VXo]A
%gmKB%<+&CE<rRm`00\qer7#D4S[M/6C2i76&nLO>8-7K3]A2PKOPW>sWVd+`t@c`;2H01q(p
/hf9m!,ESAZ9HrY]AI"Q3p]AX.2r@H:DaPq$Un+?0agfs!D^EJfnOAqE//'nlE9VV/\]A$?L.jr
DFC*6dB[WTUENM*Wn!a&n=7]AY<b-D_60!cmg,:lBfNr3PF^q]AEOc%R?>:%I`PR!G+'1+4`I<
6OYdE0eEs+Q@Gkj\Z)IDUnKn&Fhf&ZAHDABglJ#"M4+?\+C8i1e>8NcDa[i,(![gAUce>r,'
L%[9WlJ#D>0MM&G?=<;Z]Aj0CNkuJmN\nZ%s.&8+MHXMc'cf(pF/*@s,7in\7ZAH$iV21Z9;`
?JQga3K<WgQUNG&d>DQjWg<Z.VU"obM:iqX4qHN,s>6?:8M&s!,mF%g7Ql2hs]AreP=j+gUXQ
l@)0*+'_V)Ike!>bj\L<;R]A4Hi&JjdoY9$lnGG8\>2S^r-b;dd9'Lh[q7IAKj:JV\hRTa4@V
A-Z_l/k`+kGQjBS)U+1a%E_NXN'sacN^nEB^9hth/is,X''bgMG731RP1j';.SGt)Osp2#7F
\!fi=`JX`6lm_,U&X)e+dCWYQK@*e(\u^X@T%^++DJ01=:.Njd:*8-Fp4!.aUpGJIftjs8.N
oY"?L>-<M864Lp__Cd'TOkSMY9X$1<=a+OK(90["pa4k0Uhd$*prSAMib=EO(1EP:W($KB]AF
/gU<+cX\i]A/pp$^l,#Bh--&RqGZ"")h?L(A&5[)>[uS//2:*U^B[N"C)*,ZuD5C:pK=86M37
_%c!"k0E8`Zak_\LdscligX8@c,n#+Y>2AjuW^5shMtBY\(<*DqX.]A4JT<%M$TSVUU2;3j.Z
s`*kosZLG,&T_l\#@oK)_VSY3Psr$%Q'+RaQL&:f";l_+++Arde*qj^If'DPb<,YJd@%NU(N
%fnD.5W6udOJ_XG,!Skt>=4^)>>#g3G?qiHpt+&&;TN!6&-C%6Z/^tC2C2rA)PPGBMAKXAGq
GoBjtB$JVi&GI)%4a&X!#5=RQQO(/ZL+GUqAT8oU%I/R>.A,g?WVAVPKGC0n!L;tR#d"delW
*BE#(4toN%s`Kq"@4:/<>n`bqEg4r*cUEWdZ/19M]AZq&oerE:Ve@a2tgXr"=<k]AJ!Kq\PEOH
sTQW9eRmTC@#hUA;%iF7^JdUL%4?jF(omhq_C6ibKcFnDRR2l;m>emb3[<g\Er>$&,k)f+O.
(p."hl>;;Hr%V3n.95)hS<p`,"8ORY):p]Ar4G<-0ubaXWBUpOm4/)K+1l<JaOM7g["F1[fI+
=+`cj/4bAG8>_Z&tOAM:*e>$h,PP@Dd[.TSqg0:aIe7t2VrD5`'cgi]A8UQu<,7_6It(9EoUW
V:<oBl\8.m3FUs,\LdNa+Vt\-qR`/RXGZRB)35&=r7XL%<f6bm2ms3@)+ZqZ9n5&0R]AeB_^+
DI\#2E1gqo&i:CGdl6P?_'(Bh?A&Ep45#@024eM?@fh"k*_=_JQ>j5`E?cgQArAY5CXO`FH$
tZdC.D"lB8YgPQV:/N*kDb*TJ$n87t'X1Pq6cnah<<GlOn0s=^37U$B.5K'HQEY#b*GJ=S%4
8Crh+m1(KVHW=<XS;QY&-tYE]A#&Y@qe]ARokC`(89)ng0KrlHE=_Bk=hk5ebrdsB#&fBX6?o#
;n%7;oJeC-;_0!eNn7t$EuD#&8"G+Hi,%WS*'$!g^8Zg5.[Gs#meBF1X+e[IB;C[^_@FX2;%
LU\q\S8mP,.,5A,7mddEESF-7<Q<8!!O_0[\nL<!4ZJ:g/q\pKRdQi<=lG]A;jg$l_')NqrT$
VkVSQKbrIRcFl_)4d<MM1*7gNJ*_+4WtJgRl+P]AMZU0<r,@/3_QlnTDYr!lC6k8.A^o$M&jQ
Y;&$*Hh>q=0dSXU,6lueNVTt$hk6&PE^,dk<d#p)'e:!<EqFOH3D"R7'5s;Bchicq^Q2NgkR
PS%i#mb#[k7R]AfZ@>`3OEi@k]ApY56f3d\AD>aaPMghT0iXCaO\I6j2Z$^82VU%$#C4ngbcpr
,[!Yn`1#p\e<`:d/U[*ckAoPhZt4ilc'VrPOrO3h1,BEO"+9?B(K^r20YO\FCL#]A3"EGJI85
_V1!R1#Gl]A]AT?s!0_X&[gW?$IjrqekK_2phXhVLI8E*XLim;[L]AiiEL9lu0i%7N33ME<XU-J
_E3/1'f[jJ-@(k^1*PQ<s:SXhN;Cgmb@N1PiO,nPKo.VQ37'h.7>X]ALp*..=uE/^(fY#[grq
C(pt!E[ta"JX<\$/1NH%F$_nB%5mMP*l`/3%BS'hE9rn(>^=r]Ab_G,m&T.ouRBpAn^6=`b4\
r%qjs7*M^D2.VU7&-1/XU=<t3QmWJ=%.2=G3%Zc)1Y`t53o!r@C9n6)/JK^_(c_aj!H_NWPT
@.#Zo2&#llr&>A7SZoo=,rFeIJ@.a`-js!,D/lTDTr>lkqm_Yjb!d6NJWO*`.OgU%uZDh$^d
[qYj%Obfib0(.J&anVj>CGVe=A6F__':Zc]Acuou$9K!NWoqd;jp-:eAV-KusP^mb+C&E7OF.
:,a*ICp,a*79+bJ`gq&4e03hp/s'UMU1=L%E%=p_pO!.P7>B&"K7]ABLUZ'W,EDteh0%Wo!oP
d+&pe1Yclhh0oRB%no81um&NU2.$-NYR@0YMd2nBc`jU%H@q5\3Pm&sU1JU7C)_`@#KV<?"1
oa.s!9T.J.iBaJGoo"-r@5$5+3aXoNd&Yt,t%@l^9Z6a2s]A<ASX=/tZZ&ot/EQL\4aE#O1X9
q"^"'*M#@,o06u?S@8+d!8a;Ykk;"4s7D\-SKdnd+>Iu!C"#Qe5W_o8I]AT$=?hNdLimVudVC
QA?Y_WR!@9g7bSG;XM*@'),#J4G;!2/uFqF7g4HK4__76q\F"_b.Fg<.]A-Ct$M&lVJXsir_O
Zo:^>`Ts*NrfeNoC%6=9"+3DBQ#N7QqcT*e.RXL37s&l[Ei^]Ap"lNbLVF6WGEh=8#r='pQl]A
qT#^j,%bp<dR"B0n0%=)*Kn._-E;r"89=S5q)FhMABn]Asf9A##u[.FT1/>t[`27$4[:eQP*p
;7Y7eH`e8c6@C6jUf[,T-nnsbi:XEa!baT#"lY>8RJt6pX5>`-m?>:P#sQD^h18$3!a5]A*sO
J\Z@F8e,Ce%=P;e!jhVQ"I;8g4s7HNrNZQ='hSfNf,LW26`!$?^g,:"t>I=RKNZ'0jM=KYo1
#r1!T"^5D;h]AfS=J@bo0YNao>,&i.n6>/&Z(Z6W$dHd>AbREGF?.)1Lc`45JfF2;C.kM,,a'
+_Yq*oulaiPkW]A<*G6e1eoNkI'7p#Q>F99,<]AZ7C?aS7D(Z&Rk^>JE@t!^3jb.CZ>'$?1%ig
<L`.0?qS;AJjGufaT9n?`j(4GD^[Z>E//!WQhZ]AE/7I[+^+f:iM`(J>\3^L[IBcp>]A9m7Clm
`^hdkVTtWNS]AK+;i+?eR4fRD]AG1)V;E&J)<rSj;69'2uaO\LM_^"Dj`M*l&Sc&GWEOM$foRd
]AY2(-5.N\R=_=A+Nur\o=g^n:0:XSogB5s8^30+HG`=jT48mHW@O6a!b?.3!JR)'8&ABb)g^
'a<6j"ECU\mhh,4>TbRQ:ZLd;>V(O"pK75I4(UY-duW8BT1NF/^%]A)A%;8PdWU9%n>VI?ddY
L+E`q4PQMpqB/eJ$FYVm&:;gKB+RVsYMm7O`R=f?5)O5s;pXX^^dFJ>n#^k>B]Arf;M7<;Q@6
:O>:`VGZK9VLcp;R./!QcnQLSLA"B$CZ6V,skU5QSbX6=!YE_tU^j802A6,En3+W.^&$Qu1o
L(XSA)OqYOTgk0Igl^>nFK!Kbt4;9NY]ATj+?3a,'7,]AnZl="fgi's?W<VE\ggSL6T<e&"Y'2
g#kp`qE4qk&iQ+c-b-!Tes0r)e,AoCXqd%C:ko>eTZLVh:*W/\S`c_V;)p"op=dbfjRMJ5'4
"7,+_,R_*aq\aCfCr\tF%(M?D.M1V-K^o32NF$mM.3.H72G@5"cLeZelO`@eXOf>fSu-i<+`
'aK/Y>6_YB-=Q=q*Y^:PlGlg!(oqd2?"kBr03>TP%.^1Km`TJ_AQ-nS+n0c$nM[fbOdcK!1<
gKEtt3.6(c><[(K*48F=r_]ASOl'^Z%-kOKu3[AMnJrBnb+ehul3Kp6X5=0%=<\F_k77#T8hK
_*;:D6;#jK&l61R8P7X$6(_<QjPGL,@jCje:@+3@aY7jMS)5VW!>k4SpUQAU*CAO:unIeV\K
CI3\a9gDlQgMcP^YjfrD:9?bA-=PlDcAhTo>8Ls\ZRXMa6fMdP+@NAm?;64fiN]Anc:BQ/OZ8
:Ks!@E"m0mha?YQ&>k0GAfddbkMfrKW@2RbfVKCX?gq=spLt.AGQ+c+!YU7':F<)1DV!IsZo
cW$ZGhGbFGN[k5\`k?W9Hpr+hKJo6ST\o9r,`Hc/`c-;tq#-<,RN*b\.aLKU)YVac\qan5:5
sV(Yp2OMSh'R:B(N,.aIo=-F\EYb]AsiZ22_5XR;Y_cq]AKYHXHQgWb-49]AN"-^O8(a=7lK."W
U:0'K*?r,p/l>Rh>hBBKqi\?4Dd6;Xu:;V<0Z+i]Ab2E6"2M0uMC*haT)?jA]Ag(%gj>0QE-(b
dukj*=na3(gZ+*,*o'!`hUm1$K*FkM<.C:pd+8H*LK/[YKS2t\Sc9RE>;[fjN9DVtHAe*a#t
I.VVE82.nD8FuE"Du1DG'Cob<01bkN7o!F8!1W^Ua3@s[AB<"r<<%Y0,/O?L<q``.^!Q'tMJ
`P=NSB.66aP7HMs!k+Ip:=4T(A#(?B>$[i:El@RrdZX:=^r&4IBd3=d='-UA7QG%7+s/rcmb
6K1cLUZ:%$$Z3oJ`8op[f/]ABn>pO;"2SCekRrGr)_i<^!.r)Flh0*P^iBSV;2:=>Y+"[<?cC
Pd9$45EPRe4\r-->=A*rP1XPffb3.2(SfrX'1nNYNK0X):'MsVM/gM+tHMHOeVr@^;^(VQ"k
$eh>JG1I:C-L)qFpH2b8,YoB]AI)rsqZ/\fQM6P/9BG^9G%#[UfI2&LZs#El'*/li?G[fc#I^
,Qh8-2]A_48QFXTn0uESFO)/70<QpVVj0Fnj.S]AY&^/sCpU9b.dP>IkZr?/%Gcj/+a5pT[*Qp
i]A.5eLlnGsE4CW.unl?::q1Q0b<M-0'pl2<$L\M4eSNo(b/jZb9:5X*9HO3OL?R6a-&Sd\;O
URnKM]A]AY7DI'8:'Z\u%&2HplN4b`'7E3T1Nu]Aj@pF&n%D4Ym0i`0=t\M,d&-"rlhNg@=girT
6m6'9p\S]A(?]A>aJ(tmJ@3LsbO#QU7LKGg\MXON<l!qmI69V*rG3C.j0$ZFEOWU`>1?Dd-S/M
6I5%FB%8"JQ?Z`s2UVqh_+%t7c!d=9kZrKVTnNd8MqKt7S%?jd>HU.]ATcr.dPK<(#br9??]A9
&bV8%We000OEpLFWsK;'SfKq2;jpFWlZ7p:>0Z$LeF^)[)CZVHUkt0$otFBaLd@5WS@oA#Jp
V7F#*:8uBeni4`DHdi20K!CEd"@(k!784o#i4;YsYMa1TTMeJcgsC^Dkkp8P'`!iJLjc>a7i
(_"/fOCiXB!q&<UXNR(\-"mAj1(qelU[!4$7r$mdgX9(R'^IgE>[Z/+U&!7Y;f/N#kIGhOU"
u^e9&]A?%57.n^.[Gi.'85,3%i:NSN#XEF>057m.GYAt#Q`ZL*W/;-5o"QS1/&*EP$)qPHJ$R
`PO2LbM[OTSb[^ObJ2p]A5cXM0l%^Gf+UgLU]AR@.(eTAD&k8pK2)HXk[X4g2@,l"FWZVlGBb+
G"]A+cOE%D`?R@*HKG]AURn;fFB#>%i^<f_kK.))T0hH?;5m)(S+iUB3n*eb3IRnrcIQ`5Z\^q
\$jfk03MmEfY$&QFXSPLo54GJuf&Od!!sT4:qYQsO<L6F?C7I!Rh_l9_+4?`8PWTShNQ('+0
JlZKmYeRq_BWn_+ea0AiPiMG]Ag1XE$in%aYHR)&%-4JdhQbMY]Akp&4;o">)Z\2./"9^^U@gO
I]A?Zpabg_Es"Yu<(buZXd#R@Y=_RncTTA8B8r\K!1_R98efie/$YT^i/0_j-mf:3^YTq(s(o
i9Y.m*l5&?/5-+WcQE7Z&?Dg$2m7=LZq6$65mgp-CI9Keu=?Ct+J(M,Kl/JI&<e`M9LGRI5-
MR1n?]AH\CKN<SF@iG!3AZ50p;VMtr/V]A0/\A@^6]A!o/9eKsWH,*Meb'G&doOU2U1moEN%Hll
jj]A-]AC'9#.PUIXr3hP+0Vo@*>r&R[@dK>.'G=FDr9F_n%"n`TO).9X2Gh&(D-dTrigdU#VT8
?ah4<qBcm9)I,Q)bfS.=%#,di4iFQ+I*XgaEG^C=TAf%pC.0c38ns_ZpI4&A5r/iGg*r*oYd
!kW1be<'TcI7c$^ktB9_C]AjPWXiA`]A]A&qt/;'R*e7?c;ZoL*Qp\?.lS)05O&"$VlX7=;&-6_
gl<fGDUkhb)2HVF"+IPpF"Z->hNT0EA"eO=cUbm5pd1]A\NK_-aR]A_t#pii3-4[eN`,H\iE]An
lq%)(Z@,+.U$)HQq\aRZ=W%:e\NZfG:fp0?BlQbW[LjiFk:"O.kK[qfkmZD;#"ZhB%VrY`cV
W2]A,@*!+D!0E6\a!(`f`j!F-c6`lhm3Bj6@,5BPI:MoKI.4-;#b&#1/c;:<^RU`AsYh:$<ak
TP7!Vms/CTjfQA"*Kk$*k:CptkJ^O+6"C]A&a^_&g+9[1bR5N-q,hT;s6e@`/]A+7Dgj3MCsu4
J=8tY%nFW1.\os9)^ODdGWHYa?%AO@tXMsQpZ(l/#kEWPHCU'UjbF&T4d(^8/)mpd)8,20\L
$>>!iXtp'7<\?G[n:HU[P=-:7!I3J+rHo7uZ/IIO_%:kdFc]AV26PRK<Q\pEY&)HJ#kJD*$Tb
W)7f?AAT4fS@CEu^Oj$4HPSql+eKrfG_7s35R(WV3dO+cB9l;9YH5"fQ)El/J\X.`YCa<7pT
'<MEJ@Ha[]Am25*6cHhbH<Cj:EoRc^9j/%4,FQ`V+2\WMIijchtH3oNKKB,#F1"UUH[cLE]Au[
6/(qB:En>''M4qZFoh&g;np.VeeF_9#4)?'!"nGe*ANg*faNCde-QYC(GIi)e9?FQge7a3pV
t9icT64/]A:8\Gs`\s%/&%VQ,1u7m+-/aem-p[qe?ee\_+.a)Jr^$B-TRV$geWr?%/dO-6;0!
jf:"Y@P.Ae7W'H3-KXLdVErNH^kPh7Y]AI8tIpJS)`-J?>RM?k.9>@-I3LE;eU-A=5Z*2gos"
s1b[nlg_+6Q2gS7<l)+XblH;bHHGKF!9:2!]A;_O$`*6!i*i+2t:olid*D9KXE&K=s]A7=+$l9
uk70VOcl`&ELX!(q89;/!,7mb(b$mj;6'\Kpb6fr+:e_.c;Qm9/#f6L\;Sp]A:-erH/Z&"@%q
iSF0R+8r]A<ViYC#7L\8`!>t)-L\_$&S&t0uXRUGPMO!5#]AW<%HKbTuXgoomsU57G!))RE(4>
JO%-S)7/sO6:s3@"g]A=-hf*Ngk#3%K[WMj`n,28,3VP=o?*^>muN_a9gqn>c_FZ'a8?'1>Hq
:i/RET*N=tCji3Cj(.W'"@nqQQi!`?G3lp]A?t'cAcnV2B=OK*uk[Vq/gDUO=m:Jf\-eFX.T,
>qo,G?p1$L\B)jgkp7]AKo^`fI(]Al2KhuBn`EJ]AK__H<2GUC1+tRYFoSM1/Ig5"&VVX"=6^P4
3h=i.q>S+4/2'pO/GTU*VTuF!8dGAs'koZ;Pea%!W&AKs_1K+`3d1/c$;Cpc$;\G&/S28S!>
>D!g:e^Yo1?`Ih8N8[tF"rtFrN!QW#gUsaco#l-hE!%<(<1c#75Mu=`]A>pk>Qh>G7gN,%7&i
c['+'E1rc)beGP]AoW8uH.('Vk68#\X[7<n__`hBjX*ZFbZ75AO*Ac66l?r#["/"L2Kgnmqe$
4Eg<dE-gUXc:G$67`qKT#B,L@uGOb:NB16rhq.=nMcVoNJl8[#m@:E&5=4@r`OM'.*^>'?$p
C^__n:m^Z!B\N%R,6Zt/Ra3gR((59o5\ZOb+iDabk6$-^k'O#K/jJZ.a_AmO`5[bf>(aEor\
t'hh_)(]AdG(<%#+%%e"/uKdIt:j3C:nPThOGfrUPpG]Ard\2;(7_@JSN$";8pp\@:O7C5ITX!
H$Ij3pbK+kpbo]A9Dl#-n5:93"'+ac#Tq,!^OQ;V+N)j=]AKDTj_&3q:8hHIAGZ?AI'Q)jucGl
b20Rb2Fi-Y:DJCd2(Z2^GRId[Sl->b,iO$[T/YP1r3A?al1gC)#QO(4`\".A$p`DiJro*V__
/u,d<6s="L;kSFAH.\uZ"E9se^(M/db6J/WT@a*10ilRY(dj^7RHaA,I5?Dq+!&T3B5kerSM
7*+aAr_^V"=R^p"0<+Cb8_3&@C0WW57f24qNd*1lC%)iQ/JM`]Alt?H$s4^,J+)_Ga`@c9Qs4
qti>G;#>Z2VQ:Lt*9e9=407I1u]AU/@cj5M@8n"XU$NIKR<&%IWU+pburXl]AgeeFf(MB;[$"\
dQ*m]Aah<kI<ib7GHHXVdFABKD:%lK5aUIQICJ_\a;mHeKtp!f<A^A%N^*mMu"NP$g58h%)8O
a'rm4n^b7$/Xl\0Bt#c"u>MrI\`Pu=e]Ap"8)9O333K%Mrt\'^h1#C0EU:6I5V>AdY&XK(XKg
K0kt9!'YeSPlj'bI3Mjuh!#II=@^=e,Nl$-q)a2;"iDlQG.mso,jMdB#r*LOb*8K:ES;A4'[
-smgdHDKX-;^Y#$D7#\N8KlT:J0_BZHMS#djV3IW(qtbd3F_`1KmM":G0.pY#3J^"?DRjn$p
I"$nH?DV*h2X8\rL^cWJFlOqDX1*<H5SQ$_3QF,=!Bm]A8c3H2NTfbM4FKelUsTS:ZU9.5rQ_
MYC#EC%e.1a2gZL1\8Q]ATBT9pb[9,N9dE1I@->+Q^*e?/f!`GMbHTWhsIZ8CmrJ_L-[`WAeI
6R(;Gb(6,H"-E$+<P#?/P7CqH7tYR(gdJP.[d\n:3-rTaueWfQTt#U'Q-@D5:o!c,t'uG54V
^!9!=Ai$/>QJ9l<nXK(/(Xd)USY8Y>./b1tT[I<CSHAtm65j2RlaoECG(2a)0?rBQ!B=H2D@
>gla9#KX,Tr4)OXf(+16XZK/'lT0dKR;C`(57aHpG36'[2/SJT8R(-]A24=rdIR_T;2Ns`9ER
fD0GXl7,>#)mV?Kk3/:)@?rIMeb!8*!R)V>X*[8DrO5`dG%pRre@6Ij"n\:@'N;KXMS&2[JB
c0gj*kKpqH3^`SBWi3C@ZpHtYf46&oH_sR[al#2TQInT'rDUL,1`9=te$@Wt2+?P'gT^CB3]A
&g-\Lhq2b&ALg,2]APL.n1pLY(eF#I^@j'',(c\YgABgWd^NZZ5&bh[,1T:r"(SN9)h[sJlRH
'RElK"K^uUWmZ5K\LjC0YQgV79meik.Qc)^0Chqn:AKuI[<gWQV*R5kNto51E"#-;S82D1tE
C=0]AhQZU>QYUXGTpTR-$7`KR>ae"d,milD$G/Ck6eSZDr7X;E5g+`>2H$Y3r=$s-1GKEnMXf
_00GeYcJ[k?S)[f?=5&%<4rPB&N0Y:d&G]AH`9mn7Nj[Da!kcZZM2uTCQ91a5f^I7CSlLfF<&
#q[p`\IempK<-1#q;*WpWBo"n+fGAJ0Sks9L/%FN8r(@Mkc;g3C4?oVGlY7A%(:RF-bX;sF#
!Uj7p#%nHSP(B]Ae59a,6:;WR5Qo4SqeOJr*3Dje31IVGi%t4:?dH6+Mg;t`IelC_fTu<G067
[$ND=LtdE.Q9:-Jf\/8::3RKi?#hStrIfn4Kd7Ege#<Bl<pr-2COcpnC:G,[HR<KWV*E`4gl
MD7c^*94e!<]AC!RGqd!J=g`'GN,rAl5k@e9ji''W<V3XBd;^WjhMBbX6W*YZOkUVMHDUS;U<
jR"k,:*bBm-6:2TQqLiO0sq2(,t-_S-7><n&s_&!]AOVmhLpjjE-I*\I\l<)pMsGD)jRq]Ai,t
8=mZ)tVk9uuRD4>4!:4EuDWYAM,A=fiiDs^4qsLo0ZO'i*)iDB?g<dl0T,._SLOr\$0u,ckI
r.T!q:=di-d(?,nc&]A@Eap3?3rqI*^1tIr!$[Mr't'$2`cf(olYbjK3bnV@brRC3Jf\<YUB.
l^,iN#,Z#32>qQd<<ahOFLM4>OPY!-%(QR<TY?p^7<KJ4h#*>R<6jl`\:a@?%.f0iuB.o&0d
Q!r\K@gcBe=)'S$H*0g29&j5Kh5B5Ckg:asr:UT%1k2+^ZW(n\`N)XU[p`9P8,"BX_M4u93V
#_E"n=VuE\`Gsb9,Sd228h[Qa5#!lD*5h)bY*MONS3%$k(Oql^(VOA`D[aVP/X/n#2\37UJZ
*?BJZ:V0Jr?MJ<a##^EGLXXR4bh/d,4@]A,j65\"ttFSSU9lYp.NkWhXlpBp-i1(7#rfJ.:aR
?,4:'jDb1Ebc"@[n\=M39bV^)th7>qUCC@bb9)"P"(&_5P8*]A\Y9jEH"AJHa"/[:`:8'VJUi
i3SOn7jpSpe&iVuBkhBuF.rl:!*8SQ4Wp"YMWUO0b*<Hj7UG\m8(\5Q]As=o;8VORmC+p!20i
C@5pX*=/_qr-uIA`;0@]A&)+_NYD>]APgi4t"G$XYbq:D$EYK[iD?@J0HNtX$\V-8P:F9Ui"/g
_*"^.qo1(gS#lM\-t6ig@+I=R6U.VQgSuqt8m2X>)'qZ/[(;r(XRYlW*[Cq&AA[b_ZARJ>?_
#a#j*-dX`Q>e6>[qM<"&^_&gQpJtD=MF^46p`/<Pu5rRM$k!G]A,S.8M%ph%BN\hKqAoVq$Sl
1CtFhs@b/(OM7`-\,+)O/V7\Ef^3h"=D!E<[eaWT^/_TIV(lGeW043@I*`sa.j/=Dh$!aWdH
t-hVr(h;q>`Bc>ao+31%0fe?l!a,Y<XpR4f_c(o)QSU$J[g6!RpMmh#I.C!-e#-.4:TBImN@
/4S9`_V@O^p1)b5cL95;CN%MB7N]A`M$Z7$JLFEnfFNsAW\(g!Lf)Od-_W5(=>I-VCk#nu/Sb
AS]AV`48L>8sD3S.K6hHbrOV(BLH6H^[]A]A7qAf>(h4EMo>@$Bq"EBXAP!Jp*Ie;;o+[<qZ/:1
nZLWWO2Qp&&$1C^)IFOi$H[1Sg46U4Sj)f4&<K*M=j2R>8.eS.1b$_L&7UXl1gd\SnF"%EA1
)F!NH:8D22!kf]A<VTdF19XIOLSWmBXRpm7MaVQ)AQmB(a37D7Zh!'NI^Qn.m.8\u<H+0O+0"
0R7fr0![)5!TG$>"*5Fq$ZTc4.bdgs?XQ%l#Zcfi=Gl9Q=>`>+3!AZCKQA\qj#nU0?#C&?iI
[m?edRXUgLaL;$Z8GZ<*N;'k4*C$RF<An>o@Hl,n=_]Abk\!bU05.1P!9V:^WXe[:GUV:N[=c
S7bKTX>t`_4+UE[GW8,$afN-87:(k,&H^!E_h_T[=\i:@*2R#X_%*eFeVdn\^uq<TW)JP*t8
Eao(?_EN=-XXK%ib]AbAV=SJ8B=!*ZSJ=D)fpK=h_'"iuZT6-(tKa_KrYR&=Ed>0>e79BRpeL
KIs;\B5XRX#86tW;.s4TE5'H^56Ee(oJIU*:8-#cU%rXC0CIR@*RW#&s("=c2"Z:k6#RRiOq
q=GCIuoZk_fEJIILO!4rUOhY9Cc=oIgSW%?s9n6kbFe%.em]AE"j!)1qfs]A/F9XVb(7q0Q,rY
E?]A&)[`?/614IlO203=*hqbL)(f-k*F[^`gC4@&!']A0e]A)pr`,qX&[[Be,2_l9=ifV\78qPl
_E^"CXIpe"]A)Nr?G.2>R?QphLtIlK^sm?Tu1/1&DJL=.8Hh[K8G,%Q6+qC4BqjXFh>>7rli3
@S<ihdn^45-WI5/=o^L&<.%O9J$11s[Zl(==iM0)@o8*;G,bXJ^\-*_j13iF2S[=GOe8Z9k*
m<LrLSUALaZ4e=*a,G,M1J#45_q<:TtA@^$EKm;dY>'Oh@-!TCGS3,>?GILRT%Yj;=#I_fKE
4sZJ2H[1"TiSpE<'AGDB;*1[L5pRfCQ+^&cjAS>"(W?@:?@1_rK`H":fE\@Zs>=f_WDAJkaB
Hq!21[N$MU6s31VW!lT,7V"#4%nVU%2QF5sUA*=anRh6YOK\2VrP@kOO,tjJ+'X"kA:k8>pl
L!n`6HYagXuQbQen7/(+pj0WS3jpfD=Ca2\5.E#FV&+OBCH+;3(o7[Mk:#V=X.(En/:CR=p7
%hj9&:MM]AXG.%nGTQaDIkFciDRk'EJ<]A,m4(QJC_N+'18^;`o`=bBA$!'IJE*eKGZMp5M&aA
]A41rnEE(3np4$gLoam[P9&\7J0n)af(2p/F0o+=`Cl!Y^dDK\>tep.G_C[^btt0s8-@hQ@^Z
hui%Q8l+d6h;gOX-g;W>pIY/aV0f%p8HkBBWPXEsZ%V:Be6oDk7JKX'=C4p6KnJ'(,VjN4GK
/"cIh;hRt\0s]A_RDM.q5dW\;s'ba<Q92)n3c;X(t\u]A_tGq<@2d$HlOaWWse#In1jZK*l6&A
F$d2D(T"#fLNk_HHa-h.Id!es@H8AaV#IYA:eaA7W9\+PLONM,K`(O(>p2>&"B;PDn9$RXdu
*O.N7AKX&n7;o\_c94Y(+lUKiFHu;*1/bi9&%KUTNi/I?MX=DJQ=IL4b?VmRD,"i'jP6/&-D
-P_?"rS6INB:5&,ed!!0GaUT2PXg5$\a_*;;Y#`I_ReYRIa0^6)kO)i"J\4J.JlHp[\/>Li>
3W+uJ20QMNpN[n-9OmRs,N/bhu*O(Lm7]AgN,OJ4WuOr:PceQmrC\+Qa4l\c>Ce!AlG+EPs]A^
rZpQGkBM>'73I"Z+b$aT@W(1Hp!F;9%P:G2Ci&BLS3s!2RdQ<rlJ0M+N+$l*N069n9_K"QML
W]AfY?H6>/_n_YqM0ImZbf\$_9+_h8Bb$!]Ao1=hQ?bAJGU9W2<QV:4mW^%.)Wkr%m2m&U*S&$
m7t^r4Y8V`0YtnDtStH:;HcHbXE@Z0eG30PLm4bRsSa26+RqSofHHXaqq/:hD>iWOI@jh#ZL
+o$f4+A-oRERfH2Z=<-rhQ94$9KV"Bul$-KIVt[A0e[_!*Bk;!gu/)!1)]Aeo1,s5K(Pq70eA
blp4:+.Z0EFh$#b*3Te&7?C3('S@Rju>dt^EEE4S(_*c'ME0933$X]A(\E>%d*_q,I<P@qG%3
2ii$o+_./6#c>tZ%pYm8RFEX+nqkVfXjD/FQ+_MP,TWj7R7-I(K+4WbDb%'X&iT7_S_etu,/
\mJ$,*#oaEj;jKhdn*%RYiQAU?[?CNPamc-`2KCWmD8XDbE0FYmrLI/>$8HF(*?aoCMZT#dp
rEE&h4Rap*\/^o[J8'C55K[SZ_g4&\ii4+%2&f+WApmIFG+ESA$RQ;2d"H1m;&qTjVJL+`X]A
h--D;2S#>Y;'af:.+Mu>eQi;]A2s"F#GYG,=''F/OJ\#$3::O:71Q\&5\%(j';dY+[/k3h!Zk
]A'l[Ic_4-9&\-DB^uTb)(AlYIKB$&NV5YHoJOQ?&oP.nI>kXcEOn'tk,=EfE#+8gg*dh,U:I
*=F)cn%_S'Ih5%%&K3PUU9tkQggH(9rn%[r[7MI`nBO_4Rk@`<(IDFeV.A3oNoF54l/:0`DL
rO\P9A.PZ1K;=K0$[#;a0idXu/VLWW/')?tbB4IVaY)#f7V?"6L"$igJOf7tl0hiou=-Tknu
?1qiU7/KJsB!?U=7*MCF#Mnugk5r7Wm<;]APB'>dEN_Bt?KnWUN5,T?N,,QlCs+ChB]A#cTmY&
`/;Y]A9h4Q$>YlaU%3@^pf0eshOE6PqL*"ZoN'7&Q!1)uA%L=)dO+uuP4L7Y9>\jtn1W4;eCO
Yn0n,)u@1@Ms0<!MB9M:$/P$)+3)6T&>^CV<DW[q@79:\oo0-W%n"2J#ARMZUM'SiRD[-[p#
BnEi$(G'+%k?l2)Hq<B8'k:$t9)<r<WIGW>F^"^?ebJ*2kh\A@WMrY'FLkR!0VCuU[.jIqfW
cOa"_@BH:!\H'r!NTdf#VhXA3'f%<#H4jI5m?O+)?STm`lVR@REq57;siEK'>o7ruaZc,$"g
-/]A*!G)\DM.MW;V&,pm;`a;WK1<h30e*?_^VG_!FE_!>YT0>jNF?!5<qZA.s&+DFql:-2(ne
h-@q+49?O[kcVZ>8;\:j(qF$j%9t06WstYlVt\7C5!e;:AddH[\'X)?.UhR6nnZ#hF2,11AW
c0=_eD$:lgdiJ0D(MCQgJ.j\P^XB[\:90+H"4T?.bl_caR!'Zt[dbf!u+j5_O,3CXr;RliG'
+#V:Err?p!2LPR,iUq:i'$)B%B/,36]A+"5aO@(+@D%EKTga)8BZrbccUC1/X&tr=d*Oq\oN'
8EDI1TKZpcYu\X)0MNITo921"klWSe%A3'jj.0fuYMjedQH))_7sClK0qT#0/P^HTIJu?<bg
'jc4`7@qKr0TNR-3L:^ZdN[-_ZWT0,:3"s;nr3[l-da9Z.c\)6<.<tnEd!lK&mt:R>F;+:gB
5ePod>o:pIp!E'5,t2c7E;t,8=kRo$Db,$X?FZI!'L'K#.[nLRQHQ?aGb'g_$E\I_^#+0X*M
la%$*V,YVaZ'`K?r@?+[D-`4U(&/f!MaEO-sj:/E%+!O.Q-ithu2^*:2Nok.`"+!d4Or:X$b
'\ZAL!!(pb:WF=4QK%e8FC-p@Ud3+@A!=./+kY%f:]AK)Lob3#K%]A+F'U;!pr,:@V&4C]A-grk
S<#`ufI:9=7nF!:(mU4^Df=X/HWV</^r]Aa$4a;MSJ'.UD2h#Y1pRl#-j_+W-,&K%k''2]AJmF
\6)\&HmXo&6n(rWi'+^*9f*;\mSll@;GPEh!*u,!OLYZ#hYF("6]AHJd?h%S3.4&GT+;KrrZ"
O-JJ#Mk*d,JelpiuM&$[Bp!oRg1ShZgDaD<jj7E,X',IBHk5%p8k[)*c0_JiE5An/T.nm?fg
&%jFMJ#ORD#%@]ARl]A/c:#b(Gf5W.0&2addlh$7_kHH0'u-$rSYLS7e('bQ>F8e='Og2&'F[M
mg-=`kR4qS*jXh`c[mNQZ8),mc<Lgb'+QLT2F+*O*GUMR+*EkOF3\Z%R@'Pe6kJo4%<R<B$!
?SkHc6829>%6t_1hLP8(rUm.t"pN>E9gB\(lQqitVD$fFL\d$kn!K^a=eJC@]A3!gnT?;$!.h
&q^)<r_!=YaHh?Jm7B)8*9ah?jZeYV>b5`rL6<9nALVcb.<#*6>0NINA]A)*eL5XU'@eY<%?k
33_4l1;Ah*64!`$hX@2%02@4DL_NXb+1&$ie'H+a2A)aS&NnE.<1S>c;Z=tG#YBmYudANA<;
fLb!BSRQ+k\6@8$N:Uok4)mC=%ISPAaNicgL'4j^#,,-A'B:ZA^&XCdT.H2WAllmlH51Kp35
@4c-]ANC6uL!)!`[Em;FY>mEY@)jlT_2ZVM1OZ4[VlbFgsdC2WraR'X)e%<@uH?,&D+-Oo4/r
'-!s7[LVGP5"jq4sH).T)@j%^QI=kcGCoMl>L,k`"6K/`aPMWRUKq658N`2"c"tWDErL$D#^
Fl+Hn!^Y`Dqcd$%'\aSjq?I.4dpWVFies_\.lo.q,BB/g/b]A=hQc@qhC%jnW6.Ie%5oboo[P
6D>#L/Z)RS0UiV8$B^on7"2G9\'o?i8>b6Mq4(1/X>UZ<Q&mHe>uZq5am.d->=t^fqEE7P=V
0(4sOBsMl^=EBr8Y1:2agJ2p8Vck9KMs$S#[SW&%X1l4^cF`"YEEg"TgmXfs0)YPc57?bab_
Y']A`b6?eUK;iN'CR!GO2$"jpf.\='^pk-_=S(`cY/fQq/%m8t:m#35cA/>\ra"8%:2YqE']A^
[Plp=K3N24nH&_He[i`fN9b+?jC\p<ZN%+BQD$1`rQ@4\/S:`D0Or+Z<+\kKnoW',-@411uH
]Ak6.']A_%lVVK0=DdqrT@mpN=Mg3SWD<o_V5IP0q-a:jPj,jNoE!2dJ=44YLiqnk55s+8&9SY
A>MR8!&RAMksl(R`LZ?b8WaYKg$,k(-OLS'`#9O4ETgcTB4.+Fb$:_r0cDY!cC=GAs'jQ<fI
:!4KM3NQ+r2g\amPGRif9oE;U!e$ZiWZ9\>V'qN3J.\VW5:(LGn$n)r^MXn=($('J6a4#c.t
/iFDl9IE!)m4'/$B+BPrjR-j6W]AoW/gCbfU$lrTdM`,i7#N&.H^h!A=UA1ma%;BRu,1h01Af
e`h1]A/mH-Ysq&WON$AT^&ShJtuVMhc'FqQ91k?f(YJBOi*5,6IZ%A7o.=ZY(G0=aMsGK5Vg:
KUd&E#K+SWRkLRB"rnK[t'GF\LY&VPA.oOCg;fTu@Yfi_SAf0i51#ssZc'L-,F-S&[Jo_pc`
T@"og6W[<;m<V\ZG+S+;06,bp3'9YXi_3q>75lbYL1VcAr4:l^-dFo[mYT1\fqh-qUi1ZYb4
<_#T+Q;BNqoG3)uaWb^KMbG?lP3F^&X5Jd&Ho\'ZU/qPBb"9+1cq]A-"E1dW_a<T$m?>5PM:S
b06rG"_oV/c1I3*6fA[FWbohkaE)di$45%-EZ#A!Xb#LK8JAf(hOr%Y>&#5'mIW%4L@,A1p7
U;Y$d:/?hO`#>.4il\T?@oLd*.U9':q#^OgjHuWm!kf+UL[e19m^_S.9]AP!h:NK6T!0Ooko/
Q.lLgXDlN8i^\\SWhcjh'0[Z>]AH"TD/1:ok0oJg87/r&FK.E;`kJ9l*#GE:=h'$m$]AI4o.tG
oKHf'b5ir=l62YdT4T\\+&?YhBQFSQ#<_>iL-6fA5WAhgTi97BJ`pYJe3/A6RB/.b&rSF&KV
:kb,m#]Am\umq^UY2rT2FBZZVp"6mp"td`!.kHAJI8K0\3F#!#,]AE.shmcDj)H3baju9UHI,2
9k:=%=A']Af?DK3-nqYYimXh9E0Ur&4G`T1n`6]AjuZj_]AU3_61'fi!k(i&r`[k3;s&R=ccP'r
d&[#&*:N>sXtlL"C($/2.>?rsjYUGV8JNVplK1/!f$:lt/LBWf3OLHP_91n^ZkG*pMa%hsg8
c@:sD,bOi[@\fWE/17QEI]ASs3%B:BCc&:$nI\F1s<5T2gZ0/E"[CmZedp';Fr/",j'_GOTXY
)%Jb%%POiE\qj<OX=b-A1hVOOntBkUsg9Ii7KTS;a2]A5<N&;Lh.G5A]AE?@_q11dlERC<i#O-
dWGcHlZ)5)-P"C0p$8=mP0`c<;u.Q_Rg4RG87WJSNjG!9gqmWuG4C[%m]A_J>"TGV6-XgjqYo
Qc9@`DkZON]A]AD\cV[gEGMI"/p@YKgH<GoM_hu\Oe("sU7bK-=Cn4S+n#G#VTS$G?P!)&kSHr
S;c%=F-$rpFBTjH<$SfL<:i(-p/q[VTKFNbZYJ6$"!#b_)KjBb#&Pds+3MX#698\ioE;#-mq
hnX"lH0A!3BQ-8fh"]A=5%,N/ha.'<YqSbjH<2Da'I;c!>\jk0=Unn<-+UI5bZWL1@%T7u^jp
!nWZ1EE^PO`pt3>l@a@U:Uk2AVu`2>NuuT?&Q"P&!RmC;:ZWN^JZB2&i6*]ALd^-9D'a@7P8C
a#V&e7J:Ris__Z\&=1_P>n5]A>RAK\jH'n0k&ZD,tK?]A82d>o#R;mI`611lFqXGbfkmt$^u5r
OQ-O^E)0Z"Q"LOMLs&]A&R0m_goe?Q"P=B::H!%tIrn,cRZV=RVN?F'c5`@6q#hQ-YX&_U66'
o"e;l+PZ0]A.?oc*8Q&=cp9X")q?Vb)U<=AM1cYc6K8D2#a\*iDRu;F,nb6TIp?0NifSm%D(I
<A3)E:D$Q?T5`lOZiOmdf5@aYMSVTYfU[r@\24?a>Rm3NNgO5jYo=`S&iJ"^^qI11dXTKXL[
6BL48q#KRI%l_Inih.AYQmI!b:1]AsD%4\Fd@\Z/bsEe#H7%pJLEmg16K(;0"PW(H6Smj>_Y9
CZOmq$[$/ikP^C(L\70NiAJKhLZ:aisKMUY/&\IF)+s&RXp&ac?1i^(M,V5o!!"lPRM&Ie?X
>c1eJ#(bH!YMc!]A"L,.TIm+QW0'ZNN*Jb!CRFq>JAOkMcgRO+s"n^dL,-*#AC?65a&lU!'`\
f/;iG2)B"q]AX5]A332YMh.CEjVB$4+qZrb^pHK`Q?E!_F]AhtOI$MO6T]A6C^d/"72DA0l0;oH8
H;,p`E8c&Ti\H4U5<-&EY.J/5TOM6U"B'=PUoaG`g3p7%?as86\Z8]A03QuT/,Pm8rLL5nSL1
"N;mmPZ3OlTAoZhie*>pH[C#F1Ck^?Qj9&itl*tX!;02F@%'kF+SPM4H";[NA\`_aV!K##%=
<6'-MU`!"((7k96k_gQO1l6V`Fo&A7+*3C._*.A4]A=.oU\9`ag+lTq3fC5s/^LpAi#+fDu!M
dm4.PfpVo'06$4p*BD=e!ONRe]AbUj<G'hK*'=E#O\S^H[54+6b&Feqq?B*+[epCR#I4tojge
qQ>ZpYoKU)l)nXoHVsPN3Q;-(09f%#.iG]ArBg-Zh+a#%H<]A[G2)4N_3Zk%BulbSU^B$6JZKm
7f+C/c-EAh`am66T#%`N%#AAkFO(g9'5*$P5E/gjl,0J"<$(!6NOJW$;*>q$X7]ArQ?ahRdi5
]AHE+3Gm\`l#'^O-ZQ.l<e%Q\.4YjT]A`$!N?VM!5]A'5\s$:7mt`hK]AF\.8/I&,/OU=;"!P*ge
Ok8JQC2XS/RCSQ&qA6Z4P$6J6p.ha5M3=[s:gcX<6YKA+aF:WnaZLuaQR36ebcbn%L7EI=nU
S$R]A@gh/^*)j>]Aa$]A$F3NH&X'_ON3qH#q%Eq,k;7J3=pqf!+tJlbmrHQ71qfReBpcO"YuODd
=H5D\Ha@e[.Lb+fUqkPn8fXl2)`OciOpBWo8;5Ik)QbA[`Oq'pPimSOs`U=(F"\1`)J!A))u
2IO+57)^17g;D!"H*;g01je1*Z('QBC+a..H)gbQ'C_E0'h'i,1/KW1NkIa_S]Ahkjf,YQ;g3
PuZg<['Z5k@XON0.T-#cFh"+#En%D[WW2fRUG=&47dha=D!VBh>)Hag7+/75+Hu+Jr!h63CB
[CK?j%)X@mi;#-Y0=Ie['Up',2JFs\l4K!Anl:[GLob#]Af(#T&k[*UL5@K"(STQAPPWKXhU)
(PrSPlR1>6N6k%:YYD^HYiF(d4G'!W7Sl?Xpncd]AjJ-GRl;GfLA30(ZAIOY9Hf2amZ6JleAk
V&/#E#qpLgCU]A5bdB;B%F'*Nn`TCdjU3hg'Us.W$kg,e"bP?f1Rto'bal`1B$`9(A`\lJH`V
hb@d@\oAphH^EEp-;O:EGK4XWQZ\!\;BD]AO$D`dji!.V2Hc)Bc;17K/lT]Adr-mW81-#3c@cV
ifSq2Th?->:]AW>o#Uq5$(q8f.`!n`Rj[b,<kU:;\g$?O\5]ARSVr\27mq7mYY3Gtl+D:-BO0%
iW-lQ`TVO;0_oY$CnXd:-?Jo@E43Rg^Sd4T'h=#aDdrbq^GZo!1Z$BVu2rsa"V0_B3D,Zn\<
7pU(QS`kX-XC&KT<>s"h9pMSL0=l[<3l,#8VE_%@D8439q$oHObK$cQSRTS8et!79bW>=c<C
\H_4gX4+eik8T^7;`77X.AZ+DK<piauQEQo$4DM[N]ADDof@Wfgb1Y-suYZYI"t&IOk8<jHgu
'dJ[FkfCR[ak`YnBB5LO<82VRn;Idto(f18K?cXtP[XMC$^R3[+a\l]AAUL@1[SN[sFQ+@Gkh
tu(+pf(a'&5ee$mf93P!o<m>_G,5B27+WIfn/t2JWZJQ?6Y/uSASP[c/hdRdsT)d/tk;Q80=
;U>DbEQhV?uuJp4P/*Dk9.Nf'I3$V"H6C1([=s30mQ3nNcLSs99>f:Hc;S&3m>gmGG!O`o-:
bgu:X.B&&GO*#oi9Rm*[:6Zihoei_^V<p#%kR-a+.qVgm)#G7dX_<K1*s()"DQ54+[F,ir7+
2X,kO^25lOi4bl[4#u0235W6CgZrAfYPFJh:s=L"p<lFRc@rJ;Q)*A"5,!HI3mXJ^>75,3E>
.P/TlDalV1a7F1G%"XB'JHl^&'LTq/8N]A]A/4Qa_;lA'</=237JRB/P]A8PBg%^m!3Uc=([)A=
G&)d?9R&@H=Yao"Lhb-PaB8Cm<Mmps.V8e&kN3aK:t@E&Y'V^0')DNR[h2um4#f8SZrL<q_)
ii/;4W!;8o2dR6"aP8pG,(+Fl?=^c^3-C!(u!KSKneSQ)gbjG^4R>-W)_F;D%:88XKMI<PKc
r+a,1Gt@=bD6J"IN:HAEb)#A9PIulb]AhZ1b*tV4n6=FPu7X>ji^Im;4P/Pb6/Z`H&q;Ip=F\
j]ApI%K-_?ofqZW.FIii+u$@6hF:@\=pEc=lD`?!ol/*[^X%K7!,A4#hDS[aFi?O]AklKR52gi
*jMs#4bp74]A1Vnr-)blq9oha8^5A\CG\ECc$`l'qmq.H;!6b0JrBZW2@@)QWgLakMbr8Yfrr
n8;=H]A;@&cA<)C-#-qkC9H_lk#AUm!Ai]Ap9g<f!U"H3D`/4l)djN#170>>^k/fpg3mHS2k_o
U@N=ZJGY]A5.ec=B&$+[u/aa8lB?)5la<ps<5o$u0dXa]A=&GCccN9\[J5jYO.)X2\F68<#%HJ
kHV6d4!*JBqPYlKMPj`5]AE3fUiS-*7oV(ZK9$VJ@2AJaOoEf?+d<Jm_fuj:e#r??P)N4J3g\
W%XIbN>"lP8,dl2_VsPZ46]A*..7eI%ru<h@tB8o0e6n6e[PmN.]A!WgD7B8)CQ3Q*]AnQR<d?R
+T3Qih4PZ^#(0p-JSsL'ZCc3Hei)+,BbrjF4QJ@>EMoHsl-/u1cVCm-q:k3kZa`HiL:>pQ'H
5h<a(4&R+nl%2XOfXNdH5.Am5Z;U>4#$ur#4X&)HOuK)B%0M]AmsMibaj&-rMHasGGIbuM_uG
8n>LIddP8^qJ"V4R'O4$/8m*NGk1\?_aT:Zk2@Jali!H2*A]ARc_L#/6jAQO1/l>N/Y)"-_(-
RL>;\4?s%E+88#B#N7]AZjk%>5"4DoDJl,h#)WV2r-i(e?J.%I=^MO(Wb)WSN_\^^Y0YD;npm
)+L#A_\]A<oc@#Ca9fn&C-:PR^4RnKC;,)IC:4aMKN]Ag>OHnY1"[o@Ip]Ae*>@pgu;eJ&6-^>+
LYB+ePs#3&nrBb@CU<Ouik``'c4QFp)o[Aa5*";_%59?SL1-85njeh`=+(fB$V<o.s9J_k,+
a1bIp_QB+d%+,Q(Ic0(BYp.KfGD[tE"H>qTbq$#W_U[KNtn_lhK+%V+!,<e9hkcE&>"qPh0e
iM*='(p0H#$T5.Ac:Ocsr-%SnHD9G-]A50=]A?$FQVmZSQZJKC2jW!k5;crZ.aoJ7leQ8Lbj8[
>-Bs5IZ9i63JE)$B=O,K=N7A?4s:=0'Pp-4q4\KL2^?ETV)laF1)V?omjK:C(>1a1*j[0F\D
qn>JgTn2B$*n9.68lN%UAn&+2C,+O^`]A"bBgJu\Jj!UQl(-GI[89+\J!3(`)DEj)0t(h5]A;0
TQR<RJG>!#d^okTRKkK3,ChlugVJU5H]Ah`;/iV'(A:V.rGDJo1u50!\8C[FMc;N#^#19Wi:q
.9Ptc<@kng^a'l":ea]A5<3HV:j8<N"j#BX%S)]A_,PA$7d@<8#jg4#C-c!Qaefk_lZpXE?d[%
_':*:+t6ge<5ZG[K&(6'<9h$49D/FB-"N2Bu1Q1KY@cVT.c21#$A^92k$r@r@]A5ST&7\GG^j
FLpg@WR1\:UNeY((=^*CbHL%u+.D*RHp6WgfUFhi>g%aliTb'3dMte]A=Xt,"$X[A)UVI,:Y@
6Oq#18C=SWjPG*$b<i,NZ$5If1LWH]A46s:D9rtg4c10i58N:g\\Qm5H&(<6@re5UuT!YFBL\
Ak@GG?Y$?#hmO"1?:hhr12R$W[4T-CS+Ys.M9Rj<)=U1qce#*u5+a1li\%M7c,+CUqi5)JZ*
Ma/3fsP\Kom"I0LW1nr4$V"qO_D-;%b[R(>FL=J6q]A?!gNccIrVXbgQ@i1fBGF]AXbKAoPXR3
f6fX`/L3)M2oXU"TM[ipee:5>$<lqBXBghYjX?!1o:(lG/YWcm.u5LJ.T>/ImoMjWpW"7"b_
<,u">Ts!s_lg:j]A`""g@-a4:/36eQ-VLLN9qCq1M;;<'lpHrk+0*_Y_W9i7K6JrJU]A0GFIHt
QgAJsqKmH]AbUUElY<tjR-#32Tj2\a]A%r7q(Qd)(lqf#@d3:o6'mk]A>^os69\WJe0mg9hQ=ud
TZm))o-uZ8Q5n4#oYr:%"QtV,Y%^6,KkjAh(D]AjOTs*,)r<!K2-[V.b;qe^W_>ZA']AAu(aR+
9325*j`7t!bYpRe&RhbPj?`Zs3008YH>Te(#;Ao_4h4LM!jD/(fGUS?+7CLWG8\0^5]Ah<^Qu
W]A9CA1`p%_:I^et8s"NiSq%ebbo>uelLV"ZR!ffgAZHiorq$H7?\![sP0e\MMS#=&#(FI&Nn
1WNT:hGX0":(3<bOPE^kV@I'+5<"+Lr=HeGrZb@)T!XUaY!BW2=h$C'c]AWI&_mnelTSC#sOr
OI7UI&eP_FQjpoC'BlME\8dAIHb91C6]AU[^^sSSr'p$[b\3"3Uu8k%]AfIIPhPH$WM>(KYsE2
[Q!E87X)oZnXSB.Pj]A,gj"Z?kVi;3-+:USF8-7$`tS!fP8<T9PEn:/_kl]A@^(\A;LOcam/88
2%T'A]APYIDm^i2$pfS]AXO:ejn7.R3M!UhKF9*ZVap$)5SCOZ.;-l`f&Ch`)ef*mCnTiGR5kB
Ys:0!KK4UHoLLVJXZq^6B4a)'GZlP?hbbGW)oe^"-S%HZrPWJr;`,C%Dod[ma8'^DH?c_3M8
:epg""$i#D#5e8d5Dg*i8J?N#H4\7mqYAZt!0C:(8Qq-1BRE%@Da-3#4]AgS47U$h+@VE>]A9C
7$p]AmReon(u5O":'M(K6Q/[hWoE`n6aUb):WCT&(;$A+tJu9.t-ceeD!9+i0)C"`]A/=0k/m8
)-7_b/5<-hu%3+?XT,OL(,kd;%s4-C7C-;.J(&G&eE[%Z\r5j'5$E3I^NeRH9d7CJmILT;PH
%R`?8rSB8D>b%<J2Lan8TXGi.)AMrK&K^&(NB2$4ALu=M9p$!m<9#EeN&'7Pa"2l-4;#9_J\
Yd#LHC^n6W$1QZQC;q9'[.fE/jX!u[+8QY:a6(,fW9\"UKIG#$+=cUH=qd3acf+@ePkP+\a#
)L+V3CbenRm+SL"16X6[QKjAV;6nQR]A=Ds$rr_B;TD-qQ??l;EgoHpodMm8L1[rt<Ot7%n"S
I?45)MP;7T/D%YY+qh]A\aeCe^XmT^L+fAkZFuuX]AUS>=!q?"Q5B4E#JXGf8=`j:"na5Hn=fT
.?C&j4WR>JVT!`eqZD4)Pe\Jc.oRj4%Jc!*[1J/NMfAa6Gh/dT0GSLKbX?9:Y-U$h250soHM
Y[k+Jkck>!f*`[#t%:F1WFV<fpDK7njoabZIL!7c'`&g=c90JmX)Snb030i#K609d%m606i$
!1kdU?.eVLkmfKX\1U&2tR<rG4t)n/qCe1iK%T)]ACWTDON*f9!G"_blNh!r:@5f\m$s5<R:'
r79l`/<1Hf8U&s`K8G]A)>BKHNQY*(sKf@VKQJd3g^(sL4k.tY/19YH($?j1V!Ai,?2E32A(Y
IS9Ggc:_[3J%U&2s,YN*:CEbg%J619X]Asr;EC?qS%mB@*Nj_7f(c2S%S)C7'X$1_&ZaS'D!8
qX.YC0%fTrCnBL7Q#2CcFk*=j+0-"sh'Mm;`4!:ZS;!#(NIhe="JNDt)*r>OXp$f*'r>0f'b
fE$#M83Rt,SXJ6Ph^O_h2kf]Ac-16Z7TeSUBh]AYDV?&0pS@?jrN1\rlnqK;m+Xdt+BW`N_TA0
UmW=Tnn>^hi]A^E+1m<^(b>K&$nS)]AetKl'feeHd78I@d]A9<eM*Vc(442]ADc4D4Un*CHP5$hp
ecbK!BoG7n4&W/3/_&fli<hV^/A51\S$Go`d9/miFjp_UMMKdPDEQbALYGNOs0TiJQNPAJ`,
'%eLkjdGnCbmR:3I:GONWJ6'7&c60HG,(#^F8Z*$BOa1Xq5]ADG(SbcNgi]AC*M%".\6Q%mL@D
M9o9s,4Fc]AbU!_><[tYoeWX<Z,/^7KP$#4.+3m9,;Z/q]A"?22/Qoc"Y?qbMtua3"hiHInAZe
,"cfYf[L;VBNY5KTd#@F'o^u4HS$hpfMUS=-U\q:X]A>!o2==FhZqpT9K7kO`Y5<Y`l$?YXJ:
eFe*%/`5AHuhJ.,c`C2iGneSM5`Nf8PRdu$Eg1C)8U9X9)V!CA9pVVYKIOSH5"YA90^q4eI]A
DT++a)E$`\Lc&*![3Oa'L*#3Eft>c:(lIb-cu4\b\ir$&/]Aa\Ukt4Zm@We,q;JL%Kl%a#c5l
P"NRD6j0TC-_-6u@b8@mYjt1TkGPQDY,sQeAA#PA*[S%46TgZR'7,/QLA-oJ$B0d,_+oCPj?
c,OK[YPsBOK(9[J\Q;>oJ0?p?LZBq_L5Z]As7,G([_ce9?T/[2`50NSr3<WoE)`LW,gQYp*Ph
FE.B6Q7u4P1Ns"Bo``#D-WfLGP*$52M(<1LV/-5!SfTr)2KK!_g[8iG"+AW)@p,!A('C'luB
&S<DRY,Ofmsf@_;a+H?kab$&/)*/pk./Kmh@QF@%.XCNEtqc%UgB4a?4Xg17[Xghf*"?:6G@
B#3A]A<Z45g>`8cNM8,!'_F^'W/R-4Bo0DH4%(.9/j=3#Y"*FVWSTOoI4s"S%J=can\9:1!M3
7.r1&K%#jmD[]A6bMSuL]AY^1"g8[1cb`m$.j#sre>_;%g.0&2UM%@PpS'u8[H@rLY+D"71YZk
NQ^;NW?g_Nk?B'1N`Bom^#;=E`V5Rl_m[[u%?D>K/"=*##+t,.`1IRh?,JQrod:d;:-N83@X
oUj?JKtP0j,7MY=2odNH.CgaSk.QMBbe;*jgD[uYi(ZfDP[cGAA8#/A.JdDIF4CHre--`62n
4b">0eLO#Ek[<r'OJ[]Ah@\f[C)6I>3!XqN'l\Sol"9PV7:)9l0k:*r7[[ek>_+R7j\R_u>UD
:B4\"G4rFQNd@^kaHG_#92/\XGM8jUCnT+SI$WQLTW"C]A!U>h%65)_9[a1mGJKc>S$FDZ&lJ
N<;Fl$S`2"lD$]Ag&\ISI[$j\(f&)4$tXs7ft!7l]A=$U(:m0TX%XTS)r"F)@6c#p"$@1'mk[o
t'"JhQO6^\!D75G#E?#@oYAcaWWW[ThYbU3s/V34!"5q;>@Gfh',m-uaC;:_eY-FtA+>o1.l
7i$?,<oDQnda%DrpLiD*m1-c#]AC!;Eh5+M0/Y3t6DXn=FSKSP87>,9<S$ZFQ%0&YeNjKZ;`2
tt5YZDB4I,QFl(ef&7AS\G@5G'&4a7(n:=6r@C-fgADWQr/M?nWD$TqG??:tB#I&b/=UKc2R
3*3Sd4R1;oD>setCr%XZQ>,MJ%(_gfed!(.e[35,6_3_&Uh(0O;p_Wd^G#V)`IHU[b?[Egg^
euQetlB`=&:e.&#IMNlc!Ls;t79A6l5gSFUR.!3rW9N;jor`=f6/HE"6R.d9i(7O"jLa1nf4
n7jGZL68-EB,3870\9c6RRbB?`%auHcVS*'8W*in.BW';#&%5om;[Mfd:D9A@Z@B>R/"LC9E
42p&;''8lHd_n$.,6.goZm_alpk^Kmg%o=(>))\UW,3m&73d0(2/hG&8t0Wk.(d^XN!mVXro
^d@4nO7<b*m4)ZM-.3)VSU>f43lq-0\V6H`SP(+('pMLNj+!jLrP`KOGo$FDs'Oa[^2FomtT
HQjMR>LrV_JK4]Af$lXf:5E;&]A6b7b+$bBV0g24U\/F3QeR_/u-JJqD$R>6el(a,Fu&>6421i
LIRFM)I"k^Ht9oC=R6AWb_?n[NYpCr8SQn]A"Ha<S-8/mhC!G#Qg^2VaR#kgkkBkB,t;'aJ\3
]A6<sc!bY.<HV05KPe]AB=L?.$#l.9_**9u4c+XDBB3S!%j>"<Q,o^5=7_-e@5X,B6YcD)@W`/
i\96G"=j*+/E#87RQlrm34M->?j`.G2T65mA,X96OJ6I8IDdijI>ZD.,7XF)$DWkELm3=pt%
]AJ-AGOlj\$?seu3XJ4h;W0pU[4d3Q;*2PKBJhVhC<B:Nh<DAsP<1/.W2jkj'e/A01MHE@#iU
fL>Zr<j3&TQq!"Dr;i-cUoQ65="s77U:'\N5_/'e\`=6Hh3C[_nsPO9(?+4>+oU?5Z2R[rHu
.";^C<A:\`r+7CsnsT4]AZMhPF>?g>bU7M<oWhIrLO\/L95]A'+aE&T9]AS=KV<GZa*Q]ApA@=V\
]AQO>BP8&e3b*mr_f@9Nj23_-K-kbZmDLs_(QD\[2Wo5cd;/o@^%0\Via03eC5C;(AWDm5^j>
jVblU2f#ZIsl`s6&OYYs'jZ?oN3Mg?Z<TiF[5Oq`Be%npc\b5jr/7?o`t/0"/nPM#!&+CDG\
/E]ANdkKb]ASMsg&;5O6&+UQErIN,(j/Y5[(U2C4@:63NC^V9Oq@*9N`&_Ch9XidMj4aW+b"\d
^JB792Dk-Tm8Kdr]AX$tQnY[t"/HeMO,/<R'oXl4'^LcaBCd?boFQP/^V)%@:3:FOUPrb+C"U
mAZ?D;]Al8*@_SQLZ@fV@W"V"(dpto&;JM92FF`JZobW_)g/2A9WkS0?h\1Fo3`A"P]Ao.7,ZD
fcK.P<lQiQG9n)`q3[VVO=`NL[na@YfiiKJ"j"04?,jPQCBG&cVm&tt]A<!_=(eW3B$8!=T]A/
;<f>T)7J1M5OKP2@>R[1?Q'P*[7\)X*qALp#D/.o@^&\B=r^`=St\TfAje!bc__0f+4l,50Y
;s.=XWCln`pOApH),/t'IQ-2`d:QqC[94u4CXY"80N<!\I@05FKI)lF`NiUM/b8PAEmJ`PX^
lJAfomq#@]ACp6/1i)=an13+*[2f8VAZ4107XC+]AUPSI,KOX/<d&YX$mR=R#^0UmV2!kMS:HP
-\W!*`V=&Qh61i.HqaZ*@0P2Q?X),$q8jke$Bmgj&nW!6LE"Tl+Bh`psl+<Q.J^RiJg<4%q&
>"8]A$j\$(GqH!#L?9'f]AfCoX2]AIsTM6H)[hD6949=r'9i8Kfh5]ALdg$uC<cj.9sCE@)!q_,r
HM-gQOdL=S,>S=A3BbE6Jn-K-t5A:52=B3rSc<sUFtWO7@>sID^G.$Iua>Vns^1fV^ECj]Am[
_=5>_sbeVuTI6"_gW>bUnopEa@FQ-B\Kj)S&e^1H/9]ADJifZ(!t_,'Pn6\7qbA6*#BX:?p7G
)NhD@kcLFE(F7Xb,-VM\`[!>VmFST_a@YN,[RhL#nI)Fts**ddbU.brPS\ujc"AM(I%931T9
:u((,B_AA-kEbUe5IokL-J3QbYtnqZbDCP\B/![3@S%pUZROLE^'#eQTd(7([V#?KXS6T0G]A
l)*J"FdH#p0e8i-kaE;0n3ju_G^<ji`TYQ%%EArAd^/f^:nFYM`$\io9?HD.c%-<pN$RE'P!
P%AV\VcMVX<k$!6$uCj@VFm;Fh>i-cn-h@2fP'Icml'C#H""iY'<P[A4*-K$be+IeM+bq,dN
]AW%&n]AG:`CljD9<G<J`V]A0[>H.2>MVIf5(6p4\488B5#N@kRjU$(;<OV5iTK[Nr>i8pQU1rP
%CLj^*[7_*_MtRcoQc&7CSn06,b@4<*H_q[&="8@OMj`=)c$00n/fBY+26reg%?c-Z[2kBkN
Fd-3UQE+Jf?]A`h7O/W#3Gf[s*RP=UHEg9\c(T>XjFeU+>Je)3F+OJlE`8-!?'&:Bo_%F'E%G
3ni-:l9`UYfV-.&p"1]Ag%:rdA3PVL#DNr?m?#%7b\m.(nMSt:\,ZihN!bl&s@i*70XrCL:HV
7d4]AoeMZWU74\SSeFsaVR4I!!jV3j9)(<SgMa^+(!hU12*(R!ZucV)$Z3kW#BSX#mYX-NXE/
`b:[(?QIS[t)e=LclrIO9Iaj3pW?$0[6.WRP8f"fmMeGKAnkB2unk=<pn@E&``K<$lIVnj.:
U?kKb:]AMcMA;AG;^*5h/U*oE:=lr7m-2q=5^L>lB)%\nYAA92]Afc$M*$PT1*j%e^-ai`cQ^m
0Z)Rtb!$Z)Lf6UOWAddE5RFS%1'67jJ#2Uk$(aQr:Bp7A;?e]AL7o+jG[SV4E*ZUr1bp04RqH
&Np1XRJ@n*=<&3VgngE2Uoo##@Cs6=G9+6YZiDWLS6*fBgWM_fCOEngRktX>jN'FEK!CfLa1
e1]A[>s7ZZi.pfO)m-q4C!;$DaT<]A%4"pddj$B(A@[["d[-dsL<c_1A8H?*O41p-XAP+BcAhC
Wl,)=u,A27l:4LHnW(NT,'++=sq!*"oXcM4O__GY)b3g=UBL>IFY?[dKbMj_NLH<&b+k296K
;`hl4oWb9p&\MaQN0MS.W3pSGJQ6B'l5AMpk'pFr=d3_TW=q=]AV/nBF&t.#+M(WG641rmm&3
q>^b]A]AJ+5"&]AcSX2"/-CWGB3]A"`hY.teH)[=&eeu0M4W,cW"YFsg:6#)k*LDT;LVN3mt-9Xh
Wlrmpm'S)G.K^&8q^IBdT4"?QDD'scH/lJcu"@UIA^?[U/d7m>58+[%lKuiC$HCsqZrAil5^
-+AqW);/iiq.5d1A7TEcN:]AdJ,RDEQp73%*QkUBO0TZ-TaTr8;6Y0us5P*qSK"6eO5OBbZOn
re@gXG@Pd/!a4@;.2-3I^fj\a%03/'V'm3gF!=u:qG#:,/Q;D5ZJFITiR10:"t@J6T2*:2[*
U-d+O7RbF`GS:<YKBi%p?,;Ll<IM5q6ebn_WNk1UbrKR%<C7jpk9;8*qamGgCB5_*'McNckt
pKafL\2DZM[#5*70TL6>6C*VOTEPnSatL-Tas;IkEpQ9a8q0bYZ#56nr=I&EkCQU_m[TO>1k
CIZSI[^N^FINg\p):rrf;b`mT"96B0O4ei\k**FVXp.S.9"\-/B"AqL_W)51_LrD_%,oI,`n
&?Pa/ticLi0e%8@1E.err;qF2c7>`Q>2R[O_=\(.L-,h>`uaT$Q_C\!pXsO^&9Zm/,Q'K3F+
jA[rk)3_sEAf)"R?rBBVS^E#ra#J8tV27r]A?9cpNRW<V3EqF8<7,AB.\WO_-iI?cY%]A:;$^Y
m6+>A7\+0C.Pm-uYT9n*H,M"_1:J8O*a:jJ4"S%S"FmV"GEZ..]AOd3HLHZXf1).LT=X'WE<B
SM-M'bWeT!THdn^=ih;>*V:A's:LZAS'6#Cd)iL%UlY/M/c<e!K8r9n9AdJ(c^RWMc5\5BF4
$d>n2Z[@(=sGkegd5q>ihWJWXss7rf0jHr(*QZ/@fkJJ?`F<^,F,\(f09PF`FQ1tcbg1Ab!:
5_8:P3JKO,B:Gdbd'@$e[e59U/mL1<?>cL>c2ocb>;D@#JR2b9,=+J,BPf0YXS<,QIsGdd]A%
?&%cd.+)d<N7:EI+3^mB&e(uR:F5II5-:Pcdj)F39V^&KO"E@bV@3@;Xp%0*(I_I-KL`@P&G
-(,6maEWrE6EGu)I4^(qN"Hbt]A<)F_=T9^K3(^G6L5_`29XH=BV%eChdR"c;/QtT,SJ?7P:g
R[(:^M"90n(OAor[5K2qI8iC*If\s0Y5i3:AG<Sf-Hu5A:YtfHO`H!/g<q^Ohit+Lokphp*]A
TF7c@Bm%g\DjY=J2in:(TRnK!=A$V1MC,0j8?Inf[GXCln)1pDs2$6?hXt+kuPe-RK+$$A]Am
>'.\5FmI(T)\a!@(*n[N=]A&cY!F#p%j\0ln#tBAj+7M?c\#1beb&0uH0)WJZF7mDTT?YQbMF
4!Cmdf.mK++s-J")><NDRcqZA^'!pk)q(;`s$a`cmPQ"QD+F`NQ[c%dl$/[&0g@ImffFh4*F
<.0X3-g'hdhAn[0Mtj*9(!9OGrXMOTQ'L/H>A,UJ#OtISmYlSBM#jA0rh?a'5e^X5O'aU\g`
BB'n=p_-V&5$#g#mhQrV?>rnC)d%ZDR!9B@4[a$PluZjlnF%ZnBeS$9S.dGV)jafMV0`8id;
sfVDR?/P2qd#K-aa(gc#u\5%..-2dr#]AY/p7TZ!;n/9r",Q0Ng7_)kN">s8Kt6n]AbZ?jn*,0
"tnBpBt8$N]APT`Np"p?r<5P]AQh(<`-i\e\ChAug16MDi3#P>V'9#$p=H[Nu>[eKEV9hm_)@]A
#'q`^*ua"#6@6!n93:%W6D.8EQQh!P<oDd4sH.[`s]A:=]AI`LKl3UUJAUB9Y`KBoO\IX%3Ou2
&[Naj#_&1\1F93P"Y:iUdFBfH21c43lL^:,WHJ-D&$s0XNui3">INSq,MA.E!0[>.J$haVV^
GW-BEH;jbU\6TIfTo^A2T["#u?3:"0&g<L0Dg*bCl<V0n&c4Bnm!hJ8(.OK@IT_M5LuPLC9-
R\Xo[5f,2X&=r%3&"DO?d*(UnRJ%pEGA\am=V]A58'\8<CXr1/Rab)CSumm:^]A^:Zpcnu/"M&
2!GMM7br-a%i0Z;LA5'b#$,krH4"e/0287Qu=%fIgGWXa[itU3rXaYo-V%Oc/1/fFeHf(dPq
HDdA^<cr:caC^*1%1qKkLDmq<otF;ZIPJ=Z%/U?I+@Z+7P2O?C4=oJc;("5B!Kr[[M^%rKUg
*,F-[n\6KL\AK>Z;[^&\>2pg[6agJ$VE=NAKTA;R#Q6gnD2R%)\mXs0E8h)BdSRUDqII.n<B
Y@\Qu=m$%<T(>=nN&FQ&Xs8U0O(C')(hA34p2J[eU_ZO*:[fYhuM'(]AdUPp2Q\49#Qq>U_1&
"e)',+mD'NE=ut!L!Q;QIH[<'B%^m5A82bl!A^`tU"o1FCV]A#_=\]A.`P9nK$nrP#jc2pJAn5
VpL+'[>_/A:^D"id^g(lbO=g5rhmWZk_lX6]Aik'_@RL37,s?ShDc,qm%5;M4[#G/9NuJI((6
^23I:5T5Se>SZ%VXLe=BV3"%c[B'pTlVJ)7Z@6r(:U9cE8!$mLCGlj*"Pp@D1!Lh_UP))#TL
9+`^TL+SO20Zi!eCJA4WHKlh3)26bV1THBgk8B-\:@`%]A5E-q)WS<C1)9VukTNu2.%02C7L,
I=S"2!6=\Z\F#\cH#a:c:B6>HWR[i#f%retI#<+DA\di!]A`>)</dM^XE!'#-nchSOrZ@HP.'
omPjG)Na<-niLSd?G\Asr.rlX%LaM]Aa#>f&8m0m=n6^f]Ah.Mc60jfLffN/;?k8HCB!(!P+ta
bBZ4UUF-N9ssT-MH,@rZVUrZoAT)@Qghf-39beGK!irfSrX8)6&4*poK.ki6>_p*++E9*-L&
R4rdEKMOEOt?(7\9eIQ!0aFMP]AqfL_<VgL;:\0.LV^nC8'mSW!9UJH\Z7?I*UpYUF5(h%Qd3
pjC@h5@%<=2OW:fG-$&*gDo>@OJM/;ce_]AHQY;4seKRfZWYkV#"]APhKCM^Tlc4V#*A)CYb9+
3+LXHZi'jlqq;16$MXjucauj7jf!lE$(Z0'^B8#(kI>mji,?UUKL0fN!'P`JW-r5cXSc05V?
bg+CZ.Ep"/)9m8NC]AP4EG>`,=LEKPd`N[eh98=lH"#&<eXp.HPMNtkjnPLc[TWR,/md$*1=]A
O_t-A%Qdt'DDb&54$?+p)>.6M`q#k;inR!Of#'r&?Ztu=cR'0D+E]A=Iog]AS^FOL]A/$_W_^D$
L%:2iGu\]AG!89k5]AIkgX^9q#hi^JL?mVbq#./W4c$J"-GfL$7#]A:&@Jqe_DW+E0KY7un0+kW
f:"&s>REogO?:huG,o>No$pmZ)L?gd-rj(*?9k]A+r8TScp,8A4]ABW&m=@J[d.21uuNe`7b7'
<iCfa&g6ihVIdTYKT"?onq\f\UO2'!XX,]A_b+*L46?Nj8uH0:&GVi4euf.cf4%MJ:'^t#GU-
34T>,(B^QbZ/2MKBIS0\+I6g@f^H>"<TRIsgcn9[,!&?3rH!Z'FVPMpBT?&]AhrsN;&#mc+17
R*H,*Un_+m<LCJR/le$NsMrro&0=H6PqolI(TX^@JV)5#8i7U"]A<>eNRTe,krQp)AAA_o$;[
XH&4PHcR#993hfT,k*c'=qj`e/MJAXSF,u)=m]A<*dM%DQTRjn#ot(4>(`/b+>B_Os7PM'9jt
_orf.n;?'@>1E22YSJDW"1JXH5SR(T0j0ro;kBCH6J9ZL3:&htK%C'?,"V9nE)817,sIIg5u
ej<C-e@u9"%=SkG+>(U8L`N4=Bp'O(>tg0a7m=CrUPr8W$nmD?/eSrRXT`M++b!JcVJa^E#t
94AL74;@\K]A.,So#I.au5=o\rGY,?jbli2Fo<Uk2!Rg),pAYAWHRi4*[D20Y5\Cb2)F5r0sP
m6C3"l]A*UN'B9:"(E&[!`7,o1)kpgNVu40[&\:EE>7KKeAn%5[?CaSK*2G_45'FfmYp=RUJ?
)O$5(Me8*\t.3D&crb`p3(/bl8YUJJVUMq$g50(dh,!cDBHg(buW^eKJp$[Tjofq]A>p@#ib(
"!'4ufr]Ac+\SB&,^,fB4^un$pO,N84)S"TWDY,6>lo`iY1NVc!cHocq`#G:;[:g3J*-H4Ph:
Mq.3`*h"#<67[7Rn[,%_pBm`R'a6)Oik9H8YEI)q8*:jo`gS#Clq`VrpfD%U"GEZjhUC^sUZ
p/6lBk:,qOl?"Tlf.phYtoK<Ru6T5sBlfl^DY(;#(K!CdJBDbOin>(V'd*0HE9<1=n?FfYGO
KT.!JCP'n8/E,cXogCW[VTS!(V^=D6rdWBB26X*S/43JTP;KU%IcpAmDQr8fqgtA%bUDDBQf
oE<[Lql3gGo<J:0h@MSu)gnUhjN:8oV3U#jTGNcD+&\j[t7&2X)b-aD?XH8ll"TmPo%^<=2<
G+$;%g."bRJbiaIp5,U0RaB3!<gp@K-![]A]AJ4A@(93*f*QP5M\<D6oM4sKZ^$L.J\bZQS_K^
%Y-46W3Xe=8r9f`dKB2OQ/3X:"'K.T$l2.^mukCVV3k-sHHCTA`\4!(0st^cc2j^'#g5U$[g
s2l[2lWGUu#o-f"GY%f#TV@1lPL#P6_K-@!:/SPZ"lAgpW<Qk3)3),;K.LP/j[dm41WGG@l7
uc6r[K`C$4nQZ19LZ.%WViBWoJQ#-qlsB`km,V6!D#7%s79.fbKutDef;7U89S3$p9#LUcQV
V-Qd)PU+oBg+9;.SYB1kD4<Kh!O`>Y_SMV-)\Glcu72$jW#.t*rg-;&#`Cr?@I]A?ug%MOs5A
H0r[?\N$dH^<uY^!kptp1aZ:3Ya[+4`[YrLfTC*;*qL]ASafA$ffY1Aj`?Nif"mDtckUp@2Z+
d4jLETW<!iV3Y##43j:WleZ=+THA.LFJ,92dt=Kq$Qoc1cbQIp_L%Wo;V:I<R#J%1-n$p/Dr
uL@1uj2`;f9X%NYiC+j(s:Jj"XHVODg:S."'Ns&-t,q[M-`\OH9+L6Ea<<ZV1:=AV.OWs@Ym
:3KnT6hf_qY%YkhHq`P#X^*!^[7G\@S6>Cp:8r66]Af.XL&B*?,2*dM10+rWpKR6Soc;&!'g:
_W[st)#3^0rfkJA<5+'lY#.JM-Z-:K5/d6'H-GI*8kr^0i._)C<qIdXKog5.BK')j5&"*!Z2
LrM/edVC]AZ0Ca?(klc/`eMtL&M$Fgfd`HUk@Acm7$%FmQpd,(=#Jb;q!E:LbK3/7Z07;#8Cm
lc<`n?F^2qMu),<']A;IO'gm3"4mO'MZoK]Ah8A*W67es16I9IZ>[&iBU]A^9:7qf(p,!L9^Y=a
PmoQ[p>u5?I?9bs'j*uj8:H'5?hl/`240J,SP;HWQK03,R]A5Hf7GmH@+S&gm/di<).#[+jhB
pB55>>;mS<GIZ'oamt"=@Hg=X*&2H\+=QY2"!Wp"HaZ%TE:n"A2&YL=IlZag_I6=_W<u(iA0
5"`A'0:3Dm6L2/V@5O!DNt56KG%gW8iC_Ub6IXRbe#3N``ACD:QsBh\o.aCW"J)Xjcc4g-+b
pF$?3oaoue1^&S!)tl[hA0b=+IPWM:)>f1DFd)V*TWXKA^iEL1(!Ec/nN<2%je,AO@ANS65H
OXL*2S\8:%3YUf:nX]AFn&U#">_`XJP.q;8cs;B65ST<#Q[h)P?q1$31'*O.]AWUF!*jV<(:-_
TnN':>_Z0_GjDqE4e92m(0CS+sQiu8mYQ,j,;ftE:&0UugFnakIBIc/YY]AFt[l[tL\A`NhRj
gVGse_=g>3e[PLDRQ#hEV6KMLA((lgZOFnYpGTm<ht?k.*Hfq'^`$[7sE5l!uKa$.t%q$V3V
c"AT#!>%%#(EK%g20\u)+b!c<^tR8_]Aba4Q!UkijufJsC?D%&aEVm*N<.U]AYr/$LXW>a((BK
H6>4]A(cWI'Ekio]AX'M!l]AR>,XY>b3f(,FCq^K5DrXYW;>:UmXVB]AjXLZ%SBg!9ZX<0'_D(F>
5d-_<j;Qa6OKgh`?9H:T.efNqU\XbgHB<!c+<`:?N/ukV$O:)5kW-BGt-ooKebH0h[]At!7ZO
iqB+*'0>ICZ4Q2Jn<Mh0NIP=f!J>*Y*,.I@g40H^E%7p.T9d>$l^_'IJK?1QM5/sjiBuWLcA
Fj?,WKDGU!b"3^*bkOV#uEM/dnntllsV'LV#G!Z>pIcCh[NRtW(4b0?;R>_888[h4)p]A0pZV
?s]A9L=d&J2aV$N'_)m<rU1L%6Ot./psg#<K&?Ce@H'.pA9O/BVN9#?#I>P(c!]A-Z%i6e)A[&
U-ndK)9Er#_*c<<2:84o,'_RGl!',W`5DYGV5['\)sCQc"`Xma-$U984uF9]AZE92XJ$q]Ao9]A
o&549,7g'+_D]ALu&JU6"%tu0#+Z*H#/WGb(SiF/ST-A$aek\CTt35IsgIgc8r8<nb34f?p:#
G!s_:fK*FuA9j>L6%/SGACjsQJTJ!^-Z,5XcoBaPJ\DrJgN^_U4JM+1Q4gO>8)1-oS:>&OU7
F"p=$VZBrY[p&_Bl)V9ng3NrP7b_5kXGHQ!I':*io]A,7+A`KO[0c)k6NGMUA2.//8K3**.m+
,>-sOF@UT]ARbCsY1.MK7_nATs_q*-W^LHr1QfI+>m5S">N<*I`$ZaHEI,q9ZI4P_6G]Aeg4<R
*I`HPlaJte47+k*rTBm:]AmK"XQ\?YKb/Z/<Y06#KlZeG\*m_rcWZ?@)ET>>@gs5<AEo2@>>+
JaDGrOBO@BXWgiM6,hrC>V[.l*DfL<9%M^^;<c03EefM)aAr!80gt0iK;qU`]A<E#Xcn?U.OM
[_]A-"<%pjq\i<Kru^`n%K/%u#.[r*tGSnRrra=Y/3SUTNcF/6FEEh:]Af"fOU-?*b<-)JbBZ[
>4]Ap_tV=.=Xc#nUMsXn>/e5pD&LHe7WkgAU*Y.=g!7dp3?!5i1;G;b'7/7S=T[)*>(dZ$cZ`
?]AW7hZ$hBCld#%u@"T5oj8VoPJIQ74!b$"^,./L#=*C-;H1,3t8Q[/?]A;E]AANl[.EHQ%b50-
%FO*<it6Xo4'S$'#d4/C;jKQ`M6gTe0hG+6e(T;k6>XD]Am#V):5;as-M=Ae_YQhCFlc.nE#D
8>bEaI-!2tBrp>S_dZ[*ts7UMQIrb>Oqj#>IL!_P!;AYP?Xl"ZPA7Mh^uN,eD!I3b]A8=dpXI
O\`>SL-!$'gaY!pL!(Km]AWINi_8ODDOD;LLgG#!"oC1%L#0^IX*USI-@2TRpcj]A8M915B$D$
<]AWR>cU]AiR"7jUR-&<1fKrO=4)2=mhGe.l\B**ZeDV^CSgGd2Se&DtNaFVHJSh6H\h\YI!F@
^X&P2n"\L_8;Lg[a)96SZ_S93/nLT26Bh81(-aYgk!+u_deUNQLgn:Ag,3f/n`o,>\mSCUh>
e7uis)9+9I(d9rK<!<dhO`)R.><lLCb67ACe&7H#Z_mIm17;ErLOT1>\`=H$94?=u@=?IS%W
LlT5>?SEr>";u*4S0P&<Vd#rh&*iS,m)Cf]AQn&NO\>i-?.ZXkAEN^D4#CH-"c<c59$E]Alh7+
?VGj@U`#%C^1Sc;,q>_QQ,l<.E5]A^;SG?0T')DX+bRJaEU)N]Aj*$gldXhb<VZ#A%/S5@c_#f
Dt^hPkgp7hOo)N$(!jf\GN,L#Mn`!%hN:uMS_?P't$fPS%dracTP@W6W<pL"<p+q0f!JQCro
r@":QGUO4X^5BkqL95>$ffRfJ_`NS3_tRX1u/n:Z`;L9q2u4t?0&QGHY>j^@!GEGXe-:jqd7
5BiOG(h4H:kE7DpP85X99.EP-=VCB^V4pk$6'8]A6<%;H/PtF`B<"c$m(>L@dDEb2VQr_XEP2
2N$c1gu4]As%=gF.Vtcn+XNYr10h`EQdQs4S-eKk3!hu1Y2HU0<+jAD^>87beSQI&%n#k[S^c
&Oq:(]A'!Ts.c:o4chEd1mRuB%6kr^JU\$8hR2C[\Tg&9PlK/>Y(N%i@;D<h?Zg8M0)&&&+*4
6Q9sj828Gd.6F/)@-D"fm1mMA2>fXDK;N4,Y'7#Otp$=CBld[W33s'8/ZK5aJ6/e@JKfl&dX
rK5kcm2`Bj@--,u!?r6Gj1o1mN>P*9_9:qH?km%?KlZNq=DLt_\/kZhp!DYsXFbX)#!hfs#)
n5h_I'p1[r!'5Qb$`7=t=l36^-XnQl\-H_E:A2-n;;e#;`2Zq&0M$`1=Ps8C,(8m@-"XQ@7A
':u>jO6UY9P$c]A2M-S:XHe9l!npJ7#o6<_,sVG:7b3[nWjQP&b+BdnktO"==@W5QX!L\ASAL
`/p!5d5qQe@D,QE?AN%L:dPTZE2#=n=D?/8Y?W,@&j0*m`KKd5E^M=3H6S+G:*>#;&M5.k]AL
$'/tL,ClBQ0*AHPCmO<-FcO7p`#jMEBKo:Eu0uNS&4I<!$<c&&`H.#+m;_E&kS!ua!:s'9dt
/HI#"lAaoFO0..C6`CgXjB*;+J)(1To0+sH_Q'PIBcG;>"uVRuVU`n7jR8N6,>eW#8h0L#K6
*mS*C?Cg.oYIPTVhjp)"^e)rhH.;b(aB"n6@,9ZY%GcXh#EaKIqB#Y_CQm#in%[TKQ0r`W"B
UVMT1+q+q\@@W<#u-hHA%8!&ful_ROGcO]Ad(&n`jmbAC.Iis(<M[CBLripU.5Fl*s%8ulg;7
s@A,ON3RXF`+;Lu4=(p;2l/qAJQO*b.?b\H['.\>b+V78e-q<u)^U"_aJ!aOKY#G2*P_RO\]A
ErX3\@(2Hrr%!P<XkUB1bQ@e#MW$9BMP@$M_EtMIia2P1M+kq-76B(;upfIi%Q&gj?q_IRpU
6#de$ng@^?.hk`&8D_=3fWS0GchJ*%a^^UJ.s7R$uoL@<mR&^Y"7F1$1%fqe73M16)l#!7EG
l4h9l[tN*Ff9J<_o>FjE;%aZ@.7*bLZ,$,ial0:T<P(XhOHS;Fh2&*%U,O]Ad8AeQ`6;G(d;F
5R&m$>RN8Jc^d>sX*$XJ[<3%:+"ol[$mB3!&-#Of8F3F7`R\Qk>]A"!Ei.WF/72tPSK<BcLZQ
Fg(Y4t`:(WnQ&i8!1&!@*4?(0a@i9_iqT'Gnk"8uAjqJH;?5\lVd`me(T/_+9pc$-R_f)HP3
h\h1U0QK@7N0H?1E)[7F<k.L256\m]A's.u=`-lrI-4c$3j?uT,[iKeJp4lYQ0OOWVLD%?<=e
.X^)!\>n,7aL4oILbIt<]Ahe]A*,RXgX,0hXXA4;n%!NEqq8m03aMQqV5<uqb6%cXm\qDPmX#2
lHCLtFXk-G*_jT^B)7"lpof)-@&"Z\&A63^R\50B9Z#I/IHoVq>'+rj^a*T!\16:\d0\!2&+
Fr-K)\dU:$)CaYH:5:l>#3HT&r\9Vl2MqK#"5F/tkjS,r'.BgNY,Z%7\m<Z<,(jBtN,jkKac
YHS%cmeOCLgP#V$-8"C`+o..`/GZ')B^?T?pLI/u*o,s">)lCtSF=nm8q[9h<nY@GCQ/js6=
Cb2g7EWik)<pJ>:'3@V@##o=D<Dp1BLcT.*(<Uj;\&!OR$37Ca[&c"1HpIS>0g=tpI;@1j#^
gF-8VMGC;@\Fc$=OXFPjqiC]A$d<i]A6Am9b?<)MEDL[K%9qM&ZgV2?5]A_Oqn@4K*$`R>/S>[?
DkC_m-=iEVcfSBQ/WPk>TS$heF^%J8>AU>:Z,?3oDYX"Y7:Cg?25#p)\:WBbQ.4Jq*sS;Xi8
bi$o]Al3ji]AAs&oi]A%O)\7PGOel:WmrGM5#ij0Mf8rFb"p0]A.>Kf/%;RXg1HigiTK,Z8`Y+/\
H6rD]A0GG1%#n;f3:&p/cMKu+i9&OiQZeCeg)*f<15IN`H)RVHZ;?<+3U+9e!.(W(_VnMSB5i
uCSgE,k:;bmn<efjC3nS'/abpK<:"6f4fur*Wm<)VS%O'uu>J'9%D?2L#X'51,20U>"H0%Vj
q*[#`oB=pLKHW:S0s,H.YtF>MAZD!:;2<lFMG;VD*Dm8OZF8(4U.#DbbYn5j4/-94B"K5WkU
q@W1Lg![hWaV,Oh]A;ros]A3Me&=9DoD\>$OF/nPC*3]A95<=MdoA?4<"/N%.,sAj,CdKGZ\RIT
lo%VouU^>\.)TE#1.$4t8;B,sTHB[5LmH%Vk=up:ac"D82lQHhcS=+.W^6P]A$G.W-QK7!>3(
t$hfT;N)g!Ha]A;sb90IC*ZUD,o<>A2o[8f!td-Vh.90Crg2iK0C,`K.`!fd;IKki"`77Q%\\
WZh(/;+-lIaQkJ%^L1IL5oigBV9CWqBRU@Sm2O7`GU&uG'=E3b3@U-p!!Xg:!n;J+ATc#I-i
u$)\PkH2Pl#3&;-96"4LhOKa(OH?gF8>Tq`3a'#Um?[_9q^;;0((9s*4`?:CCTYh%V--m0Lp
1N3WT5cR$LOn!?X)FL?09>Po;i&m_+.$@cCe=q"$9))_ee2c>NfI&PMUWMinrDHdL(&2#j:G
\G3&m,qpi@Yg\9g$B^*!.EU(8MRpp.i,I1`'jk3Sr,#W.Q^L-]AJi(6*Kd1p?8-3GLSs#4;jB
WB=9[l":+T4j?oPXI312_mPFLcV1=T*O/kmo[)(mAB?mc0_e+;q2rjMbVW8+XI=!:1N_n5Aq
3A4FBuB@TR<`u+'J++r]AGIQ#-!/q0RcoeQOU[O42b&C4pb-S"5!=X6Vig*`cPgiHWce@??G-
SX==ST-Xh*tp6bJ4iau)^&V7e_q7&%$\]Aa'-rEpncN,88>H=Om(g);ZO.o]Ad;9[#m1m6l.Jl
a6IgtLL$kLF)\*eq?k&[>o8nQ+g6jb=KL,.CMCV*j;1#TiSm-cZe<9Hi-3b?i$dFE1T(.ii7
fUh-r,!#lIS:Vi1C)_@87#Ze6/ZCDn9">R&78k_k\pJ@]Ar0bqd5-+C;l=s<G/^VH168N<M8)
4l.@4P[`Nq-.`":f%VL3U!_SOCNe#:93VTa#7S>F5$KhVU+5mEg\4o@WPN$NhMXrmW7\IM+K
..C_bT7!AJ[6`75Wuh]A6`8h07)G+.]A(QGN_orJG5U@[<f_;W$fW;Gar%*"uBK:H65/,L.@tO
FZn!:3g$YJ$+l*_ZEU!G_33g+]A&]A^cF&THdcKpO`Yon3%FrqBe6dH-3p3o=P@u$$m8a3ZsXA
kITM8mYrA@.8uBn_K%`^$+f4QOSaX.R7pC!Da!$%OR"<OP[o&#=I]AgtX5%LVB<nD.*<&t5:Z
!?NpquUc8_Oqp>IXt/k7WKEmk`'<_j1OoU!N?\IHOcFN%G9C.TdG,Ns%6P)<GRR@)5iFL9@Q
-H<u6,W4KX)kh==*NonXm8#a'bT^.uKn"Ja%5LUt-3tgdnen\o9h89>dn4?nLHEq.qC]AqD1b
^'/;1rro*RnQf\6*R1R&oC7p9]A7d"/rur=jZg\1OHpdM#^dB`Da\mQAQ)F`0ks(tV63\(HC9
,M6ij1@Th/U"OfI4B%Q$f'RgVoH*Z\cppi\NT%u'h'gi^Q&d^QI=?X<ZXB`X<%Z.;sG6QOC9
"klU1)I@QHAO>LcD'"XY61l@qgkkS2#6#&4p;XqLG0-jZC/8Y^g[^l>9Xj?Vfaj4\*TY]A=%B
A/Fi[g8^A&KcIe1r,L!&(R2-4m9[APW/:0U)2>Q)+S$j/STA%oK6&7,OJP&eg<1W2?>eG5Pr
fAN9J;2eo('M@D2;pS!Ja-pf?(Hk*J4(g1<@I&?F\B4h_ZLha_0VN<"r:fJG\DudFREpLeW]A
7]ApXBc20hKP(?+V4<)=FFVqC=8ORZ0^Ro>\tf/_]AO,$)ea6[i,Xf+I"Dp_/jU!W@p>_tPZC$
i&8KYW.$iJ[BLAXgOOeX(55)a(Bo4]A$D4!rL9cDfTmGIEZugt[C84RLr)@K[sn;'m8+T4g&Z
am/n<JS;0"VbsSkDon2a5XY+>Bo0;u)&hV:GR3iMd*_7'-\?L4J]AY]A$>R/X`=1Cos*Ml9ZLl
SKl?/]AaU]APF)>kC=X;F$BBQs)Z0sZ.JG$?MX.XrIWl'&D,'Skr]AAbLUZGA_5i^%e`b2CqHBV
N5\`E>DF7;Pr^,V5D,lUDjta=!JMSj#67FgmZMg`F&l>Pe3320[FlmLV&QDAd\Ig+_@:Gc0k
B44E/?V<q:b2Z/g%0M/oQtN.De?jZC2%nYH&6eN^PmICL)Yd713gm,/VGCPoOi*\RID'FX'h
eL3m0pI68M@"&L;Z&Dh-%kAfUdoMTA$u/Y1JO1;S"[a7de_($qV)D7*+Lj<=/@od2C!NJ>!C
:]AF\;GCdKl#LKI8`GQr00_>ntN:uoN\nf+Kaf\<OVN'm+*^ieN&QCjC"%T[@nP6ufD_t<HYj
U0n77:l,)_q_/H'&<bnDEa_jQ1dMnO)]AqgWmU]As0s"=)HhL3MGjUnZ]ASd@aYlWoh0i>>=?K/
FU1Q;#,dApk2d$G9!a)b(Y=[73a?L2ZU)Z*`:b^ATEi`@+@XH\5P)@hCa7mpT0h/(eTHdjTa
aJKD:E0V9[f<32kOS@E`]AFLB.2k\V"9V0bB$.X55CkT>0,Md=_]ARfeC;LbZK!XcBF6n\`.+_
Cb6>V@4+*T%K%g6=RJYnn]Aeij(oN<)bKPg5F47YE5LRgqCD`kO$!"KPuO3"]AO?5BiB1U]A<7i
1?.;i2#Sr66b%I)/C#IloEf>7D02*p9%N<G:@@WG0?a3_H$S_HrWM=j?-H`;p1*hWXtB4j`c
C(IA'7<S/f$Vb_oVU)!E]AEBjA46RFIkQRKGVK3lLUUQ`&llOd#=XY19f`*BG:@!I"dF>:LC2
90`KW+h5#?3Z)i4/Vj)b[^aBM`*X@1S0+bZMbXHjMQQX/kcs`Du#g%3sV$WfKN)n;6'6g8\[
&"DBC>ZqNl;5#+q2CZ9>A`)6P"DZGfJb`Z.(]Au@G<O2cIJ;'KpQora7p7_60.0q=K*T5cUMR
S\[8h7o-KrN;AIKMg+:X?5(>,$1/*bpkjWk1=+YGo05&>-.?K*16[sMW!ONX"2\GdJ\09lSY
3O1nt(UmnFiR;$\HdfQp:g3-pE8)i#buJ<QACZ+M/gL?BWF.RSnlOZ,7HTGEclBAFhr3d%IV
]AN&5Fek;_\I'n!.*&$eB2/nZf"Z(M$Z2.Yt;/m_1T^^;<eJ(Ynt!D/n\hiI]A/7;VtQKJJ%=[
qZgY@I/FQ[":[Jc:TNQ"t(kIA`*&PHlP7PF8\+iD+[!M1q`,RL9pn`4D6l_@(c`gehLKni=Q
Upq6NLLN9!@l$-5']AD$gbJef3J%$dF&ri;2K<?nU*OS)6VRng:oA^"h<o]A!gTh6M)Wq;*dm2
9sG'+tfFir[23o3$t+gk\Y(8=TAiY38pC6iWbq&9)eRZPpfHTmrfKe<uUlXh<@]AW80soE4or
Y<;4Bs-sbiN:`LHC7]A5AZLLjh[fIi>ib?N:c9@)DV^W1,^ll$5Vi!9LT0d;I^*5H+r3'k`Uh
p\Xrs/A['Hu&L\Q<mF2hK(Iadr%^gC$Ctp%afu356ads"4=<BI)1r"24(&:OX/bPMYF[WMQ'
9.=(\,$:,o:l^(K$LLZ'\?UK>@&o<<D2hKA(3n#snRhMI8#B8.ac3(Ea!bPN3jerjM5)c!Mq
07Nnf?<sam/-EB#,5df`I%;,>QYU@L#7%KV*2!ajBDpl3qG@._)Wq]A[IuX4U!Ob>Jl&HE\bO
#onh10-P?#i*=j4TbY[/;dp8LbrVC?)ZfYd^nf<G2lboAD&Y4h5+;-ep#1#JT[`fB5(#07<-
TZi,SqV_81=JEN6FcK?a[uhAoRdkAWU-3g-0ELH'`!S//b'spCM).tVckOnA.7=m,J'ae7U:
Q^T,95>H4;.CX7_nY%nt@XR"oZ'YB>8g,;p<XlYL-['4YB(KGR$#)Qd,'>P$I&t7/UR1%"L(
4)1:C="dSK#7rKb154,0@brIgPP%_?-aE)FFR"=(fK-6]AU,m)fF@')s+FR+Edg[`AF"VXT,E
TbP`U^"oNki+9ka7'fdC,a]Ar%ANp3apl&fkB7+`_qA'_)A6SR"HjN;A!7<$iALmq'f-c`5Vf
hSNm2R!.cBFRkmYf18QXA5cbc:9D*O5/\,NO9^W!tSl,6e=]A+tC\,H)V;7K^lr90*$T^f%+L
^O#['TufKML&`c`#\:Z_V_'?\B^['?^5i7J2,;>']A4d59fn/@70HC/Cc>&=75VLi4#.C;c-M
SMC0S<CcGIfn3&%;'Mn-QCBA0;:CU8[e/-W4fK"$:_k3B`?jcN6Q-Rl_27H819u+%)uWeUZm
e6b3^TJkP8.Uctks.!bUZPM"S"!?@nalg'm^mfaB>h?)M@PKUYUC4XS.BE./m"^M%n'd<^?O
!n7$O\b%CLO@=\XAb?<E_l"=Y<7)Goh=Ir6;447]AW5D[l:=E!gF*m-gOd=)NAOiXfW@17[;%
Xl#N<&G'0=">_>EI#PA-A`lYFl10ssgZPES=\c/aIO4:u;4`]ACm\95e)-S15H<+n\GdbQqK<
(qU&;&K7t!8fi]A8[5(cY?cc6Gk.Q[6_^\ke-ht_.k@rE@Y&86KQZ#"H@o\c^UH#mtO;</\>Y
[)i#&\]AA*Aa]ABZ,;3o>\M*;-tIPgD!@I/8l<qe.+tjO*%IkbbDDX`^cFjM["hQCL95#,IL^#
iKDYiI*MXB*E?(TEN>PT:%]Al\.bn@/Q_OJEY"Tc%BhJ=M<NEZg-ZU)U%AHG@jYrUbE84nZ\3
!(EF?o.KNX2)FocGW&FHu050:rp>T+qo9N2H(Y6,VOqr97@!L?(e=!OWcO?)9WMZV1slb%mW
I*\HUBDe)V5K<dB8$F9TfY#?)I:!`7WeCr"*Pn!G,\blfqrFf;^^Ost`)fE6OV+igu"BEOM5
R>,krgKI]A)g#RBB!cN[`/RBP'hJpgp[ni7dQR2^@N0(N.;A_;0F+6FIC_#\3MQ'IuWc/VJIj
,LF+Jcq46S_R#UGS<EJ/ac"<fX@JJ"E$XM?iME3uds4:I"If3G3OOLc^dZAe5?Vs2-0`:cE,
S"#`a>D.g)Zb=kIlahtLH\"*LW#C]A8=nP;!#C>\jup]Abp^i#DmsQEd=S1sU4V;"UkX4Gb7H7
pN;0XAm\1Sc#MhTBQ28SW]AIKQ:HC4kH)HC-m:,p?mB*_6GL'&31:.M!61pS@q?ESa*L#f:Z9
'1f!FIQ:nHgL>A[D!U;P?ZEc>VS)>]A!<\Q`rt*X#EFV#@d!YcZ`!SF2\fBPJrDq!Q'Y`\_-;
"2eY%0T?UB;H8"#8+#&*:(ceLR7aN#`&^E:RZf2+56sGUe1n7Q7b#mapnAe;(V/h7MQ(<a3H
i5rr"[jZX.L1:lMUiR$d8r6;*+m/E]ARoKdC*m!I9?u.!<P?ZMojfM63K1tr(aC5Rns3QfiYn
NGT3Zi]A^-8D=NNs6^mukR$e8\b10%8cq1*d]AY'+H*gWPFHFJG;6pt'0uIam91YWN'-rZK>N:
`m(mRE2g$+;$2'NN7dN8FihK@sI&VW_]A4oFQqS\0LiXQA>8j$0BKGH&?&??PIQ0*7,&=5Cf2
BhjAgU^s1,lT,piA)p^293;nU#PB"SRd2Sr6\Xr>a+5W?RMj=C@UQ3gKV6c"`$1olbf6!tr,
pEWfRQ0?[#ess'S(+i]AV+??BlPV7_V0;,apfia*X@pRBGiMRSqs#4tBc/(N$M`Km-eCLH:li
8I]A6[?G@c*:'[N_]A>K9gCfoi-]A$QInrg!oUadB#%+b9W#IA*';,[cd;7jKE7O!dR-TQG`N`C
Bo*db11IeCOW`Ze_pG0B>$%,/q9%60,7O((*+*/*`XM!#VS*2Kr__8e/oR^W3:;7H1KKq^ZJ
DrMIOo%If-PG/"cuG#$*R[CpDt90`elfMuZ]A<FcmFC+?*?aJ1eBFJD675+5<-s=C50Jsj/c>
"b[H,p9_<]A4\)+t6c*cTI^TW&Nh!dfA3bbsku]A`5rYf_2h$AhT=/_Uok]AC,;%)10]A(\+]AR(`
mNhX6'71MSBVMoP$rsktJ0Z=6k=<<S]A3U+)^EqTMGF8e[)CH*+$At:5_sm8:6@tsnkLjI-Q+
2F-IfeKV]AEcA[*SUlQU5#^@nrZLmZ))K9?1JPG,(H$79,HC,(5NWfikO@GH^Nje2;F?GER%,
#2^1B*E=#I7H(HGjUu/I69]A)*::9dW&1(bj&q_]A7"/d@H06=38o;KW5^.,49u3LDH6p(cftj
DuS,G)pW?U;7Hm^+AI<<k\%FHm#-EIC>aul`q%g7--&`$`+,ifE*,mB1b9!M\%3G*s'XjoUC
6?9a?IcYZs?;)K;C2@(s$r["?Y:"CXGSA#$nVOR5'<1OsNHVe61.T,2E@efrX;5'V;)/=lKY
O"]APm>j4qGqt%*\A%3^C@_G8p1"%i92T2o9:BB/2.R':U`OHHobpLG5F9o4"q\HHX6g.:BI$
Rd(2o1_ZEK^o)-4Eup./1n@LA.(CfHLh.Q.NjIP"6P_RH2rf?V+`AOX?+kjQmE2?"ct:5*%V
V6s,9-'\AE32eC1,+Zm]AA?hot_`<=<C0T(oI0o`Gp\)r3Mk3$Zl1gSiKlD(fcrHjK'rqG`k7
mCmio)HZ1_,\PF$"+XVl:;CHDn7KkqoXJu@tKNW#Oe&E5/d?*X0fY-[gh_7kX!G:-oo(]Ad).
Nb4LdCsE9#qkrnHe))Na4'+31sg-/<0n6(f4Ni]Anc/.4ZM*T_hW6`g6\?\1m=5!4a-B2Q$JV
,BeY'Y7`KQG,'7<h809t,96P,2bF"hrgFH5Ht;"#PNnY<rp]A@i)$uM$VY8njaltAG)`W+c1`
kjN0ZpWT2C3]A=1b_9]ASe93P\%PadS#I`MeB;=XPUOmFc1C$d;[@I85H&1O8B&k97:rRVTmTE
]Am\Hd!/Md@C2s1,ef,.kV#b$`D9?O.4X@KnBBZg)6"Y.SYHH0$!MI3$<!ID6sP6))*KEkg>n
sNfQ<mM"hiLBo,,%S"ns($>1.>WN;X.)^:StoZ!2T5oDYA&=LTUkPOeIKU;T,C60[HnL$J*G
K8hC*Krh6V%1^oX-jcPe+81CtV?P;8pqgte8),u<h$"#smU2;mN(ZudE\<8ICjDe6\-2UmA)
;#oQBjRM_f`qOns>.2rjJ25G=''08W#u$mM'8S3,1;aUgP&+5%.aXm0#e!Q1"kTd:pu3R_q0
&RA%7m9'T:E('%V<U^>Bf?IR!GcKJbX"MkZI_ph%O;;;,j?L-<htQ2cG-F*u(Ul0?%f;)GMu
q80Xu,af[u->[;\6O!_]A4Z=>Hmqi6l)>X`EU-a?7E1<-ul*T:\,e3;pU0P;*^@IWF#"Aq2K=
2p1$qiCu9JS-Z0!O7BEgS_>ukP+6S=Nfml`^n%'Bdu[E(esXWU*0T5T7uo?==2ZRRJ$[l55*
8S.I/&9h/R3dl/b51D#^CQp3.pKf$C0&'KbDiD]A$HN5AAn?`nH3?AQ@OF+PnFd+;?-S@pb)D
AUuN$0*BSOE%i$iT;S$QJe=*^/rDpmV\:f5%=A!bi;FMpUZ@lkPDar=rJ<'&dOr$JS\N$pHp
G+Xk@T;MaLT2Z7@/<Vaoq;!m)=FjgEX-.U<%nl>#EQt4l-qW(po;VMtNk18d/P4]A,tCF3(\K
08U0,f<8#R8cV'6ph28p@!\<g,o<%2FH2Uk!.[<@B\eO=p.-sapIa[<CDuf:"V#*-p?!(l9'
H:4GnI8mY?)[m^`kSkQD-23Urb@btdjOsdrB:8!9nnihj*]A^!>,@a-J<.8?O,qI]AcT(Lh"F<
";_ib7*i*OFoE?N<JS<Gq%E&QQp3?#\p]AlEfj^Tf#1fEGI5297,Agm\_&`KANCFa*ta%.76[
i6='/l3,R>VhqgXIhb1b=@_(/_\+4+Zs"m(_a@b"L9"b)3&\P)#kNX!^)_`Y+cI('fbS&r(m
iuThP.$e*;3K0@0cUiSiDeBL=M]A]A*R%ND]AQf"CnU>YkJe*\@7.O^6q<>266odQi$(91J]AG%[
G=O&$sM&+(5,%oWa,NU6;F[<8Z6kHahc8.Bd^UQ1*l=MU<9W3kf/er/=>u&a19n!%71[cqBQ
b[@_o:afZYUs).c3LElF[c^Lbo!"#RL8:;!mis?F(*sI'MF"KmH1=pVYG\Jbl=5r#7lctlc<
2nSJ:ltMdpZ)q_:o7LmGrLJ]AXr$VpKYJAam$u,u0=nSD^]A!Mem#RCnC9YENVXd#d5;^(_%fI
+"'G$QS_u_$iY:%Ua/>1/&mg?GSs<u5"kI4)(=YO@1gl7\_tg.c/U%\^-@$j5'35j6eJ5b++
f&K)55=0W\YG&;_,u`WR00N3<'dh^7/YB72&C3jF.E-TU&,('V8nbG8)Y3GGf&(:SnFM`3pr
3"B55rDSCs@Zb2\lDRY+,KZ??c]Amp#\.*B%8\<A[S!:gRN!rVD`"G:AN!72<t<782l9$oapI
MFae!?VZ_C=nY8+bIf2TRc\l[\>`Pr7.`*D:PQ='Aq"NT)BD0\NU.uYa'YoN)3bEB*=tEX=+
AS5niAUa_7s`'^D$J[amL0St9ELq,MADGrGdSggq:aWa"sEP/XFH0A@^i]A_4mm?D8;Gd;1?8
I.[28/d#[r7F`6I^@#E12gs,1=?h3m5nARN,DjYfa@K>6*[2HZPS4^J]A0u<4n#h04SG4IjdW
8+=[D64DCl;A;]Aed`W)#<^Neb["<U!pAEc4qogg(?"5\,hI.d`q.T2JRe>W*:8e1*sd[g%;;
4L?AIj,BQGV0(JX+KOn;qkR/s.\sNYas.1#<6V.%F.VE/08;68/[6tmd*p4=D:&5#OJ7L2+&
j;Ghg3W4`F?F8Li%GAED2T=joLXg;Bl<DPRVFM8ilt;h8.[VR["#!C.\2JZ)s>/SO1ipu1b*
Z.1h<'K6Prgis(3l!UE,r%$?d%B_k)U/*D6nY&=/VnqUrK:eeebWnu&42'_seO!Wn>((o.sZ
WH1b`/t(d-^8mMUC8^8O%KB-D".lA&`?,Q1o+I=IJ<j(1eOTbC=30nf)<31dpt)0QPc=eI("
>404<R5ZbP0#9ga+o<_U>uJ1]A2uD?3Kk[DHkUJPgL;;\u9/Nl-&*C6@De>gn!+3H%O%$R>L!
lo]A@eN#h:!9/lN9u\+a=Gco6,C\-p-%,eZZ=SdLA23Ji\V&^/tnrie'q$2@Eu+'N62=/5X?7
g1XeW"!Xs3TuHTc$@[[%9tHpi.Yf=$dgh5i&t%tH!G_;#b`eXK1-%Z*T@,LZ1J+1$5`@cQ;!
TGq\%nJkD<K)7(FXOdbHt*H+nnnmF$aACZE0qI]Ahug&3gpE5W[eup#9c:NR#mla]A5.cTFAn/
i'9A)[<PJ4+bArP\-d%N5keE[Xcu.Fpk'tZ!+1c\XfnM_.?C6E/2mb);2SC3MA%timR#&nb3
3Y7SH$LB+rMA/0%oC4#$KjcRt0uicuO8YV@B-aX7:$IRPJhW[kgI\`('Bnh2RNINN-1s[Sg5
$\bIMHC;Z+RgO_k,n!H5U[ba4Y)D8Lqcoo(!kT%b_rf*%=&a>nZh?5SMBm<S6Wi>X<5Q<G_>
NtXE!\Io>rd\4:]Aj%;UAr5@U"N$=!D9bCho4o+6-`EYA#iC5196qq(6r'f:Vr5#366kTgXb?
^9@Y\BI$CH9q?K@!)S-<K2%[S%m?/lCU#0@s4j5WerbH%'H@.k5nK!t9G>a-R%'Da>,B)\Bg
)?3[D8;ckbHmAXLN&G_sgPl7nM([3)U;7e4Je%>h;u%pm&Dq+jr^H6BK\9-o]ApA_W0i_Q0'c
c=Iq@;&GTW/CDNP,nOLL<DqCAfu".U1k+/Y[e:@t5p`;nggg4q0V`FBiE\e@Df_\5Y**0)89
10O$85)cVtPLnlST<51aM$**dh$oS3Th?b&+hUDAu`24a8Yg4E)((Q2L#4HGL9.l!`fCBr+b
ZS<hE"FRn1of!^&h39-[!HQAA^ML("pWp4h'\;*i<bHrfE:%=1rHGqJml>;Mt\"`T+B9e[BU
t'Io`Z;[K7Jg7qL30bhTl69,X3Q!prJcr_a,N.#8f:E@JS:`p,)<9&s!6r5TE*N,^lp'927D
&Z:ZZBB6>*(<Equ>;$4nYl2Qtj;42GG(n]AI?ajki\^^TYmu9Gl4g4gVCfQrX2<tsW8?*3t3C
krAftTf/AK83"CU.p7#<P6Bl29k_NP9a"p6kO)!t7I2=;?iH(N]AUr9ELoXS@*S9:lREJLI]A#
%T"nB%fS*BTp<Kac#CDq4R'a`l0UOHLLBc.^;tt_odX^ht+;p>^"+/a<fYfE5-s[,M4nP&4b
K/r1RGn<lELs=qkIYEmN+]AE5f+7<8ZC^df@s;#5F`K7ta^.Rc%khIB8YrrE#WH]A5:bfuK.G0
)`pMoGRQ<1)R9p7f[oh'[:EL9t_")M2$0h3e:7"1#8AF-7$5WKKGm";KLfJLb??Z@?s8coF1
ARFbo@2ji;Rm8tcfi/TE<1^sZ;/c&u)[?OGQDj9&>f'c=48)+&CMmZhk^2uLg@q&IO(#f!(&
PJG[/50VD^%Ak<7f_E.u/51.*4AFKp+s;cAp@n%8'noE)DM-YRG]A0d5C2fR-S'4pas3`</dQ
=IU%4E74nZm=b5[ZRh;lirYijRUSoMj/RT$'\Jmf\:J]A]AQ#u)`>a=]A$[+%gR);`1bN^_.$7W
J,4-KnK/,"ksIk/lBTS?nQ?O,NS]A?ZDq9P$mlL.AL3.rgV4icpZ)%US[TXdokoB4(`kT!6lL
%<lfb8pf6\+j30WrsZKXN0HfI2t*?W,bC%%J<)Q*A)/dJDnap`mC:LG[1-U>l6q`bsZ&`R.)
7f\Fo0CGLT.@9I(m%@%&EjumhmoarH0kZe%gNd0N:mEB<6g%hb;^%dn:;@*Ra@cqAl?Poi?g
]A"IcrK*(4h^:\`#G/j,hGP7q59;F:+OUeOq3^U%'>Cj1"u(@.%DL-5GYL\CK\^/O-g;?MhOk
4\-mH7[*IOl%:XA+K%6KOnWhTE.0%Bh<1;r@T>(aBK%o^H)C.SoRNGGB/;<eCb*%<;gj/M&B
ORM6>I6Tc#U;#35[ZcEKh*.rr6o,$l>!+LW\7iu0Yo!,L:NuFq3@Z5"b5B8'^0%KC/=&Cs.c
I+q$)6+RQn6Fq^id+A%AS_0`?;5(gM@W("[R>l.35dK-Lg-gFeO7Xg3^+n88A%!mMK^"32k7
BaL(6o-1C^JrG"!EA_EWf6.u$=X=%CX6l#WP#(*p8N3fu3l+eob%LK,&YJ#un]AU5pPd]A:YZY
*6lkWPrHWMf0IC[JVr/l)B5?$EkcU`B$jAX"eY/R^lV"auhmZi'51@;`=H(L?&,=>CBdGRO?
8b0fPT[X@\ed6nAsb]AXJsiL;r[iOi+]ASpN[0`(ct+[aslQL[@To#E^tu_$0cuMh-:4Kba+%*
AgNC,)GpOjg1*uaXOhj?t(J@9"]ApC:XEUu6/Nn3VB1Ath.#*"(e%1UM)@\,Io/o<>^0Z:G2q
WhU$m)ISsumkqSX^TC\Q_6n]A&9[UPFFhR(@Ak57l[pSM@#F?\o1kioNEp.8.UMi7%QlX[_52
(dILP;"fVlqqo]ABT7L_r-a8JKH*YD5aMEQE.nu>>5b0G?',@bZao5u;,jLDT.0Q1TW1lcO\j
ZH.7F!.k'Eg"<"oK'QDQPh`GSPQYJ@$HP,<!Hn9*[cC2TCh>-`8Gqp@Tn$rmnJ_)<JI#,iA%
mgHqL7W#hPtU&3/"4gp4RT_+3DR;G[?*s<,7aFUb0kVs)4'9a9-CuH`i?o)Dc*UH:[RkOYJ7
%`Xl<$*!.[#aOoF04.4_eC.Kk)9E8PuHc1mSZIO6IJF=2;mZ-S8@:p(,3GsjiB%Uoo5VtpY?
8ijf-td[64+D:]AW4KAK2m2=j3Qq:1[Rd7M8qOMef>roHf2b>@2Csm)I;BUZ07E:=*Aoi^j;D
Zd5^"9AB0<P/$8V/GTitAdfa@TL;duZ86[_MfsK-gcd`'ZjH\T.AVC5?NGXt<BR&\>2WQT$e
(6`5ZsjMO3pt33aH*'4?&KRVT*VQZSslH%lor2`j`VumRL"5nI]Ai<7UJjeK'<I2=*@SM]A!l/
SAkpCu8V4b3hHO2&7pa3dp2BtsZful/bKHAZg6Q@@bJ:saE\;Cd.h8S\,EPI'gr!S]An7@fqn
TBYK!,SAeU*:&>P-fldl$f)F"E`k!\FQOA2sQ3QN)Hs2"QYQ/]A>5S4&Sq$,aDusqOa>X,D/d
G=C:nr0*CRp2fIogUgu&;"9umD_Dnu`pBkuHa`4r<t]Asn,L5"hifYk;Jkn:>`;T&B.(RF?@k
q^WaKi`sTC,i&Z0V2!73"sMP:X2c:_q%QW$/=Z`)!EVa_R:IEnAKIb$3Uo&R7/\LV7B08YHc
`W8L4q-,dcnW&kVrI'g@,1^R.C^cER5QqRtZpQ^SH0cU.UoUDa>8KJDtG6.3tV$U/Z(Q]A%MG
Y8tJZOXM'2m?$:=Nl&:*61Eu,_>?7BE'\)dRn(*8GgEk,Mp"*8ii<\05.lP48jc,e!=`kB4Y
dJ^$?AZ1s#t7`!TF^je8CFUGDmHSeZsf/A+sPQN:</hDG;e@3L4gk(kcn[O.=ll*DIY($3G8
?$Q&%5Np=QWi0&Zs/3E7*3#L/PYV12rU3=s_D$Enbg,+MNh2d,B9S5@g,efS7]A]AK*]AM^5Hi"
oC0:,d9h/^dq?lIRLo=<OdeXDYMO#g;PesUg2b*dF[/N;Bu6-;-Y28:Cs)Hmh+)bTf[,NV-W
-YHE/_YIk7f*YS2DS:8Q2Xo&S@/HCcD/.Bcon8KkE]AI;:Y(?^C%2M5!9RPkQt-p:;o"T4Hn*
WfU:TQ*]AgP>0sg>QB8@PM%cI3pi(*U6?,(\q1Oe1BZf6-rHfsSeqJ3QeH(0ET\',Sb'iP<K9
]AQ-Qe!:qNfnr\Y:TH@p(.e73Mb^4uJMEWI9+l^V3N@NUKb*kH<:mh5TefXR2QX_^9l/Sjo9l
+b"AErd`&'94=]A1W[UK'ql;j,^/-:-l;KE:aEgA^r2-7]AO95]A8^jdj+?IphPUY<pR8Yjh8Y'
`<6"#oGHNXhaEOH\f"B">o!e!)4k8e6?1*tea$]A$/AE<+_I2LF,Co8Y8.*^uQUJG_`u\riP`
c\OrhU?t3A;Nb5j>//.1;AkW5$%"_aQbm]A$?_"U(B,TfUSO:.!#7#-:6M&rDhPO-q0KHhaNu
3JlM2>PK,0#X.&R!bt^2pU6M"Om5X=r]A%/Y^j&LKY&_lual,0k(T0/nc.B>[lb)MN9L\^Q>.
t[3@#g\B7_6WljM$Eq\Yh!L<G/)R@mPI8OfQ<M^me]A.Z#HSUs)?G`Q8IB?f3C.Po#W/1c%)U
1fc1:q)c)HV&r-ji(R1HHPjNi;XYZerl8r?AUE]A`]AO<^#IEC_m0lTMK9W=ImJ95Vg0=j%Lld
[0f^Qei$7"p`R8_UoSrQL%]Asldmo%/iTYQllA';kV.)'q%!^HQMa#r\\#ORZr'bS8+d%Z<V$
IS=f.`)Pm&t20Jk7i0$4FldeaC:]AMEoIE)h</$Iif3mVC$t`&uGeA*uN9Am"-M+brn_D?C5E
mW1<n+PlH//]AT13k74e!LardRr"@qjEnET.`D]Ac^g]A0b9JaP?+\M=Ii0s2I1>Zui2;bgsOTO
GsCVQ-F55S%Su,EfLMin/%1eOkuYSQK)4lAWu3=+'oT/@:&LDZ^_lsZ[n%T;^nHL[_K7K6Z_
@MIjXt`2G-VO,Vo2s*Z9\01BL8fLdD!:%(tU6f8S_1r;FD^/)Q.Dj#WQVrr"O1ccH_G:fdDB
SVRK$Ye&gaF'$qm+"R(gIsLn*c+`)436r5>&!`c`D`Y16+dXSYkNOn&YkuVjRm6>b13T4H+/
>as?jPE0"..u7,gB\0%TZu[2BucQ9D#=c)E:".it9;<C\a2;C>qOoXK`O4_c'q%7F[&3_?9.
WAq8s?;,pg=,Etb*[ArdD3CKoj'Lj9/HG0!TMVA&b:YuWc217.qb+kQl.Z`2'd_?2Xatn([5
"NQXE.ktKY,9A%0K'7GV0f'QLUE!2[uTAr^&Occ"FWfS$&C#l7DEq!cG4HoZ6t(+=&u(pmO!
_rR%1HLACN_]A2F?iVDp'j\bs4/t(8lV!#C^G21Kr]A[19b$#dCchEp$80r=]AqePpiQD3ViBS'
FcXZDBGf=WQgZeA%307Ri1ad8+NW3cWuag?%_jgl>@lA?%/"kL3<ph#:lV0K4-oVrFqr&$[E
Yi/%Ysc\""3M&DNXKRc0$l$hP`#aPNTeua-dSLZ30#Sr%hOH';"XDMK3)mDg9<,Y?aDiktAg
b\;TLQHl[lW3u^D9/;an.dQ'L(iqJA"R^pi\#LR?Z!c)\Gl8HDm%HJH6_'kC&LC<fKMEZPJm
'eGm*4kU]A01.WiG_^>A+7MD\rqY+b6:muoL;^MFk<e9=:nG_CW*2`(^c+2R76SkpKJ.hWn'b
!_L^>7c1n$^S#<'/9)%h,;?ulkp$-b7(8O9[>994[[]A1%-@lhXPXA>r0cs-U3*p;l]Ai6O%(&
L^EaGZ03t!.fapQ&7`jLi+LAhDcnU7GGHl8(0?L(NEROrR3J8X5,qr6=Pe3U!*a:$8[E@MJ3
1R/PVV@"O^)%L4cmZ\Pj.BsT4fD/4kd)A2a%bfK+a-ue)EXDId[/,:_!CYM)nl>RT[4r8h3b
B/MRZ>Cq4*#X/ta;c^hBt0#Z?8]A,OW%]A07g.pZYRc<EHd45om%=/++X(+QlW\T5lJ>O^);lJ
;i_1iYJl*KPJf9>ANCmk3CM8A\(g4*T/)XIi2U:PD;$EIr[$I&jI`E$LZ(7fB^,YQjoeK4.s
_a30rpY%?dEB]A"&6t+L;-No'ks^h6B9a,M!krd9@V?IdU[WBRFIFYD^FCs*RPHcjk*$*MJ(^
g0h%OIA;KAa;[X:888AGd)1X$BtnXpVntIB)K$Z`ITAgSq4N>nGa+&s!%NCq1>l%_#t2+FWf
OrT2Qg]A_k9(<B%TCgK.$?P_B$9s-JY:HZ4%[tZYBS)G=`%_Iich.#]AaeuK%JU;HBq'V%Xae`
pnN02^-kP&t]A6Uno%-1i!1R`lSJV-cT(Ka,DlA/GujQhoNf1#C0R6u#"7q%uiK;qhbMHMMLA
%BWfml.!Hj8bo]Ar:?$e7Q?&Oi5Q`^J\mgBoJcFZ9`\n#2lI^rs5<LSlhXR/r-EaD8OA`GcMc
SQ,]AWR]AfCbb.5Bf)(^9DHWYOs-jXmq;lPbVK::3i[>rU[E<?W$j%+TlrM#2h0HD^K1X)$JfT
q`gLF]A*JT,P:"m_QBR-4+(lG5qgRNLoMahD:*s*2b!/l)DL?6t@Ys&?IIT=BTgP4UXCRbg6^
&^5b8//AY\S;(UNMf85VVl-p`JCUCMgd;2q6(qe$As5d*<TA3:q'qq!7c,@fjsY.\*5Mp*Tc
8I,^]Aj"AX6MJ0HBYq+#]AAF$6TDSF78g]AJ?oLR0_rtV=M,l^d@'RpUi%T;dO.l,%4+FiBIXCU
K2idXio+%Wb..WFl_cd4Nq0'jFXGab_<YU.X6)ERt]AH3f(E6r)-e.q4LjkTOe+MkT23GRgAa
X2c\VXS?@'qH5E-=BbdL4/"`pYarK<VFS=`aHF3MJi2Huqdg6*%e3<R,8<QbH3)C:nk6POeQ
(JE=Zf7t8-*Iq1lf/^.2Y@N6,dC9%WolmB:9o1hWM3<j,(4<pIauJLd6uh>k]AjgRoY<1!C[4
BJIhc;YE)8<8gcK^4F>9l8H9fT''B:mqV]AAVoORIu8;n%r3`)EPp&^LjW&oIFI:4iEhlZ$&l
>59ejC*Rad?qCEocpM8[:D`;QBKBlP,FrRc(?5(`'9Ut>mh^.OqUi6g*:Z#c3^:!Y1O05ggY
HkN&EG8QOJsm`ClMUZL)HQg]A]A%\Bmqc4I+XMG.`k&i79R?6e;iLWkko_.5QWgA'+S`-E%[sB
Dh/KTAEGf"9g.C#93mm0e)H]A=Lk:0aOEhaEbZH$>6uM:B-"A:&Hh@L#!`MI%FmTn,2BAq>9F
^]A^SYJol."]A]Akl*XL)_nmuO7`Fi&.;O)JQg$nVf-4telY(Oti1j,#lOkAR*0]A%gml0l\*Kpq
eP5Qb8\Yc3GjNYF!F4aO?(UN_pEE71Jur"ZYOo[*;EW4,;QF#cV'?7j\,["2Ge![$@fb3;L.
3\fmJPW;24O=TZ(2\rqi<P(LN8dcB';\qQ!p^g=2rcVjaI(-Gt'Q,_pi,T#F'/=QL5ZVM72n
-HVBViXFEegP+A=7%l,a!lK*^rk"R/oF2'@m6ZU.(gWF`,Y<e2%aO-%SGX(Q?^@D@?e_^d1^
/g!Bmk\'Yki>qR:\IpU%4*`$UtYm%W#Z^Gefs\l,192BD[:S&..l%'T1PcX?>*SrME?GMrNs
J>+[!Ia!>U1+kn:L">-P'_CC(Zb=dYn"!:>TBm73mR-EkFaFFjiXgtUJM6]A'SbXK,hgq<"le
rbWEp<&so.),Ji]Al&npZh/"d%N(39$p&MMRmh_cXuHC@?NSO4Vf.JUNP"=#GIIMUO2r;=TdS
IFuZBV'.gD;\f8C=psRU`X?eVW5J[dh^f5ol*kK8$d*ang#,nj\(;^O-Ka*2h@0"T3!?X.7[
^$`D\_T.@.4k#&fC,O0,H%##q<!_+fXSJhc=]Ag]AlQLK.]A4@YQ$X<ak/A]AX_ZdNW82`##2W&]A
9i#27Djn=\P)8\RZ>DD"^CcUmnLKW4qm(PL[=.-P"6r@lqDCXMu0L3@;YYs7XEE4+?jBC@L)
gN*%!T"t1p5k=/SD/m$E5:uL(`SXPA^=W,:S(`*SgG$,c0;DgS3"BK5`&Z6c+`h1[Lr7$R8,
a$X>Lq8$3tui;qb\B4,p_VA'<&@3;=$7m1JW5["B]AXDRZ@A+E)F,I4j?R(J5%\A-T8;qr*Zj
25gjaq,g=`soFt;B'I0O!brEB3q7G[=^L'aDNsbnBlJ7s"OnEA?f-<"Q"$R#8PO^05=%0Uur
67KuPZO]AA,N_TolUn=r5\h78jDLVbi=]ApfDo5DFQDY9VU<qYDX>\6BM]AW$9.;qPVWb,b;EVN
=8p$69n5co;rA0&N5\V`bh/mBX/Y4PEV5?.GH]A_Rujoq%/?nOXU`'?d.lDu0s%^56c;AV$oU
2(977\Zc;jLa9+2mit>\Z:q!Iq%:E-rD:76IW\e2Dqo6F<h'^1ohhlPp9UK!fB\:tE!Af@l2
P4f&E-a=kA;l>#n`p'+:.o*O:Wum2k^JubN[W.[!05&RU4cq,PbQCY'<pXH'*H&mI),-n\J@
"4^LWCdr:'$*N,.(3,/g1U0n;;BEDeH>!*"u3,m/.NEkr,:HFr^BL@jNUn2gDfLe<C5+O5R6
RJj(K+:Lc+SAOF&/(0!UZUelHCc+3"a+-9qO\8J^)[-$ied*'d(Kp+0!"HD]An5'5Q/?Y-Hj\
qAnjk_F?=9UV%:f]AXa").ll/B:CMsZ*d.uJ6h_k%tET*(ZfJ;uD<`%Fp&&n:Gok*IKQ[p^o,
Sd)sh!ebgp,W669?i3`k<YW=uQ_)iVlXJc?J_p^?\!@f;X+)`B(R(nJaK+h3Xeqg4I#YtO5N
":arksV_#PR]A/Q?U?O^65u3FH*\#-M]AP&iR[QJU7Fbmn`to]AWJ*_dK;]AuAfWoQHh1.UL(S:(
@XT).<hYcEh93_6bFoRD8hr5Xp)4%<DMS[<2bH%?cP7E(I3&DOH@/3$kaPf`@ZN,O%\D^cX`
B0Vj[s@`rW_LpI^e[M?AaKCRg=ci;p.<2,,8-;E7`qV>a0/(Ki$"/\^[W\#[(cYLSudG1^;S
T,eQ9&F_sRuqcPZ$DG?4R0'Ao"_<O-Z!:'G#p:Na@!4QK;eCWP$c0F_;b-uiY`^+,R>qmEN-
^A*UqEJeQ41@su^4rXj"Lab5-p%Ih?\)+o'IGu51f\H#?8<NO@I*j3J^!8cQ527nps2<XF5C
J#frG'rNUCAXqlL<fHM_`QcNYuABm,HWT2]AIG&8bgdtM-Vkkq(<:.agWB.5Zu7^;6Tc9SuGk
#S>f<ei%]Acr^`)96>LsU'-*04`-JJZlJm`[:;RL]Ah8W>tgl/pooBFk7-RhX0Cd9f^W+.q&sO
#QQBe>VAtH_)&@rYS)k]A,:"4BJK=.^CE3HRRf#4Bn(3j$SGWYfBWbV1BKJ>]AJo2o(K*5/q(?
\EI+"@[Kk<CcV[$TGR@Hfn*r<QgI!pK)a\MER9e_#>i>#uFF6!k@^5LPgd>jUWh7`QUa><de
0Wf?N]ANQ`:/E)57CW'?uEs<3j/$U.LGBUI/1C52cCZ#Z\U'dpHioG)"f/,r_j<;\8DY!]A,ZS
.-qP#ZCBh*FkZ8]A9+B1$a\<K$-cXA6f&'W9q@_G4"/9=#[M:qX.Wfh04'aQ"#H;@o_&S"7uG
E-9i(K[:eK?64)DB3QOr_cb8s=nl)f(Z:NH5E1A!EVF2n',tV<`h/@aYmlt<Xh+h9mNB,$qR
E,s<D(P`d-5aMtg[hH8<q4qRR@i6Rg$CS7IoF!lei(]AF_4Da+bB=L[,O@;B6<JA^POj9`Rep
0L#8kM=pBAMD're08/M#:^?IE$*Ymp348itL=3:A;1V(%:iVUcO@e5ke\>1uCS>Sfaa;bObL
YEkO>_Cg^@9u(OY$:@c(?5`VNp71<tkD/4\c[!7^cT)N"cuV'C1;0BQE]A3po*)i@d0qj2Db9
31V$O'ft&=g6Whm;L@!q;A7%4GQt)b%jrl8&:fil)(T@)da\/!qp>DaW<jLrl$]A]A&X37L!FI
n1"JoV$QcR8Euf2f?fQPDKp-LfkY%7n?)a40<20hlF?etk>BLUp``b'Q-L"T*-$d'9RfZrf&
UL,qOCCD:Gn[,YEAF[2BP)tOr7ifDr)0Bdm<Hf)iQ7OIHE9$Q*RCAYiuf=9$F7B[_*$o%@-0
s5Im^2Q:n0CPg39>DS<Aa0(776:-FP&'ho9iQ"Cg`M86#fQra?KX*<<FgIF//&CO'a@4(quG
ainLMq,N-BY&>eN:A<;&6U.$gBcF]A>I2#4.TpUt2[kgW"3u>F(/3(1&UC\8XYBMcYll)[ubT
TM[i[,!0(%o@:ncB1f8SF04.@)Hd=mWlHk$B(%-"D^SBZUYqrekrfk)@_$!o!).B@27Zm'ba
EL2)mQ"d1H52P)DFCY*8=^"Pm"J90Od^G@%qfXtT.?Z-OPQWQpjWu<gMlT&YtcX'l_Tb]APlS
9`XDWSe**YR;L@o\4tc79$3s:1Enf,Z+.$!%\:p1Ul<F_%G=-B`4PCXLp#oc@Js!MOK8*.]A@
A[6`4D]A_I=:[e^tf8TR(6q$APHc%)t@a<Rb%Y\&q\$TMVbn\/,&%,W&d4i3aUpniV8,[5r^[
*eO2BlZ.C2,fo:2LIu*NE^P,2CPF,Fcu+2e9fuNN-/Lpd8`K,,`.#&bpH[ce`$sX$f^rfE.E
ZO?0-k51+_:s4,+bis21E&TBq%*Dq9[G$A&;YWm^%%'7>aV=jD*?]A(lB2PR&PNF-rEGT\pI<
44mQSr]A&uOS0u6&S8L_C"l+5.p=*\[TMuG3jiD@+_E,8j^>KM(qhX)Lt.0E\D7lj7,\0o[hE
A_O#/mkt,0qtL0*,[YA=K_rO<-P_+AB%5-piWuPd$!FAQ?%QMEdja#IW'\2Wf6[-aOR\Sj!6
`N4*jKl,4a)CmE%:7.M;,cO/uga.!%i[5#ueh"<DmNTic0U"NGU8cj=8$;B8#H0K(!&;_0WM
('#*9l9s?0TNX$Nlo6<IC$[,3*=nfm`->GlDmle1\8TsLemQu!a3bg/:]A_8'_1,fYh+sa1Aq
.c3rLa<UQtLXTE<O./9(W9!rR7[Pl'4N]A1s>;9hGloqRk,O?6]A47A<\DB"80Wp13-bu^`/s(
^cin:Enh]A[+,ejn694E_(:Ck,q3"sSrRL!Y.#&U&>Cnc.DSaFh+3rF9<e(A:3H"m09"pEDu\
/;YW.;SKH!&WVH.@RU&U]Ap$*CpQ9]AHNo0!WVs"uaS'#AUsFuFCR5cm"nMZSB`ZO$25!T]A5]Al
"GO:nT?DU6A:q&e,39>QPR>:OAW$;:!/UO1=;Nd)Zg>^<ZletAFIJ.DhcJ0GC,T\KS5&(2'X
=>me!2H;PWZt"E2dgr^%+Xc7D@K5o107ue:T2#N-hNZU^a<ie(mpT4F&Dohk+%"EL%*UA]A/*
mC#5hpN"9jhPT^XQu;6E4:[LI\^M[EgYk$G/DQcc55'\+JlfA_J6VKP$]A7(HeX7g[tb2U]AWo
a+uFRD<Ce3YlY&adZGi$QZCc:u.W2(["8^*[l[d`r!I>loIt/)bGRdo6U@a0>2p\ral9Ki:H
&>O"#oh6HcaSA[:V8*DrrN~
]]></IM>
</FineImage>
</Background>
</HighlightAction>
</Highlight>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[2]]></Name>
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[$$$ = 2]]></Formula>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.BackgroundHighlightAction">
<Background name="ImageBackground" layout="4">
<FineImage fm="png">
<IM>
<![CDATA['Ur_p>AkV(,A*qO="@=0;JLkg2/9ThCGn$`Z\6[2%CNZ?`2^MYW@bR*>,g*0</_r7Dma5&4>
6,DY3Wa1cT0n[2a6-r>UTH[JMo;/(F&n[@".hAac"@6^]A+fK]A$$kKai\5r+BIXX'+JHDN:k1
@Z+)ZTgKmtFH=h!h$m=d.$4]A\8ka1r8D&c/XBToJrr1r6/D]A_W`>L%U(qk=>`@Z;uV>;k.),
4i=L/FC.E;c#JZfes,[5CE4mh>i:cFns=JB:p%tXK8KS.gt$)>8G9h$7/NQnIYCe`?^f`CdS
cm`g&B@>5N5_/FcP9o7Qp?:Y1ddGW,]AdhT(=gI908%<jUcC3DJ<eCC=<+)]A1Xtr`]AuA4kV)0
HZ6:f=MX>'3H@bq:&/>crmds?!ZtFk1J3!E3S6)8]A30ICbA+BJfqB\s:E\osbM[()7Ff6YB5
;RQ'aIgEmr@j5qmc$O_QsX0n_g&ZpnBd1G]A=S5kJ)5pE"j%8d(D@1Dp8+Ljqmi)*'B37^j8"
KZE2a)Bog5&8p86dqljhoPg+#6l0L6Ha1qJh29X@Bs7NN_(,4e;Bma]A;E2B0h=`=@D*YZ'41
3,e1gHL,!CSjgTo69jULhcl]AUk&FB-;!H3.kDHOj$C?1g0[$Kp3(7ag>00A$CQ%[jQ/BC>q3
b%ZDm`t?bnOI!Xo(#dM*[JT5V8o.%,h@!`@1*>h-4Hh-3P\g`bJ<(<ZS70@'6N,gIj<M\L%%
ZKR545rQ23K9=n7CcU\IFg:IIRre-maTZs>E,0F9pR%AFs#fu?3b8l$CrR=?O9_/9Ol6+0k*
Q"H:HftDVg'^kDVbbF:A8WXGqAL^f:gE@:WOMVTC1jIkhrZ-4;Yci(Z/mhr-`MIn>KV:>#-$
!5YdWL\p\S0E08h'E\YO+\Qi(79f)TSW%nPsZG-L+/9C26"'>U'1'Cdn?DNa'fXWB6RoalG`
%Y&a9K+)lGC$[0oHaet)1gqATc3t8#<1;\SG_0"$Wh+?Ge!]A,=\D:CaOt.uk<`EuZ5"2Ml/p
9FIc!`drKs7FTQ0Nhd"PRdH]AQ3?-^Wl"`&JN5IlU2"8^Z)\;gBT/(:8"17b9b.cGCan`tubs
!%3:93(>H"eNOZ_VBFt-E;kRS]AcVQY?kN)4;!Z_Rq"/4NK+oXcSr:f`Jb\&3m5>pDoB$YK`R
`b>HtC/l/5<IW,8D#%!5F<GruI'o0E)4=eHM+3=_3T@:Hr6h5/Y-^/\bRBML24[7iplbU62T
g%j0sag%N0"_D[,ZLs[DEb\;q6<+%2gbiE=%HYTbm;U(mE:\qX[:Zg&kSI=TZPMhgq+<,R3m
UIg$+73!D'XDsS?.JT2-eCAYA&UalWKA.aX?Vg:c[5aXorkgqK1E$#r[Z+6egtb2hMo[oAc8
HnTc'T*2S39YZAYSGrMnr/-"OT?-lig"9*AV&_5Md*=M"(LCM-XHO0`HsGD=-:G\?JP=S#FZ
6@o@D4NPiqD*PI)Y:%g0j@?,XO57lr^Xu!Da]Ap.Mr68C9-.I?!+J5ui%OiZFkNPG$.;`Dm8)
>Ar<MjlS5<?hFLm?H.Rdrnn1`k!kG9^@9"LbFsA"p&"T2I8$.a,s$pM4PY2>o,;32A)IddGU
8/"^H8KEhW?c-MY1@b+,hG"6%ek3/T/HD9hNcsK![MI*"3jA;oG`Wh%_JB`:'q'KjSqfKa[e
o?4f#bL2/Y9,S7-f5I6mR^r+,C+oH!d:MPU($oNZVlgF#YO]ABG'![:RhbT<D`lW919"&qN6L
K7\sS+l*?6F8J!(:V3</Mm-]Ar,_rnc0;9OaU8"T5#faulD\&MNQKr+DInq+iV^_r4\Y`XIm&
QHEdrD3!;I]Ap*PT5;sLV(2.r^=^R4V&25'@Opd`gnosOkWrC1RZh;qt<r+.B$fDp.]Ae;'dl?
eF/LMD$a:54:Ffjo<R-PdXlDTUhCY_;^+=h?m,OcXO(q]A%WAi@b<ep]A:,q#G]Ad]AGi]AHA`rhr
OmjljDMe')SZO(#p)WZ9]A\`CV;BDGBo+?^t0XE+'%J=6dPAZ?scG-Z@6T#SashI53,ldl`^*
b_eHkq7p4c'Jc+D(ZIq[aU7$WGS=e!g:cML[eZDg7+:_(cfJiV(g4.Rb,77O:5i\GWGQc[^l
W=2QVYU,p:3h@SJp)?HA:#DQThiYpe/g3J/D4=&kgcpL;77(Bt'Jk>/$'KABo2m&cX0fZ'U-
;?n1<ohuGe$qK`\S)p+dN_gu"oHpcBN\rbOn<Z1T$a.#Q4O%p4FW0FCB9bU/q=uBb(iZN&7W
LJLot.!P9+nK,HJQ;4TM91Da[M-&PMIF(lY1^t`U0c*i+O0(hi'MJB9p$Cc=[ZAU6N<t)W"r
:&^R0g!Vs]AJkr<9+'Jhp`IKC1CbH9#OHBKZ18'S4&!%5ebl,Q^CINImS9Bo7834bEn%$2Ut(
Z+.6m/"Ei&b):WFa%dZH!a$AOTL<R/ioXA9.PX!ZmV9SBh+;m_U6Xpl)>nV>ns_S`G_d&>h3
0*Wfu2B&<3Re..&[k)Z*$coU.Z;*9(@YMaZD\omk/Sh]A\BX).7`L5Sd7V1r>9:/4c^NW!p'o
E:ZYO^iQnB%LpH]A)<ZAVC?CM<LujJbPCN2qfkP:=!@fHHL<W([hCkGn(,WduTb3MeLJm3]AGB
5C+JLK@l<$4TYLaRr3qrW<=!9lianbQ>IB;YH)ePWcYC"hT=]A(;u#!YX>:*bnAr$X$df%^;"
mHi\:pl5A'=b`$')D4:oUWnG:jqKgEXE@/:klXkZmHD[*OiigVc,,M$#j,!H.?IoWiX'om,g
>aA.s&oO9N!h-OJ\sIA6e%B!og$nsN2I?#fP%*_eY$/gbr0:7n[oQFmr9tk[o?_:3:+s]An?>
3_'*FLgn-sHp*7LG%P[hT%.hdHtSZU2$n'[**'6/_SAAts78X5LTUuk4!i<q'ajMo6>HrQ<`
Jtu@*UkkrG7=]AmHXX&2onL6BnjZ\0<_a2\J(G4`b[_AW:;KCoGceX\=RO\iG*+o(aace58;.
"66]A%E#_WBd<!%P%q'+'97(f73PAs&5Z_4Rqk=fMpGVd!Se7ACrD`l0CFW7o6L@Bf@"!Nc#j
qT=#)dkq^Nem(GN#G/!W$/A^1LO)0=6MNc`kcF6u>e6smR0O.#lfd^eX6hS'h\uTlDSF8/\o
-s'#&VHrG2I3`BhX6`nr7D9JZ-HbhJIuK%V*WPD3,9^mQtH:K*7+Y0%hY%Mf)PV&Y]A^5[mK>
P#of4nm'Q`&*l`pY8[+/LZ!nu12#cTs6RgijmKNC3RDj,WV9'kK2?FD&OWiuJCEL*#fp+>IC
q"Im^FQlb1H]Ae(k[#>>!i%e"&+T4GooRjm7)V)[BH?0sL?X>`>7c1P?;KB$h]AUXA>BNcMRCJ
N,*A1>NH(C#_ePP9nOFL`I`l<Ss;78*"MHk-k5a4:\A_i<"EDdS/OY]A\9Yn(W'2@osG!40d+
W7L=9O^</,^eJ.Mpk:mb01,OdiY`X2cN7(:g2aDNcoG==G2brD[9M&*i[t-=XnlBa/^*D;^a
JMi&FE@.4T4_D4XZ\'m5JR$l''X#.""dZ\Z`4ra(0lU+GDu5L@pF``Xj^TbV_F[a!QkOYTB!
Db1^rF.#8<(JHY0TbL&:D:jbQ)WdNuTM5!Qfi+ss#DmSaA*#m)//_e?Y+U413O9k=OB9sl@V
?fcRCf)hj&[6>G_Z><5/5OVcVni3aU6DFSHX1cS-GJ29_g:V>1+D*"kNmRJ:je&$ZL7buI<P
eA4l7LN\T?oXmmT"*:%JP,/#uTco')q=\p,_QAbiW?a#NpFe_D;1+do>5=(eXk#$+a'lD1-A
rSqG9EaZ#G%GXlTCq0+Em)DBWK7j!oA`/A-J=,MiQVjV^IPO/M4en>+!di;6h9,X=<%Y*Sl^
pi5jT2tl+J]A)khWmcb4P96ft]AL"sq>Y+EOQ=`&n+HDK'Wur6TE`dp4B1lf:(e0Rcs0P8HbC>
+$JPa$)CFe8C947D6s5e`<KcTk`UD/(`$4U<\&#<qGr9.BfqgOL1rp#fd2ibJBca;fQF0UZ<
0T>m%p-P)#_f&=*d^mpIU@(=-Qg+,g^K4%?*2Vu5rX!W4[BnFf;+HeU_"0(!k$7QRbWFo<ot
XYYdt^=W)'FB0Bu,/j6[l]AodGO^f1LG2K2EnXuG2,1.Cu?3IL]A6lI)hPdE42I$0j!pW*jbTg
o#um#NH<0]A$rr#,W8*-"jEWoZ1d-Te+VB+bm.Bg01p';K2q[no+U&s.S[(cH9Y2e?R[3kG_d
cqqSS@e7CoDk;a4,\)>0"%lhg[W<bC%ILqN2k$/k%,lXh-[UA871"?)>U/nfVdJXk3SS,WcV
@ThCNlm(nNmb#L,^5l%*tY0YG"F(+(cp%bcOW0o[SOc2QN\Q`ln*ft8"*8R,tLJ/Sa-olHf=
ObM%qWPr3t%tC!O)[4f85uL-(\3iZ&33@HJ:Akpd33m"Rc0!,A^$*,qL<&ZPAH:`g8.IP*TW
/):h1Dj.n%slC9lbXL?sEXQ4o\@OifHi:(%M.(64cgY*`KHT(EW7PTUguloa-c^s.TjM$2s'
-]AG4k9OB(!/7f2X=d>f/_IHE<NGKWWW`49n(g#i<rS(P@2XB8j]ABDE8!MoL+;Qa'3D\nr*3+
*.06T-=lD4qF,i'/+_d_N#:*Zh/h+IM_"Q`a0Ocal"A7Z`H<eZe(.H(n#g=V).j>i"74S,H%
r$Zm%2Ids9hEC<KM45i@ir4T\K2K(_eA_fY=qR1djQ$()iV="?5NbEVVFq]A.`IU#Lo0?LFL"
Ee*Rb;R"i.f?.Lc2WD6VAa!VCh,:"\,DLWZ]A_!J8]A5@RFc`\Bgc;FNI8P2S:-u?o+cr-`/m3
&Q[c'd;ZnQ"]An?Nr]A[lqVX`=$;[>=@)0*'YBWA7q&`"'KrQC.5&6AFlr>5c`CisQ/^5pG%2Q
f/Y+K/"N-1B>5n$2Rtp`Ip]AFLUa^\gjUMMrA3A0P;g0Ymkgk7>g`?5_=QB4F9]AKP`EdGJ&O7
Xl<'b3nPGDD#,MX,AiV0%J;>E`5ht;,Y-5%VS,ZgiH<)fW,c]AYcTA&$;qf)Os7pQ%RI#M95G
&[hUQVTS,T+oBm`q)Klh0Jr&^;o'1^nDS/cDmVoM`]A8$a9+W0RT5\$o_S:pnC9P9L>USPH7F
&0]AGl`2?11nq3!$9`NaHD82&jMLd$,k#TuM^YOUWKHY)eSshN$YX76i7NOBM1]AHb->)^]Ainl
G%!e5hJpY;M_icUl49J8CbH#M"<(nm,#f=>SUZ\HtXaW[[Kr!q)u7`>]Aomrhr,8-1647p2'H
b8@*ZfhZ7f9cDKEe_D[kXmd1GX:\c,iRB_+\[i`!0k+9bQs$Tgp#B"=7J?[']A.=.ZM>j8NaL
q.lWH1t"eY"1sS*Kf>Y3C4"!TV_BWN8G9X3A@r"KWksRoraYD`VeRg26RUZ)`L5Il3*_4nTV
Hf0,CF2Dr,s$ZSX7&/8WI(=YEe+3HI6hinupO"Vtq9G>f<tkc8NePW^20ee77c\2[j7ns2GL
k1'\#dqCh0Rlh\?oMOQ%\^$Z@-g%_poD*egL5RE;atd,W[2k(+Pq65;bc8LXd]Aj_8R&"j\f3
$!"OKPGRe!@!G-W<^Lh-F[4MLBnbo_(R!hKSfo+5PT\kjC$1/An+X?\]A&?=t8$F<j4JigDoa
-[+*Rn@K\_Nn$-@<G'M^55>F)X,mUVd0r7JHMRO<j.!9)TL%?[:C3-[HE>TTUWt>m&q+4X-q
nG6S-<c68ib*Js`%b2#\E2Y.O2aa$(>\QhopJ%@3B?..3t0!XR39hd4OfTZ'(d&c>i`Mt),*
KYZ7g2R,cZWaH@bs;=gZ7_%)7"J?&OKG5HpugI0F\pn+iQ=O>"a=qL&OY0@@5CpT!'Bh1g=:
:s7XW-.,$,J`>\@TBrJ7b=)S_p00b_W@O-=&FCkYZ;80q5OlsD&4n?-nT_hA3%HJX%3ng4lR
9(gr$(k.IL7_Va!DI1X'YpTlR<cN$PX&5-Yt'Q=<7&EcDjQ*I5^#kVZdqN_,7Z<f4\DpXWn^
[n$BYJY^d2'qr/H!/F%Z3.VW<i\R28Y+YIJD@Q[H3cQXiHa,%q-RKa`#JQDNS0O.n?mH5'a9
,J[uA"EmpI5ZP0,F#!-VS@Yq1=)k)"-B^.fd:(=Z(3cgqRBHoKqo_MWM`rbF/,3Z-')%(9:q
\7Y)Vs^h[CQ:ZIggL3b)KWSqZ2%I:2HB5/8,no,.>oKQ^q<Xu(-P(F-TBInPsYeD/FpD5rlA
^Du%nWYMe@:TRP+IM]AXR_fQX$O&$G@S4B+K??m-R]A589g!DJk^j>n<n,c8+3L5B'rPDR->K_
?jto&"S+:@.mR!jC&`ID!=bWLeOO/S-,+B%F[2[q&8']A0d+@q,M^5V(IEC#5[&Znt1D(GB3e
uhPCfdUi\T![F6C6RgL=R]AjdR8WKpL237+P^K.QJID@hM2-Q6E?!n]Aj=dJhI[kcQ"0i+mbKa
BY\u:l<k!!3?MIjs^lLnsd]An%b(]Aq!kM2A2h=u-I5bc9H6tT=F:01K@hn<ap4ncpq`k#OF#>
m[3f`\AcN>HNr6<uWSO!J3g`7EI:TI3">E1]A!*7n"7Z$_.uFH]Aj6PC9B'>W,7/3>'D8SdJ&6
oojCYO,N%i8($KkN*i%.2Es-YqZhm+-5r:bZ&`LQ1)#OI4q!?CT$Q@5F[2;U7ld6q;t0J[dT
;[/?*;E'd^P'3EG)P"N-K\fbI9'SaoWaH&koP7V[cVYKbI'n#!Ur!MXl?h$1_b(LBMt#PDV`
g*Vs8[b<Og5d=RBTBDlf2'nAC_fOl6U-s^/\<2D?Z$Ya:mnKKrj@@T*b0Nn"B;IONLi!d?(A
#s$N6%MWlWH63!'Z9C8e5B"@^c"k30WX62g!%pYR3uVdT*H;.lj"PtT_H@L)#;IH(#s!g_$T
>7I')s*WfB.08i`Fr>0GkbCUlIM"--ol>9ijBa=m?98btI9+/ms*UPf2]A<')7L;SaHtC?i#(
;QG@?%VuTh.lim]AfhWrhe&5k.a1_<^3jQUX37r]As(o3;L_d.^@jioLN[5Qup_?'W(5C]ATbR^
Ah2gO]A28!B,r"7_H2;429q_q\"tfXFo3LU++bE[Mfl9#-J8LKeFM$\%O@"`.]A/<Ei[<R-jn*
QG0a18Qua7a9<V>G@&7-Q"&T]A!&02#)(u"Q$TDMMqEjdua8$Rg'Hlb2AOAp9F2s&B:VH\?[h
JSXqSEg6OiS:ah'tRKDr0%UMd`(4M\c_uAOOO*14R6eVXB-BsKh"<#RqdKAgK>C0BA6F'j1@
DPl`3Ol<Zq]A!cKfOqU!!n<pVPgi\Cog=I@jJX>7n2:-AVWp'Ol[eUp186GqRR\Qs[t,GPp@,
57AN#m?Bi_1As>3Z4hkN"6b<A=H<E5UX6pQ.SC8O(P9WH3B(R#8I]A]AA+;u)fS-Q*.1YmcF]A2
(EXE1tDsFUOU[;O^r0.A?'c,omRV]AmGGUkTe+!IlOPmZ534U_(_;+P[1mQM!5W9Oaqf]A'T_7
%N#t@^<UT>(-Ym'-*g&GLgbNkl5EVe_4Pcp?NNr%t,d\f\c95q+'SOlhDENb5'iEFYM,K%oQ
1ZK3VDa"&+CF[Q;`B.G`G/k(^eCd"0RYV1\RPi<@l,r\::<@5_N0-XV`Vp!Z\(lg`B!tSZH<
)&K=g'`hO6J8lPqDVNbZ%K9?]A4(p[EU!g#WT#35")OG'oo5d"V&%_dW,(E@Ic5msPI!'UQm,
@#CJ]ACM>\JR.6p4;i+P(,;)AtGL_@^Ou(6-11moN03o;H(+m3S3@qd5V/&je,38Tpj>$XBHo
:r:!e@'i$\+<TL2fL/\Wb-;<6TNgrkrrJWNl'oVs<\CY#\bqf8NXc8=K5E"XM=q^82!nArlC
KA[a1:s%2b1CdhobI!F[%"h-\Tk6qu4)?94AAhnl/f5(a!JTkDgGq@B@[k35'U2No'ns1s2%
1`JEc?eL6U#Ho!&@\;V<>)%gR7?H*=K=0+r9"K2maTDgA29+T(RoMd/S"rU!,Zj"\(9iP*=c
65/c'+DO'sb?HC&=W[iP&ORiV*em,W+El*aH\I`X*]A;_,rPpD@8Y`+U']ALI'1__cHm_0BWmB
h[>p$Id`e@DUK?7dl%0QhI?D5$Es9/-rF_3il+??>@i\AZKp3A\>cp*LLbgB7Ef$/Mg^TnK8
"efV"UF"%>p)A??tKCK0[peU!u+q"eR4Z$<=]A9hFe&H*.bqc^32/2U4thBa^.Ah1JH04pNRh
9D-.\D]AcQ(K`lmG+hA]AH_=A*H<\0b_*Pn1h?agqj[Ae+-S/+WB:8B6PtF2bogIb%l?nXiTn@
(^*<\uDh4N0?()ai_:\"o0b[eQ-bB^Rs/eXJ$Bd.XY&O'E,<_#-D0u):u%^i&1C)a%-`.Tr(
ldLTP9Kp)7)FRA?76$bCAiIhFU<%]A5N+fBq\%2O4U7me41XM<D7/ndeV'pM/Z`s5H&,k89ic
rnub+5C!\sZb!3/o6CoBGhQH["Y75]A`V,:6=O+$W/&#eZXQd^DFrZn1M2T0N<`#J0qiefm]Aj
p\%S6&>J.M8R(7;k\S`-*M]ACqA?'/NuT'O\d4=k[\5V4i[qjMmp=k>M(cYc5Xq?UV1#I<oIL
3U^[p$EWMm_JZ(5gI<f5O=^;=HCdr(pV=H)-A&"[EZcsou=pMNh^BEPR3rW'bmt(dKMj5&'*
HB(\rO)RUr)naPo*WpPQH1W%:,(<<UH]Ad>ZZ=n6=(\G5ON"^%LMVtKm[K';[N,"6/KDJ3._'
h8\.?T=4m]Aj/UA`<#D&a3#lO!B_PImqne,brlgQ:-nqc+9nVGWpAUIX/gZ^L.),kVE/2O9uC
XciXp01aI#SM*:q>!gKQJE`,Se5kaTpH1inViQ=n@3k9Tq>[%CE(HXbIA@LNaZSUmng?5$jq
K,L]A2/+sl;Y]AS4:IA>C5h<9a@hDr_oJ4EFB;fGjIkM`=",cWmSqFba#g]A8XefV^)H6!H/,ML
*WCeTdLd0t*)Tfbh12M3rpF<rAIFqBse;D0NfIgHU+@=g`lYQNVs)F9#A"l]A/\bWKI,-%8Kj
%E#_)Z.3k[rp7c\KJFP"N3QA[hY<+C9L#>,:(Y\5qRLUcLNg4_8XH$XB]A+s%mlXQGAee88rl
W>MIdWE(t?7>".ZJpU9&dZ%dp\+D4H441?321:erZ3e$ak?rTRHki$D(8>dgK4A_;tV0@`n3
89jhQ_X-j,$66;$E@RKZ]AMSDB91!tq[G^ZK+iSuo3t:#%="g,XG<51MYEtp2-rrI0B?=jNbH
:_5`I<L2BYP/\4r)ArjN_I%91"tMWg%*M?)ti4`eS,#ZP7U_PWRs?$scr7G\+/;_t+3C230>
'):J:MZ$8tX\NuW:fq.$h.KtEXg*EYo.#UH/%"?6g2e04+ls?MJQh[;[-ComiOcVdn'@3bXA
5]AZe`-o=-'P'-#+2K/BE'MH6Xg*1b[]A6J!PWLJW/FTX_GmJbGRX.#7(Jm'iSdJSI75BT_M01
M]AqNPfj!cY9H&MonFc[F;Fj..9DMGkgJ`9N++p:JCbWu6!O]A*BQ$CDq*0j=EDN&UX)?;k,o%
#lJuXEV#aj"O8eK]AaHG4ri604]A'$GL,IC!Qit48RrMT1.6qq"]A#ZNp["#+\*)0(_2\jh6fS1
TCuUE5N'+ZP[MK=aAhn$@_PRftf3qAu[d+retO\J:Z0ccVfUN[j+PS[MFcLXkF'/bQjnh58!
d-E_m5]AO'&Vi$X8_futo)k-Vg2%-RqlJ+^4GMC5g;o]A&#^d!"TOau+*a9G%)J1<TB@Yu88Ro
T[aCQQI7!nXX38nY9b(Fg__Vq<n*gEc<I-qRQ8q&EmXK<uqYW5bZ4/W[#+bHuH!J0"ha8s6p
W>MK5]AWNu\i(UFtb8@M!m5.:l-I29>tbLLHb4@N1(jRsZ^VK3<2j]AWV0IM+E`6B]A+m51,Oh'
Isme\nQ%",QR/TUB8O>\0HcFE!_s?:]AKhO8`(;\'ihF`IGi2@rV^?4WHDLf6lQgOlV+'-ar]A
`EkTc0Dk&MXTRQZSq%qf5bi9NU%"'<Xi7ZF07'#s%SSCNYq[&U*B+Rkk,R5&I<76g]Ae?d>Tl
@:j.T8oGSn=Ocu10r^]A8(ou1[e?;:&Ocl;3m'KPd;<9faQf[G`'7r;ub1(hog+3.66`d%qX`
",Ro@TYF8V4!=@KjZ($5'9Ap/i#&cJ$5`T;Ee59OO`S"ak_[X*3$oaM<aHfR!a@XX)]A9!LoK
9QjIgDW>XQMPN(@gfV-RrYg$C%H.KT,_:guh4%?"&$kP`f2XkC]A%`TsWq+kmJNS\Pr$#5A('
9(G9RWImWVS;;i?G[+hH]AqM]AXXo0^(C@G,D!pa)a)p9SuTj>MnJ#rbfCn#p-O(%q>E$kLDs-
0<on5/$Cs5WFY5SUWrW7)P;^R"HVeS4M=P;\s2KIu3GLHrjc[V,G?8cm!!A"u@$'[n=>9+KA
o+>*?n^J+<*]A'KN$]A89T@RZMAei>AC'-A'e<#[L4^9N`qY5BApXS12#IT%YR*ia%pAXdmG$M
(AS'NFGu0=@@nI'o&jb+u?Pj)ZH164d=\:gt&Lp.EKa9e)mV/'"@<\i<,-96F6rE*rRg32i=
A0YbXkSNMT^t5.iM+hF1PMA+9;^.F`XM"*mg!D2gYthV4s63Dk*b]A+]A[K%I!.m5J8K)1XdR'
5`D)Bq+5EhT\foe-=:Mi0U.R)7qLK9E^66%J4$[@,4>o'?-9^*->1Eu./cjMWE8#r2Qjn@]Al
`\kYpR$FO<)W,Zbrn!%aED7f4Qj_q%Ff7?gH?Kf_F'/U8AXDl`hGkj^uRM>iXsR[(h+9]A\Y,
#?+/XnC2`26'oB7VR6YPg&6Zd.b*[8B<T2M6"ekU!6_b9GnZ;i?k*Bpg3DV"jnn"RF.,$CA,
CY!IoP(RB04kZ2Wq8#.NB?OG_T8\?QM%E!Go"p+[c39rTGddq#?BZL[]ALc2-*8`5?nEIf>8V
pf="qh/Goh1p<oTgJh2>HoJZ-7D\g9cN]AL"9VJ-+jI-VQ&cFZ%6#BO2RJc&8hs)XCkW\4F?#
XH/*h9b6@):i.[(ioajqC/j.p_`D[t'GiaV\ls9/eQ3>B\qd2`AtF>]A5$9MpFM7V;,[H6ul6
JNa(,/>d6r=Fqj,J.0c+@Cm[?pu6aQX3t'UKeCU*C,3CVY\,hk"CQ=0:5c8(8rWpbr#g4i7]A
M7XdTIo.kf!bC+'*Tt80!N^BmJ@V=1AMAHmU1FTU/aka5aMl`83Mtld5\uL2FT;O3,+3Nk2E
!P#BZCQ8C+tZgMm9&16l+S):h#HXo[,J"eRd(D8cUD[&/P^4M7`\]ADBqT\RUnde0PLAui+F/
,.P'U.YV;[0>WeO-'RrsM^"OQB7M(s:kXnJX7F;PGDHb1QflqF@r4oG.;SBk((fmj5i4#)W%
SSb1CM;57,9t\/i3qLauPWt!<"Q"Zq[c[sM=NCY/U6?AWFEAk>SrK#YDtA:]A:ZjaJY9U5Mn+
\Ta5SQjE`;>W3j7r=JW?/Ob\$t#P2'"8d;=<GGI,Bh"KKA2[4#`sXrQUOc%[I?@B5uXg!0\p
ikOD"Me$E8Z,#&>!@aI4hQ.q2*"Q<0jCGc5UlnJg_<QLuk?@_X(OWnfrTYp;%9?s?i]A2/QS^
Z8;5=8GZT4YCs>Fj*QIf(STOT"36n,F+LO(F2/:>d)D9Ikk3FY=RaS[u6=,]Ag%SDqP:GHm&n
mN^"cr"'!B/41AC/%_dIrq,VF@UN;ga>K-V.HC>(l*3ph&Q"b6JT*`Oq6k`S"cd:QHPWgKD'
P"s1gFOjK2B<@]A&ph0d=`C/rLF8/tH45II-<[Sj79c`LjdI`!ZCL_OrLd+XMS.KU*`N["T4`
!0&'s^R.&j$/$V`gUe^6.+QQ\`:ZF2a/PRR5UN0He\e4h1/X9B-jp$\?8E0,%Z'U":'YWZU^
l+dME'E*CR]AOnR<9.et-=Ei\<WSL_!P73T2F(gkL&CkfRZC,WD!F3p>Q+a2B"[a[T"?2[=Fb
f#)3,R8%`g6Z;Se\s'3^AT@)2HD<@L[4@E]AZOeAiq31]AD>?K,c1ZI4=H`kf$oJQ-&[m$F!,D
`Y)bZ6&)^`<eOe_ed9l^[RF@J6h>'$[9,;PuT.nhdW/FJd$6RIe=B3,UYdPtIKrd<P:j$/m<
*l50KA/u_;2'!GQOHp(8L;V7oOJ-@bE0i3P#1CSS41%0pKY-JM!I^sfj7?pg[STjeEY"M^lp
&3m<qD#<V"7!b*R2faA]AY&,YFaP5_Xfu1Ilm!AES'7(IC`B((XaYm'ouQN;512grk]A>(BQo_
#2#>'d-F&i2HQA5M?$'(crhAkmiHtLe"19GCEAtZRS0M&j3V(K-)'RG-?#p.]A8#.0"7sj/ic
GDThosfD=CSf6i&?_Zh:X?UuZN0f$a=nXj?Zc84/&K63l,[+"jZf8.U`mu5k%QW[&7"p(rNU
idoCgc^g'3>E:Ob8?Sh*jB'8pB<!GdWIidDCt09\Y*p&%5YOn67%;n.ZJg#uk4ao0A$'*enl
8*fg;PKj]A\2f/Ld-:aKjB0t`Cr1*R<Y&'l-?L#/e/_30DZ=F`HW('QlU$pE=G8(mQZ=J'gkD
lDBW)f>L+4L1<IXU*X>,o/8l5Y1+?0G:1jH+ZH4MVkcgipA.?"VG^%oZonD(9ilaY5`H=CWS
=SN:e?ZHLs<[+D+^>det&g#72L2Gh%!Pr=e[idCfZZd14f)Q*C_7GYS*Y*?Xna_s3Oea3<'E
KOAkboVZ!HP8J\m/%YuYsf[Ch-HI!1:=Yq`%`lo2bg9SK.9W&C"2Cr]Aq0u&;?#ti<43oc`5i
"lp&TuGNIYR0C"d3hK18j;J5*7Yl1JuFq9/ti_;4+:qJurmVA[nUe4<R1p*@&,q[#O'jOko)
98J83K8LfZPOEh[,NoUbm^5LRp1T!!_u<jGXg,os\-cRh^sSTIm!E>9QCQ^C/n_Ak8^jJ[5L
+KgOVqo-l6^G9&3mPWpI`HC_B`a_[\dnRXc>5qo(sj.3WK%Y<B8/6X%tW\ZA8o#Wq,!Zi^o)
3AsV5?`Mu)oYJ(t\9a>l(1UaJpF#3\[AL9\R]A872N\e'e+_oBj!+4eTU)uUsE+7o&lVVX0j/
CsSfgl;"hS!kc$4:*i'ih=+.0t*\cQ&T4Fe_/'Chi?#(c;LdeI;;ubSeG2$q!hs>Ers[dj\V
5"GTP@>K<a1Vlfm:C%3dNY00C=:ibokhemZ>aeHkKN43hOni?q3nO49Or`/eA-bl1jYKSVFq
)oV07OA<lU+cJU)."iE\%tXI"Ah?[6/om;]A&`SS*S5k\JH-pe_D,"jiO-!]AfP`+Q*)cR%pB6
M5-s10!'gZ=YnVp$?u7AO-)@l1Ljr'#R[6Q5j^Wo]A-uV(iU3Z7IrXl`Z-!r1#U(amr>S[T":
BV[O$15[fGNo3/a.N4uGmnio>Hqf7;W`b,Ti=]A+qj^2Z#+[-kR.Kgo+Z!1/3fo,O!r^-Ue5l
C*J0MSnrQ.DWmeMOQB^gqU;nr'L59N&^J5dm2qA$)b>+@efNAs$)Dr8uT-%Y?UQ/34N!/aD2
)&:g.P!I0M-[ofI3seugd(ogkckiDc(=q<%B-l(jMA*9b>$lYHU2.Fm$$8#KM&3JE<(6'E'*
W'hTjP8gsfJotA;Y0.`'r_&`48O3`5[b+BQjr%q`@1R*2LI5gU2N#6s1RF31V7L?rH7LEd:r
n3rXWZo^*V.=@pM%AhhjJo*OkT\&`fYm*h,-W+Uf*dnHHm1kBKTa=gJHH0i04!MohYY)=%*X
:'lL6(emd@]A#nW,*SpTS2?F&?)ItonR$OV2Bc.D`(AF;B?[dV]A&Kf@V$oRA"A=[KbBrT`68p
$S9fY`,W+>5hc8'Dp7N[W?0]A[%p))^N&'Y]A%=I^,.iVIQsZm/ML$=r5,5R4)&Vd?pJnpn?u/
6a9`W2-da4n-0r*h0O8]A(p-5JHaJ3>/3XRm=7HM-$8Ceu]A9^K75+g1G3:qI#6:Bf.[4Mqbu[
.3RpUqM.J/@`,!BEF(!Yi!q\=V.bXL8PJ:&aAPgY4&-`oruLUtmYA7DIC^'!W;#O%cG,@`iN
((QcEFeSXVEC8Y6OliqiL&0.<7`9`ZV+gWtCFHH:\i&;8F-a\B9s?aMd:tr3n9oM&d,<]A`<3
,WumF&H*V5ZVQ<=SB-d[,AJIh7O/Mj=`-h2-.B#QJXT/"k52im[X,HAF7Xe)sDWl`J[DKmNI
i$9[1/?>0qG5n-oArpT\&@2(rZG:"4N^IrqQn/f=`:W3$Hg\g*D_#Y]At::2Cm$;b%s<\;).+
JP\0m$-!\;SZ`oh54LD%]Ajc^[;]A9l_[j/g^CafVF_aa4@AMW/M=]A3cfN%p#iAHqf"]A&nV^-0
,\@*QSU6gB0M,%rZa2Np9'1D?b'g3Vfl3]AoW%7rj^FNjC"N164oM,ge^m_U)K&@;hSMmr=p8
]A0ggMQA-EZsNSZ>BK-*P8e95AqZ.Yc:q!)sABdbbeBOQYon#5EAukgPtTo;,Q>;P4?5qF3lT
gF\!4)U<>PZ,SK$X$FR:s7%@:rhe;6K?2\h8R"1s3f@!S1cr7Mq't!p[#.1U3k2_j-IniQSW
XIf7%h0M]AJl(&rToQh"EAXi=dg^'"phcmEcI6P[_6&QbWSSV2j.@Ii^\a$`Kr_ZB$#*k2G;?
"`I*mV]A=-O8A:[PnCEZuOY6/kp-YGWL]A>gh9_]AoV9dW?"^F);Tj'Q!e5iE@l2[(A6=WhC0`W
;=i[T)8ed;54B2$DuKhjei<N[NW@_bi#L7?;,WQgi+iL*U+utILW+U=SI)D%I/2V!(V<7?,E
S%/6dj'Z_q7^/N*6]AnCHLeG8%oK>-sM->e&>!7j<eP$T27=IH9USpPqT;N&nQ%H6f'm-^(fE
'^Cn--)4VqQ[\YY5quj?Jm$I,,SMR@AD><Vs=Pe"\6slI^p9SP_4R$^7^e\=GV]Aa:1[Z=02o
Z"BkE:PA,\<KW%lij]A@HIg6,Es]A#DDN8fjhchJVkmCD#p^e;K<RN7gJj>/0'mqVJ`B8>)^$K
"!Ci,fROgh,YZ')c4'X]A;Si1=OIP-T^R:d6a*I14P&7o")FBAAK"QL#44p,_n\m?d,UPs3p*
$''Dib&!U8.cksBO/L<qN_Hmd:mdI@@Qd;a>eZ*H,oF[A6N'9cF>`Q__&q72[30sW#!#m+&W
Ylk(/E[G-O7iPW9iD+]AP?ui`q);gqL!s`gu]A.X]Ao]Aar[rY!7c+-;]A\)qT..-$Z7AfDT-0_(G
(k+\:D>^Mt<'.1%Wg%;m33=@.bOj6_"^.7-ucDh3Ma6jaQ+%psMk%#W(n>SKtOj^Xg.Hl)["
DNX^5JO'+dFSf6%uj*h7*CBoqR9$I*d?c;1rF!dq"#B5(jmRaY%,qXPPX0fa(".q'mf*gCYe
`f1;8!#=qV>g,<B`p<arB=GPK-`3tEPm:<3ACY>-DRJ^kF0Z.Y.@8e)1!:$15H'f"_<_]A@Hf
F+?i7,9^rOd7A$D.!LV;jbe\@'5p?5SYf-['sL,/9p#+!F_g4drhVgWALJUkJ;;2V^P4OiGK
*>VfY[pZ=7=:6B7>SQLp0E(0+4cs3*.ar;N?71n26+@Pgo_^I^*Kg\fpi+=#+&K;pnQ$Va_9
KqGDlak@\#k#r&_s2*@U$bcf<d=9`Bf]A5,"@Ed"i$l2..2@dqt`XK%(^#Ms>;k?(ZB3%a.6*
.?q<Z/Y:sYb_T(WJMF5#GPPCEp#ks;@3g\E>DYLj$GgHk$-V'.^sQlC-[4_I\3\m)oBO+^dZ
H"oNh/5`a'23c'L;PANBlOM8dSY-$5_3CH$>T#UcOV0CUO1q">H8'@ulUXm-VC#q@@,4fj',
X1=>2LDkq?8=W%,+Yr5!OOnigZZlH)D9ZX,4hL(<4I3:<\f[WJp99F"0nL&Yq&Z@8KZR1r]Ac
Tl2Jid.8.]Ah4W"+[u@b77"@\(((e;#hFE%p[T;\"^n>[!;'5\@FN"Ij'o^%\)AN]ANW7UA(%.
S`KT!n-Snj=J]A*XI^gZA7VKe%iY#IccIeN'H";ag&Zj/&NjZ3UQEWXmoF\SWRV:bW>b,EU8]A
4F9AgYli4!*GCE>PW1a[]A>?-r67AC's[_fOl&gm8>:TDI0g4GQr3+t9Lt7>j?c:5k;"B9^oR
T,;+d9Aj"T78^6lWd5BF!M:DnBS^bL?)JXa+c?JPPK.jMc-(G6\':&7-eDlR0N\@:DRjMQEY
=>)(8L`iT:2^b$49`<]Ahf%3Ui_Al.)<"bI(9JGtD'#$956!,rN:&;q?i#e8(;#SV9`N?:.Ro
2T)\=h:/Q\&c0"@7l&[q:q)'l$rI<;t_LQpn)0aEPhZ,9Cj9R2?Ed45N`XZ&V'5IhtM#<\Cp
4<RCFHdI[;eCU[UEeM(L$idH=/Xjbn\H=;<O,f.TnhS"\nU+sWB>#mt%H59q6hbh7TnhY<7^
7-g_c.X%\<R&<GX[u(h;6u.*OiO>"RGPEcn0E3bq5)'Dbd\<7:cu9u?L\,sL8sZ[;iJGc?6G
9MFQ2Z4"3$H!>ZSg-QTJZ8j.K@J.C6-[AFeUK"R2F)ru,,=S)o)?(04\d]AoCKeMhDnt7qXJJ
BPW]A7ec&dhb1%"mF/<Qb8P^-rQ)bh/C]A6=bNA!d3]AGC>dZ1BtHSkPCM.bXQng*D[Q#OWY?/0
5WXlWs;cal?=s6]A;V<F-tGE[bj=Z0=R.+rpD1J(3QbC.ee0'M7rbt@0ue\(;kPC`;_1b.$;k
kR$pHSP%%":0M,>O14!bK"Vo[T11PMd07r<!q+^X<#qjA=WVr[4%llgh3"KRR9!$5"1V,Z_W
bWRU]Ae:tm=h!m&"U0o.%1r1)be+6hFWOi7!7;P`Lu7fmEDY,eq)n/SXjusB"Ph=YbnX8YhEg
jNVR3\1>8u=os.Xjd"5h\Prd.?U),4rccaa&9llAPCd6/b\,m)!hAR*i6!n'Qe*Y7_N/`fk2
,Sp1CIhI\'[Y&Q#p/?LjM\[a0lI((ZGkZq?=<<kDWFm@9qR3M[;*i)lT_s8h2u[0jl?_"(\N
qA<$-l>7?`%3QS]A+r3ob<dq/Dj*8V5rY-$7Y7`!+G8f/g82UO^-GGfs!%RC0/1T%#A@OQ^;m
KN[E\i!0]AAMg,c^]AXftV\00K739iHR1]A68]APhjT:N:8LQ)RlO=Oq@2[JYL[noF3?2:BtQ)Fd
WhD547p"$D-8@udlL+Jg-d%T7d0Trd1pUT6LmF0eg;\uO1)cW!Tk^d9u8UeZFofqQMa5Hf5d
Pk3pu`\'`JrL9n`j;%K1[4$4KE'R@D"mV7O*sf,LU-g?##H4uicFC\(!J=+1e;Go.Rs_Q\9>
)9goJ#F#?&WSR7e^Rr[;0'qjT/P(uOhR$i&[Re#<N(.t)87Zq6oQlF)->I?R^#BkVHEQ(]AKC
ICOV0R\^HC'&1hn2FEC`l>:?8T9L6b1+f[!keD4JoRkY[9IXP)(c]AjT6bTd@70RJCBMFDd=o
T`raHsf%hhnWcFE*YG;%d0tGOJ%pbQCDue>`*=b=nchrDiA8sDJ2]A]Ac&G-"brXsGTtCUU"@Y
a-/C5qQ/h$BPeG*9]Ac#:4\nH%qjY0cLY@@oa.#(s4XB6KpM>-l@E2)^X!r4:=?/,RE1OaB]AH
t3$Hh'?7Y6c;KdRB8I8REgWj7jRF^ZC.__kms(4g(0L_eV^.D7edLt4sY_BKQ+ZfK8%Y%.98
,O(t?XP_c*KajObAF<QH--SN4T&[ME?#MF)KFIM%nOc;:cLLiTe./W8]A(88YOSHYc'^em<>0
b*Ul\+oI-eH/h\rJW,!'*:bd$8p3[<gGV,i<_^itFPH5EupC!_fQ4]A_T198O[)W.eDXmO7?i
ZE*lhD1epIlWr;h0J\=R=1(bM:cCc,%Abt7L@@\tV*Qo$,K'k,-qK(>?0hqFfD+]AmpdpqS6d
obL(_!(tA+ZifUgQU\/6Yl+^@4aPj'mZX,,N[p:d\T%Km35C5C&XSrSKG[o9$#lnZAUrRLhK
MHXlrQBgDmi6L>40:In#9HmUj3A>\Q)+:cGY?T".N&W`)nrQ&k^pT5"D^.+@(Cb.i9u?M9^/
JBo1T`A3T0MPi'1*iF,9mM&^:4m_>e;9qjX5U:.gQ<&TV2)>**]A_!,&_H6^)a(/'\qEB00/W
]A;(*nHRB,5`u;@HB'#V/+si0Jf)^!YZiRkF9\jDkb:W%q#p2qs#M\CSHG.6Ip0g<gWF2lHm0
1BW^TA-Nn#il&#kX3`Ar2F4#/<EIdsnc'2jbFeS/D'/%5!%2T@eIU$P(k(uRiqfQc'b\+)`e
W"l6onj7#m&FKp?q]Aubc,qh/Z?1@:b4'61WH.fFB=';l;:AV*]AJKX#mCZaW>9&o%s"1**7"5
%^/lc/Pj7C=a+'=U[QIb13Mk7)l6il1ZWNbkr<8.5_W\;L_;U'LjY`3p^D5d=f4"%/Ob6^p7
Cm8%!Dd1?bZF>L#cCr*lDej'9.qcIYbm%/F)$@Ns:i":TjFCQ+<n-+]AefMI>,Il1/M.bdtFm
0[TLBm&1F.6B5`Cf-d"X!,'dJ5mGBpr<G8T-0saKIJtm7G/jrZ:A\8BQ"S))rs^8UNifk)mB
C0"39WS+8]A&]ABe.BrW`l+7gE2nSWQL3^KJTaOpKSF-U.cc<]AlQ$gTi2'?_#(-3fV,I$U2F)*
qm6%kB?q%BLCBom&%#AScHr^Q5l_F2f1F5RFk./CiRqMUM#46!Ut6,7ep!toi(/=p4a@*Jkj
hgZh6/X_!QdA=eb6]AbmW-#-Dh?>;P[Zi6e/&Qs2PO<4QKdL@cn70-D[:4s8RLtkuFd2s*9Ci
CR_e\RPqJ*AdB=k0Y?$(@\RS0Vn6*I0P8Nd(W@>pBuol#K?i;5SFfSBa5J\4#o^EORG3pe9*
4Um1]AC-bT-#co&c-O=(&V6"7b<+<%EhW?+bps"QS,nMiI*NA3@*VgD^EElWCF6;)TuKr]A1fC
Wi\2k['_O$cUcZUNM7X4h311,Q%GJD4Asc7g;H(1EYmt,:lq/-LNt0Yh-u7'ORXO<Dm/FIa`
;&2[O4lVuk=L`8-oCL?[INl6=.0P+KD*slQ4Z%;O15@&JgK7-hBhJogAtVqGF5,$jt8Ek>?0
#RLRS=_5;]AGmZ6XV)a,5QsmDdes2f?;TWC$2=jas,'i3esK@pG2]AI7/\H22)-hR[C<n;a_(I
H1<J;O>"TqT]A/3sktTO&92e#;bKBVo(3CWXQ^"7p[DCl6M<EIhWSuYp8@[:/Z=k7mm-V]A^E5
*I19)nK!mA_rS4'JZ-O1j=DTDBsJ1(>:E;Q\P:i[B0q<Z(Wm*a?hadb7:W1'b,gZ)<(u039L
o[KUM^>G5C`k`pQl-D<J+D.rQMP1F;Rar4040QNE#@(_&D^>&0I?8%Z_FZjIR([^QGN_>a(@
CAg:I%d0<N9+>8(+Ku#^B6E"m3X_T4*.miR^s"g?g_,U/BJtl#m0DmJ(/YKe>s+Aj)Q1I\np
kk".gkOM-H5+1i!Idh%d@2^2=T!8[H#+8*ckFaN-"3EJ(LD8]A@^Zm0355a=WpBMac9j($DR4
(mg0GrT\,*VFHo"e6+m?pHHbW$?YOm2[_a]Ap%p&S76:RkW\hZtP.H`uV8DMgS&0muNnF(tD3
rq^I.+/A+:purB?V[kM\n4G@R+<ZUmfD9rS:XWJ*MG,"B"&=0@ALggi-ts(0mTr0rmWWMT7G
YPeBC-q[0LU.XUj%j$4m2Qh=,4HBk^%j>\R`AiDi$LuGX^pY(<ZFuWL&Db4O>Hrgn),jSN/`
-%6-3P+te%*O1Bq6`Y[m/Q?geE9gf*V%KCII1iBlAY]AA[`RpcH$mt[N@Y+e*IR/9C^I&pT#T
;A[YP8^.miD+jnZFZINu1oDS_h%9fr51G@PC%K.B)Bh2j<74l0Fo0\n[$h"nub5NWY-'(:Z(
1g6#ZbY4\8AZJZ#<p?s1;&-mD#C]A"QY96`o4!XIG&HN>1<j37^I'8GUB2EL>pd(g$nI+7I-\
K2&1'("fM\FEiNJ-RgWoZ[W5>"(0H4TCCrIbZ\XAcr[Xddu6=pOMc$#S!S+*g=oT)r?"m$fB
Js/sgH`E]AfI[J4AL1(o\]AQ21$c`YB5,VFT*Jho-,+[6Di%E@O*Z-jmI>ltS$2qlTZE*jLi-Q
`e-i"Nj(Tpe=u*2N8FB;`K#f;e)LZepl@!7AHq*./#[SHrP;<5NlB`3N.-#5>PN55s?iHi!V
:%Dh%3&hWL-q=#]Aig`qc0E#GqmEIdei#afDlU\`FC&lX.PHaoAg/;(0OBeLOs=?=C6_Y=^N&
2ot:hU?3qF03Zk21lbaj43=1Dds,Z>D^OX\9<FkdQMu!"W`l:F2"Y`,O\PW[r++IVeDsOt-g
L'QJ%Ln46S4;!\b1P)g9F#Hj5cuO*V7u-\0FmE9t-*VPCOhkacQ"Lin?hdLLVrL@,KB6e^j_
Db4+BKd]Ajph:Mdu`;^LchBO*++SA.$^b4=,5Gn*i]A#ouCN4%,D5R[NBD<hC+>h`Y^l2,6Fc<
I,:qn(W\\ch`ChXeilE<YCO_=\3*p.<rTp0<Q9TK(r-E$WdCd,S"Ka)AB7BGP/g[+GS5UoQ@
IY253/PHSn]A1U>C+>s#_>,e\,+#LW'!lf/m]AGh-_)kD.JXZL%3`^C+fMKd9*&986hhYe:]A"Y
RUt%<4aNhnN:^Ve[,gc9&Ap7AajDV*3S0_IB5\_JIV^.$+u6<QDAG]ALGpi?hM[=24]AeZMINo
JFWp?(_"2%q6*6qt6Y\DEuFV$66Tr*mPc.dO%OJ[JH0^OGr2GXGH>`&H6\S'.&W($kmfGmLt
t%g)XbV`ZhNIp2t,VHR5SgibjS>tTJk6k?YlQB`gBTf^8b%V@+jl,.mKL81C=c1Ng/0[<e6P
)%=bAUgMe*st&VV;e%"NcQ&I'HXCTXPoGe_6]A44`pV/FYOi.VluV3+%KDlq6@MG,E5#SQhp:
W!!dnnO^V$p)7,(k<KPp9_.en]A98UshrU%;FRMh/;g^t@.T4Ms!k*>N!N\.C@9Ef\S6%Yile
K_3$$Qc?>os7hp'*g;E.;un:.=P.Ks!?prV+!mpk$]AU*"8Jl?gI!?OT_Kc6Re8SSIc$rdD):
`aB5,XNB9`:iSGZi>MD0!:SJ>?6)QR!qh25BdH#MN/D4+tjMko4!_;A?'[LO.83kJq]AtEPbr
AI-^V.EHK_39tahW1_QNRNCF'`(e?TA&kXQ>C)^F\7jB#e5<rUu9.<C;N8=O@LVi8@&Yl/69
?Id[J*u`3pV+9.3Tk[ZF.`?DrH1nRR$&qnTX-,jp*pkg$*u?l]AA_*?G74K.A\sSReb[-+ckc
)pK*Ge3>!8A>"4Q0nh+QD*d.Yb-^W0eYj81+=amaaAa8^/H^D>R<YfoZX5O0nNnTr,pL[sD%
MjgR7%o2F9K8Ta>jkMOBpFQX4kH@e)^[l1ojSV,D6/Q&X4.*ZQY0sXTai^=G+iJ#`6=0oJ]A3
!dCODMX1d:b1qSN1n(Yb<`"7uA<R3uQRR)#qus3/2HGQS47<1(E*.TR`eG58rUPg1rh.b?'+
deW.1\\i%17_L\6bQ36nAGea!]Ap&;"c8TkRS]A_b`Do=8.h:@2!\Ui60EUr-gSdF+hT9*\&gS
^kmTF*8hronGi8Htd498:Bt8]A"(SQ_?B5Cq5"bQA`+\AQ1?MVKV`5MUhr?Q+Kf'LnJ``H*+B
T6"nYP5\e438d5?KRO$]AIr,qDU9WaAsqXC-t64n4)%!F8)n(%Q9ij8<$ubfmE[d(K(rXNM'%
Qm<He*p[ZrTV3#W=t%CQ/_D<_'1D#Kp&8lPrdVJ.H$eiYK\IBZX>jg0rCLsT7K(mcd8FVX02
tVi!3nbp=>7=>r,I8tMC*ZQ.<k_g>.\YmXJJ>ukbTo$V<%QJZ*pB/ai4ZgXH1!R0o0If(%/u
Gi_XID]A6'hfXnDfkdu@&*qX'W26Pc,!2,&M,Ef@F_CNAXH!QBX(W.GHcaPm;Y/\joXq5IN#@
QTq\PbGl59Dch1]A?oAGlC_]AlJS+anVGLir!Dq2/I2[3F68VT;:o;^R?S+!oI7lDanK0VM^+>
cUk#=pq!Um4Lr3R.b/oNQuP7B?sH$^Rr6_"QO6CDSPqHuo_F&J;V;Y*Z(4<m1m.SPf,RrS7l
2^mI:nb$K*Ffl=)CW>:r5\i%L=nIW*S8G\*A]A(WP90t#"g2dWN;5QhF9B(aI2ujNMVh!Sd55
$E`E'lMf)c4bl;>b;:H&:,*lrOp(QoMl[2pA>&rlt?4h3HfdYWNN52!dm.+T(n4-`?N5kK=D
,4f5;6*;ra6[co(NY6(8nSrC^1RIu;?j7di#]AbnKFs5Fl*ZJZFSD((R]A$2[9uC5Zd._Z[f/)
Ur`_.!]A>q6iLCB?!NJ$q:k9+&bkFQqdJ;FC^J_YZQ-X-Ue]A6b_0[ld$FB0Li#2pg,3S#i#fJ
/u7Cs\';s&u[BCCitJ\27GiUuE5cJK_=0Mpk!1pO^&[H!GL^2f.lP2L?KOP8UNkQ/P=LKAK?
Kk-G)eNa)J81U*,m.E\!HaXWmMuI,'q=9H>,4"bH$A`YJ;eP.=6ElLKO`\rS6_4,hZrdKn0f
.+-%(cPC0_ln(b1Oa6XWJ@\j4i*c_hPK'l.uC<dUMP]A^Os#TWtG=s\5#C7)erF(#(3RMEW-=
%qB&5h":i)'7nL5/dVs(s[1E%A,Yh=Op$WT0]A&pU`588)"^BpUtRoj[I68&SQJ'Ch12\EUu&
^L@A6"]A)]A?]AKuT!Q")qRAiZ`=#I-P^_qur#gZ#o@AC/_5."c;G[>X;]An<\hh;kFdX0\^\\S4
9TD%3HP`Bq8N3k50$"F5,HhUrX<HO&*,Bk4_6U!s5nKI07%*'TfW8bRr]Ae]AIC)(.#1PAeh<n
R`i9iejhP^:h\-..(*6J*;0@Me2>%&bgKiB,%7oI7lb*`4u\N''[b+$FR%^Ys$Vc]AC,SsL1K
D#r=BoH&;rV%&)5`>b?STB&H*SkPcCJLWZD=NO`T2'7D6Rq9Pk#pQ)\n+BqX6l&o\pb8j(2e
A'07P8OlNIBJV$</[>%H@/k`JUZ)o@t[!oRY&6]Afc,1t"TZf?/lP>3:0qTRdD`Q-RSNeWC@l
R=iI\k!="%Yoo:%^QGo8A6uCEnr2fO$T1;>JL&As76k!/61f-+)_TSL?]A-lB0)QsX^^!YD7_
_(Zb,#RGB1<?OKn;ZP5AnIA&?:;Zq:0/8%U#3D"(Z=Wcne*aQL0:a0%d)1V]Akc`]AbE*'V!6Y
]ApXjr&$H^8I*e5&0m4KPK?=G-mMgrlg=5PXOcD5-cI(:WU12H$r8nK]AjJ]A2FmZ5STokd)ICX
5ebOLWADgC*3M,=t='08?FDWc"a[A7F&6)k&ZPX%pq8QeS7m@l)5SGV8t$9iRk5-gq<cDYR/
Vg-EL<6gZaH19%q*^jEGMD#%gE^;-pCiO0o4*$opKM]AK"r?+Y[HLX;!b.E7\8Eq*g--q,qgM
5PZn2[Q)(N%jNU^n3bRnB?*WhbauWU*tRrG,pbtZE2+0N/n[lZ`j//E/>;I@p)E;6sXIp:?b
o`IJ_#5>]AhO`7QH\t%sQ&s_1/"T,6OX,+I7bK#udE`9dR_,!9R9<SH5XSK*fr;8t5Wte%^H6
&>d"`*W?P\(AfFH5GYhq]AAIP7%o03;8o_E1p6-EGQ?H`e@=0f.iMbO9g0'$Lke'67(=#i87%
-ELHpg\+,]AhVu\YQ@[0ffdj8i1_4,EHDh=W<D:A>)k&*G10m9`,\]A5NZI4*75IjLJC4fGlii
'+sp@^+QC"J_S8R:7(m6:9qA*4U7V0m8p=2oBA!s+:kmWs-XVSoGT3%Xdd$C8_F>Fp-NPQ\A
tT\=HYg$4Q&4-7lq*5l#f$]AoA]A!E;T`5Zm(Qgm0s2fA=*[88r47u9/\FFHc^0o94@]A"c/2VS
i>8spf&&4kRUf'!/=!IrYVq4<h^7&mj.GB8+'das6Ja]AlTC2d!Y"U[gaST[A%AHgVMCqd<c?
PXe2]Aj6jU<gUcN%D9Gm*2miU)Cm=<F0i9XRa]AjB.`('S.%r-mg6\2Ld_C[mr+kmJMT(hTNe]A
@e*3:s,:3W?[V\ab5QUDRI^@*tM'XN?N6`#8qHp(!s>FN*5EM8HYOnVSGfG&1/ApPVTRSlo<
G;[%l!OSr%-(N,[$K_aquMpVu''#IumJ7?PC[lO`i_M)e9\9]A`\Rq7>AN>NY=k,k(lV7:a7;
!o.]ACqWkg]A.@^sQkn33(lq7-OTHUa>&t"82B;bT7<MKaKbmL<Tt"mr7Hgpjk;A%ekF%?Z:uU
J7cZGoPZFa,!Cm;72]A;\k?a($\cdJ<g1q9>iFrj2*C&UtS8SdguIs*R47/XF]Aq^<RS2PFF*K
nbMV<%@bV'AtSR?4"9pC7'rjqPhs,NeS`+\H)MXJ*?%f6?Cmbj810g*=>io%a$\A9QJK9Eb+
8a&$&An0p=+)n540ae+ZW%qkBi*MC<@SFH>?k37?(;3mBD=f=HPNjPVEYFNIJc+kq?JG,k!n
5dp>%t9rZK+8VLBILWK2u!OKoq!^r@VUZ9`Q[XKpjd0IeP5AN6,giN`Z&c:A-i>MB9c]A&]Af8
UjaNN/fM]A.\:U)R,<F:Oukb;hL]AcO/!Dp/NV(E;=M,*(<Qa[m=$M:3NOW5lr\qA`_r<PXQq.
/pcf,-&I4Wq%]AGs$86!l]A<7Q.$D[@-eRMlN*)dfDslIbFWgXY6lN5CZ`:==Z=I"\VoW$Dhpu
<'M)>RZOO9d!mJZ"(k(mlR,j?mT$(MWna&>CA1il@nPoVTZD4..&W9j1O^b/OYmi]AeaYM+QD
o(JX3G'p]AE1#BKrA4>ogd2GeXU#Zqj?l.DaSh%+lcK7E7%PqACJS6dIW@r5gBb*#@*<Fh-OA
PiJOhrYT@:\mr>N`k_ma\Rgp)Ypq0NJK4-Sp:&4;M.:d,&oqrA,o#9e$M=pO>LVpPg*JoKu3
jfm0^#C]AB!;`A`FL&JfDh3.$"@r]A>8bdD`,b.;Y2l+&KhK.W@\SJrh68Ur0&SmDR04pcaoE"
4r#"mZ7dms[th-k\Bq+YSF7-oJN=_M=/.bYFo;C/Gi07OTcEP6f5ZX9d)'rb`MmBE!8Bp;G@
3$l*F%sRM"gN:1+,TiRc\-SGRdW$=P5.>W"*C:QB:(31<h):*o84k]A":u"Eoj2E0@rWFV]A["
Nd-rP2'Sc/D\pgVAT`]AEj:'4eY7,SU>irl!0%^S+fWU_;=BuO'W9iBk<^78l![`$oH5t<'QK
kWsqH@[H6#&JbONKC-FVWh3lW7!12>*'aHd>SO<@r3tHV*HM;s3iN(:+NYNVUp/eHd`B>5$7
DE&\^U`aG0%k8e]A21>Y-/?]AuYfdEQ"9C"O]AB7\RJgXd-,3qLs)G%eSP]A"a0V\LMB;l6W4B0o
b;)oq0SjT+=X#DXmoSW]A[dnfcu]A+N*o9kjYbdE?dZiTbr?*XTV!BC@3S<gqSs#l#;E9rRC%S
>XbgR;`*uhT?$6'l!2,ILaD[_R(DM%<bl3`@<]AI/*sd,@iZBPb$gVk#Au5FoX3Q6ZfGFVl[3
>\f9dWL/`M+KYgDqSbL):rkn`3i#PYo2A=Tl/s(<I!/'lrtL7iiMj(ZZ%,q'GMG-N<W$c%c8
id9)lRD>N(jX/[R#i5upEn<^l^VD6/MnR<u0aI-Qg[B#<3d6V`4P9$RQ3!ZDF$A#U"OXi<$3
g\Dja?0#rk72uX23\R`]A+o\JkERJikG+%#=_u`nI?mWJP]A)<GV%N@s7QQkQS*0RJJ:75W/j,
HCC:]A'[Z=]Agq`_-5]AQu`:PZ.Ao+o#W`@_L[Hah:pEh_m$U:,%VBS-S")A+rCIf@R'jihMKFS
'plNIbIC)=nC):'&4/'%ETE)1aAW\U!Mq6]A@so1U!q4/aW_qd4MNNY7:8P+Jcg6&3B>,]AbK)
KUS4TF,^(Aa'+k@3-s8C)"e$oK1;eP25K@EDS5V1[2;YL06$R'Ko>C\hYt_Ml#iaZAZ6d.We
)PmO2#VY+elYOBe&'uJS3na=+^9:'hGc5OY^e5`X@EU8n\2RiJX,%aMVJl>;cd2#&(U517:Y
K!ZYDX9C28e;GKFTjPA">aPQL3>su.'NZRP1EG"Q-IiU7d#;uJrl\ZJ=(r$q1NBpZ*s'@23I
8C_-c5#s135LN)l-4%fooM'qCcuYDK,Tl+>I//k)_[c%7!LJrnB."Jn-rp&,R1GCl8ZjnCL=
GfZh=nG4n'Ws?MffsU?__ofnZ!cL`I&7P)F@:;17UalfjjLY$>dY6fK`n)hHMq:[1,2pinoM
XSN2G2o[Pg,d7FK8$Qm.Ge%_D=;%B`SBu&SaBsN0u,M>$5%XdFp*,cl*4!g8%!]A[-j+SFDm"
^idt.[31jg2#f4sdW]AO'-X?Fc!,o;`aK(DZWLjnesZh[.ua)_Lq%1soN);$$B+%'cN`hAA0k
b-&R#B1(6c*(D&aI_%WOX<o>eJJ\X=3U='gkhl^Vqm0k`^`fo+88XNEJIa8//uoABAWH]AJ=T
t^:j@jpIqeX-L4lK8X>Xk%>?rMWkL*lkrI0ER+2A`:jQ#q_>2M-,K&86@Fi9RJ?VNAe\pbug
1rbU=f8kYac<XgD`sA?7Mk[o$R'01gi2H?@!A@2<d>=.,15`bXOo>`?2L%@:m;Bi1QCrG[mh
Le5&%N$FLE3R@c$Q9!?gGVK1,G:MVA`i:<a%Bp-r2%h$@[K`LHG8G_rDPjpj3l02S$%HJo9*
tPnb85(0m60.ls#"\NnVl]AVMkW+23X+HPu:.S06b`iua0U"`E(sO;@6AUFB_Xle="?P@_bp,
W[.@muJ*:Zk$cY%18GEHE"k>;pp`p!39/MPoP69cmBa+"ne6@:J48+;HK:gR!B4u%@"BT7FL
?W,KJ\kirAAK4J,!kf&>Zb;D$o'+TJ-CO&g*6a79LmBe>Q,7U2,_#%C\4=$GA^qI=I;lQ[gL
"0Sh=VSD7=*QstPA_eFa6MV5#W-4nLD/D<3DWc&^$D)[d6iR!9>^t"lr_)bu_QRsCUo5,Y=(
5o`iN/Dl7-I:KRQ&-(c,f[;hph9:KpJi;XIE0&nQU3&AQi`2':j9Ca_>$+c"t3d>8$h*Vc/n
gZ_9DDppg+fVpg&W4m'5R968(!MBkMe7Erh222[E418N;i%Y8SH=kf4iH#l%OZ^nJK7UlNRF
WQJ6-Un1-QA!=!YXE&P8gd!Z\&SUK+3/l<gaN)C5e?Pt:UAYoF_-q&hEjYHs-6BTC`cf&Bq2
[u0t2pVG(rsf<uV^QXgfC16<9aIPq-]AO"FqVLL*bmk?dQUC@='%HD6V=EPV-UR),m`Hm7_k4
AFHW)15hMi6!U;Ld)ii5+p0mCTIZ"!/[9(4/pEVr'/=rJo3(rQn/LVL;0OaRfr4lMFtPGmS1
HEWZ#&T):3B5/\'0V9`Qt/hSL2,>naodsXCDH9S8>*7msJgjR;fg[:p@c,NaN&GEIeN-dt=_
]Ac[[WsF\?9t,Dloa8N]A3m#,=A'Ebg]Aa[3-7O)!d\@`9U0U3i\IUDL5>/FH!*1E&WQ7Ud?cr#
l[L1=-AO==0JdaH()EnlaAp1+5kIX#\D@dZ84n-!'Ms]Ags6tGhn#i`k,3H=F9dBnhP1"TBIN
'#8MueP*JAb=OpdK-`lkoXp+JQ,M8aHg`\IVqMM@sAfglrjqse\R$'#RtjRdSs,J+lL_68^m
IX]AK5^Z!Wf`T-%RmChbDml'g8=:t4^h?)Ra-c.@_UOZ[67s-)M`7&Tn`pr(rp)tBL%0^suWD
%tS2^&nb?*l@u`>0erc2gm3'jM`V4hJXZ/IV#%og&U1YT.9%HSW`i8\Hj>(LUf@m/q6#psEp
hgM*nDk+gQO+cAVS'N")cPOX^"-6!6\(=]Ac[:0%81(Yt&W.o4Ta09,(qf:8.$\r+ko/'n'6>
afmP;*oJ!-lEc3jN`N6XWMD2LlDYV9:knA^f=C5(?*3$4*tb(S?B<gNZR+c^SmHDU'LhZG&+
W+<>=k_!J/ZS7I?%Kch'f+,l(ph[E2EpWe<t/M%K`S_]A/7`nD!#_ELo>%G4H;2aeJW(prq7"
\mF':Tib*C-/AB6q0P\mGI[RK;HlGDle5VVq[\jbRm2MbErK#+=,C^4dW1VTf_D#T[2D,MZA
QpW0'P^U]A&!18q3n4fcH*;$G<X!4F8*Gi3gELJS$[LAM5C6q5kmBT/VR`g\(+5F*":<n4sl]A
#PIP+]A@JFl;'@e(K,m7U&j/8ps[K*4K0Js+SF)l\soh#Buodjp`"iJ9K8L?J.U?4;Ph^]A9t!
&hS6S3u25I=>+@/9g>$7.%eNoZt/$.<HrlWlDnCNN[i*Y160XpS*Zua15cJ6r[X9XeP8o/s*
$VWgQuOUm>b=S&6O_?M@od^7g6jqJ=T'mpgDFd4m[ON;1Ga6X)(^RVeAI,]A$FQ.#Wf4)Er:-
onE!hRM9DpQG>nfMgVs'SeaC0lN,a,r.0)XQmS3GTf/*?Xe!n)c"_`sX+CB_47<=l).%C8DH
!Cl=NuM7U&<$<dQRIi=VMds$/poRFV&QsaH2JTImQWFVjbtHD@f7,X)p/!l$%MO;Gsj=pn7\
<d(?2pIePfHNGKeZ>3Yrr,M5#g1mcWB$#&`(MeNMHRrc&Zr@<RTj;aV$96%G`nn<#3*N\&.]A
WYsbh0t?eEWUd:'.bf=EDO>gMYFjXA_1;?BB@:9anUo='`WNnoD7Oc"=?BkC+h0+(2I*.oae
E7>['37+VD8jeZ;?`Ab%7BX:n!LiG=)pb?QDmIXG%J:B0.5/!Z!U\H\7/lER5?>!$Q"Qd)7i
Cb-s=Fd`9g)V:3.MQ"&#k(hH^<@;qB;=%!;,NX/6a;/EoQ"*o<C_[uPj?;4\HgdbdO#h&E`m
kdi-i>[SVJW4V$oE1[ZR^8OfC/o/@Xm>`3h&(2/kVC<ZNW;ag5.$-*'fVX;N7R@@d=j_[&OP
tUmW9?8d3\X#.XY<>8'j;]AY7*XDOYR;L-/$(rO()FQSg0'1b,ENBTff_nG>*""0S:RDPW?.\
g^-eL5=Z,ql"5N^mgcB]A%(.4ZnnlJctqC7,i&9Z`b$5'epX1*1QF*Zf:q\]AksA6uDBG.[o7Y
GTN-D7Mb^ONZRE4*@3sb1F)-K$fpI^ssg8+D6,m[[BbP0fhgmj9e5tBXG=m(r,9T>7^T9.SH
M",-EVKq=]AK</8Zo!5ST]A04FBZ&Lerr`XkIE'^'15KEBAJR-5b[>c4i'*S!8@r(t(UA3,Ug]A
J5)GL0D,H9T%XohMejYo%WJcluFq\.4jNJn>$b@m58o>R$*MS2+Zdg<(r`?)LiIr?@iZ@N3s
2pI_Xn'Tl6A6V##[5@lU7oqXqL:02KT-?*C1Pu?mq>[an3)2'8e(;P,qZh7d<o]A1Q6M1l=1O
hn]A:";Wi7VD0]Ad4)3Uf`uHTX&AiCJOL%Vk"#3?&($o(#([\=27J_0Z4SJomRdtT$:.Bci"!r
LHdcOsmL"u.3@_!Q#lTgoTX#FQ1!SD31pa"M0h`Y3373T>64,o8#OBqk%8\N9%r"fRg<>5&A
iL-?<gop5g?r7.3`$\t^?INH!#o(Mm%Ci1@3&F-DJ^3lR=^\T[KTXmR#P'tQcQIiUqNs*V!`
jZLD5R##O+)=-#036/%1`uT!+&`m[knr74OIaRPqUBt\Pr;T"]An=!A\I[dJ0G*Q#[mhS3\`:
h]A(<lLNFPXGFH.4(0R9*G4[5GL,4qf>e!E8s5XctgdH\ZhVNGoD@1$=b]A'LF%4IGa'Mbp$V8
gj@;MUO\@>/;,8<b$beURkZD4).q`Jc+6#(;@uL>:SOJG#ciHa/47;*eY>b4>i2Q&630r^&b
s;-[`Co=#\MuCP_b<ei[jCr0U+aYZ"jL5`sn:^rtt_C%&9;*ZZ]A>*sbJVR/i[q"0h36"jWGf
38O6@0=kBTj4q7dY=XEteksD$5-;j9W(Cp^?YT>X95D<!A7'Hq=U0Fir4\dC/AJ)oNRUc&&'
)f+RP1Z(Wq!Lo=gHC9>7lD8E@oAcDm.V=,i\TZ0i*\EYA\GB1/:$eT?pnqq2Pqc/=Mk#TSq4
#i#8ut/Dq"_bFe_*4,A\"aVI3[@2cS$]AIDZ98:n?Rl2NgHBUIP&^V"]An+o&itH+jd.B,sDcO
8b]A74*14%bh)>,?d=p=4LK+j<o68=9/D>&d^'k$aica"nFl.i.s_4bhe-7(Mp%?->[!20']Au
<<o9"p;_g"!9@B8*(3ZC7a9)`.GErLF3rM<fBL!lEaH3%/:o9d_E=ob4P=)<SkpRd_'_Wri;
"1UoS=_`.nF8gDV-TFP4D]A7Ch1/YI."s.<eZN&XkP1iX[TR1%midiWQ:tki+:bM99/VT*I_2
&7;*OqG1D;;<5(Pne#1Qm5!+"4DD%gC5q.*>/T.#MZ_JFMg--M1'n*>;K*F(fBMb-CI\r"T7
_:S.AiFJO$PG$-3b^=G]A<5^,mNB5^j^c]A[+b15\QDnpr\(PL.d:.7JfTYGr0j:tD]A@C&V16p
<6mt_kro_<7Ps[ZI*t_lK!,g>FaR*J"EV[\8?N4d:6<ahf6o*l#gp1D;<+2F;9QdJ(Flt*PO
S[F7R]A1T:*!`W/BUWk<S&/6)Gl^*8hPF9%ef;2Y&=ZkKT7:aT<.&?&@5uqufiDr$YpV'V$0)
FHpW$%@4j\p^>_F/"_IQ$j%HUc7&@+>cXQF6Dik6%ukQpL+h(hV%l:*6Ii%5qi<F@c2@$0f@
M&MdHO+(bkJfY%JeKa9P'>MY)@7Vhl&9tpaR.qRHi;6$^a*^/?m\)"Z'S"QI4T4W(FrXe]A<9
SMp@h%F:;1C[P[S9MepNdQb6qJ5F^$%.(<'oli2>uJmFea#+`R!@+ne_:csV<<k;1!ZR5EI8
5P`_I\@YZ35.gD@gs=S53D=PdesER*f!\Z04/uLkkGV7rBPHbQ!!pFnU.;1#*qZuj[qC(/PE
a@aDo,kSe##Z&?a?UAY\eDE1U&u;jDh;;9:^lDrDnj#>5pW]A,4q%s'C<agG1iP%QlX]AU6+jh
?cD*S!>j_>Dg2Ig]A!`s"0e^=]Ab$LWF=m&V""$5VGZ]A4q<K8qmEaFD@PRc]A&kT-L?I4JUZ8rS
V%dGuuc/Q?g;eX-UaTj`*%o&GbW_$Y;_Si9bt%>r6e80W>U'3\0/a?3"mZ]AlP7`B'Rg:1C;S
]A(iVmecZ7?]A]A.-%F4,3^>k"i'Z0QY>nk$.I[`,40>9clJuC%cQ&j176F)<U.@*>-V::iG>""
S!?o<#,Slf"Ikn.^1jjn]A1EUkqm7#<BnP[fB`Y#.DZl]ArmbXZ52XiW)r.G<4=NAc8?hLKS7"
A.<"K^(X`FaScIR.$D$>b%V"NGD10"(_'uLJEbn`"p9TUuZ,3a>@;nFIC?njr*:j1FoGY+J?
93Ok[$qZ\_F]A:U[/p`Cp3D/aUZ(`8BCbWjAZL(Vn*N)V[KaK[CJV@RSp\HZ^r^Q>+)"+5K-d
MMAPW:1j\6Wt[SN^t6.?C;YgZWjEeMAV7o`55I`9Y<VcK^/E+2(dS>eBg.ddp[k<53A=EbXP
=.k[.K=o%U4Z$_U@#q=N%>0=<)g6f(G*!>PboK"IpWqdjAY0mDI)WS(C"a[tK577o?e_ek49
T[6@BG%_s#OWQ0%4%,HQL;_b?]A]A\&Ktrq5^X)]AbIg,0Y?-G`IBj4E1?1t]A;H$VZ+(61cA:,#
[%R&JIP4N,LhYY5ril3rh+^t`\G%biJtW`_!j(<S/2*!AJl7HGi<.o-_j_4PSH;&C<W]Al"ar
Z=TqU4]A_MX,qOeF0[ZlL?"R5.$bPO`Uc+BYf!OMJqJXq]AYq*tJmc=\eH!HH)(ZJn]AYS'WX<D
J3._Phj,2P3W"Yo2Yr3$/1Y>hNFR_<S3WD[(N6@6OjGaCFS8n!OUR;'0f/+4j5G8(=c!FB&6
:6oDig&:XSjMN8DcpFmRI.m[mH@&Y-n8Y?_G/K;cLMXYd596I1j!]A[=JrhVP@8E04pM9(/u?
b;.<LAadr+(p4@`8@#!m?]A..Pl)c<4>H`=(j$0XOEo:bIhtsf6W*\<,0Z*;BusJm*7!ks%ru
^YH)I;:[V$HDo\X-k$Z]AmqmRhu[o7+@p]AQY(rm[`[u_"Gi3]A21/ma\gN&/]AFij'D6g5+X*kc
arc]A#W29]AI@U2+Fpc7Y4d""Zh-61CGEk,#PnU+c5fj)-<6G9aYQTIVi<f)8G53D-1;`';S0^
NWZY6:O+3$1SB2k`H>r:WjXCT')JEc9h/n7aQ6&s3qh_*n!+'OImtW[gPl'-6[X%*;XngCbD
=JsDX`_`paSJ(,<V(40DV&fo_Xq9kmeHC(t6MgKYF/!J5lLsiX+pF!QDT_BLDCi`jF?Ci.b6
(BTm&YRcM?W7q]AVqc4p?*,%>/4F^&"qu6WrPE#ao]AN=-nl_N]A`r8A:^AVmPY*q0elUfJu6o6
^YP]A*9k^/E49&TEBdq]ABGOnK*D9?9m`t0e0FV0^''?lOSoYX[S0.E\XYFg!sl[NbeORV(3i.
o;%8`kU1q2/Ma`5C8<A*pY6eA<N$;]A8Hf2Ep<j08gP!-'+b5`7bZV=Eql9u7ormq)B@P,GL[
5)R[c41LXLT7`X@@a[k78aIGTpA^eAA*a>o=k#.IFnL3S=VSk:uKbgoJo^mZA-L;RW--g@&p
KCA9sMo1F<*9a!t,pfW1fO>Cb4JoZaKb263L<7Ahj3*V(t:WQCdm3(DpX'[g59g/R]A1I:Mc4
;>WWG+D5g2>'af0SOEAb0N<"#'[j9:::h>ZfWm,l"K5j`Z^!kkpK2g=@p+AV7Aff!XB<Z-HQ
?!\+`PaTVp5>/C,\0(Ht:rGH9Au?J12K=::%$,9*6%`3/!nTg?O+?=Fi#eL'pSg+1-Z'e>Z,
>(!tXf%tse.t.?jd?Ct?iV%W$]A^6&r3@j[C7!/d?8gbW=.@`[Ejk!/2q4l)MX+:)c&%Vf!St
PR#PbZ$^;TL!DV%.t/$$r]A>9sUn\;=DgO6L$3eNMNc.M$92jk%oqml,9SeSBF.RWS:2$@&iL
1UksZFJ8+'o!?I9MbF*JS8!e1QXPrA^V#hE8CRItA4pO_>CkcZ1V,K9R8OF\\GTfJEjNX;#h
p+.q(oFlA=Hs-#ipRTjNI:NQnbe[p9NKZ*\R!A8opDo0''eHqb[SLudtu6j&SfPIF*efM5"0
3;*4(.\BnuHM.RLhT\R=:2hsucK7^l<JOqZdGi_!aj!l`,Z1hLPXF4T/DYdG6<pWiN96l.2g
@>n]AAp3a0c0rp@L.rOAoL0O(bL!;N2R>=k'$18b=>&PR&nnitDoXK5S3OK,PZuA8_]A1"]A11\
(R%<N:8%:UjWUH,mjO%n8Ej@afmel/_R2q!R<OL;tX_*S%EepIBmAH-??%Ag^V2-_s-NEubm
a86hp[>U3Z`"bHa=\QSTfI!G_t]Af/;Qs%]AXF&gbJN;mpal.\:<hf9A>uCofaZpE7p7J-&Y4C
HEKg]Ai3RtDPZ3VihhmMJFJ%(kSf;Le2,j2q\Pf_>>Y]AaO$kh$DX+fU]A_fkY2EltW#)`<OTl'
OBl#te1<#JQgIN09"Bhe5#l1;XE;$2keoO1)drICud7&b]Akn#5W@nSX9MFXZS%N(=tdSZYu)
T,9`BeXiUN>E1kD^FdRB-Y45M(5j8**c<%LIqRQMR(j_@KcgQ$E*57Y`.1!VZ</Ajku$FNEa
!X%dEbmg43gZ72Xj(k?2V]AGB+r2NoP*%ud"@BYbLXZ!#*S)j;A5k8>l$%+q>[j$Pks8)CObh
ubc.uqZOujip+_7PK_<\2@DkcD+Qa(t&^+]AK:)^hgJpqG6V4T9`3;0=T!ElXX8rS:&NF7RlJ
3EaUbApd1$+nS/fAfiML:_TOUFBJJ:d7]A[o5N"d7$^@'k+6"uPggjUjPD//p:u/0PAZ"HOj.
ajS@eRf_!TLsY/V@CC/V3;j>d*Kr#;2TnJ+%fAAF=$3lM6j%*Cg]A]A#WsA8EU+pQdcN;UAL#&
*d8kmckQC0^N3c[8"IYEXP[&2p$c*rOTbJP/.LTdH?qnFTo5ihFo*\YFB;T9rZ,<hd_5W2@>
j<P@s0<!$"Tg;Y<L4<#)ZCc?C[t&[JlS^HVK)lhO%j(de0'N`<3;[ZGEmIQ9*Smf;B<#0/0X
mqDi?)J`m>?UeuTBgD@'QXZ<DN?.5HnkMYA.;W!f5"^g1s*,d%Zoqq#9O4!Jp=5=@8`2^@q4
Yo_[M7E`I57g_dH_65eVqj0H#7QY:q$&'?K&t9*;acE=+tUPk-U$&IJ,([62:icpP]AGkGBiV
!X!e$DY_9\+ce[tb8*b<5r"oUkd&"-HN_LM6#<L<7sTnK/93O"sdg'"5]AAC@(H2]A/#CK#57e
aT+Q)j-K);bm0pPIg;hnh^q*>2ON>Pc5UcWCcp9BQeC/:_>f,)fd6t%UiNOCc1fOsgi9nY`[
?m59O&Z!`2i%9A8nMBs1(N`I6MiU3H?f>-;:CCE@2a'gg14>EE22,GlA>d>eTRb,!)1$90#;
J4:,m4gq8ca-f$HT/hJ62&3'F8Ldn4ZW$r(lO58%T3b)ZY+((&_)i,XaE%+$')Y"n`%*.BrE
GEo?"rBA.O.1iXd;_6s/[`3!qme\&#OY1I//%7TjP#>)4P1MI,$'mAi5i9=<*7p!-L8p?HSN
(A'V,bS\i'G:W.G2KMu8]AoEk^IUrL2?1dd;2Lk-S!G]AI1+6U,Q/V()5!D<our4V1$KJ,_`'8
`:kYB"h_^hY#hEq^QZ?>D=Id0X>q^'^3'[^h*+<CKd2^kVh+b3jC/G.3FK88,!ch2DIXI&.i
:F`YWJ$>':G``E3_Of."s-cP+oT!0qbDo#+RUXa8W=lbiGhiM=Bp4,[r%b[9(G*CS"(R6V/d
rTrM,XGTCV@48$^1cUG@E>5T.V>s=K%oAnYqq]As05NMlpPc;k?6U;)Gq6'!\tdgXLV1>>a[;
4I7IMnPs`5t*aupjGgOiOPR"GM,?M1NC9RG+.q\$opL63)F#k("!t)GED/=-@6/Y5s<iL:o8
L4!m'[h81[aCl>r-<9/XF4j\TJ8)=\q7aeo$UDu!3$$lEf<M[bOP]A_-1P:#k6Jj\'UZV.qDS
c/DmL#973`H$R@s3^&]A>jfpjO1!=#RFcBji`2Jo\,)M1bJ,.U^8%4q*[<pr4:9GL:)4Hmt/H
%7"`u(-bG>aho3UIQm55)XFg%tuOmNl"6\NL28ed_91=1EHSDBB!oV"HNU,"VPV'mo9EX7JG
Bg*=l3Q8@1)?;=Q/A'UJ*AnL!2NcHt4f&F.8k%=o)ld,gHoR9(FEB$1.`>9beT'D_!*UId/&
6,o-4bKa<oE6F]A]A0uSZO2"Xu8W<,>,;fK-UifR0-$]Ah-V/?$8%+tSon^sBi%iQS%go;A'H:c
U6.jC_`^`LV73,-0%fl!#+[%I7//eOW-iU]Af]A>uFNc/nYj&mtGM&qNNXf`,_$Z?#<rS-.$nD
2@p%[eFJu9.._Mff4O<J&Q&4u-;@o$N8oCjob;&3O`H'!Sbtc=)'k!8gP$&oP;c-1fN9m^"r
8)$oaBXd%aE;7#cF!!!$($8lT]A1BSd25[NuRCBp[E^d<Y+u;HCpd;E"mV`*P:[tk&L72P>,3
JI(o[L-tg6Te=V',d1o<5Fft_4moPT3%)1\p9g9k\AjhEY2,6!&j+@.l[lpO".Z[`\7Y/a'c
,cQ[)D'2ClF::dObG`]Ap(OQ)9W?chd'fjKnY7($q0rk07*CV3ChhidfG.f-*<]Af!1mqt"e72
c;+UjKB&UKmbTPkiYPpte8p6<g_&FJC2(5rSD"J9u@G.Y@]AqW6m8RtL#[;[%<bFH(bIGZmT"
43I9KPr)OL9^ZlbS`@3LI-tGdlM/3ZR7=(ea_GL,\d_F=J".[^f1)\#M;i\/o*P53WBGWT0i
s7cC]AH$6=!LeG"2J!gDrLuPEc-=)^?@Kp>99g384`!d(jWA>rYDZ`EUu_>]Auh<J(#6TW`62u
YXn@iR/7Zadk;f`N`DDg>HJ.5?=)[kkh&?HTjrSe`GjS75GeX_<C0ch3l?Ap0q>catbTE5t(
a=;HYCtKj<GofnPkM^d!g>%XYARRL[LO(]AJdb+,&&OQR=Y#[adC\QJLOi3HnXdFTrZokD!mN
?p(@C'R/^Vd6Tq.?"S6G&knZN3T2B2ZeCKafWp:\#he7!'IL$"#YnWau2gHYsQJ_1J4TZq+U
pG@ZWWrKai2Uo#U7JPsf;g&ZuRh"W]A=O6BVbKBgp8#FJbnkQm;*:\au2?I[sW[17kTVC&#'8
&B^U1;5G+3,fNGfoOA%B&T3S:$Fh;En]AXZ5HA$dFPhi(@kGtn%OrFf37WrL.M2T;>_6jZ`>Z
]A,q4qS`!0-+7uI%63\?gjV5F<s'm/#)gqicje5N080isA(m5j.C`<M;5_(-[K-`^r[J?qN+Y
545@@'91li;+dAedl]AF*uG#R^Aj_cT=Xq_r*$8$K1\fW"CY;/_8gTH.a1+sf!J5HZ2%N]A:i=
?^e,LCH!ISfVD<X@g]A]AcA=+@AT)9En.^E!ok![Ol9*1G:gq*Yg.q_3?A@.B4djoFoT:*QoUt
Dskq_kj7T@4s6dG)g`_BNV")PI;EHr8lO[@3I`4^H^;+(=W=;u5r&7t0*nY%M/JRdiXHs0ra
p@l<.<3O8J0G9fq#^7+VkJ<G0G2)VJ1dO%$J3?ZH'Gln%T`#"8;9G%e4^nETj["GWjT!pN#1
U5t=Ds^/Rt881%!I\Lg]AYr2=EV#i0b<m(;E0EkjGeB=jV1-`SWq<a]A:VjGirZDT<hPh8YSg%
C]AW=J4LRJD6?_uT6hB+I?RXR(IO:b9K`R49mtujqqOd&`1MEq<6U-7Ha?g=[o[$jR0NPlB'r
t.Gj?I-pMcdf%bbq:^,GUqLhLdT<e(U!eT&uEqV>SD-pJ8\c1O"E2fHdO\LUV%04j@"(.kCr
W8C7Z5r2P[IBn]A(pQrKt&^B.Appct?`^3=b*fPL^QBHBpk62rMUYMdF?P.\rG=tb=\5.Kn06
[,EP"Buk_lLmbe5N<S"Kn7cf/\NE8I3XIfSo?#4$,J%5F6.K:;pR6qZmFh+g0q7i=ZsjfHeN
2P+m8+?;XbMP9jDD="qY9gfpL8/fA)X3u@7``u.YZg"8>rmqJHF;;Y:eKLgmuC#BXhEg8C$Q
e@XKSa%#bqSk(t\E0LL'W^+O[jH_N:-57?7e\bC$Y4hV]Ab&IsZP1%ih/Dd<.t&KUBdRs/kT/
\AN^?r)U+o:h2,lQG3aG81?RuMaam3@k9iXXJ'D&\q)!`2aY'gE9k@&4Q+DcJp^:=%i"UhXc
q"K0lbF4*EZZe'.mW]As=<hE6tA*X2DYn_&(p;LC,bKJ-(n[&7XE@Y>R:2_3klI$M+\%@1e'9
Ck\=JjP5>U%c__Au$/-^oSMD/r(.-ZLf@\Z-qk7KC.//q<;e4F.%EcK8$9(a_/@g@>14>"83
*UP\8pmm!hp76]At,"lA+,TrP]AYnC-9Aa)k?JkrO:_hjjRiT5ne7k!jbs@?c`\+cjHg>>mZ3:
_k:J;Sc*CR$dBb_j#F:"Y<D[6e+d)[V)I.XGh")C_jQW&XnVlPcUaW5:*7n77o;o,AX?km>k
cMa21<dF6&SkAtUdLL(EY.l-R]A=cBanZDc3O<kqIpYTm-;-@pd[uoNlJ03AB#Ag!RI=!YCB,
gG+Yi=aIB)EuY7,D)2mKY!qrTpU1\&>l6,@q&;PL$2$,2>sO,'e%IcO`+04t.1O]Ae6_'*+)n
(j%cUURR@R$A[[1$;#huP2X$##&10H2QA\L]A(sa,ufJ^(B]AW'VF[TBsu\Lka2>uCdLe@pjuC
*V*,)Vp$Fo^hk.Y7\#fro@%t%.[n/niVgMLYpIB5'qOmE+/X_3OHG13_+*?s0)ma9e@\:)"/
(ar3@2Q`dL=_J\!rX6oKB&6F/-3`8(TpFhn%nN1OP(:EgZeg[cZs8/"_lfA]Aq!AJ:Vs6E2kP
FK_J`cod#Zq1f^\_eU:0#^@^>tqZRMHK6GmU1Mp)$s9Nk,r0S(bar%BD)r1s3:+uPr%9KY)i
e%2?SWMIr]A/"Q(B`6b'JNB&57'h3Qrp-]A?VlCtGn!5^9`IGSpej5N+BL4\i>"L=C1e<8:D^<
l"-,P"A\Erg1KSS8,-SR!/X<(ZCS$U&,@\j'r+XHe8,YW7'n@OipbrBC.T7;uVU^*"k4hOOQ
/r7ap=%'RX,W&M(?AQM4>+:12#s,"FZ)hkZ`lOYhD+u>O-D<=6Yh]A*\8#=k_'/\pi)AIXS$9
1"7oLOiO&<COOo8>_,2aoAn>!=7Cd2dC#LQ)_ZI=&J8FciK1b3Y]Afl-amI\>\o;pBd1;-4lp
Mf?@#c(EMf+>o=:Run5b\I)4NDKkZ_W##Md`'A!s:p39WL?JP_Xk6=5TX;-[%4+nEcU/1uIS
QaKTr`VLQ;W+taL&W:HV.IR3[*\iTIGil&_HLqVnfscrtc+E_VDG:;diF@u=26UT]AQ6&noQX
,p7V#TgZVS[s';EX&_EiDV6(=mfC1Y^o8e:,aA4l46N]AqE$Qo!daf7F]ALQh.<5"FE3+j#),k
;'ZRGfjj=.`D.5GE;*-7s8@Z`sFD)sF/L7B$`E?5N)ao%n_P79'"Wm.hWtVAa[*(:"-dNSFY
dSCl81/Vr(#'k+.kUs+B=&6%,"]A.p.<N\]AdUI,[LNH.\M;Sd<)_5lHij@gsW%*Ki>tf`ibOY
Y=2=pe8>d!.gg@*kRh'/?C>Oh]A9e1UDl;a=R7=g8<td:Dd+GE6A[UZ1h]A57XO;nbgC>Q0Z1(
':'j!_F?[($q,$dVEkHBXYE#'Y_#)GCE7fJ^8`P15]A,Y`RZh@R)g&!RRi'#l]ABhqsqbeP^bi
X,a@rgUj4p4Q7ahFpX"V_CmX-F$6Z@E4WTC.YH6$ZQ2Ve16:o\#D2@.1M?g8(/"BCaB!dq<M
R;!H4&)_`f$HfP#3!,/+58m,&IE4HXWG#`Ja,mW>*5C7P0;qF?!4Qj>6`6!"/([)4@E]A3%'i
R_.+5g8aph4fc@2i%`2jZ\Z-^6asT0mT(HF0'>r4kJJ-Pu;P'7<QBh?8f53EXmPnVAK8RX]AR
QF%9(o*1A`=hQaW4k48Z_2KD5dQjTKPY2jnORs1<gUaRM5"\4Wg"&G`U2g'2"JeWLQOAZLCI
3U;Vp05eaZ\qrQW=R'.>/`m6KgY5QuM_jh;W>2eqM/UL'C'=p.V+]A7`#FP(S>eE>RY`7C2ei
;OG(oJX[<T)-RIVHC9q1oHH/G(F-4!bgCfhol5/4RunVNTLVch>WLbp[O5num$6M_abm$hr[
qhn:ObCiABWC*Ijp91sR[?"VgZT6&f6$9`Y3?R#(h5pAOWjf'Sp7+Pq7Cj'%CiAK7mr3uUI<
iHD`cY]AUG@SZT3Jgo;Z,Vfq\=:jiKn*u/!Z)<>/3F_nOqdTk%^.doH<GfU4qRs;S0+clX_t\
!3C#\S;>U0H0$I"L]AFGEV!/>mRW<E?PAft,Yl=mNs&:IS0*YPdY//t4qg'[4>TjQ%^.!1[1F
T^7.m#u^.s)KQpHhWOE*Nj7_U\\^8]A)96CR^m?+]AqE'/qm>:g#TM@XqjH)6*+hP#JYkh%nd\
Ha-`C+@J9&'k9j^,k618T)m-[aq`g]AhW5PG?;i-*l3K>IHhV?S:RjVc[<,lXcN<U$W6nnNJ.
\XIo(mk/BON^3Ruc%g*)oU(f"N3Lepn/L?m5idEGA6(;;@/eo8unAfq^fNc`=?`QO)&ft0%d
97Mc8>qfrXbm[9(/m]AR:=5Q?/RemY#:uhQ]AfA"P,ALUtSOKbhlUUP-=']AX\'A;?=G2/46+VD
H+4Y3pTd66R8ZGD7piF)?0RK_hIJtji89Sh/2ZP;66YIW?'&K/H1cTRTjJFp\D0T&jko05C\
hKYI3nt<%lh_A=[fNGhIUJ/K[j&OO@s,<l]A#u3=a`=`PoOl7V;+338fC4pPmr3@Ag-=tF:l-
qI^\&.1?;10KMhU6^J6j^R.;8mJsU\258J!R.I<U_eC((R?YSs*m7B(]AL)0"Z*O-L7r)b#.V
SUEqm"khL6M[b'GfKjV$ha(KZDI>p!9IQO>m9(ofkd"(>4F-dlgCSaaHaG%\ff/5l-@U.HIl
Qd^mJc1ntHtbg-jl2s&mcSE:pC;kK<s[A.b(t%8b9$KCM<CqaP]A#BPWI$a>RFsDj51_YJ*,)
'NZ#&HMA;l?>hQRdiOuV%V1.#TgG-Cf[^33XY2'h4Cg^C/U]A;Q/*bWJlep'2I$Z"&f<rEqss
5J8ueCh[G4Lu"AT;irp"ZGED=ku33&hY_.'c0aNTT-eLBJeRDe%?`8j!A0k,:f;t*$n=n1_s
0%]A=BpB0FH:fV@E]Ades-C*;,.@%!;M]A5oW*Mn(!:#20.[s2b(+okS2#T_Yeb4Ml:qBYa2kS?
pWes#G]A@UX+aS>DpplR:/F$ip2dk_YoD%S]AE7-p@DgE$LKX1kkF]AJJa>m?lQh#=+It%Kl$FF
qbm#pZC5;ioB(6T9m0\AmZLKS?s&LkUc<]Ao0S2U5UYaqhdCrNK1T&B&N\$CR)u3l*4gbf:$1
aek[@O$O'M#@VISW[on+<pp4it-MK36#0e^>T&2X4RUZ2pj/YGkY6?1Xofs38G''6+1o_%0;
1k=V5Q-t9;YZ!"<V%:V#r97=ZWh$:,b_R1Gr8W!*2jBR>c&*_&YD7nt4r0NAQ-fes%EFfYH+
o"rK)3j4f[bRN[/^?7aW::`?Yq).Bp%To%-XQr_aqt]A<(I5gGF_V2RYRFoP<EXMh[24%$bi*
/Dc@hHXfZogLhglQ,:pTEgPOG(*/*D4-\*Ha:0FgO`A:r5;?3\Hc@`Hro*PKaM,Qp^mj=OWK
<':'%hX]A4EuVlDa*7G<U$s6o1+e3:pUml2=VeuAq@2qP'Fkf%7CDjRc!$$=ZDo3dU'%jP3nn
s_YR"EEl"LIhmg9ou1&a`<h-8P$F-Y0*>6ctLJ+(%NIkQ0C25`1_,faR/n@P(\C*%>]AE5!GC
\V101.X`oj':U8M[j07$n]AIA&/#ZsGG4YB2LJmu92-4CY:=&-E-!SV,beY[Y*ntY)TrdM-I6
5[F@$-$"Hc#%QiHB!Da*ddN4,5TS_doHZ!kML!4Z5oR+"+r7NraC/7LV\_9O+VC@[YMO<fd<
^OKqZRomth`1so]AiFrZPNC.#B)VEAS_6B"]A.JU`IOUeYZ#1G.KD>l#"a!7FZ5Br<?qhYZ4Mr
7Za=s0Es89=Lfd<4),:Io;dA*4"-a2T#ZI02%--R'8I;*<'.c#QCg\]A:%iS!DB_d*Jbebp'M
VL[1.O0,1*\;2GaIUT17r(&F(:M94]AjK(2sRKNT&G4e+;o^[Ac_F#5O4,[9/%@,3spA!3NqZ
2)8fBcqtg\d`IQs1d/A>'W+:GIl_MVIsTZ@IXs%6>]AJ6J(]AG0=qtlc-&qdKFG%@B6@l%'Qf>
/58/K:$FNG[a.L(nQc2;F=5I]AJg2\/KMaMaamZ3lStiC([RtY@';df]Ah6/pW1?uMk(o(_t_'
H9gtlg7K_a+H$q$Af3(e3?&YA?^0U2%b.=H>G<1@OAd\\mTE\!^2J6O&S,b1^dq*T_n]AKIYK
,9CKK4F'DR^W"GEP`Z_$"BN^KkT0*r"DO?V(t>b@j+an1+>Gd9T12W'B@QQDD`uX`'HY^L>,
8W]AUUPJqQiPAq53tC9#ei]Ais36bj:*3KZ>7Df?+:f19=g"6puWC8e,6+-Z'V<T'-5]Ap56\f6
$Pn,U67e\Uc"fU2CJTotlqlAJ=1[hAj.IRAbEM3th&'4Z4$QLM.hK+B7"=>r&MW=n9ic>d);
L\Mj.hp*RG!BhC+`p:jZB%f)]AcUeK1ONJLbs_@f%@m[CC=q7^LMsgWL(ld'(Si5R(=XO3P-#
!1[?]A/2J/$b@bYqt:0"hQ6kt(+VqV@0qV:gC-;5o)#hu)Ylu!rc*#uS;EGFob2BS2Jm;pW[W
JJ%mG]Ah[QY^ZQJpH';NJl_eWX<(RH[IHFVedRfA.Q`L3F/+?n*&%*pD=Gsk2V_h)$@LlsF\^
kn&XTi[IuXs&)^Dpkcc^2u>I6Z>[JX0T<j'rH$EdqI>:&M9;0fRSha0[YC;ou4J"V[lk)Z?K
9q-FCVqPL%H@s5U(infJk*r@8]Asp)@FN,g9@=/=N&Dq-`ccq.Dj3.9RRh&N8Up3`sO+6'7(Z
($$5-?-I7Q?2j)7P^%EB%+#m/]AUdI37JC:gI>a_+Q+K1!69L@(6nss0.ojX_5.CQ:idB9Aq.
r:__(+2Sc'3jR8XRHP\2HcXgR1lslWm'XI-,X@mXX0r>.CmU@okDb(cH]A-=VP$>2f8\DGc49
&fg.I<6u!No\*d=?sl.IM07&'4]AUX,&E?.9bCnoEi<\n96`-hkaghJjZ1h*1+bF:TG)RZkE'
?J$MmMMpR!8Wg.PrO!ihk\qbrNJUrPM4B'UZQ_o9J=f$_QOX3K.+140D_K)]A_V9>US]AQYQXi
jRT51oOaO+M0C%kYK7OaaCkfrWs"j=FXl(t^;cdMhYCLY\.2%!F,6MMk'5FX%iK[t0.Y0r&E
IYeR@lK2Zk,=Zeno#$$8H`-.ILtM:TKdN.>^h(D??pm_Gb&G(:XCPgs:TP=>kS,O;^Z.3rl%
p6"@&'7LLG3Tpcr$9MCom[fgTb`4p]Ap`"W19;;(l/^J`_L+!.&8+I2..'r-^T8rOM;f;@1<"
metLMM_I7a@"OZ"*msIf_3G[[5ar;^3.VC7DV>a"1[lrraSfe[q+MHB4k1FPdN6CV#bMpa)a
[`^mj@Sk/Dm54RPKS,;'F%H$oY+1UI&[gUl#Q\^!5e+q[[<;"0D;/#'sKWJK-*GcOhX&=$_0
.9K"N8PG)>[C.73c)Qj@Ujhg&T@Y@#Za5!jAnNl?p<:(kC^R!\o(U)s4m0K@I=@N,2Q]A\#]A/
`)8S4T1AP0Uu6p,p[))FQTIg7QClEq<mn[6Sm'noL8'Pu!^:Ba7[W19?q^!;=(Xd=U@*BLS\
,>F0'OoF44l#J!ts+af(dL#`SgX6cdYbdJF'Z(E>=ZI7?F<YXt;V.]Ai<b_>&3)80b]A=u7pos
4NAX.uLqq_V0c[CMNn`Pu%>or8T5"O/IF\'nse?gWua=ob4l%Pfp;64LUobZ`SZM$ujB3BA)
bE4Fb\_nSfnoP!/g!h`WK?>/'+jQsA3PN2Xb?>id"[Ak-QHnch'0?A7EEg(6l_<(5+]AY5[CV
Ypbe<V6P2[\lnj5r`7M!3\E1R`h%ZR8J^UA!@H:MVRkKs'Uc+Qg_<oXC#/VUXF4!0Bq$91"_
cmfitA07fD<q*r36F+"*"(rFNp&oQ[2)?o"HDa]ANnqpC8RO#NL1n?<sQ7W)kSC613n[g6AEA
<m4,?8pg=G[MOt2W"3`1[D2AfF:1.DgHeZ-Hjd4u7e^%i$hn"r\]AN_G+]AZGRRp9pDO,PJP[[
->a>@'9.lj`'?J4-d]A3fA$/\'7eX8en*VF1TiBpUTA-ZC7hM2Y!/?!H`?qR/Gn[[7ut<H@ER
^[pkb*ZV0E#CT6ZjHS%h3"mV>>PnphreKM(<"=T'f9CNTZo38bV7M%uIINsc5X8b.HHQs<jr
+6:jr>EnJ_8_a;'p2An-V$[JFS^I)8;*B_u6`;!U5JBf<R2/ETS[pATJSMOX=p<]A]Af.F>3H2
;gckd%tl7l%7>L-I(PVl4u\LE/g]Aa;)6PqF.[>O5acV8Fb_."!"\=Z!@<6@t<r#$Q@^I.bU-
\[%Z$25!9)n]AL$>NSlT(qBRWf@gUbg8UGXri(5uo=OYW>GO`NaG!l34m/'DI).ehB(ag;P^4
8-"+qF.YEaRcSeqg3df_j%O#1B;lXT*tb.c[TU]Alh@g@h-.0c]Ae*h1;uL[C%pk,`o5_Z3?>-
C^Y/A;c4P%3@_?24iXAo/F179qn%P3YY(HJk+D'm>NZogh9H>RN<N$A.&=S]AJtfWh57:lAp.
<L:Sq1c]AEYXXfT.!7sIo^[BcBmiZmX@PX@an&f<c`i4D&nrSS(N!D!/ZWsN.#m^5o4]A`\GDe
/3OZ'Pn/UF:)p"jNd"H3%2Zi+B+(&C:5Vl<qH*a,'r%*(Zo@Be8XaW)Tr4`UhLppTu=maC+C
fR5XYP+'1)HAb)[p^TB`plATM-cYE9d)HP\OU4g-!f(&4OmeF&f(%C-L#QRr:4Fm,]A#[4#[D
K9>'bI!tWeq'(d(GdTPU$Bt<TCo:a`FZ@;dR[M<'Y(_]A'H'<D96rQhhI<OXD.9Kem8T:(cA3
c%=oGjn3),*7TW@dm==23(\_5N13G)A#<`^VLR<Gt@DDc">\<CKb*#\Ll_\hN/r#&F"?`"Y4
r*_3Pn\b6,jg(I2ObZmmJEn8`T-:3V72X?&BJrDYXZl>LH?r@KH'O`:*5o-N?>T>DTXSJf]A`
fbF$(iJii'r:JO'kBW_'3nujG`c=ODV8+mGT/pqV*@?QCj(8pC-3UEsB9!?hX6'NH\@5if2d
AWQ(KK2"mXETJ7M/5o.79mamI/TJCPnKeRb0+k)JESLn.G&>bF7e!"E2jQ-CFC1jh"#St[U+
&6Y]A3a&\m3!A#_MG/3$/CWSc#g!iAK\E#,:J3(U=;Gu9g3::7D>@M;hQpQ1g2eW32/F.@_#%
dS1()l8!5+8$_2ZZ1[aham#[4X6Q.fCo*8l5s;u[,t"d[;aA?j0IA4NXr<^;NY1@&^q"U$17
;qfh9^nP'E^amu"Jq#?K=q4lM!c"UR'XUSA>@gnAg'GLKbHd')2#TmJ1>g!SEW,a3Y767;@N
`Y4@npMB!Hqu6n(*Zmf_)LeoeZ+N4^SsHFD+k<+Oe'UnW;T'B9V,Rom9p-@\NCT[7?]A-LNpn
Yj@u#T8KiHf=seuB-H`9l2=Ko]A*Cf#EG)*8NGd_JcgCh.LFsU[k]A'!A`VtoSnrr,ESrV^Qm2
Srcd^H*A7aFN_ddd2rdobaN&gXe2%Z@7(,/G?K?l'nEJ'n?aqIh"A`$h%jMh^FTL/Te90qq=
_$HR"t_NJHjd)P/'ICG%C3OF)pkJP7KqXj=@WPAqU^9+^:^Mc$'qds`[1rOm%-9nk*r5I`_B
r8)uA1G-@ElTmW+455ii,I4)IO+S\c?6V1+PhOac+V^r)4:etOM.=2$92Ar55u6g_ldn:(Z+
foDdpn)eN.#QbN_8LhWXJ`7_*af/V/]A+^;5#P!CEKsfD)/7CQ&FXrI7H`rjQ-!c5HsMC@2o5
Z>T&N]A)o/RilQ7r<Vina4^^[h1l5<Y)f4S2bqa_b`dM[J44D"IB(D'E>&)Yu:V,)-")nfr3E
g4q!X`1Qg.j(tmfhhrO:9N3dIMO\U"53poD*V<lb8.JYW<%FUQeqN8ZG1U#]AT'21Ie/p-k2R
JG"_jh;i;bf`K;2]A8@M&Ym3]A(RmaI7?=MW4GsGZbg*9^<]A;#qIL&2h'sE._2YTZ=*B,lY;-M
.Yn?)Y#\5XOVPh^aW.O,<sq9qqcZ$PY!C1ek7*fngFA#>E-+RE%r[CrVl9,i5TGh-elG"'7)
2r&PT>H*0^50phYJDRAQK,4BHSSLU[0CIoJVs=k$7GOA6UK$W(l.8?n,plr&5uI&<l1S+%/!
8A&aW$=k6</$^tp@0]A`<#SmF.`3%0ZJh9"_FbPlsuEL1-E4FYWWo0S8]ALgEq\-IXEL`fB$_j
tSk4ikX<.BkbfE;%BheSPdM?MF4/IV^;9n\l^4k4&an\BVdF4PG_+E1F5.ob!#G<j;o[OUg?
II12\NhW/"1ZYiQ!JU]A'Sq!7mFZk5"$[bJ(@Mmo(/u#cm\V+T8kPeZ'it&?l3t8s[R)eB+`s
=PDM-;7nEC^%De>rOAG"Q0FDd\JdrZePC4R+.qZu$\+O:QH0N+O_%d(-G-?P=$Ib-rgg7_@2
/FDEZe@p>*a.?\Fps)q4@ktfn6D=[uGFqeCiT'_uTL/(pFZn8WQZ16T8e+M9HK*C\BRL6*?R
f/?lV6m:Wq]A77%7q$O$['K?T*I).!'"1)YVR6YMDr08mpZaHsgZYeBnhcY"%&T`<fno<5N:T
f,<kiJ6Zm*]AAOr8XU^Q*lq?iQ,3P3=?_\<450p%mE9PC6VCu)%e*aU>0pY1Ml!`'YZ.XC/SI
*[\X2UP4Kc$0SsBnbBFe=LI5LFsd$B/EcVO;@rJ1C.%]AJ)@-nNoOP9e2X-HTsrVFS=]AFl5/(
Z5Z2+3&A^\J[j*s0J@(YjmL-LYZ8ZM:Fc+H+k7)VP;tFV=jGCb\B;*m41E$n`a75]AaX'J\R1
,ar)>BP-;1,(65IU*J@Uh1hKE:Ym>Eca%o\6d:LJ6J@(#Wh%(6jU@SLcVU8tlJNd"OSm"=lR
ZL&ERVWFD8(]AOS4Q-.s'0H;S'r9E;.&Urj>'4G3J-V;6OuZY28oaKkjG[rFfFnAZF9mDSP(%
="Msp9fhT=_=^<Q,AVmU%GZZrI[4C2h]Ao&&ijA54iTum5YEHGb-"e(+&cII15Ndf/`@peFS2
DoaR4nBiXaVgVA7^lEC[oWLejI5r+%aHs$6lf<:/.g_d'pR9o7OBH:Dn^%kWcV3[;4=#QQZg
O"s#`_K[%kGr'NPZUMio`eoX%[8CL+_<RpIP6]A))0>4afamc^ig63h"gte>kDS<),8rdiYm@
EU`aknOdjV2uu>ooq"D*eG(Jo%,SOWB^LPfQDr\;J,W2Tr[+VQK_uO`>HQne!1R""mgVoJ0S
kf0B:eq)(CG]Akoi*DW@=Ep%@ufVI+efAB^s[P&s\8/Rh>ZE&,+\I;M=>qa@5Z2K'^@6u;8N_
)kZQ)*N50^(sa6?=PJh"INp!$E2!kgHe#Mc@WL>^]A29=lIa*>*OfqBHDbmFge-$;G2qg)rQm
BfkXj[1All$,N>oY7[?9A?nUO?cBR*8n,12U&/Q)F&TOhm]AS/sV;D))'mq>5W]Al>Z-_ag1r]A
[*clt$L=G>SPHq9b2j9`URnp-Wj#M-3[=0T_F)dgmF1Qd$3.MC4`-(/-t2g=LJc%-oa`-6d@
o(fr2p(emVMTaV)I&$hm3:;gM#W-`6Fc1O-r3-ZTE1']Aq$Eog&Ub*S0X"cHL.(Ap9iX7K]A84
c%p%hDm"cCH*E@>FUDQH$s1%?0ch-i,(Zt[ud>]A*;ZN!YBrc;qONMT&X7IRZ;M'`=S2+mEQ#
'eI]Ak?O6`X!&QqXe2FV!\#72^uZ5?P%j7.K;(??S'Oi4hrI'es)B^8*jXn3rHDQ@T2utK*/^
s/Ubkg'Do$:^#C>Y$@0=+08,<)$NlceUI(qT.;[0>dlk+"(CL2hFr'g3^fJ_Zs:W[:mo=mc6
r-@m\TC$9tZZbMH!<&t7D"^7]Ab9",R>.]AFSRo4a'VB>,kIqHlQ]A(b67iY.^H=Fj>+z8OZBBY
!QNJ~
]]></IM>
</FineImage>
</Background>
</HighlightAction>
</Highlight>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[3]]></Name>
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[$$$ = 3]]></Formula>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.BackgroundHighlightAction">
<Background name="ImageBackground" layout="4">
<FineImage fm="png">
<IM>
<![CDATA[,ar@J'4'4u6Uq\bPT[Y201lTp>pUmf"R3T&64BP[Qg0Q$#O,,4;PXsm!9m,E85DR7d%j8M6K
$u$^)o0&@uf5Xet1RH3j3\mkZ9FF)!KW9!!!#:Ms&CpYHNHUGL05pT2gmNHia:':0p'30_3Q
CDS;1#\*>27Wr!p@9\WZ+/R?k^r'fb?QTb0k69?EQF*GA'SHfj)Ud11-o86.lV#Q,(NWnoM3
nu$2E'*q_(SA:aM^MrBBe,h)L'&OqGP`WJFr,P<bL0l\_(c1cleJo^]A]A_N,\n?q1W1'9k;I2
Horh2#QX/L93(UVr8&'d0_[9g:J>nY[ur'R,YT=qWbYukqHX$sO>_KX)+,1>;iH_`L#*1F*>
FV/T#km_NIgWVCn(MRZ'I'_C*?)\*8Z)u/H4D8$W4'T5/*E%;o@sq?a?(%O6*ddk<q:g<T_X
Zc_ji+0dP4rL&[r&bUn.8'E)B++Y5+R><KWe]AnY?p1:P1m+R/UgntlukTU9Bj!P2fi+3GE./
X!gpC0*X;W_YanZUb&s"c]AH6gM*Uniog3h!GCGV4deL/=A\?FHu#L"_C2tsWQYH%T`'E-(sT
o`d+bDXqG7DHs`8eq/`cj%:B/^'CpTlN0/CSq6/1m9<%\]AqpA^=#3WRe_@l\i%#Wkrp''0"J
B$V$%lT[gM!ZK@AXG8>mVA0j-4=O+L^b8->aC-$_-!WL!>(#5sR'_^rYZPae:(8"#W/))ZBU
a/9[4h6-ilG_<'nG6;TWMfiDCI9and0H4_L.0*Lf&UKkU.!k!q[X2S^:O5T19jP]A_3=7JWD$
nZB8N[DC0Jll>aWSc)cZ1k=G<9)@%-,P5YV5RV8&_`gZaYdN:%M>H.>a3rr#,*j2VeW4%]AiU
6(HM'LXZl'-WfR*qE1Blb=4V$OLE9O_+e*qMV\CD<qdnAmH8&mT[-G!WVSDeS?s&[u8#,9Vl
T%Ia0GV0"\I,"9<2k>\88_Jr2uK3S="H`LS-;KrO]A_]AipJ3I7p+Nbo)ads;kF72]ANj'PeqQ.
_E^-$2eD8G^[NNh"L\2"Itl$ab`B=r,3h7i9*R.G/"5/KqGUDm,h%/[qk,7_g3,[I!<kalJ#
^KB;AT&(u1`kI[m9C4a&,Z?H<E2;:GTZ)-)0Pk#=cFn/?d\4cd67q*<"8q"RiTXPF&6m8g(.
C!JhHcQ<T-DKG22Jqu<u'<fX8a"*:,=_Vas=CXb*)+,'`Hp5@]A&<g^nniIcU*A,<u(jF?4Zh
+6p;&WEaNJ,=FRU6c'2[[4"fT3iec?;P]A-u95\I*+"<]A,2(u3Eb2DZ"mkt@I(#r^V7a0rB]A7
S%BIEY_H8<^T+L,V9YC/aCZmmjRa^[bB\$aWFdpQsP[0Y[.@0,5F91F@:2*H)?JP`B5+_6XA
pid9Iq\Sjs9>0+;?'^5:429"JPpfdUK!e)F.(NI/<Mg$L[0-b/2a>g2&LB^96JZ:Oj[(ZH24
$RRjk-^E`[U-^ZX1lBpLo=@)7C%7_m]A3qY_luIW>l$4/^R'_":o^F>`K8`sk5Sl@F/XJ=[TZ
$9SEVYc2SKa40cSL8)d;qWG,ApT`gaK%f^*9a%LG_u@qLbjjSQd-omoW>1gRlFg^j]A1$ZD:f
p1S0=RQ@u4,[SPG)8RCP,eXmQegahTs8"Eh[k=h(H8*<^Y$)d^fUX@_O0qcLT^\Ejb\%Ft%i
'<Z'o!Ih5D2DRfEuVM7"A:gJMa+\"mjf@>HdojoELi5Zs30^#M4a\O=.Ss/8C"9FNE8NUA"q
IAg9%Q!lY+^aR5\6E,jrX[aK!94r:uq$Xq@b/>#,@SJWW.leuO1rV78R,>ecG[_Z+<M7n7j/
7*Tn+4W^pW)iPWRXD<j(Z'`]A:VB<?kUP9]A/C02+C(E%(%:M^9/5I[Jd:4)+_oi9ieoXa447H
U0tS?Z9I":nqIO<YBH7'1LPdRpi;'(Ilk[c'7OL"WM&:XsQ=&IalFMo1Api)!?8?u7d=)sM9
([p7R^@O;Df1Do.KS,@??H]AZ]AB+Q/r8`Sl,)[QpHoQ@Z,KpiUhs8`g%f31^;;n,Kjn.eM8fT
.Kskk?;S"LongTN_#@B%NcVl_(1W[b:(JWXg9]AA=#!3_[]A;B%?a-/^P$"%F-XgM2K2+t8GcZ
E3q;3LgEZW4BGKhhRY]A$gTJMWhcZUgsj4%5KsaYL4D*NUE*1^nQ@7XO4[7Ia.4dPdsCJ,S88
YJ(MDQQ%6]AqsPmep1iXj0gGPX]ADX%RftV?Pq?#)+q(#YjQH?Z\baU@/pOg$?BLhZ<+;k<mkY
ZbF#"-@1Bs/[%g_Q5;GSBtQmW]AL8C\Z>d=nQ!;[+">SX7e3so1L/7DP3+deI2Lc2iR+me1HT
]AAfqfIL)IddC4W8[1pd-ArH%;/J+<%[I[@_Qm6?)-Y&@"Fh[b:!Eg$.[4+a^bFjs!(a[qP.i
Fk;!6>=%??RiT.:jR=qY:MUmaASo33"S/5A#PFr"3ld&9>0;s@>MGBpm%cFITi*Oqs8Ea)[2
OJaW4@A755hAWD`oK5@17'g^,:]AgC2^_4NWE@3]Ak#M]A]A=2spUL*-4Q\,(G\B4<28l:6UsI7K
j(>/eY.;K,X.F1=b)Z6Lljq=_5U2;mR-K)Y<jk"pQbFT0Z+JM`O@Lfa^=>(PPf#41]Anaa<YY
.mudE`k9f=KsX5PWpj.C&'\J8KS7n%roThO[,%[W<Xtcf=<;BCh@S,[*q[)OIZ&i-B[j7Y[O
.h\oF+EQ"%RZ!C9W?`qM,g.EJ@(-'#mDc#=/!Ni8G7AHPj1[<*mD:j_f$Fc@A<I.nSRG'0H"
,X@"'BkRfe&&?XBSmZ7ia%3)e0-5hSOY>RrXNW:(UOadn`f,.HV<V^^h]A.mr0kUL/B!hBFU;
.@6P7]AVXL^cr=c)G?lstaN#c"1rC%HTP:Dc>ZT%Rq%3)b2mAlJ!$pl?DYH%VqQ'Jc:(g:CR2
O1n0\6PNX^b(Y7<!ao0o$CR_dG/E(Cdn'W*>,'qu(3Xr2dc8egL6%7K[Y\UH(C?Z$s)30.<!
@c*cTNX%[84'GAXNN0\Gk<@.daI]AG5X+"Bl@Ki<1S^Uq3.WrK2FiTS5<AG8=>IDNMTa,*<8f
Le]AXrV,b6iDG]AZNC&fKZol_!s(_!QZKY"=Pe"'MNd)R)WlJ^V0T\3g"fgj8)XbT8,#J.!t38
8h^g*f&;um?`;+3(#@r"?:6crEl_B:UItCSU4Ueqer&1?\0>*Ci#2[Qi[<,PLDSk=F/,r2O"
"oF-VP]ANL*D=e@m/1,e#RYmq.NAkRhRq96Js5il''%4rWf'@,\drG]An^1151Y8dHfBX\!`4W
I*(1mArQr4-IV92Y;eQp,1,M9$bo+e/BLYRcbEcE0-d55rb;1S!Hi(gC/R5rMI'PV6\a+2'O
FSVVIAY/9/\@JrqC+F9#'Y%4t4ILMiEtP>6rBP<;si.`"!OL]A55>d>:O\&OJKN&Ep't7*j&q
Y=V*U_^J^M>7/;/f=$A>Y\Qpt"&M\WI%DbOtKI,>PAn(\qFC;I:J>&_o>dr5S-4E4-/)R<tQ
OqGs]Ap2P_poAUak>!17,gWm4-E=f'ncjM%=nVihY@d#JL7[D%R<[^bSe>'TA[hn3I_AkO2(l
qg*+C@0:V4i6/)llTYWQ>XXaMaB*hBC$LY,<<V2/[AlRWN_a$AEGA"]AqV#smuK.?W$$-o[s^
,Yd,\q<$=u%!-F!aY2i7D@tn-r@:0@hYQb6bA5<u41'Fgqg6[`N_CR;.i<1)Y`_[Z<2+`NBQ
rE@,u^]AZPq$I5Z^'8=gTjoRVH*%(BX=!Bq%8p^2bbWB;NF^Ol7+sncZ:oV!m@"HFbn"Y<5;h
G4/31nIL^q'%DF8uJo;HE<<\eIUa5hnH!CP=Ap)`eVKjZS5Z54k'HTJ7Mfk9<%f138W`?`?l
gG^H\`H2]A^Qlqr]A><>B:n>[o&E0Xt[AKo8X_cXh:#NJ<&.Z"-8=heWB\I*869:_Rki#Jg8#7
U(f$jJWrQM<4FgWOHU#F4Ln!"e$P<Ft5BCm?J&n3o#%()SQqlNb-]Ak!+C/qXCsSJHA-l2@g\
KU..=p]A<k(pD[P,mn=*7(?NDtg+G:@3,KJg_UbLT]AUM8sNE9bgDko4fZ0T!oYW#7lcDp;]A^(
/Y-B@o*=?>P$5:P3ma-YoL`YjrjR)%2TN7thro5k=%q2k[u\"Wonf`SUAF'u"fC=/fGc$)BE
`Y+t+Fl?,HfZTrU:/4)5O<H^>oPcM[*=dbq=qK'0KA35308.jr91;h^3T5(2Of/CuuGP4itD
,P6([csu<fYIqES$)iS\s@r.!?AjVoa3SPT@rOK%DSSCLWos^#W!3JK=/'cV&T'4<Dg%Z[l!
<LKU'hkLBA*Unu56!=gN_7OX_!CrLr1"Q0E_(po$7h#r+H#(=[4@:u(`*)R3&/h),Tnl]A^V!
>Rl"eRdU*SMMnJ<Dl*#fo<sOY:?rP[:%$tT!+&AnSLB#N+h,X[;h<0CSDB_rJi%u^;%DfNnA
&Be%KUR=qZZ\7Qp%bi:%i)@B#9aRJ\QcP451lJoZ(du2c*R]Ai4!@5b'i6?&&#F3MQ8VT9Z$G
]A@Y57`0"<K[GNfqS>eG,dYmFKhL;D>_>g+mrajH^N_j-dYiP'1D90,\3B`F%=Hph2X@F9%Kh
poQNqNL?1`52R<aVOTKHfXPLPJUT7g%YdWga`8dU(O.aAjB'&:(e**@(@N'N2p,0DGVm'h(_
Cjo9@iqgs9bnH!DQ//Y1;DK2l=2'\S"pq+]A`GM(7)A>[Z/[!GdLS!<]ASfO%XW3QqG/,ZYT78
^r>?c-c7bq_3CM#8%Zaikj15UPo\+D+`3Dpm58OT.Q*7Bd#h/=;"uGSla*\bi4c&g_uW[-?`
tg<!`_e6A0rg(_+Eqjl+>=0fBj5_>U+3[$Ncg-`<5_d3!Ygq/4DdV9O%mJJlY(G6ZpE3hdpq
#gX54`mB^"Ukr8?LpcQ:3<Y=LUco9=n0Qp7>Y\P/M>)7_mS[/[Dr0uC14'Nf&"3?NaB#Km^+
haAGfQKUu66/BngRq]A"\H,I'$lUh^2A5?o&Qu#ZgDRp&m7ep^HrkP>.d$t/QfL20S%/.@RIS
'-s"?Cb_C17Md)Lcq/`g3g"l^m`gMdMmpUT<=#(:11Yo/L$%CJIP\V4uX2d%k&#=G^`/]A,e<
3151DjGs<E5?N*OEi5]A0Yl!.^/e^#<juqVGr/8.JZi?dW("HcuN]AtotfkV3$!\A4]ANTT#T%S
!DZf#G`4]A,D7fQ$4M5@+M(sn[SZ^pHR!64mG:;#pRZsKRJ2V4#j4fHX$YX\)TH[d.gJSpYGa
:I(2;#kWm-5SJM9g3<PQsqZFTK=4BKHs5n3YldQ@,-;dmVnrXm/;Cu&/h`0'T>(H9mR[9KC0
'q;e7bHfiNgl+:O)PpHXT3]Al[Voa2?@lHCR3pJhFWAA"N$pT@g"<eg+/6<iDW`=-XINS`]ABM
0TeeCH-(4HB<CBHqsr(CI^:WNh>mu]AP^+j^dJ^#ftueqkQgari.F/cFN530gWh^7uDpP4gT$
KV1*5E9f2r?`15W\93r)2oO6Yhob#Yl``meFt[I"n:@--c(t<J%SL:eb!?YnJi-dIhdsiLO)
etF8:<</Wnhms:Um3(mgolljm:8J.'?%h(2&TGQ%cQ6Vt[.$`FsQ\Ipl!OEOuMJ&pID<%i:$
Uj/V_!eLa;R:X4>Qh4MS)%Mm6V'S,i=-[a=e\>C4AM'JI!#p]AcHSQWD@DW6+q[;G.Cr]A%3-h
.I7rlu%(06!3P\Q<3Q>)J'C'4o,(WBNNiVmEqH?pLidbm[kK5R*p5<RbVJ$)AD@]A;=XL2,U)
+Ui3ToD*BOTEN>Ir,!(fW?O.O;"&/T!&g9"%ma<6.@6C]A38:I266i`+l@TCDHnnO/#jL\Ae[
j5fN0Z,+7BH>>k1AX)[QG+i\CTE_Kc77IuaL-m,*Co)/antYhM%/NdUm)\D7da#hDEQ6@e_3
QRHA[Q"$^[Zp\hmH?d&HM>\o@NqF04XGeD:YTXKuV,t_gor`r*`s(]AdtScaLZjHQjtGZAX3%
T/(Ile;qej;jJRn<MJ<\!rXsEElBK7Tlg'7c=hl[so&lo;4HkJj;\_CeF;q9*^(BL2h:M[06
]A2ta[L9L%%pJi`"@J.[9iamX1l2%6cZiXf+uO!0gl)Se5+9Q.(<b2Aa>T?uaD@c\"M??OQCE
>&bIs'c+[0,M.TZ``_TL`8qp*OpGmj1`+M+3f?X^$5G2j0E=FG+OYfqVgEr12(MR,5!9jg;;
iKR&Js"gm6p+k.:?G/]Af0%Qh2/g9saYNj;eaC\)Mo"\c`%8Doa9)NkW-i=jg;)3>J5Cr,an\
MU<[g\Hr#`=Gscr)IWOq1#%VQ)GjZ'thW"pDRKX_]AE6ncEk'iGE>,(Fo5H(GSo!qVc$0:30H
Ea'35**O.kZaTn?h-hgY8Ar`HsL:E9bTeG45!3u8@.!-jijMsQR6upHK,1gWX2GWJLBZ!W-h
f0f_>>Z9FI!-.4jVAN(AOB$POrIkASG8[?jrVIt;VLF8EF['kh9-M@(-.mP!(U-bOXGi+`N0
1[qQF[5iE"cS1U1^VTOd!,VCA&BQ'n(ff[_`]A1[+lQX:.hJ*tsAmfk)6cs-36Zp(e;c8Qf;_
_V9"K]A=KZ!@d,kh.W?URUYJoHF:dF>[dFJie/o><OYt9Ej,"4,a:[C$R6[5Vg1fhfr;%/4_Z
Dpjc=4^"5CX9\OdRr.!gmS8b_Ku;s!='8G+nOU,hFj<$W;GhEm3rI[Gr>UMP:mC]A,U;G:'V^
K^ks\`XqbNfM>b)fcURr0Vjrsrau%ctU2Li.I#:Vd@oBl'>`V&n&<d0cFUkZ(]A)(nfa65XQr
1V(V/.tFPb^W4Pk$ZJWAS2tJg)Nq#`qD)4.NTuH%d/rVFpX)&Lb1cHN[m/(WA<I2Eb,bkDi7
nfTd#rl#n?512P7Qe_DnC?"QRVA7MV3RdJJUkl0b@D*=M=0*=_cqYMUqIS[e4B+m>]A!(IO<<
D<ZJb\[_6Z)5\#SB<[2Ib1N10b>%^]Ar!?tJA=Bb@q'cMtBhX*0C",#ffM&0M\G,[f.Ts*pdW
Zt0_UbE8r21Z[0pA=G]AHjT8i#:1=B&OgTKTd?g#Jj'-/e?dgK/@45)M[t2hfa2(_\TOF2i"o
#1b4:/)ZC.LCq>PTr32Oc".L/onYPBqn&pKrc=Sk>7gQ"7mR`X!9B(d:0Q8!M3pEHd6:A`P%
$13D8T3Mb'M/n!dFM4)dF[%d^@Po]ARP?G594\@m>p0tNl93=[:@3K"+4GS]A8#?G%*:*9'kQf
EX`u/AoFeNO>kC6h'Z?KJK1cSiPc>&nGaD$J@:WB!QRNH8DY%^5L;TXHmU;%Z89d7eZK#&id
'#FO8Ns;&QL]A3'ca<:.*<,4*p?6rN,0?`*hWqZ9*6(BNWa>Zc+49Y%U?;W48'.kS9FB1rHT?
A6>#LKqBSn;9<a;f;&Eat/JW)Sm<LnsP?[$W31;4)*t-,dadZEMekpmH6J1PN`mk9qo)fYMO
ZecLS0ll%ZbpXdrqe1Fnq1Dd1Dp7(%>*e[7i"#5=u9]A_nJfYEUu1;AS.cf4qgWEmA!4<><PB
5Q+6&jOqaHU_7VY?,d<mr.o,iZ/+?)1CE:T8MYcI\a!/k]A&n!Wf(QD2W,,3AT4jJ[bN@/b\7
;6]AXuFYXl--ZklT_nKd6ME;)#jqDA96Lr3n^OeB$",^8V'=)[9bhLSnorR$`oW<c@[<RGgWB
U54Y;HcrOe1=*iKm'b]A=eTM=ARqa=nI:'"X]AsHtnK2)[")<bL&orYIEgK"t$d+4.Hh&F.Yf)
"GKPtM7h_jhUrb_WJJ6<=<bCBjYOCbbMq6ZnnZI;%h>1hJB:'QG^2cEk!uSnS=Dhj5`*(:Zp
e8U%HK8F#SV"/Ya)pm`#-R?<5tYr@Ms9SH/_+`#JU8[6Te^ffTgP67Br9ieTm[<VW:DohK7h
BKF5:9\]AL:EB//Ujc<GLqKEF68o1V^90hj(5YP7<f.&X>)Ypf&&FC;Mu)HrEDaWt*tSK*b$c
[kVB;F8H%&g8$f%?3l]A8h#j?<P_I#=G*L"XE$Oe#5e;Q;qhfZ@Ni878;m*.f]AWCpM;>XMg/3
gV[q2CtNl27b.*Q$K>96R)]AuYdth-L_!5AZguiQWp#`*urf!:c>D)S_l!t^h97j81B<[i;?`
st]AE@#L%J;tTBmbiQ8WU.EM<_UQ&+:S%$]A;8)]ApjjjFCLqM6]A8#V,=+3V+C(%l^O`u("XYul
TD87U;QZml7L9MZ\qO=g;HsjmR>/p?aa*jJH"[9bN+h$(8^tdB8hU*=-hZ@J(CMB\2,9FDu@
NCCS7TJn.C2!%,'-q7rAYTMe'5\!XHYs9P)5tu-CDMnCpud&Te6o&]A]A;2XbA!6Mg_/4L.-Vm
5/l-NB'B!)/)HF'<`?`X2lLH"P"8fYC&H&:ht_dTS^7<9:BL>k3._Hu.b`M;8a`D?%$9Jh`u
R_D''c_:*+WJ@\L`Rr^e=M(n>F)B;S&oJM(R3kmkWFNP:W]A6K7,ZeKlW*bN-hc9Imo>,`+_r
d?k=,IqRa/7D[FE&o10(^169;'8'3msngl.*,DelCC%TUGf3jnO3Z^7T-=Xo$r_rC,i`%<U%
!]AT1`*:GJO0GaY@aKM!ZbmEYqWM?)^=o*6A)Fne2.rom5<"i.=hD=[Zd2Np:e>qL+kQjtER5
"*@</TL(Wo3&1^3L(H]ApVOBB)Y&'q,^UCie-I85Odrhq,`.-2AW%MYQ9N=4-O8_EA2ZDTcfV
!N]AYjA&JtY/6_IpV^-)E*B;aPAErFNp(X]AX49Js5iY%:Rq7beNGb:2@B8O^*hV=d`$0m;19]A
S"9QU[B1:5hH-a!Whm]A@j74,!k.o\?ADD#&(sq0<_c,k0*ght$*?R_=I!kO>-Ra4Pp>KpiM7
O]A`kP;s7hl>d[-lZ`acB:"KC9&JknbA@h.%jiD-:S0*/.-bR#em)rFK]A]Aa+Xip@:tRY0fZi/
I@&S:Hj?+?^<H`G-9`<[LG;f'R)f0MLYs78uEc3c;^@ZIold1t?K'NG-g^n'2oXsTrZZi:R2
;Ra+Nh:dl"hgl.H,;f*\s)9[7[(g[;U]AS:5/t]AB187Utc!B:t!T&%RqDm"+/c._($dq7`2L6
I5hUAdjW9qMp>'cA;Fa@g+#sI;B`k%;C)h&^gA6*=jUG%dfaNu8UTZA#^ZYb5\l!^2#!*H[!
B)h/@OCl:897`.Q<[t^a_)``,gZc_95p<bM)]AEL91UEP9N<=2t8^(kR7Ri<r=_S2&*3bZ@C-
SLd?%_S.?mfU#5mGT8<VTU&BL5t4-.d2>QeD02,l,g)&t+I&)ri[m++KEW2[Pfp[C\l<DpW"
<.Sq(TMSY*qnaF3(fJI@Ji<%f?DCuLUfLW<ZfgA"\5+8_eGp_7*'/NFY3R6dfG_Fk<M/.183
\Ih,G-YAb\?`e6F6TLd1]A\Z-+KGEY1soFM$K,piZsKbGh!,]AlRhmg-ieoGPRckDo3Uu3*%"?
^jJ.2!VHWCKtTNQ0#k/n!m(MEN`[Gi]AR[aC<RPrkSiWn\0kYD>h\EU$CMi.=H02:m'%I&YC+
ZATM,r)+.fNucFcB9_(T[j1MLgVMB<=*A4(^e<D/6NoPXkN2u*"s:5j:XFG@0WXs@8rpE#d>
4GNW"p8:WJ5uV2ALBr]AGZYF]AopDp.Xt[@dUPY&!1UDN8d6Re30n`1H[9a#X0k_I_(,MRs#*W
2F7k:g3P?:\l"`!(rE4-/[/",R#P9(O'&e%:fJhe#CT@r",i"a='_qE!8]AJ'Lg*asN&G&>99
fD_,,>/i$g`MZmKq[`qYk`9eLW-SAR)A'hO\>b&(*f";63Val0!^`0.htf@^a]ACQ%MqjJmVm
N_39<)f4lre)Rb_6A-bsB.?KK>EEI[Dle4.>6e-6.bNXKAC@mA!hYWR/dWfp0"1!$B=Y>MaG
"HU+aY1>'F0+CX:hJl11Tf;$2+']A]Ab`,3O"]A?2[t7[2XIm[Bnl[ER">0h\pGl+Ra<m.m8pnf
*>DODoNgmC5r;R'VH3$M=@2b(Dm[5`=B(Snm2/@RMi3ej$SKd\V.SV=rpDE5`&oR4!:s$N\/
)nsb*'lr0f\.S;U9=,t?4lm6_]AA>k#*"SWC2-6i*nN:8@!WAGijB'bilZsGFsm3)SW"tuq_)
1F>M24="NbXUrtL$^IIe]A[c;2HI*F:mW)>-$eR-VY?i*Q)<Snq)hWdV8M@`>^a$eY/J?)g?.
E%]Aai<ZDFMKNrZF`!baIHo7Q.Ltp9%<HPGZC]A-_/pFSKt]A=9WUWTd6r4WRlRIi*`%Q_8aeq*
SJ.'*B28"sn-V@Qm#l7$8AIuA'?:H!\$W>JX!k`pRnUF(YZ0g_i<oim4L_kfhC%k#I*4Ttr5
Xde;&%Ssg+D\![f`nScT^]AVo".0e$`KRWf?f?<;<%f@)@SkP(.jeaA_='BcD]AeTPh4@[\knE
%>:4R.-6dK,,!^4Nc/#(<-RehqS!3Z_dcI.g\DT;URh_U'5)kWaGI58r_E`Y#2h5]A*,-WYe'
^UWdrB!1KR]A.Y[,&@uV#<W8j(XogRS@s+gbu!$Jb@gYI@2"CJ^A7<L437`pqafR$.2hMM]A7Z
f!Yf[d<]AG*sMnQ>SYc3('t.t^XCakLh(,bG6Kof=da)PX=m(\.<,R.'o:q$V<;ERM`hi^1AF
a>k9R]AD%RB>pV#I,RYG<S2p*gignk%SZ2E*;-JT6'jjR:YpX30/mJ0L\Jl9jpg!YN[<<3`IE
;q><P3h/iq_Qn9*R/;+KUDJ.NoW1lS)'L#S^e_=(mS\EZEG.HTJta%HC^i0'YlqM<cFR5lqr
@86E"O)fOVcL\h*'eI3Ic6qb8VNl\GZ!^>@QR.e[W#&rh3.*=cbFl!2(]A4rpEctSkiDI+\PV
FfLUbK;q+!bZC%j-saOh#$BBc/6p^JFOEo'.f`iV;'3)nEKj06e58nmC0iInYj\scpf5NTDS
rfL8jIJSiMkWbQaI=a'HVCCZM=%[*cPdQ\KqfR3P:f+MG6j,4!HX,umRHJB^u8b"/KbGR(t^
G6h/PTa*GIM6o4^N?1cU;-%4b0tGBuPAeLt5?cMe>I-)(euNC)FHWURH9bgjo>XgI5jG[Xi?
rVPn?nMG>E6:DBolQl"F)Vtp8NFdeg?d<X!6_6Xf&Ig!:S;dSt?,[dZ?Cb\l-,%@0$`@9i\+
im48Ia<;nEU17"#)G6EFtgDA^be_(KREEE#?hAtnH>gMupG3`M`(;;V_e!oVWnqjK/.RZ,@k
@il$W9]AA&Rg&C!r89S_km(!1003gM%Ar/ZoCN@?k2j4]Al-%GI(>k!cp23qOM06$,Q9Y=%d5!
-7IBJh#`Q,[F(^!Q+b$Y>T071ffI(rn<!G?S679=anrb.i@D8A\[a$9Xhn"7$,[cNE#cFd*^
2<uM?S]AsMPgHC;PnVI+RRq<_1[JY+Y$XC9W4ai\Me-DAhjV,Gf+h"mKP8dNI'@ff8S3SH@+C
LjF9`%t2G31NMQSN5%ZIR_`2/D>Z<*HUj-I%'SDK!flbgHA'WIX%B1+6'6B6om3`-nb=*h&r
Q)@9iS0fgg*NM>A$$BPG']Aa`bEg,R4%h,:,u$.jb);A*?PH1a/1Q`Pqb,?E&grruec,qcQ\r
8>TsbGdmi=&09n5Da+[2\VG`I[DWSG^;]Apb+?6O7aQ4O(/B.K7^D0+VoZ<?'HS]A;ahFqJpRR
]A(#f@F%.mHfr)QgKE.d&:09TPFK;1ILJgCfq6?E2VG+q-1JNRA9mH+*g@C?8+Uq1*.YmP[SV
RL_]A`=M'7d^jE'#g>WJWI![grBGYO,#2INO-'c8;MsWho!,%"9*plE*'^T%#\7?`[XA(/AAp
dR2[/V``NW.T)A#/jc[i)gMXNlksk%>16]AG=:p*FGn^+$p]A,$d&=c>,7YG#KI8il]A\q%ca^R
B'>OJf2!$es34DpXd+mYn]AF%<*+.V<QRWL=%^Su@:E)]An!&p[i";HXF0-t>7ldBaH1p;j]Aj]A
f4C`Gmf`=94=>p4OSbWcA_2>Ot&k_KD7Ro)m2>%>]AW3H9oiV,6Fsbj'$.4rJ\[>1p?9bn[8p
T[p.),F<,3sC[CpnCBaJq`o"7=dOA0e-YMFjOn:mfNJ]ALM\@$Og"?d8UOUo+mmS_:Coe?2DS
Qp4>!1o<9QNQR;qG2c7\<&WRpp2cMh"g?5n3NcckH$#T#-Bbj^MY2RFPhkjoSNQEgX'(7K.0
j_hOZ/)!9,?-;\&!1dlZ;'_Qj'#R6%=/-H4n28O&]AQhHp?,@:(<o;E,>o^T(`S[T&6K_-s)+
,9'uHp.m9%`+TU9/!;tt$M7ae;OKZ'*WomHAR?6K^Ut;s>]A+YGEl.p&M3Z'W]AP-F`h0Ne3"_
+u^L>fKYu*mp<+OslTBB+>'3q2Ti11\IK&<d1S^q3E/q'B=[Ze3t\*fXl?9ZGmPH'!#sJ9tm
t0BI\a1n!+l?N6M<0*ikSt9XWreQ#NA+1H"4tgRd?\(%qXZ#3Im(d!Mn_qiaTD]A2$T&R*$Q<
k/IZR4B*.%]A1V`3*WSjiQI*T;,%XEp@K7S"EC$%!D<,aZqapY>5L4!"k\=-T5[/e$hf!PAd'
E%1NOg$DVOJfp'f]Aid\i9j]AV/<_T^D=c*J=IT,`?N*a2t]A'@T!3g#PNX<b*`]AR.:QafF+2'&
C%kU_%?F3UWTK8!@?6L=Z6HjZ'<f/298iOg]AX'ZU(3TW^PK?=mPkSHa0D^2!I`Z^od6O8>E6
jEu.SkQO9fSFO@Eb2ogEQc,rogd/MPcM'BC"DXf_S-9.O6R]ADT*g5WDI4[hqo[`(2`0]ATZ-s
P'<X9A7&'Bj-&lJ&^*g$6L[s#*&HY13Foff?.eKOidSG2%Y*n/7:6%]AlUHm"]AqN<#@jY79.5
:RZKmhA=-%\gP2K`h,^^E[ul&;/O@MHiEr9TAne.8CKn*f:Cb3gG3?$?]A*7F;f8^Bc;90,m5
N:Q5"dWkU[SOm=HJJO5<"q>N(2q3Yb(dq*s\Uiq?d,%bh=SaWf_X44mY=slHL@d@c,+J(%8*
eFSMf@LX?3'(R-$0['^'D&K.!@hU@f:M?*XhYS]AkoTYKJpE@$&"r1V("9+o@[I\=Dj78)Ij.
F9PkZG/o"4j<]AfE[Qg[9).B7O,pK!)EX^7gh,1qkl)5us27pg>7%**B(RiNSA8:32TOq90i,
865S\#K%'OBj;8t)M$WuuC845/<AmC]A$Pj7HR\kT\lWKEYZHR;S0E?"3;rcYtQH@K_8XCUM%
[hjqk)*Mk#Z<!)Pg;UKQ='uj_3Z)]A]AcY1DHB1OPn<(*dWb%$.Jnj%p#rKb0$fir#cWVoI>5e
h[-]Au'&;o+nbQ5isC`(F;R+W)71Fa1l(($7isZ8oCT4^6[KrYU5KCWT<S$pVT^$(9tS,--'C
NHTahBer1&`^W:P5HU^*._TBt%[r3Q@^KHJp'RHW3pX-cM0^9d%OoR2iJGIml]A#O";hG@W*>
9<n_O!tk;D:O(K\EWnrT-oca4R=ql?l*lEqPfDM&k;_ZhE/S8<#tjlR4L7r8_MP>Qn(U[DQV
c@FP;`,W!]ALcr^jPa.'S$t?(^.rbI!r/ZDXKm%&:T=OJ[ak9<&aN:Xf/77XKYnkCgkI`5u7/
W(V[3bOG(qHGD)8a\`jiOUC*(Y@NnL'P9k$(i5>k4$tnLag!c+htgoM"rTf>k;*Z5GQm;pn*
L2m8uhGh.C]A$5IK+=K]A=TAbI/0US:KaBZYkY8X.kZ'N5Xdl4pisi2?0S?6^*)H@X^&,++D2j
!aTMAk9b=R9\\*&?;`pt@]A6WT-^i'MTYN4iqWg)*08&bOuN6gM3%IiN=Z9/o1]A+6j,*me]AAr
VDk'`WQ3G`jMZMHd"-g/*t"!\N(5cZ5$qkA7ti0HQ`LsASF^RGIW/2K55bD<@Z1<RgYf>n.u
?E8,i)25CY-?eW%/05_G3GY\\FumSs%"7^]AlkfBi'$mAbf_Wb-197RfX(-kW/=XjlMJ.D1KK
TeUHkGnM.L7aN&Gqfh@D3?,r!_+-O"E1]AUOCGq8$kIE=]A\pGK&X'ApecBpuN5Q!u#ArWsmPX
_!13V:=t!>l=(-"[4ko;:0uaRoHCD+F-Kg4mbSXmN*DVf^3$QjN\<%UNAVGoCq2YcB-m$]A;S
Y+HfuT]AA#(?TX?$fMCC']A1llUNih'P>QZs:bo@)1r9.@?`g7t'$gY!^i1Yn?[$7bf?p(6%t&
_!QEAuR;/W0VkmY4/[88W\W8cPTF-k%iYo`91:S\CXZ)T]AU[CFgV1[()2Cld!gqdo@5N5NrX
knW!+Wm<.`;th>Y[a9.(Pd`Lh6#akL+kh!UDj"Bn/-GD%'p5i]AU$s0BB0i8V:S$`;9]AKjT1T
<JX&;+$6Z>HjE?@;Wp^'V=0KDCZf'RL$9(fVo%<C(X]AIu:smGcroFL/bn9[=O."JhdA3>QPL
S%;:QWm%2-8+]Aa@qa3"4r\td,/Ct7%fuhjZtCO5NXOW:1*7Dh&OA4Rf0G)9.jS(&.2*k:TLl
^V74lA/^7LU-GPnp%c@-6B3lS8_0IM>O>u#3`;jHGp,UJdXkt9l,.W#,9?l(aI#u5+UGfZF[
+Y.9Aof!6>OYDN_8"#oRQ[T=!1XZV2-QLTP29c+[auBQdDZ.Ihoul%W*!<S*sDN@__,VD'cu
L]AR'XCiNj]ADKj.6R:CGP*=28'/XILkHp*d4S`5d"5:Eism5]AE.q7eY*XLd>&JooFX=-]A[5R\
$C,TkIXS!i7b0TN<>rtOl4["aID3H)a:]ASac88'))0T[tS7*=0GMhSSpma8t@i.N)^jMV,h1
pf=B0,k!\Eer$/S'`7gAR=X'2GUY?#)6)!"Lk54%7#$X!PiUL$2k#/Q:CkFKfO_[ZI2<:]AEf
]ADY4t;H:glW3VuD>K4R..>#nLd3[4+'E9D`1BP2JDN&KX('9W7`d[dEc.Mu1,HmLT/!E)a#o
NOOL3INe9N[>lLH?U*+PIM>[\H/n[0:K?U'$0Z2^='O!.M_l-2Z"jKO)aRn1D7TJ>i2ho2fE
V'?<3Bt[5.O)ppc>-(ub.88j'^\$B3JV^_(,#&V66'Qb64<Be/,O-U!Rs$>KH_fm7gn0>FVl
?_![X>:[`$P4I.f_]AHCgBc#=VX^hO^N/\)N8B1tIG]Al32?#IL6n>"o2"hhla=_lbBeMl*r$u
(eb"K:W;]A+'gZ@eHuI0[Y%hGR)k?`M(_(s("j6n#]AuaUZL(Ul2SQ.$U&;1`SoXL[js\X5eTd
^Wb&PFlQ"S;72$LbW4BU;c&]AkJJ/Qi=Hg,W#RHf'TU4"ZkGmjX2k8(N7hkW>B(rY+65iH`ls
3>9o2"*%%/J^g^LFW3BJR(:hR8;$@.Z$X'rYA>@%b;Z7OUtC=d"2$GCNjZi(!!65.%]A4P@a+
*_$41JaA_6)lYqTr\TWG0UX=>ZfgG%:R>tg'+9FM7GG<a@MK=h\*I'1sh"%uF:*cK:kPG9Vp
9?2D#af'&teee>qS0_1e(.i@=T8V_0IO.MW)[Y5MZ!<#TrP/94gT$0H8"[kj9aXF`e-?lR'?
MIa5>_h2l&/b'=;t#-1G&K!%@,.uf#k=e%.[b9#eo#cU%p4Sl),1.l.q;dIjB$*<+!nC$@.I
H$S_rts"Sc"X^&7d=1"%\[asCZJS4f2><b6e3);s8W;aYne/`!K.`]A<HCc3T5pOB>1OnOEWb
?n7IZh&QP8at8b*YHY>dHVa(90XnV:POU.:+YsJFobdGlpkh%b\@2>hY"\j;8g#1V]AgfXfGk
dr+m+6cnW*lrpoceW2Y(RqZT+&aU]AH`2$.pCmf--i*8`mM[qk1@nh8@QWV\gj!k3GLoLtt9U
F=([4d/:j.IV<kE]A20"m)Dmf=ba$EEI=8o#P']A]AGjh)rqPZK`GrMFK+,fD0eL!!Y`E@f.@O:
^Fi+*#,c@*3j+W>O<"YBP#VG>'CQ*bN7JBinU:9^-LNSNfm7Pfr1L6`P=I8_>Z&CcO<%>ReP
eKjP%.0\7!c+2[dDP7elRmOn+R#A\*m09.PTWjD<#&%##/;nEp/T0@76h(*k/7dVXNKXsgcF
@'UfA>2_EH[Ml(7tlT>8sot7J*48Mr'EW-4`!uTBS5-]A=g8ER#d*T&bA9@/YE/XXI[[f<>?\
<$;$Ys$ii_1P`/rXQ@<T$gPbn-X8A.)Khp"qOY:bYg5&)jCE3NA-JEG6#-iDT=MfYZ(VUi4[
:-GW+TurOV1PKPbGQWQS(p44KWT#6GJ,]AY=9)+ubIu&fC4g2bkENL0GglGdB(ih2TklMU"o`
ScCe36M27bGtis6%<E25+3Q/s5$3%LZaA=ebomiD`9Qn,/@+L&OFn?lf24e(5C"*lYC=c;WF
R<"8eIQ5"g`L,TAuMW;j)=X?aJ<SAg0-s,+ar7NFj^E/5bR$La`^Utj`X*i9s0Tp?[4T=.\P
as&2\2H(2dn)ZNjG'gaK8DuYJV+P7.s"Nq14A4jSaHd&cW`[-oIJtKcc-r44Fm'NX$]AQknKD
^Ye/]A%'$J4W0r+BfM--7"OK0//+bL*`JRd$7uK%$!OmtBHNoDIcIW>;;=RK.-h;q%-:.kcOR
AWH$k]A#j["oS(bQPC=h"e"@BAA#P8r#!sdCc2J=G?T+>;A1Sf4;V:rO'<ST=n6db+T1@X"3l
a*aA0q5neLA:/.6^;t_]A$C,@Sh[H)+G,4`%9FhN#;?&p>]Ab%7(Tgj1VSBtB)3DWIJ"41@LH+
3f@a2LEFdFT9n+^M+,[T8mjc"JnDG!c*;l2leZ'\n(1=H8IX8nJs$fM_ZY(E(c'ELHKoA"L<
,"]AEjB9MB/_-$mVj<mck8''>><*]ASs&em4^GjbSSl&]A9O6ZZGQDElK]AHt<Rq)9m)ptU0UWde
]A5^N`&-&2GctM:A5$el^tN%5ls25(K[*bniS`koH=kUou;mLsQ*<?>5qB`PafY1s*s(\B7bN
X9hD4ZGQ#qr7V&:V=qI8AT_u_ok&g/9E>>3fWbb0';M9,=reuj)&-tQn9nk`e_&-[j_F4--c
OIiVt18mo(m/C<#`G+Eon`g9C>eoA:@I^noTZ"?NUSq\dduU[`q8fe[Ka`-U(#ZO]AK)q6Z+(
sc"aKe!b?CQRp"dHn$8MOGN,^q;):`A7k)`N:Q`65of4SC`A4&W=Pa1arXG<;m(W(W(0S2KN
f(cahIqT"$[k!:NBmU8%KA7NfLP73KPiL'<FW+Qef73ml"Z\.BOR'gD<"iig/!_6N'Z-3<*L
*YHu6u;Tg8Rs7W!hV$sae_YLUNJrJU&PS]A>KhAu5^0a3f6\GDY7lA[Pu]AF%l(*e4&U5>k-!^
:YGISiOkT?4s=j*mn-4&;^sag[/-@.]AqGTG:)j>?(hIhFAFhp(1_f[&&XH+<0-c?@0R_(=lX
e1,,N^s@SZ,Pc0#0O3.$;@Q]Agl[$ohG<.q9hP=BGc3p;2.hm\O&bB5$5GWM/Dk_=^Otq>uf%
<ph8"+p/-Y\psMfj-'Q<4>H6Nn>nk&U03XXJ?#L1]AAL%m]A^)n$:qd+9UelQU23pF`cUqY6&/
$^I/?fo;9Z;,nr+k;XH7J.+!s5<Z9!Es"*1;X;CqZ`o*VSA*A<W:?CC*mU5n!K0f<-\dUWRX
eG;rDXd*CBPs4/"!5YQ9Q6W1eVW'df3&$,\a?j%ShT,@LCs<mV/a's(l=_k.eD[7%/FjtDA)
]AsRd4RKm62<nHrU,7YFI\F#c1MNG*Dja0[WRePdmK4b.O7:J_]Af8!`2)88#"ltW%$T%RJh70
'FueuYJ'cc;GUht8>q^ea.?IpnV8cBPN=prfG.6h+(/nT=^fg<IRW>FO!fGTnb';OC'm)"&i
L)KAOlnhA['%Wp=j<[^ednVFB^;jT\Y9VEHRZqn1bdDn9?Zq;28DnMPjjk#5KYm#!D!QTj1I
GBdbZ_4B,9>cE"Wj*MFfPEeT_!F,-,0>IS+9;7F:h`*\5qk80bLYkjD+.K$-5%JGH(6Irl[I
N-24&`?AbR1[;Xf]AA#=;^Yg>BgL0q[t?KlEEVK$+KGDUt-8.>`(pU[nXRgl?TN7WfJ)GP<A/
j.c#IYbS*bSiNS"*s7OJ%\&XN4c/&($[Dm+TD1%l96-+TMAbXeRk<VeGkunH+q&\E.cSTqp/
i>qpat#/,*]AjDP*=92=Rc9-#9#C>)?_1Kg=%mM..jV)&gJ:UR.]AmT[33^lcTrePMa,s`C,<e
i$4h:*qrdh%HbU:Ai1Jn_Jk(40R&DCedoI6g:q0i-!4+$6!Yu\o%k3sE\WWrHhU0@!#PT*d;
a`9GbqGW8r^dPm*fBn\L,D/*rt"2JC@Y,5gQm$lcW:p"A9FT()^79b5+8S%f6jaYd;:Lu:[?
,2Gfp0nj8!G-"hgM#>tT]ALnH4)&V0o]A+<kp5g_eFNGA-@l9R=&+bK7F?'"[mn`_\F7AKRoqC
/iT9Wd1f:/8VC6TkI1X8e?&p\I>T*-0E\]AiNOEEnOD^U8XWR0\^46]A-Nig5%d?\`WTL%jT";
>QDmiS:uaQL3Y'p'mJ?YQ#CBg+7"g/l+e'YGZtMR/_DnF]ABBN`OT2r_qn&lXh(dH9cAeo3=n
rV0G-O3Ql-^`L_YBg.LaH/EDE5HAda5N*?<@)_fSB'0W!:=Q&YkRR;uXDRcg9K9=enC>\eo`
6Xl*,na`LEC&Hu=[JQe`D!@`B$*lF-M"i2SX@kudT*"'RIU[W!M@fS$jp>/]A(OUTP]A9GQ1;I
-k53<P;%hEbIs/YnsT8OU3jPRn$fto+=LOY!M@Qsh_QXc6SY.1V.M=k(q;02[t6>t'u_FI#"
-R(gGDpkP)6m;$S_J*m#QQUciE/A"F^UR!_P')m:aZqpY^%B;bY1tB3QI()$0>7*TNHC_PHD
!TaGX<gh?-7RFD6HZ<7Tk9,m;P_(H@&mT'2I7V#S_L]AhE,jZre#Qe9ho#]A`?&Q<-.6i=.nU*
X7V3>'A4X5,.VQ>2T/SYeH+cC7,(D;^K\.\O*DEX'3##HH9icIVD[>2A23^p@kl<qOX'_7]Ar
JkEoCF\9W;ME2A8KMJUnF4WTf=/ZcO3J@Ck*VR4YgpnQWjBp?Ek[%W\,t7FZP;bUZ<#j^X+(
Qfh;L:*(g46Qm#`tDPHA"i$55$9^r9S`^l($Vj15Q/4%NX.0IGF,4f$Rq]AfS@39YT*n$s3kB
qR^O>:kUY40/"O8NRB,0+4YkL#oDJ[9+#'D96%-'J_8:CpO'RWP++bBiq1am#J:_i.QLESJ.
HM]A_0mggg3\:'=j"?*GA;BeceaI*#I&5K`cY^q;L<T$6(ImOmoFm$jWt+4OolYT-_o[QG>\W
!HB42<@.?kC4f\'C-sA*%*IINB2:re_j824P_UETR<bVF:V_9>),Zk#`=W2Fm),M9X%;3Fm>
-pLfCI,Me'hjgoHYZ3I9h<5An8<0HkV\AD9R_*H*;U;VI=t)S.qNf1mm72h*Gcc-V1CrT\'A
RdK+T]At`&ZNB>*:l)I)sXML$>Lf8!>-TK?fA;m*+M+rHU'Q[bb1JnqkC*mSD/m`d+OOJ8>%o
dl&*?d%fO5&GI:o;FS8=26r\P@$*G_W!\)C.lt(F!+R03/T/^g7o^-dM>0qj>Fe,t_#k]A8p5
X4a(^'S;T)-h5Q._RsKp/q5\fhpf3=9@S+e$//lQ$Teq3$Y(\%I>ql4,9u)i"PZ9C;nJHKC_
0:g)[[?7mG1WiX$L-SBIV2?MIUknBIHorIeI^P'i7CGp27V-q?^k"(J8dlcYr_c?Y=r?kfNA
7#(&6;Wu-b5<EXK!tnQ()9[Yd,u>Z#-InFbq\.<&)4&`C8m%8:o?@CF3W.jM"dGg0g2ugY96
3FI3'EVU;'b/9(K,*r3efHC8SC)iI`$<TJ/1K$0n^=ekKH*7t[f'>m,l%?,B5sbP_W;`3JYQ
%6_,[_H!>ZP)b]A>"2kguoMdq$X/<`Vac[uLD7Aekk1"36#TKY([D?n[kX1sHR+og0b!T+CDc
4Ch>CNJ,.5FYgh&4[_NT?62FtbFE4^;BAfFaJ2^ag%Il#ks7[sBi'gst")&!;@fi!j1%"oAV
Y]APh>U[miJ4pf"$P'Cr.-96U,m5fPsZ=\oD@%7VPn@+6geh<R,`!nVH<GNRoIm!;]APK-k1on
]AAHXFL%g+9"[-13)7$=()QUeqHW+0FbZLE:0!pX1>;?"l_NKtDU5saI)2/=.k:pE4@T93Jc5
ST!;+h,'POVsY7&9Y3AndbX>t"RJYp0C?:.&?hV\'!@m(k0bk3"@)q4h_8+iuS+:\/=J$&Ci
>pp/hZTpPC^RJ5-p7Dugq\iJk^<eepFfrK[lY^uQ206p+&p]A)CAg-^>pb^<-,[]A($p.^ZLCh
WIJSc%_iU5F1MbrHM^Cn<Wjp=.Yke+kj(MLLhbo%+Fb<Te\B?n6l^cat!R]A;RBnKa.d#LAU?
u"m;&B6&&<.%3.841aVHO9G;2U.rGpa9k\;nKdbRr-;nj!kLXFPWht:_doSo0Zq0ZJ;r80K6
\!'4T#(E\J2/P]A*fomd'7!$S%Q:'''J?Tdf[kD1pR)hW=5jA-a82OCO\9QffZMb7;7D,OcV)
7>Z5$TCIBBtY;K*HGdo.F*S[d)QKJK#97VK><7rBt,j=<[aV8>7,e38L1l*03Ndf+12Cd+7q
`"R8S9GSS7#cdRQD2e)8=-Ej_:m`F";uOH<VB0-k$XKHE]AhR@rc7h>_>(lLiqgoj&CO4t83K
3pB%)mmX%C@V>l.[5gm2/X6DqQR\PGp0DR`fD@eHqak^b'td\bD><?Y2C9n9lSR<tAER*^$C
I0"G:(>9b5&g5Q<;ZB/k3.l'^i=$`D(LKL$9B$[r/SK!*m.^`;?#,B@2I.H8_[lFm&d/0*?_
YhaQW2JaaV:58WOLj*Fb8N=f]A#t&]AZT`6I3B;J`l?>h+pGq[FrD#V#@`$e[BjrJra72dSP_1
g"IW3'uB=!K6MIsYK)=E39mi[:AoEm1]A=;ao+l7Mk*mPkBORR]AI$E:b1mR/1,,6HN&EmC0U]A
)goaBOe5b"'>2?@&<E5"*2.tk/kroWSXZ'XO@]AL8.;q7"`9e5[_?6m&EYCu#ecQX@aP[&#[]A
_?jL0WC:+_4U;4^WLIg+25kK9,s@f.!Z,dQ:G+/b`3<E5X7i_h*$'`S#g@D$7u2*g8K/rtas
2kr60,np_XLG;rga+3.l,'lB'?C6km58*qd0PXb&=))Ga1AuY<#XfXK=.RoDb8Pl*p9C/&R6
;a_q=0tHoe)*CaH1!ok3R>C2o6J+-kJ#8>0>UrH@:05dk7goQ)07$e#J""Q2c_n@)Iklp'3X
Y_Vr%^+6E+a-i>r'#7Ct$=iY*numNOQo`!U:/^X"%S0*;9$@urFNou(.;HF-*F8C]AK]A7BaeZ
(XpCUiaIbV/ACR"pChd3,tIhs%#a7S=G@k(MN,:FY<<Y(3itJMR[T[%&_RokUR@gZ@)cpU_.
[Gk]A%WPP[ge/SSEKCh&nQ23k&T/OFk+KHI-bIs8CqUJ\=&Wp\bNiKnSX+-"VkRbF:<5uODZd
I9VgXsqDos!p9=%gbf2I/*-&Pum!-EjI!N*?hs6T^d2ILL/]AmG-:#20.IqA)7`@tnh\k`V`A
bRY2h32L'+Ma;j-`EgbRp-,nma]Ani'BEBo5GhILeiXOZ@T>SBJnj-r:>i,=RH:C/%Xfj-$,]A
(k[<Uapd@l3cqcp@ebjL]AWc%$a+T^]A"U<eQ5S'.aR8=WbO&X5qE!j#:M0Us0YF#lI'X7=?8T
VK1j<((ugAnV@O[:#ikULgpt$F#LTJT*L#sji5ktf2+'r(a:_#EV`AAa&-UM7df-(8"HaXea
$<`W4qRQL.A:iMLtiOYs`^Zgt%KmHh<S_,lDIe&R`l>G^nC0i8'>)^M?8.W&(QbO6&iQ<\>]A
Q>`b#t/QlO08g0'I$9rId#l]A7N@A>jR4buMD&MjCWms4GoW+,r,1,&1m9\5]A_[$)csAj*m,a
/Zi-qZ*7pWVrel#7(e614CJPG5l^bTJpE6o1!X2AdL[7neK[k4.Cf5*8adI?>ZouP&;)m^K1
Ek@jchTdfr$Q'R#7NSX2JhmSMHEXKP&:KWQQn[rQ3%C.P3iNoNi8iO9c`?7>`m:EX0@/V3m_
kuEueUX&RiNik@*MB\c7r8j'<q$$^.B26EcoN)oRJb,b-_;Y"(lg7#)%]AVhTA19b<VX\WbQ-
sT9TnbrFJTV:fE\51Ai-/rr7c/ZlNYCM7=*Y)<8'R!DKQ4.72Kn"e]AoJ<%<;US95P^]AQq"!X
YYSO(ddX.hp\OoR[^"PkO/d"8!^ToW9adKAg^iWB0Wte-%7]AO-Bg\F:[`HhK3q5,C!$:;#2n
W`Zeg13"d%!j0N"/jt@ge:7@nmD(6C%s68AbLIXCr%isfmBjoS9gL%6#hO_jjb6m!LS65CJG
qC3Ya?rqJoG_'UfI&,9&`H3]A9YLnj97:=b-Y'H-"ZKSa>h"]AIRn82>m*L&JG)Cgo0di/+G/o
gDH;<g59*e(Vmme1ZIb>EaB/<:ZBR0CuQVF-(FUgUK+T[a0'kRHhXI,P=VEAjcLPBS&\X6bj
5FiO]A\4$9L8L^2Wi]Ah1=i4Q8lAq"5"Mg<6=\uOJL6F)7c>\^\cf8$"7X&:4ggog%JA#4@RtK
ca%IrFKuKr=D_GJr,IOV>f*U4UQKfB[5S1S%")ddIGoRaW0WGX4J#E#8$YD5^Ibeo2:>OqtE
2#FaApPDNOaJ*OqLNXig*]AK>T&IBEaOKf(=+*f?6FPZ1L,Q$lhu`G^%e/e7HZSlgSO=(Us(m
eK&:u_8`0!f4=lk*5q;Wp#@B[E?UlMR[_$'XXcf5Gbks51Th^<4(k:d!7bj+^\MtJ,&ia7BW
N@%o\Et+4%:-;!(Wm>Z!Fg]AXXDLB;@[&KTA<ea.`rOjAm><IC7Hu>Q^cPke@b^Vk&6GqEhI=
eBTe]A+aj]A(T`6Uo>7?41%rb.ZbeZ2aQOfo?.(^?!dK]APnc->6Ef4>q=d_-k1TrW)k>7=.=8&
IeBA_oRdt"'_TD>CBV5_TF*QUMH3c'5b;3?!6,4ID1hi+L3tS4VCCfaY7$gM*B+De=^LFOKG
dIi^jRMK3DOXESJYPA6??.]Aocbg\91dbZ#Mf.cXGmKPW??/hOW4e6%G7n4S!FG\uFP\""0&-
sRir)if@E(b;/m?%"&JAHi#u--*VMVFOW;;MW9Vb:]AH=h*EQ.0ZubMb:"e&MNHC6u=9>\qKm
YKZZ$Y4EM57J4,RVOZ@ToQQLWe,K<(OI*VjPYff%R4%MaM$,VT!M)8H6"#(7'Jt4?1V)LGik
qD".E:<a.1t;6I=1X>9-]AfE!m1d1X6#N6Bq3SX$3'W6g/J]AB4@C!bM<.B@]A)(ij/i?PRnNKX
,E,3\+Dt*FfC`H\AEG&ieAP4OB1marOmG:#ADnOs%aM$nSTWb1(0!7b0DJ<CES8):6*POTLf
t9gWT6`E2SnP%@/VeQS\>W23CYc!9Lupe^oGr1O1$-@I:nUtc11%;D-e2sofro?!/]A+AWI=,
eZfLt4]A2g#'XB%jmeV?maRT9O(IY),CR_h:-mU?'#aTMKfJ$6'KZ$Hta_dj;IM2\U.7o>hF:
&1R`_b=hp(Hkh)]ASgNX@._R_.s,41!F*Hm8)P,)Is,bief$#rJjs!&YiC#]As]A&Rk;JK%(er7
\o>FT6.]A5f7`eX)674JZnh\(-jIqWN=L3<O,hb&2ju@EbdUY$>rd5N,.E%%^T"SFepikp*Ko
MDcDk%2fMXde#UM:_s0Wo5MRsQWiDt\mAI!*oX[tDN>^BU7rBiR&F>N`Y_h>h+YRe<FY;d-@
eXVip3kH!URPGX8[n?b?:iF@[C.LD,bl#HWCVq/e+PM`0]AeX`4uRnWKJ(ICPVnK6n2F1g"*\
'WqQE6kfVE]A]A7Y8`[hqqi-Yrd</'t0W:9,44Xi*1m=?Q.9%c?+X@h>_IX\u07@CR@"]Ac,l;r
-;;36g\&7"Va#=!AA3^*c;$B_&sH\W;t2_I>X3**UJO`V,plE5+"F7AW6H4gecT3BLUs*Bq0
(4&>STV]ARj0pMm_&9(2;WWTXU"=l8\GV0e-NfG,nt_d3ATFtn"+G]As6Wu=.7T"c]AYS9a[qla
*l&P0_h^e'lp]AWHp$2#\'^;F[iD@BcV#OoINAeVB`$0Tk@B9jb.0$o\i>&1W0C8e-*;3OLS7
Jn1aS.G0]AO=[K\\X0!(#sHci2>;N2i09!sI_o*af^TN&1X8u1\^BSmZlp]AlbHj@"if:FX/g3
Ou"EHaBD)QHuMlh8?'!Aae;:#_9W%,LlQ2?=[''upn3q!]AEAfPJfW8S5nhVBSgO.;ue*I=eQ
FqJ>%GFYn^!sTaufM1Y2+[5l()@RQgA]AW,.0c>cq<r(eUDmeB->BIgm)`&(>cs:1m:&K%jk;
95b_T@1VR02jC`L5d,7fpTtIi]Ac,4,LW[GYhG]Ah,0pd$su3%<VAGqmQGeRA')J"9*h5WGPCH
5BAt=d>F>C1bQDG@5g#]A]A1u==XqU!,<m3*%:Dt^W^GaiMmiPog#B,LpOjlQ;Decu/=2f36^4
s8Rsm+9n\-j%[f1)HE2@8;DN.fkklcGbe,28.-"\$1$RXGl5Pm:aXHhRVA/5o)%rd_A0Bp\C
(3[a;q*4c..M4#*lmH3kmE`.PsUJ=OqNTYR;Igt!V7[iJu)a<k0(jq;WVAA.AF;XlX'ktRmh
L>G1nV)_NQ_8EUqX1Ze,Jd&nSHi/_/lJJO_L1?EPMKQUI9?O$eT@cc5B>!>o;Nue9U_:ITJs
-f9QX;uNU*?`t`9/,VOn4iWao3$N6&qq(7O__6<jR9)2,`6nPNQ5j,<c81U]Ae.:2omJm2BEq
9#ma<2=?dBHW"fciT17IIaAjjPV1MY3"#lD\XX,b1+t]A_!K42OdMh5#Js%^1*7`d:rlV3lRE
TCT)1*dm^X7!:Pl"`IRqE/fK<M"78a!9F9>UTP=h2^2+@'7p$l4ptlg_MJCb"+IpEq1FccLj
-]A7k*YdEFujBra0]Ac,qg]A>d6!kO=lE]A.#"\^W]ANsTkl0?khr(XW?)!t2Gb,M_2JT`6m'lj94
1E%"/ji%3c%)ZC]A*]AfU3Hos;:::+Dn1$74RWJiQ.g]A?XA^RA!hG7+A0\==q?0/R?`RJc%HoM
pNPTehsRXDP+;^J!Ih:,>H%oN[fl*#<CSF+YjHAHZiGS;1MEk:`E7/!Y+cQ!fXXF[p;n0/8l
#C7UiO+!>>kV<5i32#2/@.4=:3BVlP@hjh'/8uod653'_*-%CM'Zg_'38#c1UX>VeS[s!tk0
cK2e"=tlP$nGl/]AC83rcKrLl\#k",KA]AXQZFg@*@./>M\,-HB"E5l(nWr>L-IqN')he-67e<
qA^F+0E5Jq\l23h9cS6+S\$MgfE6bg394@/dSX"d'GR1f&V?mU]A3Hf:[I14/.;X=5eq'^0,I
Os>hc_b#tqJ%Mkm>sk:7oj;iCdV_&Cden?E]A%h(_E6L.8WGX'CGHBrf;kQ1MGD3Z#`U;t#_2
#"cI.2c;VAZ+4Yu=@JX)BR\nosAC,Th4VQQ,d]AGX=145"bJ\R)rC'bFg'4MSYm;/BJO^bE#@
)"afOebGFSDW_9\b[PIdTJ^JAU&0%Co":HpYr;3MZi0)p*$p\5"jPBSh)-599G+(^pVpZY[Z
#h_X#UY;ha?f9u[7$Xn_]AA6o<-E25^L^k"<%JpcWB:\/UKH%cm8P'=q"(VgMs$@NWj9gD`L"
MZ`.5sg=lbR5*dqtfl"%YP@HiGZb>ZJ`'Mha.PI*i(Ki25DC!4X<084oC,ec#%*`na2FXSNL
.'$+O:ipQ+lA't;3GYYHP,]AdZ">/]AF[?*um['e5#R0_e,2l>F'pRJM`lMP;k6V0"`!crV8rk
s741BsaE`&.6UcCt*j)A%YSB[?*7A&6CP#&eV&Uopc.mZ2QLq7F%-bS-69'l1^$EFC9\4&hR
\WBVc`.lkS5?Xmh?!!h%k72]A=TKeTc^mQ(rgBr\a&,tA>Vo3-372!b9JcXNG$)=4a,8p_8S8
&*g4EpZ$o>77#@d3pa%B_:/`B3n>03ViSHhfm)2;-[dkT:?W?CV>8+PZe<3W#dj$$O42I;r@
?[G5=d?b\d,Rpqe79\@D-4R7F[cUES.E+9^M&4_@oqfuUf4>E6?21lG^,YbSVlpSJ]A8*mU9(
#gEr+<d[k\6*f/)U/]AW878k4=V:)EZ&a5:Q*]AD2t0ZCYQT-Nn@/pCoOM:,!QGhWk",IZl:RU
(t6ldsK"*D`G3i^%(JXBtR/e^YU@A4dtH/$V?t(n\0Umj]ArLon\Aro!N9-Y_Sm,O0`Z>kCT@
V";2=ShUE-ochrYuboQpXMW$WDG$sR;>?E3HWHh'?-a6,40I$EJ$V+?6iRf<bQ:GV=qEQk5M
n+P712E(A-Z#.2rbcAdM\=`rPA>K`@C5mb04o*OD0fOS`EkZNO&ZZ8d1p$3Ei38Gkmm1q9'p
\ID%#^#UZ:)S(LIgX.F,ke]AcE5u[m+HKXkNa85bN.Y<Vf<?<.B'-N$"e=@@NC"%aGcnDQURl
K+%SN;ZZ9U)4$:nrE[9P=6'F6g6%R39H@bX'C<-bBD:p9LcB?gSEmtNcspAagg0`D!;h=ok4
<ChlJ(:I"$Zg^O.RIFq1f@o-T7r=4<Z%G738k.cS.GPQg#la9NS>T&glM9)0UjS_M5;5ffJc
dU#E;XD#Xp_T8HiC>_L4=qU/i1=H=f`i$,rP`"iM84oLZtZFRr!i=(G_*8%F+lff,>=8"6f*
e\YmVS9;L7aN0Nm&(tJ,Y7CKV:2fAWQ*F/<**".]A`i3#IiT;7njS8a:2QCM_d`KG8Y@6.;AR
!*?eQp-7`*7"r+hLpIWm0ZBhBd:'UBd0_h?m9Gp/W"J`DU8NL)^=Y*[Ei)5_^75#[PcR(oIp
eBhuM)I(e;doG@eX1srLBVt=c3jbC&6i!0eGS\#W<cs8YH[Ql:)mJ'H,##"\i?u'Z'+'*:T5
/$qEEItTCD\=i?):EX.H(RSmY2e)ornE??;sJT_OB/>GQ20DQ9i(gW+ee'=p#iCAi6IR$,jk
QG8@W0>4uXD=.m4iSXNfe`G>bpN,q`k7'h50-[E$Z.<ISQ"7@ItdaHi*fMj-ZP[2eB]A!p)+%
=,Vp\t(#J_X`Q.6dPXE/jW99:Moe.:3"V#60I:=FEd"SShdnH\JHc=O8,,`CVroE\K+Du),9
-*1q&q1#mQ+A2YP(ic7'css5b0_LdbaBXlkP23j:mm`K!g&O4%b=T[@Zq/K&ED[!,9XR:X;)
`rj&P?c>&h"WFBpjeFkKbf3;IODYr&bCKj5Kh.D^V@ZJ%#2pFc!nTc07o[)CF\>iZGJtlP2*
.#Er`Yu/<c5;=Lr4@*#Z&9UiMEeM96YKFgb"%S!gq^8EB6*4jMEAHLu)bo:;1neaj>q^dM2:
j5hdPnCCY$j+iPY1a>q)sLt!/4!1tScCf1Kuj#IhPk9KkGLSmGC!BbEu1Fpfc>71D^!,N>>9
qdRcU2V<8>O/&1<)e&_Z3U%?s#N]ACHGf)h>*Xb:XsN6V222H5pT<\o:R#]A1,u1R?h)7$$B6R
p,a$up?nA@rAFuLqiL9%!g/aU!SE;4ZcY7":&:>tss5Vr0MCUlgFq#"+HVm]AO=`\qudN$%j!
_7&o[kNZq3^sVGjid2Q%33I\f.;=\/AInsO%X]A$-@/%g.bcA/IB]Al`;_)LWKUD3emr#/+`U^
4AHJ$AS%8<%kPCt,2f1sk6dFsZ&&d-?S?X1I/,F>*J%"i<B*pSX<<69bg*;+n;AlSN[r6+U+
(3-r?7lK$kP9q_LJa,1U93QT&[:mtC+ir\n&/1==F7:k.Gc6+]AtK]A\>jYoh8kY3t(p!1gi7W
>Cd3fU/=,2$%7s,p3J_.A[AFrW[5aV!c3dlhG?6669Y9c]AeFo[>/="k37H>h?)\GPia(_Oe6
3:/_#rcL^%@TKqfb-%,C=MVsBcM-;7FR?g?p[D,JLKM_:jQgoZIXQOq%s^B1M!10BoB>r]Abb
9WR;lELb)"?#/(#k<D<ulIk<g162lIT,%d>=8R'br9^&Ia;<866H+C*6oY+fh#R&U*D9@T@g
I>\-?ZGf_"l`/qVDZFLkMe,gcVj,Km_g>j8IY.bp30U::3BFmp/A`S^"*iU%#eS[_)PeMTp6
Sq,0&rr>r?g#AVJD9#*CLksucjNW^m4j/$_G@4qaN?5$fH5Q)Ll-R#L6qPj_p3kn#$2J2k/g
qT%;8`-1je=)g7"O)=s^87=>o-m13-NPUW9-BIVB$oIDRSA=Mn/CpYanb@#mY&8sL-MY3%"C
qk?%*:RX^G8kYuQ3Z=MkZ$]A[$Z`l<'tOj-:K36X,ASl`-;%_k0*hPK,79.PK=q@."[q-@jlT
6$adNO^5&OYk>$#`Yi=k*CB1^X]A8W:pP`p-C3q<_K7BW,53jO@>cLI*ED%kbRGA*%:F^hR)K
9Cim:o#LS'C$8PhrBaF!tFc8VXN`naiMBh<4bI\7g1<rUNnV&Ve$Y.(ioCY,!E>BNF/l`F'A
FG37!HlFDH]Aq'u\-@5?'"/^6.44@2r'"]Ao"%d!\_*0jBmuN0(mGe?_n%75n3feZ\5JBA2l9W
Z`qA^':celA!lip0t(()C.`c4rUe^=;LNj:Yo(K$*Kb'?#^;&A,Z+"_cA$(.iNdPfRAWo+j!
I1Y('c[FIT*Ql'dGCHmcJi<qSjG=>.61$)F&'(C`Kp\P]A6l;pN]A*]A?dI?kT)9qLm"4#+/N=P
q6oclG3K8-f_G2<l$qI&H`knF_!Dhk?iof#,m0Q7=,0nSH^OM=-]A,>V28lWkZFnA$s,uH0#K
Ro4TpqHuT(_R&J;m^-U2`9X$9FqQI]A5%ujOQq$BrE9\m=DSBJf>V[4l>I3HZ/dCm9uI9I*4l
QA'LWJq$XnN-j7T9nJ?eLE92oR58!K4*>'LsdBXLdOZ1c'Pt^Rd*!;kOMXQ>S79a%o8`m\XS
DqtXr@.fUoW77e2_hi;2llqTSVl`BSTiqfh7*+::JWp2l[/V/&4*G+2FJnI[>/ec:!l=&kR>
;s/1FDs/8(H.=0WmuE*TI3StNr<+NSrbYW\Dr>P*&ZFli,PdE2(HU6cB\C,c"]A1p31Y1YRc]A
3J^:l<Ofr>C<bjiL<tUZ,A*S4K2,YN/X?bJ67VHi6\O<H8L&++HKeXNA?2\W*+tT[Xii&Aq&
`l596X)=VM-*SV*;=OLjVC7=L=+]ATUI("p;jG^6uY8C5BDTa!F&,6H(@QRe_AJ0E(:jST>W8
I&0Ra@#C!VN$QiR^BnI#AVY^+HlAb+TQIoN/)Whn1hl/Om<XjS<cC9H]AWkEU#l#/85LnoIPZ
DHB5D#M_t-e6I<Z9AYT:+TtS1g(3hYQc/./Ol^[`2k8m(u9<pLnNkRIaKt0mD*QDcK0Lm*@G
UBDbXu.8.&jF<B7%I$HaTk`.2!GiTY;`"]AD6F!Z=9W8>[I4m_k0ApZqP>BLY+4DN?j=\:R/$
W#FPcYZ-$0\P&6/G=rV[E!qXD+>85aIOGe]Ad,bj)a1\fI85`4q&Sg7bQDn5>\$<N]AR/WQ58=
]AO2=Dt*^J#[dfpL_hi9Y+lW",m#ukK4B#7Q.qtLI)oBjmr3-ifH)r_f<54>;o:E$=,Qr#0ok
IQMZruTtj&.RN.ugRcieJ:T,JDqm55in&@i(Tqi?X^@l'>-[?=trf0pjXmb_b7!5k8q>Tdjp
H%=0jLu*?qGIi+d)ZC0h)J<q:o3RKI.Qc#Z)h%mMPnIGZW:PW;(g5d+Jh+"CLn!@9\7'ai(@
p<Lm4^98%!IiF9k%=(>oOgq(YmM9$J!]AR"dHG*uCYb%FsYW]AY@Omb9__>[&C323"]Ark6,doU
B7eE!.nhsQ!sl(K7rD?B$d2k"6Q;EYft/\'>k.]AMk7"hBH7E8T]AKkk/$2)6h`]AIAkkl%YrjD
ef&dM&(2IXKFa?<AWCD?eSW_;c?FK2"J>bm*'1;I,>Dks5,[?h<IKe^m#P'EcsM!hS'TE[8A
1:o0h2Rj8/#e>;mG]AhQf?W!LM@8=;/[TCWSA0g1u[heaH]A5r7_n,[tdRO-O,@k0e8a<60Fte
W/,pN:dW`ekMd^am75dWpZ@P3LB[.]A<'OGa:m;9Od3_cS<.!o0Ar&sWatk>+]A2>O5Z)7dAk0
5Z-f]Al(9p-<SSNEL+h<scp?ft]ASVV>`FSN#9j,eO%D6q*&5>$cH8qNC;)lYU-6J#>GhBBPMl
YHb/aEMfZhPW7O!jR]AEpnk`n]A\W3Mf'13/BoW@&j?WiJ$/]A74PJ=;",Lu/LnM08ZgHeDM9"u
h="$g9N$rlFYLF^=l[C]A$!8*t#,-3s$o5Q2W<OQN$fd\[Il?j.]AXnBD4<#"[7k!d9W=Gp-UE
0WDM#c+/fC0)B0rsPT/Q)7';9<j4K4H]Au]A)"StA!@YRs*K3V;1:=ZrK/p0<cuCAm\@jY*Al/
I-n"H\dXBr_i4$.qj=3KF=DQTC[<c#ic=j,14LkD)Bj<Jq%itJf6@nM+OM"FrD=feUT_W$ZJ
?=-a+%c9N!qnIOE#JoXYN05$+n9+qq_kZRo_,0#dC!&<lsqF>:mXJo(?c:B?VO(IPUm#oS>3
9i_1,:&rU82I.%UL)cnZE.b4U]Aq)(%\7oQ\9u1jNVL[J]Ai>"ct_[cU,a`8]A_aK'"dQGH?5!D
gCSHKBqM*'"C6f14Zq_44SB6:RuWe-@;@rW_.9*cau4ebE:j$U6T?NDMhMP.]A$kfm\-L9a/$
]A:_FF]ASR<)=mYHWZ)+'t[F^K'N8d8oHXsJ4r:-U[nB)V[qM/PUT[hUVYr4k>!jbgqfqL!XiZ
CFqf,j"XB\91qKnHX@e&b)5YdjJBQV@]A2d;j)Tdi+VgW(4PD:SF&WUQ9g@UT%j6S\Du0UL<<
IloHt*F*ae>a,3Okj2h.>+nf:Y5;+,=Ub'p^jH-O<`-t8I`VOMQQ4UZ_:E%DYE+Ntd:]A*3+:
72ac"UI2[c)t(p+pYL1LX=U,X57:@cO]A@l@QqOB!&I-Sbo\F&Wr8k%k"'"AYRJbeo_4:$qn$
A*Fq;7/,q9T#]A[i(e\PC_&V#B2VKP9NigDE@),7n$\A1L(BAW1JUq0+8V\7L"n17@l9+F5X8
@+*tV8GK2#ZEF)S*r/pplj8]AP56'o/C<T0jgEqb7ug&2fuE=12MKBClnQ=,-bgVd%++qNWq?
22r[++LmJU!`[7b"JfFSEd@&8qtPOEjL*2I-26X)^a\<i`0`&TH;pP$Cc*B,0eF:gWSR>!<S
PmiRMi0"Oqj%6!WNU"![h]Ah6!OIIa^p:<po2!H-Q5`RkU4G^DpK0eNjbeir+3&pe%[QNkCT-
5Un6GW()=eq!^j37h^J%QouB1jJgso;!Elums-JHi]A2?]A6f`0\r(/:@oXf6;G4rFAMOAnl:O
^^]Ae/2tPPfW_[_';X;<D?u25<7R14I#MSC8@hiRV%Y9Yb,he@tWM=SkSCOVS%UrWFCn[[CFM
fT,U<B56=G-/G]A02"/[Yka;FtdDQPrWYD$cfPBFESh/.0[o#Ecj;0dA*UUj8$'(bf1WoLuAk
o1l,a$kL3l#GZG\[t=iV!fJDF8)`%fsj0#2XK>fTW+6D(Jmo;'%O!fJH7Vt@Cj;_#mi^P`(,
dpFO]A`>7TpB)@WKt^"b]Aqd/_7Sn4`1"P*Dk@3="X_k+ZIt!U3?tgKI7ab_(\<cKF@gA?JPa`
.FA\8,SAXk4><;/jWX'u@4oMO$8p%)Xr*sc->?dX"&;:,.H<9[p+?>1`-U;[Rm]Afe#&3,7:/
1dflOg#<Z\p`^q]A.L4p2)l_Im4$aXc?J"d<R]A&,grbG.+IlQJ#`ecHg1+M\@_E07'U&RV]AJ4
%l_gE-MB2S+l>t!UkI+u@LO(Ir:H&S<8:03OdTZ-kbLnB'-IQ'%0,Ztp4/bl2LH^lM"$WouY
:iZ%YotC(hs69r*cVSo;;ECs7hc=o(=ZfL@H[Nu3%ITKPMJlc@TUgA5'o(Nj2Ad&"D!g<nek
!XmY<^Bea4:Rr0^$6@BL9/aQiAYV.5:L^MPcmqKo[GSVFbkP26GJThS#[ORf#"&1nZhL7Wct
*._gHSCT1;/6&s!3dh<]ARafeGZG#cRUb03&9OR*6mo=aZ/4&8]AiN,1?qSC(UUu7[9I]A-4lQ1
=@YrL?QB;["B0O1fGC>!SSC.\1ta>JmBG)E/GLe"2rD=A<B;E[#HN)+qIi1*t)hP<Z4fhn`t
X8b@S.it5:95!gqW1@n4[HDb>`W;)!&lKB6/&IsnR-<71lM3DmlM-9*W?St:;(4%X&`Ene'@
qs<+;k"'D:2GI@DHFT#?/T?dc<*SsRug/5'rY_o>]A!r$k1hFR8$Ap2\MJm0r9B67C!HHSg@,
>3O1Q[_4`a*_?BB8m7_c0HJ7p^L?;WE*5%1`*^T*&DBIblF*b1K,&IDW9X'O&/\e*c?i(lru
1C$fN<5lcW/f@8npm]A(5K5&%oEiC5[n*dCP"R6AM,AuD:_^t3<IWLXm-n*60<]AWQII"E<K5c
n=)QCgWTBRS4Qf?XbQFEqkiVSB3ijSOp!]A(SLeiMWm@]Atj7L!VGq<aH`QL^]AoY]A?s&Xt.s@m
HZgW,%<`assa[9BJLSbLF+.gr7h'j6Iq:ci+2Y!kn?*j:i-SNBNPL&%pH3u!+)=>[W9SYpqH
h,b#$k<$Eqb-5Ib_?--EYZ7'32u?#6&J<pFfT"$aG+P]A3ST]A6j!@hXj[2_,3_L1YdN0O;LW/
^hUksg5)gcq$gH'_eP;([8Jm8,:8[ho*0Z$uMCb$P%lE,`7c[b>1(Q,o9m6e*_.=63`/U]Ac&
YNo/OH.-Y/?)C5F1Zo+00c,G`iS\j2V#E-[MG?k8%E<%)MVM#=PO>U1;Y\n21re><_Pa)jlr
*cJH-+.(YRPl'84t\DGE$C%/XK5\i\Q"^N55,+Q>-NJjD@Sj,(pUcPhG6Yq'*LF'Nesk60-c
&mu9bHX+=hZScs/7E]Au=dKZV1umr"W`2Lq;nQ,#n[?-.Jq.-:c6qGs"%_l_'<UtdpN5WF?j]A
P]A=i<3nkp]A;P>u^rJ]Ar7I"mZ<EFD:E'uEKV>T'.dG"f9p/4k014h144KJ1.SQ61eRs!Fr+46
>40coO7KCVk"Y^8b?;-9D5pS)(dcb0-qIj(lr\VuPthIp`O&u>Oe4nLEQ([-m6]A$i9f?lj$t
cWIQ:TGG`#SU<ep*^[&%:.1b$)s1nWSI).LddBTt4F3b4E4fo0%B.6;rZUCdm&7JY)!qq\G.
[>-"u!2ED4!-*;TL'O%5=t!fFn!k+$b6A3E!6RRQP&dhnom:k$Kl0*4at>8&!G&p0`l"okGf
p;lQ\WElcuVhaZ@N0rBWK]ASf?bj3YJHmA:l&DY5S(aM?e?i[J</]Al\B$P/MnJki=6En"m,q;
iXPFRc1[&\NJf?2dNF62LtTG11(T('\+p`M!=cW@D-^qY[I%oT`;[1^?SX.`/=kNSbDe>I!K
b4f`R]AMcJgHCg-;=.gc&^JG1Y4:UCs&5V^_)<kLHh&V7OO_jGo]AcMNe["IKlJl';7ss3Y@k7
rplqWfDF7n[Gq/]A,M!7Q$+1RifN8R.ilLE6$&TB"85W;P+/bn&ZY3#*BYO%U<.@n9Tl[N9p0
lq\j\bZ?D&Ft9*?JfcR*i+IBjHRj_r'f1;PLmVZV>_9jtFHAZt$MG(3*;m>^Vbg5_TY1\/cG
D_TYJ`iga]A7&=c5,SXM\3ibS?),EN?IWb#f<EJcZh?st1YDt8/:H[7"VX4DH9(tb(49<elZ<
fuF(jIYaRQ.\#5daJD6(c.4:NnE45K!*"3+L:t5'aCh#!2W8=i.,4Ijh1AcZhh_jlXXI]A#0S
))Bkag_]AjQhW0iP?q$gao%iu&u+h$S6P#U?U*PF<a>SIYBDkSB%Z[A&`Ne'(O(CQXC5k8f#r
1LL"1U\u!so>b2kmFcE(?>EB7\G;`X-IO=.Gh.b-'sZn<'28mh8j;%1$1h2X*!O<d0'hc8'#
p=rXX.7T3)bT\1mRmOF&PC1.PJmbD\KmE"2`KLG?Usb48'5c^$JoZ)kgrr[c6TcI[2[g_[E4
.53r&?ic'"[ZKZf$_T_C_qrs.fbU$M^&IEYIE8Ag"f^gP\kq)E9YA]ATFl"TKmp24ePF%=j"X
d&n/%&A:&auYiej:RjK^q\bXDHdnPDa01u3TG'@Pmfi$s4>*Rg8#aZH%U,l>;Ds4*V`)Ao+c
!]A\_gV16\>;$Ssm2r0`"'Kl=L,dD#Rnr8pXi);528cc-!0]A_t\ehc'E!4,HK/Tci(4[LMZ9m
Jcouh_r^jq0$J(Q(]AFO9qe\K5cg59iY*P(1C)]A1>5NPO20!>.s@-&%4HYshP^K'cOJXX#o/*
Ma!.iLnd[lka<Kl4Rq8iZ/*+!"54Gq>[0PmiI"U"VYRY8&Qg[Og3Lbb3jq[!FZ^#p/Di8;Fg
Kp2%Mkifh#j1nd`D`+</;Jlu7LNQSkCD&`&ONS_SCfNVLl:6r-]AU+<8O8*J`Wc>85<8Ns<Kc
)*lIC>7NXY;3@-ZsU0$:%4_.L(V*2N=%#)Qd-b5Vu`10eD[i4''!esF*&-.`$]Ab5IXe@fhWF
!ZhE&(D?YS^r="A?Be58$;qG7I6$K<<PU2Srh:X4=I&H1lS2fA/9F=t<K)1Gt$:ok3c0]A1!#
>=uRY:`p@!-!Bo\i\]A7#?WbNWY5c<Yi,HCnHeGHBpdDk%OAV^!:[.]AR:h:K,;cpHZa#AB\_q
gT^_Pg@9oX,>L1P]APqMg"2qrOBh4$j>3kYOBEm(@)>ZO+GZS5f@,02I9>F&cNQp97$rhN>#O
\_J:lIj8HV6l(PD(_=uj.?fj/k#ibX$B('F]A-O%SOY&OnY-<gAXq2%n$r,.8r]AB$S&qX?.6f
[SMd:OeRZ6lMmrais0:%bFCQ>0W0-)_8M4!/0%YPsa%(pHb5Pc;6R7=%s!m]Al6mZ+`tK3KCn
?k^T:?'ba;m^:PGs2pHe%"Z@T"8Gd]A'PL8dqtSU?o13KSW8=[73&8dph>4AaDaBlN4jZALD@
VS5Ga@8O2;L6Xc-TN$<P>GW3cmVS8]A&bA=P`q%(Ak-:Zj[cptPV40BldU!Bdhi8U8RMs.[^9
\X`5=.B#F^F^+*sMpQ*?O87Y-uXcVN^h%DK99MhaBL>"<(O7M<Ucn+p4B`IqfS90"Cn&b=O0
)*g*.o7DT+Ohd+["/rsVJi<k4i&JCR)Y)t8UoXP/&+`6;)\"Su>`9a>?b@%+c6KY0k"hf(]Am
KA)[c#a#L8`!/P]AF/bFOs<-HB\S)&gk'(`A`9n@?T"Na0m?E(%nJ\(Z254hb".+ggLp`/@/o
KQ8YPeSha[+JEn#UAeZa:QRb7@AZBp^fYI0D9gpL==4FQ&'aOR_oHX!@W$A;Fk,D<TcNM(ks
2J?9;*mQkHYT$A[%JZ/%EAG&X':(\-F/eB/%\Fa0dTc7TILJXkk9TH:4e]A)ZaN]Au=KO*K[kB
=k\I&Ofb7'\D293JZY!f;rkR_U0LHN`->Nj2J9N'q@.DE+U3Fd[?bA:4BJk8>C#f_2uLDpmn
%K9Pu9:Ke*;nt3q:3Fsl/k$9/%K$M!VPb/i[oi>tJ>n4&+/&br?>8"_9VA+n@<?8tp]A7R,-L
qF7Opt@W8]Af0!ab4f$*DI-W,"ld/U<3uEgr''rmk`:r2CsF1U&97_YdfXhU"7H6I9=u19nYf
J[&8TE'mi?"V-I(r\;T!^P&#`oc#-+7[DMP^Q<Q4g%$*Q<LEr6GX`<%:t)+#leVEfG+n@Z*N
eNEn1NdMJK9agVDWp:mNL]Abn8-UnMK3WIND3B<Sd?JY4cH$dUjh!`0.Dt;G&P5AWog2,NobH
`]A[L\Ytj;+*l0)r.aF,UlP4N82mu,+W$\n$IqE:Xo>$8YSpq:ldAr]ADOXTS&7=u[FCc@Na5O
X)mXFGAb6eVGAnA@n##6&hB9LoJk6OVo6&C!i[+R+'Q*df+P)6NHQu>GbIFu:Bf3l_.PnDTR
Z;\'`_?)HfDm<W8022AD_5Ki0pa#X:2ureXHAL2MO!+dVA-)Kcc*)?,CPdbg'4VFI1FqL>g!
rtPZ[He:U%oW%/O>^eMsq%bXYZK:C*a;I#=>rd("A8&@lqcZ>sVM05`^Vk6-l"M8b?91RR)*
*iW]A1,OI9?7FJ\qHYh&p$hq-n4s;qt^\cH>k&Kel&%J"'UFW[nWQ6N/nh\ZbL&O&iZjG*BXM
dOr87Y]A!"#5,3`FBacnY_qQ$2:bE4tbW)p,gec^^f>1$a`lXahJC'FPZK.B.I/1%[6`o5;]AB
e?R6'HpAL$R`P6<`IF^:!_nj'f>!o-cXF[OlNc4$mnuR(KOF6ZiZT[gn7m:n(Z.O)s.:d_%O
so1:_]A;gPJFV+W0$:UbHH2^F6H1m[L8?i//)`&7c#Y9,M6-BN'0*s>d4N\J50,(\UTM:[gV$
8f]A)O#Hf-5(EifZP!:5rR[dKSL$Zg*\K6,te%0:m$d1,%uuam>[e98e&dmGD(gNP:Y(B6mKU
eYDBjH(Qa?)#L&#E9>*Hkp:SmiiNDl;qFQAhUZqII*7]A#hX:NQ^"118b&,-`C>C=\e+_A^m#
&\>UDWT.!ESSo8H+:0?g<%7R/Hhjpal2X9uk&RpRSPMm>Bod07&Hrf@50/-oRbHG<%/&q#Y5
a5BgO6=PK@C-"bs%=sO/5pla;KN6Q[J.OlFq5?[#Aieul)OF2?=UUml(aIYPq2l)uM;!*r5d
#\aMr$8kNK\;aI7QFu2A,B5::L:^]A=i(GG/f/i3B4N/`Eld:Q@RoSUCT:sD:I$fEPNC*>g\8
asD!rjhG>8/X5)-Qun\(YTk;]AHA$7jP^On?KHSqh.@2PTFEcFjcmWF=GuD3)^'UiQt#)m^0+
ATABtTp$7Fam@.An7m")2CsedH67&-2c&O6q't*2OZF.ua8mTXKY(-#UV\s5f#4sq<?b0TkS
Nqsr[rDpWIC_q*P<DaZa_l[rFPD5nADf!pR@t"jMT!<3pR/T0Bg13o:RL9eb[bH%%-Hn^<Qg
I==EV%,iQSX&rCR*.:\M6,uDCt[-#6MhWr'W6IoGBN0T]A>h=T`VJTc;@:":RGHeR*c2t<j^f
)-HnDek!t2r,G='nc".X79-AZrN^!O);P-Jj)6?9JVlhm$aa@8%MHggA"''/fHLmTdN"RQ*d
!%h5T9]A4jXgk;L^5jI\f`S8FB0//1g[i>$!-?aY/jb*Kl<RXoND)^IbZQl&"'<[hhb4NG?)W
&ij8k;%V@ZbkSt=CHmXJd=AtGTT2[>6D`RH1_KZ>q+*r;Fc$Em5:P`m_%Gtt9OaK[;$&-ip^
HeZ&o$Q6$'mo=+,.FM+]AT>"/7\i(m8U,j&gJTlmsWpsn)%!6*;L>ib(JIEo_6Z;]A-G8$5RS)
;J;*6*'"Kdi[dg>5\mJlSSMreP^%"[(1%Jls-K3o*2ft**ZIaK^%Ki9?>]AJuBSX1EYI3k(s9
ab,sl.(C^rk:84OkpQaQ]Au:H'8&nWZfbf.P1]A6!UcuVZ.";'V_I>[<VQ5KqnFN8D5l[KU^gU
/cZ,;\]An1"/-bucFE0#t<2Z@":gDIu,LWq2u&+S_bM(UtSj4?7-RWNM/t^p:0d]AKki]AS)o"n
JO)0G,*`-hVK$/FY1,="<5k1_PCP4s^ID(EbAM/\RT:?t;T6q%9(GXL6i#9`P3cOB_U?^k8C
(Hjldu&A-AjKo_Mj)k3==A6;U;%]A<0;NB?ml[_?YklapV/E?kK_[p*$9G$X<9hnB/guDiIm&
^rQbuu9ESPZ/h-;BX27Mhb4H!;_QO;l_e8[]Al7ae\jrFs]Ab&<'H%&)Aq*#-N;Rd@Z>T*!.us
%5`pYe6!Ad<%WOTL:;FYVlo"Z]A3%gAn`,ci$Vc6Q]A/IM'dAau]ANoa04Z?kl(t@(I$/bi8(d.
#c[2N3&/6s$,=)+EJlHKgpnk@iT`i(QhE)C>pOr%6NXU'WE?[F6Q,B;^<^/n<?i5su)%kTHu
')<.0c,8H*ZJ;,)`3?1ZJ.,s&)g$1Xp[`l'(_FM/]A*?Un:YK1JBNZoXC1D`J:c+%gG8B*KT4
0&'\J$/(jAo/3VQgat0kgru4IVF.Q]AFBu%B;BnF+,BIq7dD.:,bDF5=QS;1JUJVrf#-GiM2Z
PP^!WqkN*13LLkSr[<LM53^T2&11]AVA-^sQ_9hq->3gZpRr@pSA-(,.H?F_'K^Aa6NHZI&[q
Eck&dj>F%U!=cIEnDm=")0%u*[+*@%3^Dd@ZHHq'Zo#5F3;G;f(QGkn6K>`r2s5@Y-J(HCUp
V[[1ZK"A26Ng<rtS"FtLg(AH+G^'ABUp^fNd3BA/$REKWPjKj*7%!c[1%9Be(ni+98OW^JI8
?gI9![)(/@blSP!?Q+"%5gt;(lCO#,9BD!-,,I'\e`aU;iRE'FNB`_\lk9PgVoM]Ak@K/bG%:
C5W)/C?D(nJ%C9s%iiKfV1=h1rDu3#ajMjter#7lslr$Sc341FqD8X(17XMsacp!*9#g8#X1
BJ;k`@[<q2^!]A-jt]A4EIoFpD_%Z_HFG9!cQJfFK:;_@pY]A/XcSY^`CVo>_+R?ecJ543Ca7M"
nkp^6!rBc[r?+c^+O:!-.Q07c`M=5%1M[g4#A&iB_*9>^V:e-CV5a_C>g!9FK+rcd$*VqiZ<
u`89b#%:5RoFEES\k>&M4P*^h.8,]A^KJS45**SuQYX.9kX_%B7[K^pL7OPjJBV1Nl9[.h^g8
jFm%h;995PL[^$X[Jjb:B!m*VZ\?6^Z^qHEn)3G,U^Rm+l:UJaJK/?Mnjk%8_.\E'MG?`W2p
9g9`brf`<NDXs0faT6fG@41jhrK[^g0(7R\iK"dpc\>1Emc662L%%7q0anP54rP(>VPk?VqR
2Ku<Z;2;Z,)qA,922,Z9>ScO5<CT1On8G$"r^Nj$@7$p-0qSC2q/MRV(Vq@:Z$MSkhh5JcGL
E=IXOg__6LtVXUBr4Y>e*Z?8I^\.M(K9Uf_OlLUNj;5`'?@=tImC-b9J/l`d2Y4AlQIfq2.=
86lbH1W2=_dB"h.Lg8Y3YqaDntp9X$Yj/3=WB-^mkprh"YFq/[bsT"g\RFM[<CMDWn-"L\!D
OG#"%M2Y),8g3GH$Up9fo0sBKT-PtWf`Q;brS"N1@^JgW5&VeZfDBunrJ$fFCSqV^$<2p<s2
[CMo+'eshMn(>oXq4;_>O_AQsMr2bO@o/f9e9V#;TJO^gdX-FS?gZp:"Li0Dl0^WGjE#5@f4
SolBhKgj`GVD:*K5X5;0<S!T)3.M_!ukWQ*I&Z2W%fCqu&NZ.O66uH:NSD(%s)YOg=.4J>:_
jcQEZ/@`>HTNaa"oH]Ap:I-iVj0,LqpC-`+5GoZ!"T;j=S&*XC$Vi>M3C=d!PqQVmW?;u\<\+
$ELr5Ri..g;&<6Nt>Vg"c"!5>A`SJaN8Ej[Z+>,?ZF3Xe[Uhs3s9^#Am#DEio-g8"2Pd[n,>
+Z`.IQ0`tGJXaW3i)S93\l/GTZS<1Z]A_^:pFM<96Fl;X=A@eT4Zc_iIVnk;.LgYdk7JiA0AX
&\@%MZ+g87_M7*=R9E%#X7cX=s3#"pQ*f]A'u,cUK\*(Q(qQ_i3_@UI5mLso=!W$j-.V=T_f0
tX_0RScV]A28N+d<OY$Na<'*+Tpki3F[He)T%pu)bH'(a2H5cR3TT4D\,KCX/<gbjd0q=Q_-<
cuI4!%6JjecZd!)q-e6f5:6O%+90D9*%YI`jEs8;M3mg2F7:(`r(%^THOg$.?K$-i7lRV#<'
0+AJG-@@L"kUQ<!S`7GlIGZ0!o\(7*/1F4EmQIt,59.)paHB<`]AFUsQS'060K5f)6,U+f=@;
bMM+h6<1#f&BgF<T^G8Sb%?`VQU.YcgX5J[UQ+s_P6(_Ap<]A]ADVE^C;<^@)$YE<<E#d\ol$M
EL8dn'ASNnPF0q$-sjB1Z(1oGt*XBUShFqptFUje7hm4p44Or`#X:f0@\X\1nF1P8A!q7!Z9
\?f$9%1FodP.aKf&CTV$OL@$JLDL+fmc0aWgYKXd3V-aGp%W6CVe?6#n*7'ZFE?N-o_VYg0I
>GYS:s(e<j#bmkA,0)fOX0Ng-[TOppbPZjKkS'bL:j4rQ:nl%r;jGVFi83o<MSSYb0)`3LKn
nUS'INLnBQ!$L[utKWf5'3h;NKD^R#e7T%ju-)#pF83,K:g'2Q:ajVF,^?(tf-2t>+p9q_+X
K%\?&B([d,'_GO&Lap@3AA;]A]An7_.n?Ln#7g=(XIQ]AC@&P"-+IS!3YTm38tTU[5N/:XT.n7(
YB.o!uW3W=h\U>.PI>l]AE!`U<=2-j0N/jD%_8Ye%1f!T^rL%GcfKMdbI7.A0[>>d]A`o+=SuF
N6HJW]A$d'P(`tG6%`82JK9DdZbko)h!qJ7*O@'d92^,ViTf]A.<,;V[@OeCg'8.Y;9j-\/.o\
WMl0JGG`m`AEVEqI&pX&&bm:Id`:10`V*oql&r#')8$LOSl6D<C7-(Kf[XVg^>=Hh]A'd2j@<
i$6,3F,rL>f<9P(9ITDms0mpbMR'*Qq=U"$3((%U1XZ!dt6JKHW+^Q77DgsPn']A/GZ0'2?4Q
90)),\'d89%h6\=:G+Ys-RKX6rT=IpN-h"8X;!\?kj_:AJY$hZ5'tt<8iZ^o?RainAoA'ngV
aK/86O#<EY'l*[<-M\+?I4`>9-p:;:slP<o*ep,*imeZ[7nt%AUg$B>Gue6)0s;hkRZ&&ml$
LLXOQik72iirsQoSN#nWfS0HJAg*D)B<`aWcffXL"l:dqHYtHibDMdk3XZBOQ2$_@!haUi89
;FN,Nm+1mJ<7Q+#]ABoW\$4Y!n<M\S),-6!9Rm8?fN,1(-muVGF.WV[+fpj"(0]AU5D"kd8aid
sA<b7KW:B;?0N\ag&ecEKt$]A5iNGu?_mQQ4S:B!hMC@hG6!r#R+._W:U8FQX@7Go+a7oXTnD
]A=7^R6<o"7Z%K'i_Oq'ERYiLo+0a#:$`YQakk\PbWeQ4-[1m*H1ODe8$5dpr:[R0]A;tD<>H!
:I0#lR[+O+?]Ab/S)hpPXYI/XIn/7S<DIX6gBf,(@&#_ni:g(^keO4#*uUWhB.!gJbeMtb-Tb
d<sPulaVF*Y5P7,Z?nZgF+<,I(I1oT&-Ks]AX*ul1&ge0_m$+aG_Xtq]AH:(A4Sne`)Vp^-25h
&=oWdF7USoltdt!dJPVoa`-Q&+74m-ek6FZYCBHhieD$@,4,8[rIg!rh6j9jHuZXp"kbpO(3
uT]A`^XAq<QY4YEs`P3O0,%U\,BsVK#:b$UmcRE]ABb?"LYmI:po:-f!!)-R<Wf!JnaU/5]A7#W
Qg<7PjNft/K'=R-h"u8_`qoHugQ<0or5Zi%<OI3J/c*^L"i'9"c(m%UrrbKJpf-p%7+>Jslt
6`L,3_"LlqJW824R/:hp]AVE"a)>D!U?#fJ$;P_n>]A+"7%0POB%?a67s88ie3s'IMKiNEQ;4b
0190dgQJ%bq5>k]AZNLab^,P4QI[T.b#!HcGbHMgt"^or,l$JNVM-o`tH%lk'!Wde3:>5T]AQT
>Wd-5=Ub0H)GBBX)mFa,T#n9Qlpq>`7B@#D'X#-n5pgIPPEoU:QfWlJDo&M=g6s3?j`t"8kM
F34quEYcXZURUAi4N3(4rY@bbR6h,>%s@Rgta!<tG"E=(Pmoq2s2="OI&+M>NGgkp@HWVK>,
ZPG%b*U?2acg6usc_5-B'DD6J8qgZ`oK>QXNcTN%NOV(RUZd)lbYFnRp/D<-Z*&9_J_kU!:0
o0oiCTV:V7#SGD?;^S-gmR!aSF?9+._&?AO$6Z[qqf"%7fDEmJue6dJpY0<ZYY*TYLNO!=+(
^&7[]AI62>`QkJ*"Q3aE"HURbrlLc8rS5TJ/1\F?Q%k_QF%18(L5Par7DMiKXHakmW!pu,(,m
m^=;jD/,b[?T*8'r9PiqX+]AtrJGO'c&1H`H,=qa$R[EiIbjgO\NE;s[ab@<GCQ9KYBeCo*D2
RVek1cRG*Ng2"[C6!Nm;#=+X@k"oX5BUK^&((SY_+Upch"rrsS"pcqTc3:6m.YAe6:Nfr,7P
+EBXh3?sg-Ok-:de?diG+8?qZ8)dB9rc4=3&9:%KX,]As9kJ!aF_*k<bm/UrQ6BGRoSGE-8*^
QON]AOF!I"oVA$*tpSF3fmT?5cT+?C/Bth[BQ(hY+5.f*G/+Y%cL=ur9abmC%7\G4h5Q6&:Bt
=M"8PIWUj32W`f6@C:ri-83Ta.T#+>$M!!d/qJRE+gPQq_?%L)7^LCWU"o@QknYi)dk1Q'B@
[i^u^Nr-7pmdn9IVPTJ)pZ;u')K=U%4e:n]A"TV@j19a9J]AG+c?lJsf3%*V<JU[FRO9b4?*3-
j_rLZ7O%J%r3T5_&mqGB,s`007;ZUdMefTWG:gVM2:`k^]A]AJ%^JN\#?p?]A(N-o0UDa[c'eX]A
jpm$rrqF/-R20E!<u'D.7n'iqJ/*9-@+e.<#1+\o9%gX]AfqqH'//uFZ]AH_BRBAJO$hcW2(a0
4sVrJmuTLL&6`3Fu2gOU&sSX<ho$[iL:J"1Y)G]A<qoF3&o1Sg.eLeo;i_D3q_IlcH(bOF/;E
-"KplVl$]A0<4i9_s'<.G2mh8dqbaB%*;S;_1P%&uoP^=k9\aSR)O<rs>\>-,B`@2R@Y+?e;`
pc./12^'PfbkM..4gT#G>nZB.[(IC"PO']An&4sg9<l5`!F*<STN2SNIrbLHgWI8)oaS[_3S_
.A5^tF<4724'0:<H9/BU\ZHu>0uGlUq<]AQ57aN-9oY,-)jJos['W;0S8417HT$-!2".'WT3:
bii:QE)bnC'n1ru<OXL`9-Yq.YJH1Kb=(Iq$b`R,RFcbf-n(3PDH$TfN.'%f`?QICm$![p:_
MAfom5@KA"!6)W5t[)I1,o*s1c6_rNWCQhhIL0,=J:R-?Rs_g&%9?9*u!AGX98m6SQ=n7073
YU/;52/KtrBRU2[qTU!gp2P&%%9N+.m^\G4/^t,sf17'e0c4$0:`W)[8[J+!C4musS!n*[.Z
<)'eAg5"I#Frj/I@p7ZT%AS%A&7F[Xp+2\oP/"gH8Vh;dGBSViQ@h`G#dCgqq!so5c_629S^
iW;<1>s->17!?%,SM7F4SH4E^Q)V[kdIX_Ep:,sC'gbLB?V)9%YWnT;d"$o592@TTTaaP<Yj
cEuT"?C??;]AHjC;=Lle1<*Q&TWj%mlk!dO0&N!0!7=[G=M(#q2i@K#:C!3\O^kQUigLL[m"K
eZ1=EW(goZB%JL)o?%oC\e!b4^&hR,Z`q)3n&CV%KM^gnMi#NI5)[MCYHL3[4k^%56mGoXO3
7p\I/K9kRY>>FQjQ'Zqi_qP!;]Ak,n"YfR=T!VaL0rPS-3%Qj8tQ^nT'(4^h]AUmBL;eQ(U'qL
a)+4BTK^Y-P009asaaiJbE1G(P(d$Xok`,[L%3GGN=<jB&:5`s7X8pj6N/H\+\YK,U]ACXUlb
kpXV((ZPXWSZdot*;@uo=1=p-F^lB-0XHF&o*cY.lJ0#?NIZg4lSHE'uKc[?m8K<.W_qm"2p
I36&oOXDi(I'q*c4d7ag@A`E.5?!\[+-p:Hg>iTPO4akr&5o;uVRp$S,Zd,`70k>D@A-D=D6
X4]A>&c--;\3.57m@hIY--HaZ*^CVDP\s-RM?Q\\-Q9d(<]AoHqf<29AG&:lbYQ,m9+Q*kC5Xn
8C!n3/nHZTE=OhI9I&?#j.,<ADn8\Nr=Y6J4X.hF<]AQ!ft6kmh%il2#A*_RA\T&[kC<-A-n)
<3$5D4T]A71Cc[n9FM'2\q9q69,eJM@GO:SAG8ZGb(*,MRoS03$=*IFIpZkgIr`eD@0caISB0
U^Xk>0$[!_P144@qt'L.67!=UdO&5u#Obc!>!/_1n+ro*q!)84'k7&oO4TDl/K[)I<N+&*IR
6r[:eP_`$e0C4Z0;Jc$$cErHY8t0[=*C&8L2OSEmEBqgVg,tk4_kH'N7?mURbd;2Xm:=a)rA
c'p9g<(#?"d?Eg/!q62qm#'<e#8flrCc4Zr5f'"7'k\<V=m=Bt7r.?6,]Atjh+$*qI;.d?n=(
3U/56KR8LWVo)#hOrg:19lHV;@Qm7N:Ajj)K\\Mc:aML%>:*0u$$\ssPX\s9p!Z?-C!V\\WC
n?lr7-@\uUKA!]APqlD$^,?!D!]AR;GV?.-)6ohK_]Ar_BQ#?F#0\;Z77^h%A';L+JkCK]AfbbP'
D%`*:M.>,=!rpZoM8FQaC8dZ0j7\X'=G3-]A^T'\oh`60=,b!X!ua/ltFVne8qV1kpb=o_;\g
:;+'hd:ol^;-#s#VW[Bu164"f>eS8arNRECl<E<\@ST<,VG61s$T4W_,/DCHnCSppQ'EjB$f
5W3P<ia<<^<h1c6=,0i:U)n.O(O.<>HH`=(RS6"5"=#;$u/l]AQO$<oj`Woc\cscN=N'FTK=W
g;7H<#o5L3M]ACGKI'N\ZHZ:J\?m4e[->_sh3A5.h!]AX?o>)<Kt=,93pTjI.-]A_t4B.@9IGgd
hrlI=e*4%TH3.]A1#LZ1%5Q*lp31:XQ0%jP0=7B$(8sTD<V@&4s!Sdrc5PjpUV_e#OHGJG]A3:
_=l08MSX91"Sh"dc*VSG(\mRuA*ou3ank;f`QGA?#3mI[%%9Mcb8O.T:ehY7OaY!YCjej%e*
e(L&SCWT7CK&0H23OdH-.a-F-rPIF^e58b+Bh9(h?OPC"Ehc%T)i-%WTLHk8MlN]A`$A7]A%.4
*(;V2TJ3m=UQkPVZdVSVJ]A<aXF?Kic7LQho_@QK,2QW!oU06>4;^rRnkio0fQLhh4X;D,+f%
DWOdl6.XMPRe_RFjApBCm@b@0]AYLP*SOAR6[a?n8tEt'lhb(WjH]A7"p^S28dZl]A=c>3i\8,B
9\TW\Fqp9=l^0S4k=_rDQ]AO1>%8ZF-IbjSlqO*fSJg:B//0+Fps(@lRqib$"`KO.de\ij[Dk
2`c=\r9XgT:`[dm0n?RW^:KpT0qD[c%-3b6dD`rShaX.9VAB/%kX7VJ"E,PJKmdM^/t+"a<D
X1CCuRE*[9F!4f6R$2!1Q'PBS+_T#:f(KDr'B_[ri0'`l$nq>Tp+DtcIdNmkI8]A"KMg75Pdq
3YQT5"6_dj!7d2L:(5/K-lFZ.TmC/ZH7>pn\,+c1lKOg\_PR-+6S;+52W7>ILS4!NYU(jlM$
rW)Od+-&iS.KMp8M0K0>O=gG@C7$O'Sq&HHB`B6(O,GQYpfs0e3J2c.&ZX_Htc/Xqdkc]A\GD
2;.[<>9;.A]A4fW);AZ1mU:1<%Tj'C0!sOfEZh,DV8XpRHr!dMasug#qrors/HoSU/t[9-S3A
X6%4gf``EV)8?]A3Ic<Ef:q#G5ebKm8kS`Y4^V@%LG6F8!".*G#8PW1s-Wj2nl&X0V@a4:QV;
J?7/t/8]A\c/'=Im8bTZOBjf0PDC[:)Xf;T>;(3`Y#_J;g='JCK%.(5$XckT=5cl<Dg2psHZ$
A6CM`jm(Q!Las2?RgmM/C5fP?$LIro_5_5;Hn7XNG1p*X8]AAo8koY)RG(F4tB6(8&>!o!EK1
P\aRGijBTL_W1un>3DX>,FcTNmnS66#kn1P!(8\&"C"5-;=E+0@i+aW+=IW!L;(Q%=CQFlE$
=[X%4,V\_5S`DTZr<*]AN5B^5!3WN4(;(-ec+kNM&3I+b.dMPlT8p%dc0F_71YVVT'kt<fccR
jL."ADF[%p-6KG;$45AEb=.VZ9ImSZ/%`K/B-2sR_L=CfDko8km3>%j+V78Jb>eX>L(Dj0SW
kDoTd7APle.@t,pF0Pn`lU+"qQoYRWA;m*G6Ag@0R:DX$-(&0P<a0Dgo(KK<('A6T78?.l.^
&Sm0`u1=*[fl?60j(`(%:BEj6qESjH3O8SJb`1Lq$Rq60:L`/CdVI>H=Q&&79;25qZ]A1Pot-
"ln):H6!@e;5D+$Z8?bp&><RF)?65Ka/:-)UX6jZ<RYMZlRInoK,GcYn"aeHtAFS/b)J#P!C
=&5ABTk4bMH&<^ca41l#,llbS",'gc9A]A%`k.SkdJ\^sHbV2jl-Zor9PnsC2.flP->2Bt4_Y
n/Yqt\1L[T%LYETh,Wuj#+\8'3JEbQ+BFJ^W'd.0(tVDH)*X4d-JE0P,J(h@r@J5oh5Xd.Gf
8K*<Ka1H^E&Z)nWN^`*\QE5M=2.g]AG3nItOodqrt/2h9*Q_pN2%/TGj\pbG*=6g(+Y>Olk8S
Ia*MhF+1II.:dUprk^h'f%scaH5lHc>LF+D"M`N>/>QOVsuY7e;-1/h!K6?VB*`Cld6e9Wj?
>f,f!k*`khi^6WGpYs"\A1Te*he_9&/#2DI7V/7rqb"9"3ns.dXH+0ic$a'3W<M(DE>2J%ko
f!cHDK.*@r9=8rNCS#4[f'0&#O/BLpS&^#B3[sX5J!qY=nR<,&oJd<CZH<)W-P&SAm.4LP.=
WS++l"+B3.`W>:,";!`rlm$'RKj%0R96BcC:dQ'"oH\8:O71G*I-;m:H7B5!RBX_:f,h6([$
[Frg*p"@9u1C$P`fSELh)9)?X"LOSh2?WC#S9.5jB1\R$f*3ksIBDN(Tk8P>Bq[s2Qh5Nl%%
u-SAB7'^-)FMJ(p4?n-M_es>s"tJOaR]ApMkBMJEX(<%">K,%VrWjRk?8*q">I:*(::g(:=9p
2J_%9M*WIns2Zp,XDA^`4^g1bF3u2&.H`rq2aOU(2*K=M1_EVca(>=/*kP-4'T7\<N%:`DW`
;qY(n46Pg,X>?D$Sf[>GD<5Ke<uW#1BJ^Gk1an3nY>":d3;TP9WNo]A3>)\YB3`efhFpQKWGH
3?";Xj<D0';m=_X"Sb.u_S<AsfhB7<T?nZJ^3oZV^K[aLiKIZ*roe5q%ki4;Y"1r-:)0XH;L
*2gQ<Nq?hDF#D#gE!'Lib(j7E^j/sD2LUf]A)4C)O7&gl6,7/]A)T[bNo-_eDVL[D@d,4g47""
q_53K&hJE\;=;H.IFg@HF7cg&Tp"")]A=eXSlIA7Q\6EBCl"]A54CbmQ1f#5FREQ4IL@oJoqQe
JKubIYVO+pgnZsd+TFmO_PSb=Gl02C4bio4i+2"I@c<uO?(0<`m^5mT19?aec"[k!R</E?$c
F'rHG"EHu?gBuCD0j?0lZ]AbZ$Abd41=3HsMi:ZE$f;`4$a&-CmWAD#7E`>qhq:A4UN;2_4%\
NSm;l!_<ETns_c^N[VK\/a;+b_*m\/m.0!8U4(3R]AI`oROV5Mn6iR)Q&MjQ/mG(-S%#6TS]A\
g1+E@SArlCA?K2<^s\JYQSuGN2C<K^W4;AhNk52j1+K?5(9Hq6/$A[iLn24k]AQn3P>!(r_cf
2WjB<Ru#4]AHasio/;d,behG/P5Z'm;)STaQ686Y\NA@=%0r1$fVLpAM7K"odhk(qiE'2E@nm
S=l]An#p;(EBB-8>o>#o3[V8[,uq*pH%H6sNOW+JH>.)I*.6&Q0K>,\`t"Mg0dFqrSj;[J!/.
<+Z\\(?XI0V:"jgihS1#Q8jL]AQa04PIH"hbahQ/diFu+B)$NJB!&8J>\'PlOGOkS#\6CRlnN
F@l.t&#SSO98+q&&0)s:XJH>D;3LTFh2j2\Z3#-t*n`n$NUUD/iEW^DM(Xo7)EC5F^'<E[ot
ZV'Oej),(T`HEi8]ATuj3<OW]A-p926dq=-cN*>\,DI-6Mh2ONdA8$hO/'T7@2/I*mg(S[k'e8
lcWSWV4(jDO?%:MHnlff"&G`FIBW<>,!P'N#-D+JCn8`DS7+VPUPtbjC%3=sdn#g"*?U=JZJ
-T@hJtY3Pk@lTj4KJ=EWn/9#Ad]A?TR([i<6&KDrJ5hY[)LZcN4?+^5-IhlrpcZ3.5@=f[qq3
/^HIA<n$#k#r6uY)4,*ApC=Cf%K'tXHZ$5H-"c'5h8+c'dXkbRX'EsOHDh0*'\*XaP56+,)W
bH8Yq,u$^K9F[hWgcDUlLFp/']Aj\o-E),F)&s5@!'@Qj@BPgJM!g'p42eNLcl-L:pS8PKZg1
igs2m6e8:)$mVTfY!jdLDREJF5AmXk9ZXUPbsIHao$rdKVRYXk[)WPND*),J!!:<f\pe#P(h
EC2e[ET"D=W$*rNp<$QC@K+h0/`qKDt`thDKWBNi]AkY_H:Nab`;7e4[;T;E8sGJITZ(Y=%Dq
A<0b8<SSd5KplHMMZ`UV!<JZmE_qS]AJ8l`+:>ft,#)Wg63BTHGW/Cm#!g'0mD#G`'>a9r:/X
P,9E^q,ibr:@[03Zd*@keF%T%H(C(kP:n=^1`&.$OA1'ns6;Nj9\MPAAMJ\FojH#XUBFgpO.
Ye(^VVr<`DV(pO/2SHV?FZc#]AZ4I%(*NfOM\ma[p+*^a48'P<ilE<*'(#[-9;:UQ[PjT`kI4
gJul?X:Dc)GO7=^Xluq)ZWk(Qm<%T+j^&&Ah)">$>7rKm5CoeZCXl((TL0d`k<c3,XY&]A9QF
=hsOK,=6<1X:3'iP"iB=Q\D[)I.K'DAmr@,4NB_!26*7bT&A2H^*)d/u>]ADZ97b^>5f=[TEn
P:HV:!b`,Wk\N!W=;;Kn,MsP*1UInjW]A)&B[KiIj2VL^36j)^G^cmF[G>Z9'Hb@Q[c->VnFH
(8T"9d[j\,bq643m+Lt(lO>i17;j%[@K4K[B4IrGk:LrqV;<@<P0hG/%(k7XDF7E.rQ3^jfC
Tl?mYD]A7I4f8E;9q'+\Pa]A27GaB;F\0)/)"N\CjJFZIdf%X.ViS;W(#@jG&uDJ<crKW[CP[E
RfYOJZmgO7pY,9f(6@'b/*)c1HVa,.Ge&39]A_qON""\G^b?l5cgcdab0oqnLHX#&>F5m6bc4
pVa-s)1okHPcnXP,""p6_"?Cn>dbjh'4LX;n_^,G`bK"g4u;^$5BOk5WKrHd*!eKDt>SGh:'
D0t4K!V6?8$qj]ARrL5Q-J\/K&:^(tq#R*LN'V4\9[WnP2<7B7'ANrn$\d3=>cA.Dib[.(Enf
D6Mie0Bb!O%)YXct:'Ns4gO2d\\_M([nB<KrO%RV2=JI#0_FHcm"HKFYiEDZEqfFB4q079Qk
8<Fo:ap"(B42Qh5C?%o6i6HeU/Uqcmk.'.Ri0Lo:J9cSC3=ru'POV0;8#k52d6-]A4*6`Oj.Y
o#^bm4EJHbb/_XDB9-&"G1Dl[(X*!%W%(D==q/!PAp@Hm&\&m`\>u1=bUBUAU:<O0r%JnsX6
j`X%(HeO.2eDr[aVYIHgUUeJ(rZMAAKT/DZr6ReMPhOcIn&sNt!L]AiJeot6N\bQ&G3sQ:?UH
7`A@rOZB/'e9kP/CaEiaa`"b8d`a6q=6l)lH,']AI/n^_#npu,QV1[>Dq\TfY$?,!u=L<fRrj
giLs>BAip(8=1APYiI0qU'Mq3JXIZ[FL<B=?W2e;]A7NO*mV/V!%^u:q+kiTB91kR]A0'Br`U\
-LX%UpNYJ%ScgC8f7n"k9JHV_tbBQb?f3t0cUA&,P+JhbKWq)W%9CP9+AA-Ua7B92.ZgJMQd
&))1HW\2@1H*pr=X`5#hdn757*H+RNgT!JGV2bMGg@3KUs*HD*nZL$HCte:PnS6=mY$[e?Nu
g61g.Gs\]AVHqCeja,O`O-4W=WXQB[`/ap5Ei!4?=L$VY?g$pB%]A\$e+%jEXa8NX&;0uV>.ii
(m.L>nh`0MnPieJ*kE8HnLnC&Qe=Pn_bcIePa>>CS.kRm5nSZ(M`QT_B6NcprDn<Z"\M_%A*
r.S+J%OI:heh-,hZ!;i63$g3?L_(8ZO3L^^CK.;,>_,-]A@-cRSmF5P`f^@JVceGtJEphPaI<
V-T!:eabs1g4!U:&i:#GB_!Xk"AG4YSQ$rEQP@"3@!?%:RYoI9D/:JGDKA>'`&A::h.#MVCJ
^LMP(rOR]AfiL:5Je&m1?"3]A+Y4rDO5R/d3e!(fUS7'8jaJc~
]]></IM>
</FineImage>
</Background>
</HighlightAction>
</Highlight>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[>3]]></Name>
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[$$$ > 3]]></Formula>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.BackgroundHighlightAction">
<Background name="ImageBackground" layout="4">
<FineImage fm="png">
<IM>
<![CDATA[!QtU&qh\-E7h#eD$31&+%7s)Y;?-[s(]AXO9(^L<G!!(r$4no!W"Hl>E5u`*!Q'HW2'P/-$T0
G0P(_\dS(o#$;BJ`S\odnsc85qu>b3jZ72qn^/5VVjh*hYh^&4KJ'=q:`N%,O=oG-@=ig"l(
QL^/eU`EQ<kWprE'^2LSaK*<WJo?O_thtt]A;T%O1?*E+m:K!t>.&M!O[hM5AX@NRAgqIfYKq
D80KkU_c<TGMe9Dq5CsU%46/H*.(!.Ls9I/k13ei8'$pPp[_SqRHqBeH'IK**iE$n/p>uKjF
Hd.eaG,nh%J*cR*c2:,]A3VQ[U<D$P^?cs,-Ium/2XCF74.jH<pjVHh4[,G_;1M5O<m([#Q6$
$==IR"Y0NaiU7AkJHLd+K3>.S"-j`__YL&`%9aZl'`VY@9&MW$D[?92i/cRed.83%?@k>-,<
X)*6"\\6AlkZVF$OSmI\<Bs3f8'O$X8BLJ&9oUHtsbNJ3=BuZ\Jj:KCq!1H518"bD5DN25I(
USMe9*SiR4JLHWCD=FnhXd35dt<3h8O$K3X'V4Zk"V]Aeu3+]AA3TA@]A-o`Uig,drYLEj&tJ%Z
+j<1S9(YQ6>/SlY7\F9rH\*Jm#OM[4fjG;B;&ZLSS,S,$c1Rklr;r%Wb7UO88t!T_5_.5mH5
S+:>ebVl'5*%1[Mddh@a`*#jXd4jF#%Eid`43/,hs#<Ydh7kW/Z/e[*E[NFuDaSFo#qlB(8l
X=(RG;V#:ZQDo3;^'hfk*R_J2KPrRUYj/bQloA-TV-1^-ZYLLBMtBs7NtL$^D''toIeLBVG7
]A3Z/E]A(NfeiIB.X@n(2-BE4CE;(V2sqp_<PhfN8C--JWou=37;<FN%rfTPp,cEd&q0q91Rg6
B1=6;D(oH?&fupccBDak"H</]A8=nJ6S4fe2f"'47[%[t`83KWZGY`^pXI]AWWTM5`TJEPOtj#
<g)5*8t%#4g/Pg/5ck(c^sUYEc.V;D?LV/&YsK1B]AhXs6*1F4Qm+P8KupYC]A/<&J]Ak:449X%
(D8*E**8&_grbi6Xk&<(hMMCNKai:UVe?\Ap`:nXS2+Da5,+3Zi[ShkXMT$rah4<)W74@83J
c^&p+e['5,+Q=R$6%JnhUIE*K^^?]Ah=abYmDmRS]AkJf#Hm$.6tag4MkiiOjfGo#gQhm;?i[[
\48c^&(WMI4Yg-UGa)J;gr[(d/NVH:7/48AESFDp-beWq1%9BC\aB:,i,XA$Tr3*B]AYo`**b
/?c%dU,]AGk6ln#M5S"X:c\>m&Oj#:^$3L3l&o^bc&3mX+=Mt&?R4_q9e:u$:&+5iuWd>8,;S
<%(=*,^3d!n!2T#*)3O\*qWB-Ra0Yj49T1RCJ^?qOU,4BQR@]AM_QM5J_0)%MO]A7KFf03"#mc
3F7=/LYdJp6RpIK0a_j'kr?^?#a!I>4cZksf=EZ2-NfT/C-m8:+*qhu#g*;Y<aQ?Ae,B.H$r
pRE)H6"ff#R6s`$eNXh#a>*Vj6(".oA,"pS7sAQ``p[lFA.sRR;\A;5L'XEm4$+?(mkCMH(Z
9cDmTi8"_N]A9uz8OZBBY!QNJ~
]]></IM>
</FineImage>
</Background>
</HighlightAction>
</Highlight>
</HighlightList>
<Expand dir="0"/>
</C>
<C c="0" r="3" s="8">
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="1" r="3" s="8">
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="2" r="3" s="8">
<PrivilegeControl/>
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
<Style horizontal_alignment="0" imageLayout="1" paddingLeft="0" paddingRight="0">
<FRFont name="微软雅黑" style="1" size="72"/>
<Background name="ColorBackground" color="-1248776"/>
<Border/>
</Style>
<Style horizontal_alignment="0" imageLayout="1" paddingLeft="0" paddingRight="0">
<FRFont name="微软雅黑" style="1" size="80"/>
<Background name="ColorBackground" color="-1248776"/>
<Border/>
</Style>
<Style horizontal_alignment="0" imageLayout="1" paddingLeft="0" paddingRight="0">
<FRFont name="Arial" style="0" size="72"/>
<Background name="NullBackground"/>
<Border>
<Bottom style="1" color="-1644826"/>
</Border>
</Style>
<Style horizontal_alignment="0" imageLayout="1" paddingLeft="0" paddingRight="0">
<Format class="com.fr.base.CoreDecimalFormat" roundingMode="6">
<![CDATA[#,##0.00]]></Format>
<FRFont name="Arial" style="0" size="72"/>
<Background name="NullBackground"/>
<Border>
<Bottom style="1" color="-1644826"/>
</Border>
</Style>
<Style horizontal_alignment="0" imageLayout="1" paddingLeft="0" paddingRight="0">
<Format class="com.fr.base.CoreDecimalFormat" roundingMode="6">
<![CDATA[#0.00%]]></Format>
<FRFont name="Arial" style="0" size="72"/>
<Background name="NullBackground"/>
<Border>
<Bottom style="1" color="-1644826"/>
</Border>
</Style>
<Style horizontal_alignment="4" imageLayout="1" paddingLeft="0" paddingRight="0">
<Format class="com.fr.base.CoreDecimalFormat" roundingMode="6">
<![CDATA[#0.00%]]></Format>
<FRFont name="Arial" style="0" size="72"/>
<Background name="NullBackground"/>
<Border>
<Bottom style="1" color="-1248776"/>
</Border>
</Style>
<Style horizontal_alignment="2" imageLayout="1" paddingLeft="0" paddingRight="0">
<Format class="com.fr.base.CoreDecimalFormat" roundingMode="6">
<![CDATA[#,##0.00]]></Format>
<FRFont name="Arial" style="0" size="72"/>
<Background name="NullBackground"/>
<Border>
<Bottom style="1" color="-1644826"/>
</Border>
</Style>
<Style horizontal_alignment="0" imageLayout="1" paddingLeft="0" paddingRight="0">
<FRFont name="微软雅黑" style="0" size="72" foreground="-1"/>
<Background name="NullBackground"/>
<Border/>
</Style>
<Style imageLayout="1">
<FRFont name="SimSun" style="0" size="72"/>
<Background name="NullBackground"/>
<Border>
<Bottom style="1" color="-1644826"/>
</Border>
</Style>
</StyleList>
<toolBars>
<FormToolBarManager>
<Location>
<Embed position="1"/>
</Location>
<ToolBar>
<Widget class="com.fr.form.web.button.ExcelO">
<WidgetAttr aspectRatioLocked="false" aspectRatioBackup="-1.0" description="">
<MobileBookMark useBookMark="false" bookMarkName="" frozen="false"/>
<PrivilegeControl/>
</WidgetAttr>
<Text>
<![CDATA[${i18n('Fine-Engine_Export_Excel_Simple')}]]></Text>
<Hotkeys>
<![CDATA[]]></Hotkeys>
<IconName>
<![CDATA[excel]]></IconName>
</Widget>
</ToolBar>
</FormToolBarManager>
</toolBars>
<heightRestrict heightrestrict="false"/>
<heightPercent heightpercent="0.75"/>
<IM>
<![CDATA[m@&<";tmlt[GIX[+LRf9-pu9?C8nUs'FQ[-+-3PR@ZAnf<KoIOM@<@Da\9_UW!Yp]A77EAc:o
Q3<7>OWo(aLl6(aXi#6J+O38]AX")qZa1:[e8GQ^?ba`Y.Iu@j]A^>q4N$o=Ia@3QD,+nL+6iL
uK(l0:RGt[KX"QA+RIVsaA]AhA#1L-HBC`Ji4m?B'0rj?+7qC_AsI.4h-Mmr&7fOo#kEFdIPG
8L2U_$>H!SFQ-))\/r1qNiV^fgfZ#=oOat5CStY21YDf_>2d3?d:k,b]AUq_U:rU13m[Ku:Sk
rN6nW6S_'AAd6S9`J3lA?lHFKW_92Q]A#Ci`0J%$P3,_Dt)"<Rpkh.^El=]Ao:FI3O2KpTtL$J
fgT\I5>Q19=@F(GhT.fe"H1dY_M#B<?LbCbmL`$^8&c'hL-0@"+cpr4W\)PFo)HD2T#_o:`Z
HPY&\ENTQtlg&PR-XO@90Q&kp<a)Q&G3%YY[tnA:+Mf>4/S;W%T"0oWKVa\5PI`.P\!*O=W$
]Ae)df#C>eN2^I">/<d)^[aToATI82S-DAuffl2@cJ2U;5NM:89?;*.mjEUj.R2fR1Ul,XppP
3fH?r]ALI=)M`X^P0!sg_YKB**mt2DcM\t&UIeaT(H-l\AjMjHIsN>k:pUDsl`5/Zk)b;!hAS
/_Ojpo:jNGnR-\Eh`cgi1k=i%B%Fki.:7VFW9$"ao)/6KGe!s"@i2Dpu8gcS&X.Z+NOFXNQ<
UhpWt1b_g#O%@i,5Te9?m@7eMH=APf]A1NZD&HX^bXt4%(dDN(0L"-/k.4fXE&@5(,BXD*h,p
,G2g,_DQ6Gq:($$EppU#(63M7PcR;HJO?8F'koZF*OQNjJlk8!-:<_mXj/*kO)IF;5@cN.fU
/L`l:SK.tEA<K#/$"8$f)G$U@Gj%no"`m?S]A&rB9hUXHI8epO?@*fY1DhnGm?6)^]AmS+ITQX
V<5=]AT:#!Wb6TQ/D!6`OJR5F/Gmc@6qBi;Wk]A0WFILuBh2;!-m1&HQ&rl$MpLL9o:/U;Q^)1
gLH8FfVnnD-gaNi>h>-i#U@tY7r&lMk`P9\Y&"a^k"EXXu_lZ!NqdE$8E15TZ)?>g/!c2mPU
.@]AF=JR$,?K;2&O,6OW3#FTIV9L5t`''''f#W6`u-UA^EW%/@8dF#"b+PGkr*@?tgEr>MoX7
Ah;D@tuh=E;qO.+/_d2*>((R#X"[gFBH2R?T:;(:(F1:dLgm5XsOodMpS.@46kA(`%n=*[#.
Q2:dVq6FE@mo8,)\-:Pt)#/70H`OIBT4=,Qg1BcB0N;0J1#?)PFaDQ42W?!2Mj2d%)RO/WRH
MX=QAt;ec-IU_f<7p@*9m#J>@\gWk8M)/LOjQ5Gf)I%rDD,(eIEoh_Wg%^.YKb__qP7/eeoa
>@)4-@kPu\N']A7K\e"kiCkUJ$4+/$0^nk&]A@WRadp1'U]APNhTOo+dk>p,S,&JkQ_ZNNZ(8H.
KV%oe,31b!S*3C#6\6QMZt+u0U>5#XVKs)kbsJN1bSDhE<]AJ9e3Yr6M&s5um'-gM?HH>eq@a
'QcRRg]A)YF5Wf*UUN4'?4i5oh+@#"r42Q%'?V;2,mko@f=D5A>^jZ).Mot&<%iJfM&Dbp2OR
e08)tG4=[77`nTZAK-N4gm*@QSF+TmE;T`JRpM93GE"<sjf*n;.8IN[,7!baoeX`\3/n;q:\
:qX"<q$5e-g^"X<+JMV85WAm\cr#J[@Ssc20T^t8gDI<WXFS9qcK@BOa.f\>.s)o_k:<$Cr^
GS/GCu"Lo4=@A&($.l=jX`e2*U4atKnB2ldU9L<F%np,Xfh^t+kV1:'8X-!um?Wa9*B)"H;]A
6@W/=H&%#tS4gqILpiI-\NM[m']AKc:+_#S%%McJ:NRL8F<\_B)@Nt117<bGp\$6@bAZ7?)hf
]A_hGTO9!#&=QR\B)+7*8cpAcp(Sp2'"nd]AkVWgJ\AE^a&bK+IjL,M62`SW'@&!aXcH!\mIXk
"fSk/^r?;pYM4gCiF:Y[&Tf_mN7Hm_+Cg2iYZj>9"iX)^qWIrHRoDoel@&QH5UZ-VYh3c2Zc
S4sXC;3*>TODfX#=EOqAB1"pJ82?"2jM=tq*dtiE@ellcj$9TDjs*s&Mb+i^I5`(TaP7T/`1
o;e8I4("`((Yq5A@rU.H4n(uuhfe56MEfp.Klb5FGZh*0)+IATHa`Vt%p[.FpAK@;))(K,+u
BXtOiZ;hT,36jCL9m3c(5n:;MWO+`A_it<o!d?-;R`Mk)PseKDao!A89;dtE#l96drh@e>AL
J^;7F&"T.Q+rITrCg/FZStXKK%;H"/#Xg+E6ls?]AhofoXPhOD#\)o36qeb_?_BL;^>S8_&]A3
&'qt[pMk"PB7iIeJ8t,pfT(1Te``HYGY"3M\ag<DriKP7+8%)Kn.I4Dm&GX6fEb6TQ=Z!W']A
quBXpqtVNiOu(!9h['uKS+Ze"<3H`ZAf$dF%(bH+Gu9;mSm8U^ruIB08C1?Vm^/sO-u"AHNg
dfA;`m)I:fO=A2RCbOc$u/5R-g`=S3f]A*9(p%UW18Vl\!e:B/Blj%+A1t"R2An[La!Q%-S</
hK=@NeD;u2Jf=i+bE.2UT0!VKDEI1!,LkiZ:$7ppYLe:`#G#Uu_KOq*j8nr5ef>sN-i$`*P(
Kka98j:UnY9cr^#?u9:A&+W>)f/AL00Qa;A+2ZN7B4H"7`hkG<_Qq*I&H;M#6D<$#mE\`h/8
7oNMJeEsXc<QQLL9Ek"?*Ms?iP-8!;@@2m;50kXf6j$4,bK"\qB7m18gaH?BQa:aK^mG]A=Wb
%r3U^.\f)3*?oigrLQR&?Dh6Kk["WoAcf`:`DZ;g1a-:@h0kGGgI#NhPO5UJ'lL'fQu;8$6f
mC:#i8(7PT0rKq0>0.C*H>pO3lN(s`+7qhH^=ae@#K]AnjeAHU^Dh)RU(Bn5hqY/o@&JlVC-B
$'rUu2l'9@Ytp8`:@eGm,"]A$N)^;*AH6Q4s'-OUoA/5tO/2/'2"[jc-f)4rl!u(mUkJ04B(c
]A_SZ8X@Eq`Y3s0;gVnC2THbc[%\ps0!M<FoAGY"nS]AXM^/`'I?H%4Tl.3%7RVhe=d-GhVc@4
;YFl^P"@.YHf*)(p/M,6r.EKo@HpVW6cN]A;1H/reL:;e5HETJn8*R#4UQ>4!6KRu0r)G%`I<
lfSpOQ>Vg.d*RmqY68r/@?g'B9I>A9FDa8/.$Z8N5mGYA-^ljN"Hm*$,/.LA^EN"]Aue9+.kb
=anIS:C>.TSCgP=AHd07tpCeR_:ec%Xq#u6auJoc[oGQDY%@VU#r<sXY]AR8Seg:e7ZoF\+.;
mtp?"RK-pkDWat-]AB@KWo[q:-TpG8[6BMpD.'qKZCJp-hFb-3M!=l>0-TRZSM0)l$mYS7fGD
De<\/)FYlsiXlo2Gk4R?pYIjtZb?lfrQOE@d-]Ajs+oVk&Hlo_a,mGa7WZ+_n9(kGCmrofu)%
U3<bfYMV'1kQj9;[Q@.phC,`JPfNCH^@u$"CBPY>hoF`*(ZGINGKI;]AY:$N[8,-i''I"Mc/^
=><XM;9fUp6_.MO(4K5'En=qMKi]A'(ZSnaa+e,Q]AX"o#WN"jN_\>/7YPUrP&MB?MeC_daM+#
FBdluf;&?B]A@$O^JrC6aF`n-W2>.O7b6+dpkY=Y%hVL%\:KqK)a7E-2R`d\(N?B6^16I9(-)
M9iK;]AR6/2`$r5m8U/NV?p\M8isO8d-i/QXCXdGcV]A$T974c5\4&j^[T@!+k/M1PuK-,sAC9
;C7.Y88E%dbL_*&ZH*%eU!LVqLQeV=g6M-tpp`L`-@h?D7[,HrdC2D$+=HLZ:3U7oBB)TP4G
1)Z->-:[COBq38k?qa2hM'5gnZZ3H5ZF-c86*]A'F5KD:J"`X%FW\?!-%JAE'im'f.p:f@,#,
W<-!c!r`(Unj-RNMM=A6iu2c^ZnJsjT^kl7/GurRIn*Fq.9#Ya`Zm03D-4fEN'PU\:6;_9f7
uZeWT`^QjlbdDd\3GlI'qeK*4gY-rko*.#/,jk]AB5hE?'#*fXY"XFZYP(P?Us6[3sA_4<?"r
3@Dt<YI#hjdo=U4"Bp2o_qno=@[\9W!07!r-V&n(XT%?0\a-1-8F)`59(FZ4Qfg)=J-d-T7.
(Rk:2+`r%]AS9o8(:sI"HEsc=h;1m.i;T>2i"S/*@Orur.8nb).Lfo>2PtA::W^Kc=8,TR_4[
:jE(&fEj(!P3CQ"L8)$"^ECi3bElZdkJY4A7huAMTl-!_rp%\meO=^PQ+t"=E_:_elGVi3AY
t7^3?hHP1mW#Ks8Vs)[NaRO.:&FWce'/E#"6!C2/4;ahf\QOSA3/-1-!.Vt8YOd?K:sYm1"R
g:YtOn\poUIS=DdjA1,)@d4K^Bs\'R.-\3J]A24@>e:r-@4M[@"H*f7+[JA@jT9S7Q<Q#Q`m3
DgW(<rVuN'CgA[dj\C-qhY<D_C]Ac&\Z=.N5Um^V!EI6:#q*Hqup"ac?lds.@^Z`9/ULJ*7&%
k$bON;dTU%T`\n%401EeXNei'ts)A#:s*?"i(am/A0?'rOqFI"Kh1KATpG>CAMp+#bG9dL9u
F;ZW3i;(!(%^d=&sn%bcW.m<@as8)Bie<)PNDUAVc:40lHB_<4!(^3Tmfl!"7WehRH_=u<rP
[?6(<&on>GTQeM!R8KK<SHPZHN4F"]AeDL8U[\MDK.XEf):\Rd^oEHjTkuYm_K9-pm3^%a??g
_cs*3atQ.JmX@E3(ID3$/C+&CP!/Q[:r04iC?5oVU2aRc#-4R^2nFZm34eYC1?!%ntdqa6_f
ksE0Ko2"bUa#Hr/_pWDg`43Tckl04+YCA0$-XP$.]Aarle9[mHB5D<[k8,"6Yc+RttqWV&b6V
OLZOfT9ahL0Jh\Q'Uqka3oVB*#kmmSdqkF_f?#Gb<I/.#3P$_0u;%XT!=6WGZ6<B#i\1l#&H
<HH_)b6G'Y'Ys^.r7iiL\?O4kC$_ML?2!ReT-*KDjA`6PCEiCk"pCh`c0C)VTWfNY9Oj_V-R
&lUY2/#bM;LhA[c8"*mRqgFf^^BP)&Q$BJ[8EYB<`*_]AY9jLtRf$fPcn1;=MJu!_3u`<+:%L
DE00@Fh82WTc#)UX"7>L<higjmWlU\cbPLQ0oe[ldOC:<X2e\k`XMbpH7N*qC&eo^AEj9H&\
knF4eDY0*a.:J0DaM0mET8Fp"'*p%1#tX@N;.Qp_ZClbkH5=l:nG"QP$,)tAs$4d<[L5C2M/
%=)+Z.]Asm:D";6`!nI.OWjqn#$U-`CW62O8^,9)r;cL[/8!d9BS/B]Ao.lXWfIWn[-j*?,rTm
JrQrle"Vq\`oL\EYJEdR^<`*@nNNEh_!fIoV8)t>bK54(=ql54+I>%L.eDc:JWRZK`Ubg"9b
nL9.RWY2^YIpV!Q.NcoG4g-c6rKkrWi'<A+&%TPc>k67<=jQQMdMp0b$fiC_g]A)9I?_Oh&8"
N#h>QE/D[^O,;,(Pe'4ML<T1(OL-^"h*GYJitE=INKf.P-H5b(iAg)VA'jn9tSbdiK`L*pg!
[X!/!Ca4M[fY1Z;Ri8kT!/ig2>uM?:%`^hkj^R,cr/fp6'$aEKIf_4]A;[ND]ACeXt\JeO*d.K
uj,7Ap,eYP`R/2PJ`crQ9&1WU;l0m&@6Nnb.OgW3^ThHe.$F\um;K>ftF1#]A-/0:P_lSR!/7
-H#1qc3Z>#q*7D4i6=$!2]ATEG]ACFHb$9SBL'4_9;m+W:Kr=9e)bdV>2&$<J$9W$DV-B"'otn
q]AGFi+!o/=[4tY)*U/e))cIV6k[M01j@9=q/Rf\\YSRa8irKs96BgV0Fg#OSi*B/e5@G/4g/
Hf3^4)nK/9"lZJMBgr0uc9Y56*gNWPi>BXCiS^l5_(q$^_DLEmWqZmW2cOD8P#FnEH3HUW'U
?(YsZok2U/2,P9FqC9o6K9koVQu)T.FeP#ET^_-Fgas'545@<r[[P;c<mN.j7he29%utS%>F
;Cc<e<)ZBdK^4:\bZLHRG2PTWr79/]AjG`>GQ3AMX3MXe;Ir:qGgs7+e@!=Ge.`5%Dl2]Al_CI
e`o;+9m&2odM=G(4nu7;'Nthk@iiE3DK:;k&`j\g5-B!<h.lp8*?rN$u:2>aq$0YOOU\^sNF
_OI\,`KucV`QC6jmPoM:]A`Z?[kru,XH<3Xl*'Rpa$-EoO)NjG0pi0p)70H08!^DO8UrQ2m$Y
RgT5<OHZIRcS-J$I.*:'EZ<6#QYkm9Uk*M[eHOFst8@dU%AZ8%XJT^'KVT#A=aDXO*0Q^uG6
a%A;&!aL7Hs3+ubc%@a"X$!i9!*8iKm]AtdlKZ9.nrcS)QD!Z=Jb<2Zd&ZqEWBOS@Qnj6:ESJ
As.KD\OJBq9W>Q0M00g)drQ0ZZ.>6$Zn!a(?aQ<Fut3%`)f!^2:]Ac"66:X*VMmlVA\hd$=`5
.m]AM%&+(!6"cB]AG"p9NKF:d1-Qfm?u:<B0$C.^ai=#Wk*E+2r+JK44u\YgpL5Mf^n0S+*RWl
b^g$krHcC-HFS0.!nU!E@&M?Tk6Hu9.3Bth&<pIWVsB5E$D-W_)D-d;"?VaE'EEA3a/cYe>=
F:ekGP0(7`3Ed%<;]AP[Y4!9XrD4\r^4/:*NZGajr"s<e_-h3%#;3BD4Q0NeN!Qa2^Q;=HY[I
MoGA0QP&_2Z&aNHOZ5kb]AH)cRC5UA+F,[:[-]AO[=\%n#kPFGt>O!aRT))$"!A$cSiVQA(19%
WY=e*Z&D=Y$%+dulOPqUWFKgY7QDSqsYkD`>TG^?ZY;D@Lp=f3VW`]A2H,Of4,h`2pFkc:Z.,
DhblL;cp'.u)Et=T@l%%oqBGJFd\0Nr^q3dA-3uVs?,YSRH;]A/dNuJ(I8;n>OQC&[^>DP4(f
)m<m,a!f@gY=U-&,5*@Ch9qG>2`on$]ALDe'$*BmImbDY/&U:UEO6S9\XCY/%lJo0X[O2Da-f
^,IF!(u:R!gV4#X1MV>u0Bhl1!"c4^g"Bkc3Ha7Wh-%';oqS%!M2W:J=`ZB83unF[OgZISm(
J*uHcQ=$jpN^['iG>:6Qjann(o:%_$)eL$/GsE$U4gZ4@laS@AYFf(^m$_>.^Jt;1;@PVII0
W+`RcrhUk5#M;N)j:2R01N5S_/(>Lc!#;KYc07jI@'>VSq.dj=5MRc6Zn1P5WUEVkaE[cIli
iB[Ee!RX+)6LH=RH8p$n,-1[Xt$joS5k:;8fI'4bQR-2j0OlY_?Ru*t/HZhV@iFp.P)>`^HW
i066SBN'@-a%G]A(b35mD^>grD9oc)pYp&hhhO*48nq%Sihf2/,k9aDUXi.fJGpmQ!::Lq)6V
!195brU5RT3;8/AAlNWC]A5[2=eWB![aaXQh*c"Op>(0$YQZ:QUBqm0Q8jB[(.-)*7Oh#Nh&1
^"cA3AG%B+o"fu$IE#8j5AX@*a'!0,RcNbj^t.F^0B31t1uQQ9;+*&8OK!+=P3<hn'faN!Oa
Ks%4^edsZHY=hL(8hQfLC!6_?\QBX,]AX_oGqH*@"u1<Y:*L:TDW!TcF/Eq=@9m?T37[')!s0
uNTp5D6O76p8rR24"GklGSr(u]A:ZXuT`3eZ5Q1E%2Q,$tC3(c/R0REW48,b^>I-/efrgDKcT
Ds>F\rJmD-SbB:\LWa8aZ9$;)&feKk:-:aniLZCerm9GfJB3k`L,6JM]A)4gL4bp[ME3DaF]A/
cgqMeFP,f5399<s^!F\e`F'`;'/7SN"p[ohX?o8lptp*-:Md]A9\S?>+^TI"gR`mTGUQ]AN?H!
:nLcn2K4se[T[[d'qed]A+.C\frBO]Ah:f#@c"Nr_^V/7rnhXS+Vm*eG$TLkF9Ns@7([YD>t`W
tcL68j%(*d#@p08;+9G>>,J9H`B4`8.I$$e]A2Wl>J`K?:jF.#"gAE`^WNtLM:Ynap3TTC,Q-
6:B645!J+=)U[*)I?al:u*<ohAm5B%9`*9[In,GY'#SnfUj4r`\I;cotn,E3TB9B!cdQK_T[
lp'u9icSq[Yh:]AP.#I.3ljUJWiB'8jn$qd%UC@mVPaifrnZCPnbYhVC)OdmK%;VQ+/=s+bM?
FkK09a8J:VW3r2JZN$HCeN]ABC(P)R:0-B?&bA%lM,U,[N-*Vu@=ji]Ac1>L=aM7DlGU77>@[P
C[Nhu%rni96XF"oDUqY,p\"*h*Ptt^R,+F%+PKKJ/aBReCLj]ABX\RC0pu^qKmgT;A8chqC"B
Ij^CpRX@cM=>>]A_[b2RoNaCTlK(&)hYT!;9,.V1pU:X_=G(sJm.CGTXN"a6(-3&km0+&5qGc
Wc/K'p0^]AeQk_SA5)9$Wj%E#^0>ER'<cB;65>ACI'"AL5I)+hL6<l0ct85m#HG8^nJOs='pi
p69q#OHi>@>:B"iDCDQSdri_9\%%Km(]A6Inju&m5l5b;e'5?sZ_ArJR2Y.'LW1q=S%5e_?)>
P<eTJihrPrkCm=Nod3YE:J?>1;-EMj"l.W3*fgDo%6U0pdcJgbW_g?#b^7;!a@n`IT=F>(!l
/p@sekKF@?SP.i9_HY<5Ij3_DW!JJVSS(Ps0+n66dXeEB=CgWB.c^b[s0,,M""mHc2%P8p`8
ocnJd5B$rS5UDg":/-GC6A"?!3Sf_mWL35X0;flPJ;G7!puQR`&]A/ZKeJtb.8DkX!q1q8lW'
f:Wo[)cjU8\)b339:(f^)neJ34Hl5`rZJ4>EVeKLAjKNJ$[U(;SbPUku'r=Ul_g_FB#['T=n
oh(FF1'8aZ!c:L)?flLJXH%[5G%f/<r73"J(e[9^R2S"UW-C`21ifr@QbXoT3sjMo@s#I#qQ
SdVc;DC88C]A)`s$4CXB3@R0QET]Aa4]AMg^pm7MB^H+Q=.(:m;_+d]A`7(,,Vk*_R[3e1j4!9)L
Zcpmb0kd$ifCVT3H=(+5ns5kqIGM[Or\;m$/]AkfAbqBn4NL\VtrjG>oXu2bsGmgkbqmN9jod
,4&nnh\/q?j$4o2ac#01GkZKCQCkhfpmRruTK*[i^#QIk9/0mV["*IqY-,Y$U%Zs6kR%MT]A=
4(+lPf5OSqim'bE5(gHFPO7s`M<If`$YCksW1+dcS4DW-(S`E[hOn&I"TYW,UD[G,($"(IHl
_udBWp^DN.:pAgMpE4u_CE>es#36Yoecu54`Jb%p;!L0@h2gj0_W:3^t8ai!!`sC%pXE7p;!
L0@h2gj0_W:3^t8a!%idEb4`KZ%fE7H]AN'4BP0_W:3^d5lj".('f4`KZ%fE8/S@h5XBN'/lg
^d5lj".('f4`KZ%fE8/S@h5XB*&NU;s.'LfOJor6]ARQ0RiI_.]AeM:u:.(rY"]ArLG_pI@G)B\
2=igXhO=6?^&da,@.YWjuV$pFgT\]Al>rtc*&$6I/1%7qnhq4peQJ,5<.3pfTs`e[7cK(00_@
sG[Y\KU'%ga1;N!r#/jhIZq$Kb]AZeoan&Mf?24I@$EHM5EbW7Ah+sC7*D[-N:L^#ho"7gP2E
.VK(^GAMoNkPReVMR3jel0BE<6)R&Zu:U2"Io@\=UE[WMK<I@]A/Elo6*IDXa81[=%SdROp31
,n0s@iO7ema+hBCOhAWN-AnK3Gu"Ik+-"Z?`5$Z$SJ(>(0s/?g`\ZG=&ea9(Z/RtZt.2@C`;
C_fJUfIVt4YV*]AB"`c#p/q,7.e8srVe)/UI.IcZ$p:\fe`s:q-IRH?(Iu<jTg+V'-;>$!@8,
j5~
]]></IM>
<ElementCaseMobileAttrProvider horizontal="1" vertical="1" zoom="true" refresh="false" isUseHTML="false" isMobileCanvasSize="false" appearRefresh="false" allowFullScreen="false" allowDoubleClickOrZoom="true" functionalWhenUnactivated="false"/>
<MobileFormCollapsedStyle class="com.fr.form.ui.mobile.MobileFormCollapsedStyle">
<collapseButton showButton="true" color="-6710887" foldedHint="" unfoldedHint="" defaultState="0"/>
<collapsedWork value="false"/>
<lineAttr number="1"/>
</MobileFormCollapsedStyle>
</InnerWidget>
<BoundsAttr x="473" y="0" width="476" height="320"/>
</Widget>
<ShowBookmarks showBookmarks="false"/>
<body class="com.fr.form.ui.ElementCaseEditor">
<WidgetName name="report0"/>
<WidgetID widgetID="781fd9dc-46a9-4a5f-8acb-6aae5ceff0d3"/>
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
<![CDATA[1143000,144000,936000,144000,723900,723900,723900,723900,723900,723900,723900]]></RowHeight>
<ColumnWidth defaultValue="2743200">
<![CDATA[144000,720000,144000,4511040,2895600,1859280,1714500,2743200,2743200,2743200,2743200]]></ColumnWidth>
<CellElementList>
<C c="0" r="0" cs="3" s="0">
<O>
<![CDATA[排名]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="3" r="0" s="1">
<O>
<![CDATA[公司]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="4" r="0" cs="3" s="1">
<O>
<![CDATA[金额(亿元)]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="3" r="1" rs="3" s="2">
<O t="DSColumn">
<Attributes dsName="明细表-销售排名-销售排名明细表" columnName="公司"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper">
<Attr divideMode="1"/>
</RG>
<Parameters/>
</O>
<PrivilegeControl/>
<HighlightList>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性1]]></Name>
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[len($$$) = 0]]></Formula>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.ValueHighlightAction">
<O>
<![CDATA[--]]></O>
</HighlightAction>
</Highlight>
</HighlightList>
<Expand dir="0"/>
</C>
<C c="4" r="1" rs="3" s="3">
<O t="DSColumn">
<Attributes dsName="明细表-销售排名-销售排名明细表" columnName="本期金额"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="5" r="1" rs="3" s="4">
<O t="DSColumn">
<Attributes dsName="明细表-销售排名-销售排名明细表" columnName="上期金额"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<HighlightList>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[条件属性1]]></Name>
<Condition class="com.fr.data.condition.ListCondition"/>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.ColWidthHighlightAction"/>
</Highlight>
</HighlightList>
<Expand dir="0"/>
</C>
<C c="6" r="1" rs="3" s="3">
<PrivilegeControl/>
<HighlightList>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[上升]]></Name>
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[E2 - F2 > 0]]></Formula>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.BackgroundHighlightAction">
<Background name="ImageBackground" layout="1">
<FineImage fm="png">
<IM>
<![CDATA[lO<9(kN.ld@UNU%p%320!n&&22?t1_S8q0X!_?&WFE%_gR$4&e^pNZKArKLYUMYtp*G6=9>.
-TmZuJgDopIsXhs<@lD^ZH?:q>JMU:=UeAY&2Ko1Z/r:'M`EeQaTE)3Ph=q`3R04\h%O2A^:
ObaBU4dFVKg]A4_#%F$b-c1(@>#[_;I6,<%oc.sce\!c(?B#.$E:NlN:O71pa69,'1D;V5O4.
GjW8AcV.j'1iU2hL"/B&tUudkX#JL=$N$o:'jVp~
]]></IM>
</FineImage>
</Background>
</HighlightAction>
</Highlight>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[持平]]></Name>
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[E2 - F2 = 0]]></Formula>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.BackgroundHighlightAction">
<Background name="ImageBackground" layout="1">
<FineImage fm="png">
<IM>
<![CDATA[lO<9(kN.ld@UNU%p%320!n&2L#6u304Rak>)j!thFE%_gR$4$oj3)qG_aj_+s-PW/8jSR1M9
1CF$Dq0tHDY4(gU<^DT6mqKmurVf5TL9)Y'r"hS._7j~
]]></IM>
</FineImage>
</Background>
</HighlightAction>
</Highlight>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[下降]]></Name>
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[E2 - F2 < 0]]></Formula>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.BackgroundHighlightAction">
<Background name="ImageBackground" layout="1">
<FineImage fm="png">
<IM>
<![CDATA[lO<9(kN.ld@UNU%p%320!n&&Rbf@O(,_a*EVZEbP:D_'5ME-%\06/rfn@7P['lrZUm8_6I/l
5lq]A"LpLTrtB)bGl\3?5nmuI4\,_?/"Hn0Y=kdor=4tLF)g-/lqnm/&qKc9BXFoV@M'.0BTN
CV0VQ)r_mUi.eZ<?De>RggZE32Ar@Gm\?4GL0]AAi$*\T6Zc+Ap=mff"11<;HcF9.#lX.RQrV
h?As~
]]></IM>
</FineImage>
</Background>
</HighlightAction>
</Highlight>
</HighlightList>
<Expand dir="0"/>
</C>
<C c="1" r="2" s="5">
<O t="DSColumn">
<Attributes dsName="明细表-销售排名-销售排名明细表" columnName="排名"/>
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
<![CDATA[1]]></Name>
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[$$$ = 1]]></Formula>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.BackgroundHighlightAction">
<Background name="ImageBackground" layout="4">
<FineImage fm="png">
<IM>
<![CDATA[I!^-$<9kY+F-]Ar_bfGqQ,Gcr&P#SkM6cCWGOeop:.IF,$gRK.=mObe;$T$V'6mr`UUUoQ%+Y
>+c[+Vp)1RR8_hr!o&h]AM%S3p40$3R?l9T'*e7T(AI.?<c78<V9>m!:#'DYMTfiKIXGR1/W<
D`,O%F!#f>H=O6Pp\M7'YE[e2?LJ_8`eM3Vp*M6Q%B<khV\[WuKX)>Mk%WQ*nfjd"=a)Df+-
fXfs\^5-?\\3c^hs&fLaP>"(ku/gdD]A7'LVS0NaZm+r9:;Q=7C?>(Fg\lM$S<)R;n_^5OcI_
81o)h#_"1E=j.b6%X3U;*gr:[jhF[ap,Fj>tGhMRmSmeTn2[-(h0FAM3t^QF3?aC"1L_lD]A:
$&PYPKH5,RUN?@jif^G^q.H+rotY[QBk0Z!KCkQt@@0pBnR$3*7uO[f8e_*^?5?c5>M\rFZ8
=:BH+!Nkc.gE/1?i19L]A<"SX!JQ4._^_VVf1@Wf7"\7I#sO+f!H_mEB;s&fCbQ_2hRH4;m4F
Sb#:+Q:7SpI:VCAn1UUrnM;mZYS_^G)(8I[n,P#-8(ItCg4M-\ur^;T_6Z0n_4>jM,=HS>JA
rRgD`SAaQMIhc5O)/<C&#Z<p^944t=sLI;f\WTPmAZI;-Z"^3J=[g)`g<#TH8r;eWV]AofBLD
9iP"pgC-D0N8o:LklX%l]ACHLet+oV42&b)A]ALSbRcYQTHZ[LF\hIYLV0hm=F#M$c>##5'kX<
?'DKrOP)4(06392Q"4-h3>jA4guU4m=EcnWYlD+Yp[j^97(4tIUoZLX\rK]AJ.QGf"'JtM<s+
m;H)=@:C/8eh>Gr-AFWd&3QBf'?QY-hfOWk0l78DIEO1KRU4ROsOlT+JaH*;oXU\h:GZR)?)
i_ndX_@=qGVSL73&ME]AgfHeFnchYM5&`TZ*^'P`Iupui@`\7FsZga(<*-VrnR5-8:C]Ar<s=[
b(=Q[h^Sik*!4SeO?[LQ`3E9@lSO]A-N8,sE&=DcWDe*9gH&eAOqt/6$TBY@LlOK^;;$$k7[t
e>D%elJDRuIM6=NQ)(9JH:a@)5Z^kEt<8/]AH<0*:k2n/ZYNiI'lNHFA(V<Vqo)TlUMdajVj+
^RjW9e>3%-7Q)qn^SJX*a*2`/NNO^T0f"-u^>(-g,$Uj&X#Bjm^bWPJG?Zn:\R_Qg$tQ>1%%
3X(Cm)Y%?(R]AA&Fnp?('/ng,n'-]ACh6.dPQC\;)2uNlEM"&2i40eg9-&Ubc)%R4lN/CoK2K2
!Lj[B=pmRfH]AZs\6]Af,$r_jEg)8alW5XKPMjqq>rI[=;&7[Cr-tm1Mo^k"7[DDh"4HqRS)<@
6E%fi(ja>#Q0cQL7[8=p.L!r4P3'_7g$*^f7r"k&l[B^nfk2T#L5$blW!$sob\pQZY0TZFIQ
.`n:d8!+a5"g8W@Bd(7I"ge:)pX0@B7-h7^qUNb_\\1a!bXiRKKW+26I`'Y:U1I;m\DD67fQ
F'?$395A$P<YG9o;O(@M1R%H9j61fmWZRbY53o`]A]AA<C@[:[p:!/(Df4!ER.526.@Xk-1_E,
Kkf'beUCTnE(r7+oGX;4ob`*"\<Ua50krE#n1dgWs$QUSnY6h'1:Q0i_Vhp2I#iL]AD7!!Goe
$Klp[\Hp<dgeU-HPFXm:dBW1f7o86HQ<tbDi]A+kpc_-K2ZK:_jnnKh,Nk&.*?_6\%n<nt#&N
RgDFi)$]A9$g\n&+<UQpN&XP!jWGtK9ph+7EVq,MLG`_7`Dq.HaOgpAqkmnWiSBn-!>FC:$A"
("6h!$Q]A,'(W9o$7jpGA&GEB,I.3iC/)51%Y\;;;o5WuC$fC%napRaJ^Hd3a@%,'Ok?7@1*5
$NG)a8MQU(3V[iGlK??kR%=ruB.DT$ZMS!/bd`25Sk(qs`Agqf6miSf$"Nlrk27Ds.Xk#+ES
4)qYo,Su(V%hkE\Air*'fUgFA"@I-b%8pClYco9k/u.UL/h4^p+,;F`?;VeTa_cla<;"nkT`
e*\Dht]AcU"&k/aH9q*WRF@h@9aPN\0XRmI;'jX!Wp_IhQMcLHrSG8M[_<-`"m:&9XRh]A"Dg(
s*jT_b_mdFn.Woab1tU7RLc'7a!tA/HW9Q5QMil/60*p5:C\1!TjFAdqYuHD2K%Sa(=9nbal
*P\bdneqnrN6#['DSgbX2CbDDcI`dJ*$QCZeS+n:&rgr*M]AdF\8"*)FfVTFA5:`#=Fi;3K)g
3X8<)`0XP*hnQhi\pZJ@[YgqQUUQr'UI['V2]A:AN+.bS?ocQ,AibTiG1']AKi!K*`^(U8l)q_
=N\\:d>WBXk@+TMNWQ/HLpW#4:ljaV`t,n+Rerl%Ml1]A.X(EY^D1+?;0<sB:;?C8VJX@Coi[
m80)?+c4SXQG!E;:&D]A@*`TIRE:k9sikkEN9fn'$i%+G1;C+[+Y/(!`0FarWU2IuWTVX4n9i
30m0LO7Xs-k7$/iPr_>Q7B5q"o/LBMI<%-ht6&$'_4q'0(FYr8Vphb>7aoFVS;Ba9Y$6e47a
ak>qYAT@/W*/k%n&\?VOWK`CX\@A62Fe[ZLquT"<Ii-R\$XKo]A)a`\lm30j(KqX1dkm'PF!Q
6_A^I_a&8_HaZJAfMbGPFC%%bJRC?t1[opTVVS1L8(+DKcC0W1<K+[aYmqp]A$-[.7&`DnRnq
r./mPF1YK\?L6Y$2T6'+.SO1b37'=mBju2=tbN:$m!+k6?T&gEQN$D4M>E1MQaKgKYBkp#sb
IbLM@%3q%j)-=oY[6ZJYH:S_O0,<Wq79#=62RCMa8rN!EU8.CQ^pFT[',HfR:[&cmDNafP<;
;>'s+%M$mNs`[>H*,l5'Ans1(Vc2_&JD85&eX^f"#Y=!CG<+b_!*jR57^[&(BW!oK(p.+KuC
c!V\obW@#k"aG2t5L?kRBg(%q:CKuC\aUq#@N5CTFN5l*=_HS]Alr0k'WZ:c`MThCFMqc0[^R
"R]A@j=Q=.UP<]ALUA0pTAW.;W`<4#%8/8uW2j`3,'`=P%NqT#uU,Y\Ico(8d%$[DQ.5pXUJdP
%:@UZ0063VP#TI5RQFWR[3h+JafkKq?Nr3db?LL*B\u;'PE!6,ajD)*aN+oer3/BZKV[PH-:
erH>j)4D\^NZZsTW=NRdH[\g1uT,A-sOhlA9l*o2f<eKCWUHTJq.IqKb^UT2GFa72_7XiN')
]Ama#7V>4`Z4KfU_X&A6B[Ie%Bb5"GFHgIZ:5,/M8fAcr5f_)iM\I^Xc?gdj$bj$"hsfWP&.E
O!FqKo"+ZPj*4F4TA&2A,SFCiJWf8\o_<:&u>%,7@Gg(3''po:I+^QDHcaKZT:A_T]ATI3,,b
6o`o!>@bg'\mUpH0K8&]AT,+OH]AdYkrJk^Z42r(C.oVY]A/qu!28LL$PWXaJ)\iZhhA.(!!pe?
M3a5o!qHM)k_'%6P4+#pEUk0>du/:_?hS3o.CV[NfR!l9H.bI82Q%NPL0AX@3DPVn&?:[*NY
NeMmL+1S<.]A3G9'\Ze6RE+ZoTe`/QQC>Ulc`CQ7d<]A<]AE+;]AZGc]A*I9M;^(kAA"b%3l.S%a(
&QV6LNBq*B<OU6d]Am]AWLkJJ+aXUH0d5#)UDKUIcrnS:0D'3`P#<ac<qk.<I_;*^D>;.W364_
g0@tk'@8A+S1CGsl'J7aLR=#@^!Pk#H.>%N'j`+HKaeBmGII&A.t\SS;jScA]A<PIR27qrQ""
m*8t1B^*#[Q]A$sfIV&j*QDP8nr!INQ/DJHe5a;SPqnUVWA%!QNiBnlo0>(Lc_c;)44JNP[]AV
u%9FG"@)SH?AR00*.Z+T`N>2s3Bu@6E2p99BYk1n"s46IH!F/cm-*NZlK`L8Y0#r:\>J%Acr
f6j$/F[]AK$_gDoR6PN@Q(j`[E89qV/#\N<o'p&/8e:tIG3:\11)RlcebH(>Y??cTWC2pd'oq
pF^iYtJ.f%ps>o_u%:@j^WeA`c"54Y\j8GS0kcLATfi`Ooq)=ee9He.S0,60H6W/cS</;O\h
_eqLr,L=1*)Xi6</n!0>Mb-=_O-#U@.mU.#\IJG'o_%@BRZ&a%iQ]AbCTJRPJ8>&/%_SiF!"c
d.4FM*De4$<2\R\Yl5l>o@U9^B48+=9'G=Do;[6-c9&sm)4?D]A1Hr5G,J<W@.btDEC2[I2;*
fe?g'prdc['"qA'T?$2KhW^7F?:f(7s9#'`KnD>6WaG:?WM(L>5f`D.CVP%LHL(f@qMT`\(l
.pSm_(SF=6h<8=h,*D>Wb:)sZp;n3R<+;U%d5M32A3tDC]AYHB^-crT_M[J4N"@i)KEM7ria<
lJ*p\-3+KLN]A$`J38!&3_D#c``dJ*P5@PH2_>O7bGeLc-ZHj&0-<G+gRd1+kZF(nJH4?nP&b
T!,pNJ>Fr9-,ANkQBki;%V:XCb>/rS#Z4bO[,5;5n)k?bR?XFg;,q:F,c?`H%ikG@D;c\GeK
KXYAFW)=e>Zdu+<ldM?/<7$26CHrD]AZr,g$Io5\RcBU[NG\*;uMWdWX#=N_5PG;\Rr!'nr&9
mu18l+T/kqrlb-RL5K&idG%]A/>'mYJ;g"ZiC#^TD[[d#I.'=K3gNt7Qr=jYTd0u8SjM.8F%)
KCdhW/L&/HW?<WbheZaHMOXWEFrOK_an=V>bF2-^B*?,tTB2FEa!A$aaI4+Ku96=fMb#eMN*
O%n,jT6>M.ipS/(+j]Ar!L\N86Y/_N!>sILALp]AZeE@]AD/_#CRAQCo-B]Are]AfR3MdF)/\-ajG
+#im3t%=0CXaSc:H&21R^b$5UPGZ,ciR'A&klYpu0RP$LNHhR)1ED1sfk!4YlS5-q"kPIH[-
g:/a2Hf^i@JsU98B,s-.BT;K9U&7RW;S*oCpFWI^o0ID&_$jERp2=@gIEJ4?-jV11P.VFDMg
:O[FVapL0nL)/?``3iNAihJM;oj`NO[:gDZ$[9ZqcY:0R)H)BOA)/K'rrYlql#ueM>&R!(Y#
V*T.n\dtY$<J`fHme)?J;Jp'8&Q9?<t(,3YiX:;[08@_;N;&;q,8Ts@k)l-C/k2Xds%h9#EW
0G%(B=K%*$,:^\/d,'BO<r3@J`nku@nQ97EQt<!ZtR$tF+5a14n>Gd3'is*<LSFDFR]A-J(R+
[`3V+WS7V9^mJUM+Zcd*;o7U^=C97M/06#]A(S,MM+"@C>+B"Nn'g*$Kfk2\Gh22mrr_3asWB
5,;d)RtP,O13)[?>Opb?)egsN.Q"FkIZ4-V!Ih8;^6Qd?"jWuO;fI"-@A!=+^L#K*Ko.VXo]A
%gmKB%<+&CE<rRm`00\qer7#D4S[M/6C2i76&nLO>8-7K3]A2PKOPW>sWVd+`t@c`;2H01q(p
/hf9m!,ESAZ9HrY]AI"Q3p]AX.2r@H:DaPq$Un+?0agfs!D^EJfnOAqE//'nlE9VV/\]A$?L.jr
DFC*6dB[WTUENM*Wn!a&n=7]AY<b-D_60!cmg,:lBfNr3PF^q]AEOc%R?>:%I`PR!G+'1+4`I<
6OYdE0eEs+Q@Gkj\Z)IDUnKn&Fhf&ZAHDABglJ#"M4+?\+C8i1e>8NcDa[i,(![gAUce>r,'
L%[9WlJ#D>0MM&G?=<;Z]Aj0CNkuJmN\nZ%s.&8+MHXMc'cf(pF/*@s,7in\7ZAH$iV21Z9;`
?JQga3K<WgQUNG&d>DQjWg<Z.VU"obM:iqX4qHN,s>6?:8M&s!,mF%g7Ql2hs]AreP=j+gUXQ
l@)0*+'_V)Ike!>bj\L<;R]A4Hi&JjdoY9$lnGG8\>2S^r-b;dd9'Lh[q7IAKj:JV\hRTa4@V
A-Z_l/k`+kGQjBS)U+1a%E_NXN'sacN^nEB^9hth/is,X''bgMG731RP1j';.SGt)Osp2#7F
\!fi=`JX`6lm_,U&X)e+dCWYQK@*e(\u^X@T%^++DJ01=:.Njd:*8-Fp4!.aUpGJIftjs8.N
oY"?L>-<M864Lp__Cd'TOkSMY9X$1<=a+OK(90["pa4k0Uhd$*prSAMib=EO(1EP:W($KB]AF
/gU<+cX\i]A/pp$^l,#Bh--&RqGZ"")h?L(A&5[)>[uS//2:*U^B[N"C)*,ZuD5C:pK=86M37
_%c!"k0E8`Zak_\LdscligX8@c,n#+Y>2AjuW^5shMtBY\(<*DqX.]A4JT<%M$TSVUU2;3j.Z
s`*kosZLG,&T_l\#@oK)_VSY3Psr$%Q'+RaQL&:f";l_+++Arde*qj^If'DPb<,YJd@%NU(N
%fnD.5W6udOJ_XG,!Skt>=4^)>>#g3G?qiHpt+&&;TN!6&-C%6Z/^tC2C2rA)PPGBMAKXAGq
GoBjtB$JVi&GI)%4a&X!#5=RQQO(/ZL+GUqAT8oU%I/R>.A,g?WVAVPKGC0n!L;tR#d"delW
*BE#(4toN%s`Kq"@4:/<>n`bqEg4r*cUEWdZ/19M]AZq&oerE:Ve@a2tgXr"=<k]AJ!Kq\PEOH
sTQW9eRmTC@#hUA;%iF7^JdUL%4?jF(omhq_C6ibKcFnDRR2l;m>emb3[<g\Er>$&,k)f+O.
(p."hl>;;Hr%V3n.95)hS<p`,"8ORY):p]Ar4G<-0ubaXWBUpOm4/)K+1l<JaOM7g["F1[fI+
=+`cj/4bAG8>_Z&tOAM:*e>$h,PP@Dd[.TSqg0:aIe7t2VrD5`'cgi]A8UQu<,7_6It(9EoUW
V:<oBl\8.m3FUs,\LdNa+Vt\-qR`/RXGZRB)35&=r7XL%<f6bm2ms3@)+ZqZ9n5&0R]AeB_^+
DI\#2E1gqo&i:CGdl6P?_'(Bh?A&Ep45#@024eM?@fh"k*_=_JQ>j5`E?cgQArAY5CXO`FH$
tZdC.D"lB8YgPQV:/N*kDb*TJ$n87t'X1Pq6cnah<<GlOn0s=^37U$B.5K'HQEY#b*GJ=S%4
8Crh+m1(KVHW=<XS;QY&-tYE]A#&Y@qe]ARokC`(89)ng0KrlHE=_Bk=hk5ebrdsB#&fBX6?o#
;n%7;oJeC-;_0!eNn7t$EuD#&8"G+Hi,%WS*'$!g^8Zg5.[Gs#meBF1X+e[IB;C[^_@FX2;%
LU\q\S8mP,.,5A,7mddEESF-7<Q<8!!O_0[\nL<!4ZJ:g/q\pKRdQi<=lG]A;jg$l_')NqrT$
VkVSQKbrIRcFl_)4d<MM1*7gNJ*_+4WtJgRl+P]AMZU0<r,@/3_QlnTDYr!lC6k8.A^o$M&jQ
Y;&$*Hh>q=0dSXU,6lueNVTt$hk6&PE^,dk<d#p)'e:!<EqFOH3D"R7'5s;Bchicq^Q2NgkR
PS%i#mb#[k7R]AfZ@>`3OEi@k]ApY56f3d\AD>aaPMghT0iXCaO\I6j2Z$^82VU%$#C4ngbcpr
,[!Yn`1#p\e<`:d/U[*ckAoPhZt4ilc'VrPOrO3h1,BEO"+9?B(K^r20YO\FCL#]A3"EGJI85
_V1!R1#Gl]A]AT?s!0_X&[gW?$IjrqekK_2phXhVLI8E*XLim;[L]AiiEL9lu0i%7N33ME<XU-J
_E3/1'f[jJ-@(k^1*PQ<s:SXhN;Cgmb@N1PiO,nPKo.VQ37'h.7>X]ALp*..=uE/^(fY#[grq
C(pt!E[ta"JX<\$/1NH%F$_nB%5mMP*l`/3%BS'hE9rn(>^=r]Ab_G,m&T.ouRBpAn^6=`b4\
r%qjs7*M^D2.VU7&-1/XU=<t3QmWJ=%.2=G3%Zc)1Y`t53o!r@C9n6)/JK^_(c_aj!H_NWPT
@.#Zo2&#llr&>A7SZoo=,rFeIJ@.a`-js!,D/lTDTr>lkqm_Yjb!d6NJWO*`.OgU%uZDh$^d
[qYj%Obfib0(.J&anVj>CGVe=A6F__':Zc]Acuou$9K!NWoqd;jp-:eAV-KusP^mb+C&E7OF.
:,a*ICp,a*79+bJ`gq&4e03hp/s'UMU1=L%E%=p_pO!.P7>B&"K7]ABLUZ'W,EDteh0%Wo!oP
d+&pe1Yclhh0oRB%no81um&NU2.$-NYR@0YMd2nBc`jU%H@q5\3Pm&sU1JU7C)_`@#KV<?"1
oa.s!9T.J.iBaJGoo"-r@5$5+3aXoNd&Yt,t%@l^9Z6a2s]A<ASX=/tZZ&ot/EQL\4aE#O1X9
q"^"'*M#@,o06u?S@8+d!8a;Ykk;"4s7D\-SKdnd+>Iu!C"#Qe5W_o8I]AT$=?hNdLimVudVC
QA?Y_WR!@9g7bSG;XM*@'),#J4G;!2/uFqF7g4HK4__76q\F"_b.Fg<.]A-Ct$M&lVJXsir_O
Zo:^>`Ts*NrfeNoC%6=9"+3DBQ#N7QqcT*e.RXL37s&l[Ei^]Ap"lNbLVF6WGEh=8#r='pQl]A
qT#^j,%bp<dR"B0n0%=)*Kn._-E;r"89=S5q)FhMABn]Asf9A##u[.FT1/>t[`27$4[:eQP*p
;7Y7eH`e8c6@C6jUf[,T-nnsbi:XEa!baT#"lY>8RJt6pX5>`-m?>:P#sQD^h18$3!a5]A*sO
J\Z@F8e,Ce%=P;e!jhVQ"I;8g4s7HNrNZQ='hSfNf,LW26`!$?^g,:"t>I=RKNZ'0jM=KYo1
#r1!T"^5D;h]AfS=J@bo0YNao>,&i.n6>/&Z(Z6W$dHd>AbREGF?.)1Lc`45JfF2;C.kM,,a'
+_Yq*oulaiPkW]A<*G6e1eoNkI'7p#Q>F99,<]AZ7C?aS7D(Z&Rk^>JE@t!^3jb.CZ>'$?1%ig
<L`.0?qS;AJjGufaT9n?`j(4GD^[Z>E//!WQhZ]AE/7I[+^+f:iM`(J>\3^L[IBcp>]A9m7Clm
`^hdkVTtWNS]AK+;i+?eR4fRD]AG1)V;E&J)<rSj;69'2uaO\LM_^"Dj`M*l&Sc&GWEOM$foRd
]AY2(-5.N\R=_=A+Nur\o=g^n:0:XSogB5s8^30+HG`=jT48mHW@O6a!b?.3!JR)'8&ABb)g^
'a<6j"ECU\mhh,4>TbRQ:ZLd;>V(O"pK75I4(UY-duW8BT1NF/^%]A)A%;8PdWU9%n>VI?ddY
L+E`q4PQMpqB/eJ$FYVm&:;gKB+RVsYMm7O`R=f?5)O5s;pXX^^dFJ>n#^k>B]Arf;M7<;Q@6
:O>:`VGZK9VLcp;R./!QcnQLSLA"B$CZ6V,skU5QSbX6=!YE_tU^j802A6,En3+W.^&$Qu1o
L(XSA)OqYOTgk0Igl^>nFK!Kbt4;9NY]ATj+?3a,'7,]AnZl="fgi's?W<VE\ggSL6T<e&"Y'2
g#kp`qE4qk&iQ+c-b-!Tes0r)e,AoCXqd%C:ko>eTZLVh:*W/\S`c_V;)p"op=dbfjRMJ5'4
"7,+_,R_*aq\aCfCr\tF%(M?D.M1V-K^o32NF$mM.3.H72G@5"cLeZelO`@eXOf>fSu-i<+`
'aK/Y>6_YB-=Q=q*Y^:PlGlg!(oqd2?"kBr03>TP%.^1Km`TJ_AQ-nS+n0c$nM[fbOdcK!1<
gKEtt3.6(c><[(K*48F=r_]ASOl'^Z%-kOKu3[AMnJrBnb+ehul3Kp6X5=0%=<\F_k77#T8hK
_*;:D6;#jK&l61R8P7X$6(_<QjPGL,@jCje:@+3@aY7jMS)5VW!>k4SpUQAU*CAO:unIeV\K
CI3\a9gDlQgMcP^YjfrD:9?bA-=PlDcAhTo>8Ls\ZRXMa6fMdP+@NAm?;64fiN]Anc:BQ/OZ8
:Ks!@E"m0mha?YQ&>k0GAfddbkMfrKW@2RbfVKCX?gq=spLt.AGQ+c+!YU7':F<)1DV!IsZo
cW$ZGhGbFGN[k5\`k?W9Hpr+hKJo6ST\o9r,`Hc/`c-;tq#-<,RN*b\.aLKU)YVac\qan5:5
sV(Yp2OMSh'R:B(N,.aIo=-F\EYb]AsiZ22_5XR;Y_cq]AKYHXHQgWb-49]AN"-^O8(a=7lK."W
U:0'K*?r,p/l>Rh>hBBKqi\?4Dd6;Xu:;V<0Z+i]Ab2E6"2M0uMC*haT)?jA]Ag(%gj>0QE-(b
dukj*=na3(gZ+*,*o'!`hUm1$K*FkM<.C:pd+8H*LK/[YKS2t\Sc9RE>;[fjN9DVtHAe*a#t
I.VVE82.nD8FuE"Du1DG'Cob<01bkN7o!F8!1W^Ua3@s[AB<"r<<%Y0,/O?L<q``.^!Q'tMJ
`P=NSB.66aP7HMs!k+Ip:=4T(A#(?B>$[i:El@RrdZX:=^r&4IBd3=d='-UA7QG%7+s/rcmb
6K1cLUZ:%$$Z3oJ`8op[f/]ABn>pO;"2SCekRrGr)_i<^!.r)Flh0*P^iBSV;2:=>Y+"[<?cC
Pd9$45EPRe4\r-->=A*rP1XPffb3.2(SfrX'1nNYNK0X):'MsVM/gM+tHMHOeVr@^;^(VQ"k
$eh>JG1I:C-L)qFpH2b8,YoB]AI)rsqZ/\fQM6P/9BG^9G%#[UfI2&LZs#El'*/li?G[fc#I^
,Qh8-2]A_48QFXTn0uESFO)/70<QpVVj0Fnj.S]AY&^/sCpU9b.dP>IkZr?/%Gcj/+a5pT[*Qp
i]A.5eLlnGsE4CW.unl?::q1Q0b<M-0'pl2<$L\M4eSNo(b/jZb9:5X*9HO3OL?R6a-&Sd\;O
URnKM]A]AY7DI'8:'Z\u%&2HplN4b`'7E3T1Nu]Aj@pF&n%D4Ym0i`0=t\M,d&-"rlhNg@=girT
6m6'9p\S]A(?]A>aJ(tmJ@3LsbO#QU7LKGg\MXON<l!qmI69V*rG3C.j0$ZFEOWU`>1?Dd-S/M
6I5%FB%8"JQ?Z`s2UVqh_+%t7c!d=9kZrKVTnNd8MqKt7S%?jd>HU.]ATcr.dPK<(#br9??]A9
&bV8%We000OEpLFWsK;'SfKq2;jpFWlZ7p:>0Z$LeF^)[)CZVHUkt0$otFBaLd@5WS@oA#Jp
V7F#*:8uBeni4`DHdi20K!CEd"@(k!784o#i4;YsYMa1TTMeJcgsC^Dkkp8P'`!iJLjc>a7i
(_"/fOCiXB!q&<UXNR(\-"mAj1(qelU[!4$7r$mdgX9(R'^IgE>[Z/+U&!7Y;f/N#kIGhOU"
u^e9&]A?%57.n^.[Gi.'85,3%i:NSN#XEF>057m.GYAt#Q`ZL*W/;-5o"QS1/&*EP$)qPHJ$R
`PO2LbM[OTSb[^ObJ2p]A5cXM0l%^Gf+UgLU]AR@.(eTAD&k8pK2)HXk[X4g2@,l"FWZVlGBb+
G"]A+cOE%D`?R@*HKG]AURn;fFB#>%i^<f_kK.))T0hH?;5m)(S+iUB3n*eb3IRnrcIQ`5Z\^q
\$jfk03MmEfY$&QFXSPLo54GJuf&Od!!sT4:qYQsO<L6F?C7I!Rh_l9_+4?`8PWTShNQ('+0
JlZKmYeRq_BWn_+ea0AiPiMG]Ag1XE$in%aYHR)&%-4JdhQbMY]Akp&4;o">)Z\2./"9^^U@gO
I]A?Zpabg_Es"Yu<(buZXd#R@Y=_RncTTA8B8r\K!1_R98efie/$YT^i/0_j-mf:3^YTq(s(o
i9Y.m*l5&?/5-+WcQE7Z&?Dg$2m7=LZq6$65mgp-CI9Keu=?Ct+J(M,Kl/JI&<e`M9LGRI5-
MR1n?]AH\CKN<SF@iG!3AZ50p;VMtr/V]A0/\A@^6]A!o/9eKsWH,*Meb'G&doOU2U1moEN%Hll
jj]A-]AC'9#.PUIXr3hP+0Vo@*>r&R[@dK>.'G=FDr9F_n%"n`TO).9X2Gh&(D-dTrigdU#VT8
?ah4<qBcm9)I,Q)bfS.=%#,di4iFQ+I*XgaEG^C=TAf%pC.0c38ns_ZpI4&A5r/iGg*r*oYd
!kW1be<'TcI7c$^ktB9_C]AjPWXiA`]A]A&qt/;'R*e7?c;ZoL*Qp\?.lS)05O&"$VlX7=;&-6_
gl<fGDUkhb)2HVF"+IPpF"Z->hNT0EA"eO=cUbm5pd1]A\NK_-aR]A_t#pii3-4[eN`,H\iE]An
lq%)(Z@,+.U$)HQq\aRZ=W%:e\NZfG:fp0?BlQbW[LjiFk:"O.kK[qfkmZD;#"ZhB%VrY`cV
W2]A,@*!+D!0E6\a!(`f`j!F-c6`lhm3Bj6@,5BPI:MoKI.4-;#b&#1/c;:<^RU`AsYh:$<ak
TP7!Vms/CTjfQA"*Kk$*k:CptkJ^O+6"C]A&a^_&g+9[1bR5N-q,hT;s6e@`/]A+7Dgj3MCsu4
J=8tY%nFW1.\os9)^ODdGWHYa?%AO@tXMsQpZ(l/#kEWPHCU'UjbF&T4d(^8/)mpd)8,20\L
$>>!iXtp'7<\?G[n:HU[P=-:7!I3J+rHo7uZ/IIO_%:kdFc]AV26PRK<Q\pEY&)HJ#kJD*$Tb
W)7f?AAT4fS@CEu^Oj$4HPSql+eKrfG_7s35R(WV3dO+cB9l;9YH5"fQ)El/J\X.`YCa<7pT
'<MEJ@Ha[]Am25*6cHhbH<Cj:EoRc^9j/%4,FQ`V+2\WMIijchtH3oNKKB,#F1"UUH[cLE]Au[
6/(qB:En>''M4qZFoh&g;np.VeeF_9#4)?'!"nGe*ANg*faNCde-QYC(GIi)e9?FQge7a3pV
t9icT64/]A:8\Gs`\s%/&%VQ,1u7m+-/aem-p[qe?ee\_+.a)Jr^$B-TRV$geWr?%/dO-6;0!
jf:"Y@P.Ae7W'H3-KXLdVErNH^kPh7Y]AI8tIpJS)`-J?>RM?k.9>@-I3LE;eU-A=5Z*2gos"
s1b[nlg_+6Q2gS7<l)+XblH;bHHGKF!9:2!]A;_O$`*6!i*i+2t:olid*D9KXE&K=s]A7=+$l9
uk70VOcl`&ELX!(q89;/!,7mb(b$mj;6'\Kpb6fr+:e_.c;Qm9/#f6L\;Sp]A:-erH/Z&"@%q
iSF0R+8r]A<ViYC#7L\8`!>t)-L\_$&S&t0uXRUGPMO!5#]AW<%HKbTuXgoomsU57G!))RE(4>
JO%-S)7/sO6:s3@"g]A=-hf*Ngk#3%K[WMj`n,28,3VP=o?*^>muN_a9gqn>c_FZ'a8?'1>Hq
:i/RET*N=tCji3Cj(.W'"@nqQQi!`?G3lp]A?t'cAcnV2B=OK*uk[Vq/gDUO=m:Jf\-eFX.T,
>qo,G?p1$L\B)jgkp7]AKo^`fI(]Al2KhuBn`EJ]AK__H<2GUC1+tRYFoSM1/Ig5"&VVX"=6^P4
3h=i.q>S+4/2'pO/GTU*VTuF!8dGAs'koZ;Pea%!W&AKs_1K+`3d1/c$;Cpc$;\G&/S28S!>
>D!g:e^Yo1?`Ih8N8[tF"rtFrN!QW#gUsaco#l-hE!%<(<1c#75Mu=`]A>pk>Qh>G7gN,%7&i
c['+'E1rc)beGP]AoW8uH.('Vk68#\X[7<n__`hBjX*ZFbZ75AO*Ac66l?r#["/"L2Kgnmqe$
4Eg<dE-gUXc:G$67`qKT#B,L@uGOb:NB16rhq.=nMcVoNJl8[#m@:E&5=4@r`OM'.*^>'?$p
C^__n:m^Z!B\N%R,6Zt/Ra3gR((59o5\ZOb+iDabk6$-^k'O#K/jJZ.a_AmO`5[bf>(aEor\
t'hh_)(]AdG(<%#+%%e"/uKdIt:j3C:nPThOGfrUPpG]Ard\2;(7_@JSN$";8pp\@:O7C5ITX!
H$Ij3pbK+kpbo]A9Dl#-n5:93"'+ac#Tq,!^OQ;V+N)j=]AKDTj_&3q:8hHIAGZ?AI'Q)jucGl
b20Rb2Fi-Y:DJCd2(Z2^GRId[Sl->b,iO$[T/YP1r3A?al1gC)#QO(4`\".A$p`DiJro*V__
/u,d<6s="L;kSFAH.\uZ"E9se^(M/db6J/WT@a*10ilRY(dj^7RHaA,I5?Dq+!&T3B5kerSM
7*+aAr_^V"=R^p"0<+Cb8_3&@C0WW57f24qNd*1lC%)iQ/JM`]Alt?H$s4^,J+)_Ga`@c9Qs4
qti>G;#>Z2VQ:Lt*9e9=407I1u]AU/@cj5M@8n"XU$NIKR<&%IWU+pburXl]AgeeFf(MB;[$"\
dQ*m]Aah<kI<ib7GHHXVdFABKD:%lK5aUIQICJ_\a;mHeKtp!f<A^A%N^*mMu"NP$g58h%)8O
a'rm4n^b7$/Xl\0Bt#c"u>MrI\`Pu=e]Ap"8)9O333K%Mrt\'^h1#C0EU:6I5V>AdY&XK(XKg
K0kt9!'YeSPlj'bI3Mjuh!#II=@^=e,Nl$-q)a2;"iDlQG.mso,jMdB#r*LOb*8K:ES;A4'[
-smgdHDKX-;^Y#$D7#\N8KlT:J0_BZHMS#djV3IW(qtbd3F_`1KmM":G0.pY#3J^"?DRjn$p
I"$nH?DV*h2X8\rL^cWJFlOqDX1*<H5SQ$_3QF,=!Bm]A8c3H2NTfbM4FKelUsTS:ZU9.5rQ_
MYC#EC%e.1a2gZL1\8Q]ATBT9pb[9,N9dE1I@->+Q^*e?/f!`GMbHTWhsIZ8CmrJ_L-[`WAeI
6R(;Gb(6,H"-E$+<P#?/P7CqH7tYR(gdJP.[d\n:3-rTaueWfQTt#U'Q-@D5:o!c,t'uG54V
^!9!=Ai$/>QJ9l<nXK(/(Xd)USY8Y>./b1tT[I<CSHAtm65j2RlaoECG(2a)0?rBQ!B=H2D@
>gla9#KX,Tr4)OXf(+16XZK/'lT0dKR;C`(57aHpG36'[2/SJT8R(-]A24=rdIR_T;2Ns`9ER
fD0GXl7,>#)mV?Kk3/:)@?rIMeb!8*!R)V>X*[8DrO5`dG%pRre@6Ij"n\:@'N;KXMS&2[JB
c0gj*kKpqH3^`SBWi3C@ZpHtYf46&oH_sR[al#2TQInT'rDUL,1`9=te$@Wt2+?P'gT^CB3]A
&g-\Lhq2b&ALg,2]APL.n1pLY(eF#I^@j'',(c\YgABgWd^NZZ5&bh[,1T:r"(SN9)h[sJlRH
'RElK"K^uUWmZ5K\LjC0YQgV79meik.Qc)^0Chqn:AKuI[<gWQV*R5kNto51E"#-;S82D1tE
C=0]AhQZU>QYUXGTpTR-$7`KR>ae"d,milD$G/Ck6eSZDr7X;E5g+`>2H$Y3r=$s-1GKEnMXf
_00GeYcJ[k?S)[f?=5&%<4rPB&N0Y:d&G]AH`9mn7Nj[Da!kcZZM2uTCQ91a5f^I7CSlLfF<&
#q[p`\IempK<-1#q;*WpWBo"n+fGAJ0Sks9L/%FN8r(@Mkc;g3C4?oVGlY7A%(:RF-bX;sF#
!Uj7p#%nHSP(B]Ae59a,6:;WR5Qo4SqeOJr*3Dje31IVGi%t4:?dH6+Mg;t`IelC_fTu<G067
[$ND=LtdE.Q9:-Jf\/8::3RKi?#hStrIfn4Kd7Ege#<Bl<pr-2COcpnC:G,[HR<KWV*E`4gl
MD7c^*94e!<]AC!RGqd!J=g`'GN,rAl5k@e9ji''W<V3XBd;^WjhMBbX6W*YZOkUVMHDUS;U<
jR"k,:*bBm-6:2TQqLiO0sq2(,t-_S-7><n&s_&!]AOVmhLpjjE-I*\I\l<)pMsGD)jRq]Ai,t
8=mZ)tVk9uuRD4>4!:4EuDWYAM,A=fiiDs^4qsLo0ZO'i*)iDB?g<dl0T,._SLOr\$0u,ckI
r.T!q:=di-d(?,nc&]A@Eap3?3rqI*^1tIr!$[Mr't'$2`cf(olYbjK3bnV@brRC3Jf\<YUB.
l^,iN#,Z#32>qQd<<ahOFLM4>OPY!-%(QR<TY?p^7<KJ4h#*>R<6jl`\:a@?%.f0iuB.o&0d
Q!r\K@gcBe=)'S$H*0g29&j5Kh5B5Ckg:asr:UT%1k2+^ZW(n\`N)XU[p`9P8,"BX_M4u93V
#_E"n=VuE\`Gsb9,Sd228h[Qa5#!lD*5h)bY*MONS3%$k(Oql^(VOA`D[aVP/X/n#2\37UJZ
*?BJZ:V0Jr?MJ<a##^EGLXXR4bh/d,4@]A,j65\"ttFSSU9lYp.NkWhXlpBp-i1(7#rfJ.:aR
?,4:'jDb1Ebc"@[n\=M39bV^)th7>qUCC@bb9)"P"(&_5P8*]A\Y9jEH"AJHa"/[:`:8'VJUi
i3SOn7jpSpe&iVuBkhBuF.rl:!*8SQ4Wp"YMWUO0b*<Hj7UG\m8(\5Q]As=o;8VORmC+p!20i
C@5pX*=/_qr-uIA`;0@]A&)+_NYD>]APgi4t"G$XYbq:D$EYK[iD?@J0HNtX$\V-8P:F9Ui"/g
_*"^.qo1(gS#lM\-t6ig@+I=R6U.VQgSuqt8m2X>)'qZ/[(;r(XRYlW*[Cq&AA[b_ZARJ>?_
#a#j*-dX`Q>e6>[qM<"&^_&gQpJtD=MF^46p`/<Pu5rRM$k!G]A,S.8M%ph%BN\hKqAoVq$Sl
1CtFhs@b/(OM7`-\,+)O/V7\Ef^3h"=D!E<[eaWT^/_TIV(lGeW043@I*`sa.j/=Dh$!aWdH
t-hVr(h;q>`Bc>ao+31%0fe?l!a,Y<XpR4f_c(o)QSU$J[g6!RpMmh#I.C!-e#-.4:TBImN@
/4S9`_V@O^p1)b5cL95;CN%MB7N]A`M$Z7$JLFEnfFNsAW\(g!Lf)Od-_W5(=>I-VCk#nu/Sb
AS]AV`48L>8sD3S.K6hHbrOV(BLH6H^[]A]A7qAf>(h4EMo>@$Bq"EBXAP!Jp*Ie;;o+[<qZ/:1
nZLWWO2Qp&&$1C^)IFOi$H[1Sg46U4Sj)f4&<K*M=j2R>8.eS.1b$_L&7UXl1gd\SnF"%EA1
)F!NH:8D22!kf]A<VTdF19XIOLSWmBXRpm7MaVQ)AQmB(a37D7Zh!'NI^Qn.m.8\u<H+0O+0"
0R7fr0![)5!TG$>"*5Fq$ZTc4.bdgs?XQ%l#Zcfi=Gl9Q=>`>+3!AZCKQA\qj#nU0?#C&?iI
[m?edRXUgLaL;$Z8GZ<*N;'k4*C$RF<An>o@Hl,n=_]Abk\!bU05.1P!9V:^WXe[:GUV:N[=c
S7bKTX>t`_4+UE[GW8,$afN-87:(k,&H^!E_h_T[=\i:@*2R#X_%*eFeVdn\^uq<TW)JP*t8
Eao(?_EN=-XXK%ib]AbAV=SJ8B=!*ZSJ=D)fpK=h_'"iuZT6-(tKa_KrYR&=Ed>0>e79BRpeL
KIs;\B5XRX#86tW;.s4TE5'H^56Ee(oJIU*:8-#cU%rXC0CIR@*RW#&s("=c2"Z:k6#RRiOq
q=GCIuoZk_fEJIILO!4rUOhY9Cc=oIgSW%?s9n6kbFe%.em]AE"j!)1qfs]A/F9XVb(7q0Q,rY
E?]A&)[`?/614IlO203=*hqbL)(f-k*F[^`gC4@&!']A0e]A)pr`,qX&[[Be,2_l9=ifV\78qPl
_E^"CXIpe"]A)Nr?G.2>R?QphLtIlK^sm?Tu1/1&DJL=.8Hh[K8G,%Q6+qC4BqjXFh>>7rli3
@S<ihdn^45-WI5/=o^L&<.%O9J$11s[Zl(==iM0)@o8*;G,bXJ^\-*_j13iF2S[=GOe8Z9k*
m<LrLSUALaZ4e=*a,G,M1J#45_q<:TtA@^$EKm;dY>'Oh@-!TCGS3,>?GILRT%Yj;=#I_fKE
4sZJ2H[1"TiSpE<'AGDB;*1[L5pRfCQ+^&cjAS>"(W?@:?@1_rK`H":fE\@Zs>=f_WDAJkaB
Hq!21[N$MU6s31VW!lT,7V"#4%nVU%2QF5sUA*=anRh6YOK\2VrP@kOO,tjJ+'X"kA:k8>pl
L!n`6HYagXuQbQen7/(+pj0WS3jpfD=Ca2\5.E#FV&+OBCH+;3(o7[Mk:#V=X.(En/:CR=p7
%hj9&:MM]AXG.%nGTQaDIkFciDRk'EJ<]A,m4(QJC_N+'18^;`o`=bBA$!'IJE*eKGZMp5M&aA
]A41rnEE(3np4$gLoam[P9&\7J0n)af(2p/F0o+=`Cl!Y^dDK\>tep.G_C[^btt0s8-@hQ@^Z
hui%Q8l+d6h;gOX-g;W>pIY/aV0f%p8HkBBWPXEsZ%V:Be6oDk7JKX'=C4p6KnJ'(,VjN4GK
/"cIh;hRt\0s]A_RDM.q5dW\;s'ba<Q92)n3c;X(t\u]A_tGq<@2d$HlOaWWse#In1jZK*l6&A
F$d2D(T"#fLNk_HHa-h.Id!es@H8AaV#IYA:eaA7W9\+PLONM,K`(O(>p2>&"B;PDn9$RXdu
*O.N7AKX&n7;o\_c94Y(+lUKiFHu;*1/bi9&%KUTNi/I?MX=DJQ=IL4b?VmRD,"i'jP6/&-D
-P_?"rS6INB:5&,ed!!0GaUT2PXg5$\a_*;;Y#`I_ReYRIa0^6)kO)i"J\4J.JlHp[\/>Li>
3W+uJ20QMNpN[n-9OmRs,N/bhu*O(Lm7]AgN,OJ4WuOr:PceQmrC\+Qa4l\c>Ce!AlG+EPs]A^
rZpQGkBM>'73I"Z+b$aT@W(1Hp!F;9%P:G2Ci&BLS3s!2RdQ<rlJ0M+N+$l*N069n9_K"QML
W]AfY?H6>/_n_YqM0ImZbf\$_9+_h8Bb$!]Ao1=hQ?bAJGU9W2<QV:4mW^%.)Wkr%m2m&U*S&$
m7t^r4Y8V`0YtnDtStH:;HcHbXE@Z0eG30PLm4bRsSa26+RqSofHHXaqq/:hD>iWOI@jh#ZL
+o$f4+A-oRERfH2Z=<-rhQ94$9KV"Bul$-KIVt[A0e[_!*Bk;!gu/)!1)]Aeo1,s5K(Pq70eA
blp4:+.Z0EFh$#b*3Te&7?C3('S@Rju>dt^EEE4S(_*c'ME0933$X]A(\E>%d*_q,I<P@qG%3
2ii$o+_./6#c>tZ%pYm8RFEX+nqkVfXjD/FQ+_MP,TWj7R7-I(K+4WbDb%'X&iT7_S_etu,/
\mJ$,*#oaEj;jKhdn*%RYiQAU?[?CNPamc-`2KCWmD8XDbE0FYmrLI/>$8HF(*?aoCMZT#dp
rEE&h4Rap*\/^o[J8'C55K[SZ_g4&\ii4+%2&f+WApmIFG+ESA$RQ;2d"H1m;&qTjVJL+`X]A
h--D;2S#>Y;'af:.+Mu>eQi;]A2s"F#GYG,=''F/OJ\#$3::O:71Q\&5\%(j';dY+[/k3h!Zk
]A'l[Ic_4-9&\-DB^uTb)(AlYIKB$&NV5YHoJOQ?&oP.nI>kXcEOn'tk,=EfE#+8gg*dh,U:I
*=F)cn%_S'Ih5%%&K3PUU9tkQggH(9rn%[r[7MI`nBO_4Rk@`<(IDFeV.A3oNoF54l/:0`DL
rO\P9A.PZ1K;=K0$[#;a0idXu/VLWW/')?tbB4IVaY)#f7V?"6L"$igJOf7tl0hiou=-Tknu
?1qiU7/KJsB!?U=7*MCF#Mnugk5r7Wm<;]APB'>dEN_Bt?KnWUN5,T?N,,QlCs+ChB]A#cTmY&
`/;Y]A9h4Q$>YlaU%3@^pf0eshOE6PqL*"ZoN'7&Q!1)uA%L=)dO+uuP4L7Y9>\jtn1W4;eCO
Yn0n,)u@1@Ms0<!MB9M:$/P$)+3)6T&>^CV<DW[q@79:\oo0-W%n"2J#ARMZUM'SiRD[-[p#
BnEi$(G'+%k?l2)Hq<B8'k:$t9)<r<WIGW>F^"^?ebJ*2kh\A@WMrY'FLkR!0VCuU[.jIqfW
cOa"_@BH:!\H'r!NTdf#VhXA3'f%<#H4jI5m?O+)?STm`lVR@REq57;siEK'>o7ruaZc,$"g
-/]A*!G)\DM.MW;V&,pm;`a;WK1<h30e*?_^VG_!FE_!>YT0>jNF?!5<qZA.s&+DFql:-2(ne
h-@q+49?O[kcVZ>8;\:j(qF$j%9t06WstYlVt\7C5!e;:AddH[\'X)?.UhR6nnZ#hF2,11AW
c0=_eD$:lgdiJ0D(MCQgJ.j\P^XB[\:90+H"4T?.bl_caR!'Zt[dbf!u+j5_O,3CXr;RliG'
+#V:Err?p!2LPR,iUq:i'$)B%B/,36]A+"5aO@(+@D%EKTga)8BZrbccUC1/X&tr=d*Oq\oN'
8EDI1TKZpcYu\X)0MNITo921"klWSe%A3'jj.0fuYMjedQH))_7sClK0qT#0/P^HTIJu?<bg
'jc4`7@qKr0TNR-3L:^ZdN[-_ZWT0,:3"s;nr3[l-da9Z.c\)6<.<tnEd!lK&mt:R>F;+:gB
5ePod>o:pIp!E'5,t2c7E;t,8=kRo$Db,$X?FZI!'L'K#.[nLRQHQ?aGb'g_$E\I_^#+0X*M
la%$*V,YVaZ'`K?r@?+[D-`4U(&/f!MaEO-sj:/E%+!O.Q-ithu2^*:2Nok.`"+!d4Or:X$b
'\ZAL!!(pb:WF=4QK%e8FC-p@Ud3+@A!=./+kY%f:]AK)Lob3#K%]A+F'U;!pr,:@V&4C]A-grk
S<#`ufI:9=7nF!:(mU4^Df=X/HWV</^r]Aa$4a;MSJ'.UD2h#Y1pRl#-j_+W-,&K%k''2]AJmF
\6)\&HmXo&6n(rWi'+^*9f*;\mSll@;GPEh!*u,!OLYZ#hYF("6]AHJd?h%S3.4&GT+;KrrZ"
O-JJ#Mk*d,JelpiuM&$[Bp!oRg1ShZgDaD<jj7E,X',IBHk5%p8k[)*c0_JiE5An/T.nm?fg
&%jFMJ#ORD#%@]ARl]A/c:#b(Gf5W.0&2addlh$7_kHH0'u-$rSYLS7e('bQ>F8e='Og2&'F[M
mg-=`kR4qS*jXh`c[mNQZ8),mc<Lgb'+QLT2F+*O*GUMR+*EkOF3\Z%R@'Pe6kJo4%<R<B$!
?SkHc6829>%6t_1hLP8(rUm.t"pN>E9gB\(lQqitVD$fFL\d$kn!K^a=eJC@]A3!gnT?;$!.h
&q^)<r_!=YaHh?Jm7B)8*9ah?jZeYV>b5`rL6<9nALVcb.<#*6>0NINA]A)*eL5XU'@eY<%?k
33_4l1;Ah*64!`$hX@2%02@4DL_NXb+1&$ie'H+a2A)aS&NnE.<1S>c;Z=tG#YBmYudANA<;
fLb!BSRQ+k\6@8$N:Uok4)mC=%ISPAaNicgL'4j^#,,-A'B:ZA^&XCdT.H2WAllmlH51Kp35
@4c-]ANC6uL!)!`[Em;FY>mEY@)jlT_2ZVM1OZ4[VlbFgsdC2WraR'X)e%<@uH?,&D+-Oo4/r
'-!s7[LVGP5"jq4sH).T)@j%^QI=kcGCoMl>L,k`"6K/`aPMWRUKq658N`2"c"tWDErL$D#^
Fl+Hn!^Y`Dqcd$%'\aSjq?I.4dpWVFies_\.lo.q,BB/g/b]A=hQc@qhC%jnW6.Ie%5oboo[P
6D>#L/Z)RS0UiV8$B^on7"2G9\'o?i8>b6Mq4(1/X>UZ<Q&mHe>uZq5am.d->=t^fqEE7P=V
0(4sOBsMl^=EBr8Y1:2agJ2p8Vck9KMs$S#[SW&%X1l4^cF`"YEEg"TgmXfs0)YPc57?bab_
Y']A`b6?eUK;iN'CR!GO2$"jpf.\='^pk-_=S(`cY/fQq/%m8t:m#35cA/>\ra"8%:2YqE']A^
[Plp=K3N24nH&_He[i`fN9b+?jC\p<ZN%+BQD$1`rQ@4\/S:`D0Or+Z<+\kKnoW',-@411uH
]Ak6.']A_%lVVK0=DdqrT@mpN=Mg3SWD<o_V5IP0q-a:jPj,jNoE!2dJ=44YLiqnk55s+8&9SY
A>MR8!&RAMksl(R`LZ?b8WaYKg$,k(-OLS'`#9O4ETgcTB4.+Fb$:_r0cDY!cC=GAs'jQ<fI
:!4KM3NQ+r2g\amPGRif9oE;U!e$ZiWZ9\>V'qN3J.\VW5:(LGn$n)r^MXn=($('J6a4#c.t
/iFDl9IE!)m4'/$B+BPrjR-j6W]AoW/gCbfU$lrTdM`,i7#N&.H^h!A=UA1ma%;BRu,1h01Af
e`h1]A/mH-Ysq&WON$AT^&ShJtuVMhc'FqQ91k?f(YJBOi*5,6IZ%A7o.=ZY(G0=aMsGK5Vg:
KUd&E#K+SWRkLRB"rnK[t'GF\LY&VPA.oOCg;fTu@Yfi_SAf0i51#ssZc'L-,F-S&[Jo_pc`
T@"og6W[<;m<V\ZG+S+;06,bp3'9YXi_3q>75lbYL1VcAr4:l^-dFo[mYT1\fqh-qUi1ZYb4
<_#T+Q;BNqoG3)uaWb^KMbG?lP3F^&X5Jd&Ho\'ZU/qPBb"9+1cq]A-"E1dW_a<T$m?>5PM:S
b06rG"_oV/c1I3*6fA[FWbohkaE)di$45%-EZ#A!Xb#LK8JAf(hOr%Y>&#5'mIW%4L@,A1p7
U;Y$d:/?hO`#>.4il\T?@oLd*.U9':q#^OgjHuWm!kf+UL[e19m^_S.9]AP!h:NK6T!0Ooko/
Q.lLgXDlN8i^\\SWhcjh'0[Z>]AH"TD/1:ok0oJg87/r&FK.E;`kJ9l*#GE:=h'$m$]AI4o.tG
oKHf'b5ir=l62YdT4T\\+&?YhBQFSQ#<_>iL-6fA5WAhgTi97BJ`pYJe3/A6RB/.b&rSF&KV
:kb,m#]Am\umq^UY2rT2FBZZVp"6mp"td`!.kHAJI8K0\3F#!#,]AE.shmcDj)H3baju9UHI,2
9k:=%=A']Af?DK3-nqYYimXh9E0Ur&4G`T1n`6]AjuZj_]AU3_61'fi!k(i&r`[k3;s&R=ccP'r
d&[#&*:N>sXtlL"C($/2.>?rsjYUGV8JNVplK1/!f$:lt/LBWf3OLHP_91n^ZkG*pMa%hsg8
c@:sD,bOi[@\fWE/17QEI]ASs3%B:BCc&:$nI\F1s<5T2gZ0/E"[CmZedp';Fr/",j'_GOTXY
)%Jb%%POiE\qj<OX=b-A1hVOOntBkUsg9Ii7KTS;a2]A5<N&;Lh.G5A]AE?@_q11dlERC<i#O-
dWGcHlZ)5)-P"C0p$8=mP0`c<;u.Q_Rg4RG87WJSNjG!9gqmWuG4C[%m]A_J>"TGV6-XgjqYo
Qc9@`DkZON]A]AD\cV[gEGMI"/p@YKgH<GoM_hu\Oe("sU7bK-=Cn4S+n#G#VTS$G?P!)&kSHr
S;c%=F-$rpFBTjH<$SfL<:i(-p/q[VTKFNbZYJ6$"!#b_)KjBb#&Pds+3MX#698\ioE;#-mq
hnX"lH0A!3BQ-8fh"]A=5%,N/ha.'<YqSbjH<2Da'I;c!>\jk0=Unn<-+UI5bZWL1@%T7u^jp
!nWZ1EE^PO`pt3>l@a@U:Uk2AVu`2>NuuT?&Q"P&!RmC;:ZWN^JZB2&i6*]ALd^-9D'a@7P8C
a#V&e7J:Ris__Z\&=1_P>n5]A>RAK\jH'n0k&ZD,tK?]A82d>o#R;mI`611lFqXGbfkmt$^u5r
OQ-O^E)0Z"Q"LOMLs&]A&R0m_goe?Q"P=B::H!%tIrn,cRZV=RVN?F'c5`@6q#hQ-YX&_U66'
o"e;l+PZ0]A.?oc*8Q&=cp9X")q?Vb)U<=AM1cYc6K8D2#a\*iDRu;F,nb6TIp?0NifSm%D(I
<A3)E:D$Q?T5`lOZiOmdf5@aYMSVTYfU[r@\24?a>Rm3NNgO5jYo=`S&iJ"^^qI11dXTKXL[
6BL48q#KRI%l_Inih.AYQmI!b:1]AsD%4\Fd@\Z/bsEe#H7%pJLEmg16K(;0"PW(H6Smj>_Y9
CZOmq$[$/ikP^C(L\70NiAJKhLZ:aisKMUY/&\IF)+s&RXp&ac?1i^(M,V5o!!"lPRM&Ie?X
>c1eJ#(bH!YMc!]A"L,.TIm+QW0'ZNN*Jb!CRFq>JAOkMcgRO+s"n^dL,-*#AC?65a&lU!'`\
f/;iG2)B"q]AX5]A332YMh.CEjVB$4+qZrb^pHK`Q?E!_F]AhtOI$MO6T]A6C^d/"72DA0l0;oH8
H;,p`E8c&Ti\H4U5<-&EY.J/5TOM6U"B'=PUoaG`g3p7%?as86\Z8]A03QuT/,Pm8rLL5nSL1
"N;mmPZ3OlTAoZhie*>pH[C#F1Ck^?Qj9&itl*tX!;02F@%'kF+SPM4H";[NA\`_aV!K##%=
<6'-MU`!"((7k96k_gQO1l6V`Fo&A7+*3C._*.A4]A=.oU\9`ag+lTq3fC5s/^LpAi#+fDu!M
dm4.PfpVo'06$4p*BD=e!ONRe]AbUj<G'hK*'=E#O\S^H[54+6b&Feqq?B*+[epCR#I4tojge
qQ>ZpYoKU)l)nXoHVsPN3Q;-(09f%#.iG]ArBg-Zh+a#%H<]A[G2)4N_3Zk%BulbSU^B$6JZKm
7f+C/c-EAh`am66T#%`N%#AAkFO(g9'5*$P5E/gjl,0J"<$(!6NOJW$;*>q$X7]ArQ?ahRdi5
]AHE+3Gm\`l#'^O-ZQ.l<e%Q\.4YjT]A`$!N?VM!5]A'5\s$:7mt`hK]AF\.8/I&,/OU=;"!P*ge
Ok8JQC2XS/RCSQ&qA6Z4P$6J6p.ha5M3=[s:gcX<6YKA+aF:WnaZLuaQR36ebcbn%L7EI=nU
S$R]A@gh/^*)j>]Aa$]A$F3NH&X'_ON3qH#q%Eq,k;7J3=pqf!+tJlbmrHQ71qfReBpcO"YuODd
=H5D\Ha@e[.Lb+fUqkPn8fXl2)`OciOpBWo8;5Ik)QbA[`Oq'pPimSOs`U=(F"\1`)J!A))u
2IO+57)^17g;D!"H*;g01je1*Z('QBC+a..H)gbQ'C_E0'h'i,1/KW1NkIa_S]Ahkjf,YQ;g3
PuZg<['Z5k@XON0.T-#cFh"+#En%D[WW2fRUG=&47dha=D!VBh>)Hag7+/75+Hu+Jr!h63CB
[CK?j%)X@mi;#-Y0=Ie['Up',2JFs\l4K!Anl:[GLob#]Af(#T&k[*UL5@K"(STQAPPWKXhU)
(PrSPlR1>6N6k%:YYD^HYiF(d4G'!W7Sl?Xpncd]AjJ-GRl;GfLA30(ZAIOY9Hf2amZ6JleAk
V&/#E#qpLgCU]A5bdB;B%F'*Nn`TCdjU3hg'Us.W$kg,e"bP?f1Rto'bal`1B$`9(A`\lJH`V
hb@d@\oAphH^EEp-;O:EGK4XWQZ\!\;BD]AO$D`dji!.V2Hc)Bc;17K/lT]Adr-mW81-#3c@cV
ifSq2Th?->:]AW>o#Uq5$(q8f.`!n`Rj[b,<kU:;\g$?O\5]ARSVr\27mq7mYY3Gtl+D:-BO0%
iW-lQ`TVO;0_oY$CnXd:-?Jo@E43Rg^Sd4T'h=#aDdrbq^GZo!1Z$BVu2rsa"V0_B3D,Zn\<
7pU(QS`kX-XC&KT<>s"h9pMSL0=l[<3l,#8VE_%@D8439q$oHObK$cQSRTS8et!79bW>=c<C
\H_4gX4+eik8T^7;`77X.AZ+DK<piauQEQo$4DM[N]ADDof@Wfgb1Y-suYZYI"t&IOk8<jHgu
'dJ[FkfCR[ak`YnBB5LO<82VRn;Idto(f18K?cXtP[XMC$^R3[+a\l]AAUL@1[SN[sFQ+@Gkh
tu(+pf(a'&5ee$mf93P!o<m>_G,5B27+WIfn/t2JWZJQ?6Y/uSASP[c/hdRdsT)d/tk;Q80=
;U>DbEQhV?uuJp4P/*Dk9.Nf'I3$V"H6C1([=s30mQ3nNcLSs99>f:Hc;S&3m>gmGG!O`o-:
bgu:X.B&&GO*#oi9Rm*[:6Zihoei_^V<p#%kR-a+.qVgm)#G7dX_<K1*s()"DQ54+[F,ir7+
2X,kO^25lOi4bl[4#u0235W6CgZrAfYPFJh:s=L"p<lFRc@rJ;Q)*A"5,!HI3mXJ^>75,3E>
.P/TlDalV1a7F1G%"XB'JHl^&'LTq/8N]A]A/4Qa_;lA'</=237JRB/P]A8PBg%^m!3Uc=([)A=
G&)d?9R&@H=Yao"Lhb-PaB8Cm<Mmps.V8e&kN3aK:t@E&Y'V^0')DNR[h2um4#f8SZrL<q_)
ii/;4W!;8o2dR6"aP8pG,(+Fl?=^c^3-C!(u!KSKneSQ)gbjG^4R>-W)_F;D%:88XKMI<PKc
r+a,1Gt@=bD6J"IN:HAEb)#A9PIulb]AhZ1b*tV4n6=FPu7X>ji^Im;4P/Pb6/Z`H&q;Ip=F\
j]ApI%K-_?ofqZW.FIii+u$@6hF:@\=pEc=lD`?!ol/*[^X%K7!,A4#hDS[aFi?O]AklKR52gi
*jMs#4bp74]A1Vnr-)blq9oha8^5A\CG\ECc$`l'qmq.H;!6b0JrBZW2@@)QWgLakMbr8Yfrr
n8;=H]A;@&cA<)C-#-qkC9H_lk#AUm!Ai]Ap9g<f!U"H3D`/4l)djN#170>>^k/fpg3mHS2k_o
U@N=ZJGY]A5.ec=B&$+[u/aa8lB?)5la<ps<5o$u0dXa]A=&GCccN9\[J5jYO.)X2\F68<#%HJ
kHV6d4!*JBqPYlKMPj`5]AE3fUiS-*7oV(ZK9$VJ@2AJaOoEf?+d<Jm_fuj:e#r??P)N4J3g\
W%XIbN>"lP8,dl2_VsPZ46]A*..7eI%ru<h@tB8o0e6n6e[PmN.]A!WgD7B8)CQ3Q*]AnQR<d?R
+T3Qih4PZ^#(0p-JSsL'ZCc3Hei)+,BbrjF4QJ@>EMoHsl-/u1cVCm-q:k3kZa`HiL:>pQ'H
5h<a(4&R+nl%2XOfXNdH5.Am5Z;U>4#$ur#4X&)HOuK)B%0M]AmsMibaj&-rMHasGGIbuM_uG
8n>LIddP8^qJ"V4R'O4$/8m*NGk1\?_aT:Zk2@Jali!H2*A]ARc_L#/6jAQO1/l>N/Y)"-_(-
RL>;\4?s%E+88#B#N7]AZjk%>5"4DoDJl,h#)WV2r-i(e?J.%I=^MO(Wb)WSN_\^^Y0YD;npm
)+L#A_\]A<oc@#Ca9fn&C-:PR^4RnKC;,)IC:4aMKN]Ag>OHnY1"[o@Ip]Ae*>@pgu;eJ&6-^>+
LYB+ePs#3&nrBb@CU<Ouik``'c4QFp)o[Aa5*";_%59?SL1-85njeh`=+(fB$V<o.s9J_k,+
a1bIp_QB+d%+,Q(Ic0(BYp.KfGD[tE"H>qTbq$#W_U[KNtn_lhK+%V+!,<e9hkcE&>"qPh0e
iM*='(p0H#$T5.Ac:Ocsr-%SnHD9G-]A50=]A?$FQVmZSQZJKC2jW!k5;crZ.aoJ7leQ8Lbj8[
>-Bs5IZ9i63JE)$B=O,K=N7A?4s:=0'Pp-4q4\KL2^?ETV)laF1)V?omjK:C(>1a1*j[0F\D
qn>JgTn2B$*n9.68lN%UAn&+2C,+O^`]A"bBgJu\Jj!UQl(-GI[89+\J!3(`)DEj)0t(h5]A;0
TQR<RJG>!#d^okTRKkK3,ChlugVJU5H]Ah`;/iV'(A:V.rGDJo1u50!\8C[FMc;N#^#19Wi:q
.9Ptc<@kng^a'l":ea]A5<3HV:j8<N"j#BX%S)]A_,PA$7d@<8#jg4#C-c!Qaefk_lZpXE?d[%
_':*:+t6ge<5ZG[K&(6'<9h$49D/FB-"N2Bu1Q1KY@cVT.c21#$A^92k$r@r@]A5ST&7\GG^j
FLpg@WR1\:UNeY((=^*CbHL%u+.D*RHp6WgfUFhi>g%aliTb'3dMte]A=Xt,"$X[A)UVI,:Y@
6Oq#18C=SWjPG*$b<i,NZ$5If1LWH]A46s:D9rtg4c10i58N:g\\Qm5H&(<6@re5UuT!YFBL\
Ak@GG?Y$?#hmO"1?:hhr12R$W[4T-CS+Ys.M9Rj<)=U1qce#*u5+a1li\%M7c,+CUqi5)JZ*
Ma/3fsP\Kom"I0LW1nr4$V"qO_D-;%b[R(>FL=J6q]A?!gNccIrVXbgQ@i1fBGF]AXbKAoPXR3
f6fX`/L3)M2oXU"TM[ipee:5>$<lqBXBghYjX?!1o:(lG/YWcm.u5LJ.T>/ImoMjWpW"7"b_
<,u">Ts!s_lg:j]A`""g@-a4:/36eQ-VLLN9qCq1M;;<'lpHrk+0*_Y_W9i7K6JrJU]A0GFIHt
QgAJsqKmH]AbUUElY<tjR-#32Tj2\a]A%r7q(Qd)(lqf#@d3:o6'mk]A>^os69\WJe0mg9hQ=ud
TZm))o-uZ8Q5n4#oYr:%"QtV,Y%^6,KkjAh(D]AjOTs*,)r<!K2-[V.b;qe^W_>ZA']AAu(aR+
9325*j`7t!bYpRe&RhbPj?`Zs3008YH>Te(#;Ao_4h4LM!jD/(fGUS?+7CLWG8\0^5]Ah<^Qu
W]A9CA1`p%_:I^et8s"NiSq%ebbo>uelLV"ZR!ffgAZHiorq$H7?\![sP0e\MMS#=&#(FI&Nn
1WNT:hGX0":(3<bOPE^kV@I'+5<"+Lr=HeGrZb@)T!XUaY!BW2=h$C'c]AWI&_mnelTSC#sOr
OI7UI&eP_FQjpoC'BlME\8dAIHb91C6]AU[^^sSSr'p$[b\3"3Uu8k%]AfIIPhPH$WM>(KYsE2
[Q!E87X)oZnXSB.Pj]A,gj"Z?kVi;3-+:USF8-7$`tS!fP8<T9PEn:/_kl]A@^(\A;LOcam/88
2%T'A]APYIDm^i2$pfS]AXO:ejn7.R3M!UhKF9*ZVap$)5SCOZ.;-l`f&Ch`)ef*mCnTiGR5kB
Ys:0!KK4UHoLLVJXZq^6B4a)'GZlP?hbbGW)oe^"-S%HZrPWJr;`,C%Dod[ma8'^DH?c_3M8
:epg""$i#D#5e8d5Dg*i8J?N#H4\7mqYAZt!0C:(8Qq-1BRE%@Da-3#4]AgS47U$h+@VE>]A9C
7$p]AmReon(u5O":'M(K6Q/[hWoE`n6aUb):WCT&(;$A+tJu9.t-ceeD!9+i0)C"`]A/=0k/m8
)-7_b/5<-hu%3+?XT,OL(,kd;%s4-C7C-;.J(&G&eE[%Z\r5j'5$E3I^NeRH9d7CJmILT;PH
%R`?8rSB8D>b%<J2Lan8TXGi.)AMrK&K^&(NB2$4ALu=M9p$!m<9#EeN&'7Pa"2l-4;#9_J\
Yd#LHC^n6W$1QZQC;q9'[.fE/jX!u[+8QY:a6(,fW9\"UKIG#$+=cUH=qd3acf+@ePkP+\a#
)L+V3CbenRm+SL"16X6[QKjAV;6nQR]A=Ds$rr_B;TD-qQ??l;EgoHpodMm8L1[rt<Ot7%n"S
I?45)MP;7T/D%YY+qh]A\aeCe^XmT^L+fAkZFuuX]AUS>=!q?"Q5B4E#JXGf8=`j:"na5Hn=fT
.?C&j4WR>JVT!`eqZD4)Pe\Jc.oRj4%Jc!*[1J/NMfAa6Gh/dT0GSLKbX?9:Y-U$h250soHM
Y[k+Jkck>!f*`[#t%:F1WFV<fpDK7njoabZIL!7c'`&g=c90JmX)Snb030i#K609d%m606i$
!1kdU?.eVLkmfKX\1U&2tR<rG4t)n/qCe1iK%T)]ACWTDON*f9!G"_blNh!r:@5f\m$s5<R:'
r79l`/<1Hf8U&s`K8G]A)>BKHNQY*(sKf@VKQJd3g^(sL4k.tY/19YH($?j1V!Ai,?2E32A(Y
IS9Ggc:_[3J%U&2s,YN*:CEbg%J619X]Asr;EC?qS%mB@*Nj_7f(c2S%S)C7'X$1_&ZaS'D!8
qX.YC0%fTrCnBL7Q#2CcFk*=j+0-"sh'Mm;`4!:ZS;!#(NIhe="JNDt)*r>OXp$f*'r>0f'b
fE$#M83Rt,SXJ6Ph^O_h2kf]Ac-16Z7TeSUBh]AYDV?&0pS@?jrN1\rlnqK;m+Xdt+BW`N_TA0
UmW=Tnn>^hi]A^E+1m<^(b>K&$nS)]AetKl'feeHd78I@d]A9<eM*Vc(442]ADc4D4Un*CHP5$hp
ecbK!BoG7n4&W/3/_&fli<hV^/A51\S$Go`d9/miFjp_UMMKdPDEQbALYGNOs0TiJQNPAJ`,
'%eLkjdGnCbmR:3I:GONWJ6'7&c60HG,(#^F8Z*$BOa1Xq5]ADG(SbcNgi]AC*M%".\6Q%mL@D
M9o9s,4Fc]AbU!_><[tYoeWX<Z,/^7KP$#4.+3m9,;Z/q]A"?22/Qoc"Y?qbMtua3"hiHInAZe
,"cfYf[L;VBNY5KTd#@F'o^u4HS$hpfMUS=-U\q:X]A>!o2==FhZqpT9K7kO`Y5<Y`l$?YXJ:
eFe*%/`5AHuhJ.,c`C2iGneSM5`Nf8PRdu$Eg1C)8U9X9)V!CA9pVVYKIOSH5"YA90^q4eI]A
DT++a)E$`\Lc&*![3Oa'L*#3Eft>c:(lIb-cu4\b\ir$&/]Aa\Ukt4Zm@We,q;JL%Kl%a#c5l
P"NRD6j0TC-_-6u@b8@mYjt1TkGPQDY,sQeAA#PA*[S%46TgZR'7,/QLA-oJ$B0d,_+oCPj?
c,OK[YPsBOK(9[J\Q;>oJ0?p?LZBq_L5Z]As7,G([_ce9?T/[2`50NSr3<WoE)`LW,gQYp*Ph
FE.B6Q7u4P1Ns"Bo``#D-WfLGP*$52M(<1LV/-5!SfTr)2KK!_g[8iG"+AW)@p,!A('C'luB
&S<DRY,Ofmsf@_;a+H?kab$&/)*/pk./Kmh@QF@%.XCNEtqc%UgB4a?4Xg17[Xghf*"?:6G@
B#3A]A<Z45g>`8cNM8,!'_F^'W/R-4Bo0DH4%(.9/j=3#Y"*FVWSTOoI4s"S%J=can\9:1!M3
7.r1&K%#jmD[]A6bMSuL]AY^1"g8[1cb`m$.j#sre>_;%g.0&2UM%@PpS'u8[H@rLY+D"71YZk
NQ^;NW?g_Nk?B'1N`Bom^#;=E`V5Rl_m[[u%?D>K/"=*##+t,.`1IRh?,JQrod:d;:-N83@X
oUj?JKtP0j,7MY=2odNH.CgaSk.QMBbe;*jgD[uYi(ZfDP[cGAA8#/A.JdDIF4CHre--`62n
4b">0eLO#Ek[<r'OJ[]Ah@\f[C)6I>3!XqN'l\Sol"9PV7:)9l0k:*r7[[ek>_+R7j\R_u>UD
:B4\"G4rFQNd@^kaHG_#92/\XGM8jUCnT+SI$WQLTW"C]A!U>h%65)_9[a1mGJKc>S$FDZ&lJ
N<;Fl$S`2"lD$]Ag&\ISI[$j\(f&)4$tXs7ft!7l]A=$U(:m0TX%XTS)r"F)@6c#p"$@1'mk[o
t'"JhQO6^\!D75G#E?#@oYAcaWWW[ThYbU3s/V34!"5q;>@Gfh',m-uaC;:_eY-FtA+>o1.l
7i$?,<oDQnda%DrpLiD*m1-c#]AC!;Eh5+M0/Y3t6DXn=FSKSP87>,9<S$ZFQ%0&YeNjKZ;`2
tt5YZDB4I,QFl(ef&7AS\G@5G'&4a7(n:=6r@C-fgADWQr/M?nWD$TqG??:tB#I&b/=UKc2R
3*3Sd4R1;oD>setCr%XZQ>,MJ%(_gfed!(.e[35,6_3_&Uh(0O;p_Wd^G#V)`IHU[b?[Egg^
euQetlB`=&:e.&#IMNlc!Ls;t79A6l5gSFUR.!3rW9N;jor`=f6/HE"6R.d9i(7O"jLa1nf4
n7jGZL68-EB,3870\9c6RRbB?`%auHcVS*'8W*in.BW';#&%5om;[Mfd:D9A@Z@B>R/"LC9E
42p&;''8lHd_n$.,6.goZm_alpk^Kmg%o=(>))\UW,3m&73d0(2/hG&8t0Wk.(d^XN!mVXro
^d@4nO7<b*m4)ZM-.3)VSU>f43lq-0\V6H`SP(+('pMLNj+!jLrP`KOGo$FDs'Oa[^2FomtT
HQjMR>LrV_JK4]Af$lXf:5E;&]A6b7b+$bBV0g24U\/F3QeR_/u-JJqD$R>6el(a,Fu&>6421i
LIRFM)I"k^Ht9oC=R6AWb_?n[NYpCr8SQn]A"Ha<S-8/mhC!G#Qg^2VaR#kgkkBkB,t;'aJ\3
]A6<sc!bY.<HV05KPe]AB=L?.$#l.9_**9u4c+XDBB3S!%j>"<Q,o^5=7_-e@5X,B6YcD)@W`/
i\96G"=j*+/E#87RQlrm34M->?j`.G2T65mA,X96OJ6I8IDdijI>ZD.,7XF)$DWkELm3=pt%
]AJ-AGOlj\$?seu3XJ4h;W0pU[4d3Q;*2PKBJhVhC<B:Nh<DAsP<1/.W2jkj'e/A01MHE@#iU
fL>Zr<j3&TQq!"Dr;i-cUoQ65="s77U:'\N5_/'e\`=6Hh3C[_nsPO9(?+4>+oU?5Z2R[rHu
.";^C<A:\`r+7CsnsT4]AZMhPF>?g>bU7M<oWhIrLO\/L95]A'+aE&T9]AS=KV<GZa*Q]ApA@=V\
]AQO>BP8&e3b*mr_f@9Nj23_-K-kbZmDLs_(QD\[2Wo5cd;/o@^%0\Via03eC5C;(AWDm5^j>
jVblU2f#ZIsl`s6&OYYs'jZ?oN3Mg?Z<TiF[5Oq`Be%npc\b5jr/7?o`t/0"/nPM#!&+CDG\
/E]ANdkKb]ASMsg&;5O6&+UQErIN,(j/Y5[(U2C4@:63NC^V9Oq@*9N`&_Ch9XidMj4aW+b"\d
^JB792Dk-Tm8Kdr]AX$tQnY[t"/HeMO,/<R'oXl4'^LcaBCd?boFQP/^V)%@:3:FOUPrb+C"U
mAZ?D;]Al8*@_SQLZ@fV@W"V"(dpto&;JM92FF`JZobW_)g/2A9WkS0?h\1Fo3`A"P]Ao.7,ZD
fcK.P<lQiQG9n)`q3[VVO=`NL[na@YfiiKJ"j"04?,jPQCBG&cVm&tt]A<!_=(eW3B$8!=T]A/
;<f>T)7J1M5OKP2@>R[1?Q'P*[7\)X*qALp#D/.o@^&\B=r^`=St\TfAje!bc__0f+4l,50Y
;s.=XWCln`pOApH),/t'IQ-2`d:QqC[94u4CXY"80N<!\I@05FKI)lF`NiUM/b8PAEmJ`PX^
lJAfomq#@]ACp6/1i)=an13+*[2f8VAZ4107XC+]AUPSI,KOX/<d&YX$mR=R#^0UmV2!kMS:HP
-\W!*`V=&Qh61i.HqaZ*@0P2Q?X),$q8jke$Bmgj&nW!6LE"Tl+Bh`psl+<Q.J^RiJg<4%q&
>"8]A$j\$(GqH!#L?9'f]AfCoX2]AIsTM6H)[hD6949=r'9i8Kfh5]ALdg$uC<cj.9sCE@)!q_,r
HM-gQOdL=S,>S=A3BbE6Jn-K-t5A:52=B3rSc<sUFtWO7@>sID^G.$Iua>Vns^1fV^ECj]Am[
_=5>_sbeVuTI6"_gW>bUnopEa@FQ-B\Kj)S&e^1H/9]ADJifZ(!t_,'Pn6\7qbA6*#BX:?p7G
)NhD@kcLFE(F7Xb,-VM\`[!>VmFST_a@YN,[RhL#nI)Fts**ddbU.brPS\ujc"AM(I%931T9
:u((,B_AA-kEbUe5IokL-J3QbYtnqZbDCP\B/![3@S%pUZROLE^'#eQTd(7([V#?KXS6T0G]A
l)*J"FdH#p0e8i-kaE;0n3ju_G^<ji`TYQ%%EArAd^/f^:nFYM`$\io9?HD.c%-<pN$RE'P!
P%AV\VcMVX<k$!6$uCj@VFm;Fh>i-cn-h@2fP'Icml'C#H""iY'<P[A4*-K$be+IeM+bq,dN
]AW%&n]AG:`CljD9<G<J`V]A0[>H.2>MVIf5(6p4\488B5#N@kRjU$(;<OV5iTK[Nr>i8pQU1rP
%CLj^*[7_*_MtRcoQc&7CSn06,b@4<*H_q[&="8@OMj`=)c$00n/fBY+26reg%?c-Z[2kBkN
Fd-3UQE+Jf?]A`h7O/W#3Gf[s*RP=UHEg9\c(T>XjFeU+>Je)3F+OJlE`8-!?'&:Bo_%F'E%G
3ni-:l9`UYfV-.&p"1]Ag%:rdA3PVL#DNr?m?#%7b\m.(nMSt:\,ZihN!bl&s@i*70XrCL:HV
7d4]AoeMZWU74\SSeFsaVR4I!!jV3j9)(<SgMa^+(!hU12*(R!ZucV)$Z3kW#BSX#mYX-NXE/
`b:[(?QIS[t)e=LclrIO9Iaj3pW?$0[6.WRP8f"fmMeGKAnkB2unk=<pn@E&``K<$lIVnj.:
U?kKb:]AMcMA;AG;^*5h/U*oE:=lr7m-2q=5^L>lB)%\nYAA92]Afc$M*$PT1*j%e^-ai`cQ^m
0Z)Rtb!$Z)Lf6UOWAddE5RFS%1'67jJ#2Uk$(aQr:Bp7A;?e]AL7o+jG[SV4E*ZUr1bp04RqH
&Np1XRJ@n*=<&3VgngE2Uoo##@Cs6=G9+6YZiDWLS6*fBgWM_fCOEngRktX>jN'FEK!CfLa1
e1]A[>s7ZZi.pfO)m-q4C!;$DaT<]A%4"pddj$B(A@[["d[-dsL<c_1A8H?*O41p-XAP+BcAhC
Wl,)=u,A27l:4LHnW(NT,'++=sq!*"oXcM4O__GY)b3g=UBL>IFY?[dKbMj_NLH<&b+k296K
;`hl4oWb9p&\MaQN0MS.W3pSGJQ6B'l5AMpk'pFr=d3_TW=q=]AV/nBF&t.#+M(WG641rmm&3
q>^b]A]AJ+5"&]AcSX2"/-CWGB3]A"`hY.teH)[=&eeu0M4W,cW"YFsg:6#)k*LDT;LVN3mt-9Xh
Wlrmpm'S)G.K^&8q^IBdT4"?QDD'scH/lJcu"@UIA^?[U/d7m>58+[%lKuiC$HCsqZrAil5^
-+AqW);/iiq.5d1A7TEcN:]AdJ,RDEQp73%*QkUBO0TZ-TaTr8;6Y0us5P*qSK"6eO5OBbZOn
re@gXG@Pd/!a4@;.2-3I^fj\a%03/'V'm3gF!=u:qG#:,/Q;D5ZJFITiR10:"t@J6T2*:2[*
U-d+O7RbF`GS:<YKBi%p?,;Ll<IM5q6ebn_WNk1UbrKR%<C7jpk9;8*qamGgCB5_*'McNckt
pKafL\2DZM[#5*70TL6>6C*VOTEPnSatL-Tas;IkEpQ9a8q0bYZ#56nr=I&EkCQU_m[TO>1k
CIZSI[^N^FINg\p):rrf;b`mT"96B0O4ei\k**FVXp.S.9"\-/B"AqL_W)51_LrD_%,oI,`n
&?Pa/ticLi0e%8@1E.err;qF2c7>`Q>2R[O_=\(.L-,h>`uaT$Q_C\!pXsO^&9Zm/,Q'K3F+
jA[rk)3_sEAf)"R?rBBVS^E#ra#J8tV27r]A?9cpNRW<V3EqF8<7,AB.\WO_-iI?cY%]A:;$^Y
m6+>A7\+0C.Pm-uYT9n*H,M"_1:J8O*a:jJ4"S%S"FmV"GEZ..]AOd3HLHZXf1).LT=X'WE<B
SM-M'bWeT!THdn^=ih;>*V:A's:LZAS'6#Cd)iL%UlY/M/c<e!K8r9n9AdJ(c^RWMc5\5BF4
$d>n2Z[@(=sGkegd5q>ihWJWXss7rf0jHr(*QZ/@fkJJ?`F<^,F,\(f09PF`FQ1tcbg1Ab!:
5_8:P3JKO,B:Gdbd'@$e[e59U/mL1<?>cL>c2ocb>;D@#JR2b9,=+J,BPf0YXS<,QIsGdd]A%
?&%cd.+)d<N7:EI+3^mB&e(uR:F5II5-:Pcdj)F39V^&KO"E@bV@3@;Xp%0*(I_I-KL`@P&G
-(,6maEWrE6EGu)I4^(qN"Hbt]A<)F_=T9^K3(^G6L5_`29XH=BV%eChdR"c;/QtT,SJ?7P:g
R[(:^M"90n(OAor[5K2qI8iC*If\s0Y5i3:AG<Sf-Hu5A:YtfHO`H!/g<q^Ohit+Lokphp*]A
TF7c@Bm%g\DjY=J2in:(TRnK!=A$V1MC,0j8?Inf[GXCln)1pDs2$6?hXt+kuPe-RK+$$A]Am
>'.\5FmI(T)\a!@(*n[N=]A&cY!F#p%j\0ln#tBAj+7M?c\#1beb&0uH0)WJZF7mDTT?YQbMF
4!Cmdf.mK++s-J")><NDRcqZA^'!pk)q(;`s$a`cmPQ"QD+F`NQ[c%dl$/[&0g@ImffFh4*F
<.0X3-g'hdhAn[0Mtj*9(!9OGrXMOTQ'L/H>A,UJ#OtISmYlSBM#jA0rh?a'5e^X5O'aU\g`
BB'n=p_-V&5$#g#mhQrV?>rnC)d%ZDR!9B@4[a$PluZjlnF%ZnBeS$9S.dGV)jafMV0`8id;
sfVDR?/P2qd#K-aa(gc#u\5%..-2dr#]AY/p7TZ!;n/9r",Q0Ng7_)kN">s8Kt6n]AbZ?jn*,0
"tnBpBt8$N]APT`Np"p?r<5P]AQh(<`-i\e\ChAug16MDi3#P>V'9#$p=H[Nu>[eKEV9hm_)@]A
#'q`^*ua"#6@6!n93:%W6D.8EQQh!P<oDd4sH.[`s]A:=]AI`LKl3UUJAUB9Y`KBoO\IX%3Ou2
&[Naj#_&1\1F93P"Y:iUdFBfH21c43lL^:,WHJ-D&$s0XNui3">INSq,MA.E!0[>.J$haVV^
GW-BEH;jbU\6TIfTo^A2T["#u?3:"0&g<L0Dg*bCl<V0n&c4Bnm!hJ8(.OK@IT_M5LuPLC9-
R\Xo[5f,2X&=r%3&"DO?d*(UnRJ%pEGA\am=V]A58'\8<CXr1/Rab)CSumm:^]A^:Zpcnu/"M&
2!GMM7br-a%i0Z;LA5'b#$,krH4"e/0287Qu=%fIgGWXa[itU3rXaYo-V%Oc/1/fFeHf(dPq
HDdA^<cr:caC^*1%1qKkLDmq<otF;ZIPJ=Z%/U?I+@Z+7P2O?C4=oJc;("5B!Kr[[M^%rKUg
*,F-[n\6KL\AK>Z;[^&\>2pg[6agJ$VE=NAKTA;R#Q6gnD2R%)\mXs0E8h)BdSRUDqII.n<B
Y@\Qu=m$%<T(>=nN&FQ&Xs8U0O(C')(hA34p2J[eU_ZO*:[fYhuM'(]AdUPp2Q\49#Qq>U_1&
"e)',+mD'NE=ut!L!Q;QIH[<'B%^m5A82bl!A^`tU"o1FCV]A#_=\]A.`P9nK$nrP#jc2pJAn5
VpL+'[>_/A:^D"id^g(lbO=g5rhmWZk_lX6]Aik'_@RL37,s?ShDc,qm%5;M4[#G/9NuJI((6
^23I:5T5Se>SZ%VXLe=BV3"%c[B'pTlVJ)7Z@6r(:U9cE8!$mLCGlj*"Pp@D1!Lh_UP))#TL
9+`^TL+SO20Zi!eCJA4WHKlh3)26bV1THBgk8B-\:@`%]A5E-q)WS<C1)9VukTNu2.%02C7L,
I=S"2!6=\Z\F#\cH#a:c:B6>HWR[i#f%retI#<+DA\di!]A`>)</dM^XE!'#-nchSOrZ@HP.'
omPjG)Na<-niLSd?G\Asr.rlX%LaM]Aa#>f&8m0m=n6^f]Ah.Mc60jfLffN/;?k8HCB!(!P+ta
bBZ4UUF-N9ssT-MH,@rZVUrZoAT)@Qghf-39beGK!irfSrX8)6&4*poK.ki6>_p*++E9*-L&
R4rdEKMOEOt?(7\9eIQ!0aFMP]AqfL_<VgL;:\0.LV^nC8'mSW!9UJH\Z7?I*UpYUF5(h%Qd3
pjC@h5@%<=2OW:fG-$&*gDo>@OJM/;ce_]AHQY;4seKRfZWYkV#"]APhKCM^Tlc4V#*A)CYb9+
3+LXHZi'jlqq;16$MXjucauj7jf!lE$(Z0'^B8#(kI>mji,?UUKL0fN!'P`JW-r5cXSc05V?
bg+CZ.Ep"/)9m8NC]AP4EG>`,=LEKPd`N[eh98=lH"#&<eXp.HPMNtkjnPLc[TWR,/md$*1=]A
O_t-A%Qdt'DDb&54$?+p)>.6M`q#k;inR!Of#'r&?Ztu=cR'0D+E]A=Iog]AS^FOL]A/$_W_^D$
L%:2iGu\]AG!89k5]AIkgX^9q#hi^JL?mVbq#./W4c$J"-GfL$7#]A:&@Jqe_DW+E0KY7un0+kW
f:"&s>REogO?:huG,o>No$pmZ)L?gd-rj(*?9k]A+r8TScp,8A4]ABW&m=@J[d.21uuNe`7b7'
<iCfa&g6ihVIdTYKT"?onq\f\UO2'!XX,]A_b+*L46?Nj8uH0:&GVi4euf.cf4%MJ:'^t#GU-
34T>,(B^QbZ/2MKBIS0\+I6g@f^H>"<TRIsgcn9[,!&?3rH!Z'FVPMpBT?&]AhrsN;&#mc+17
R*H,*Un_+m<LCJR/le$NsMrro&0=H6PqolI(TX^@JV)5#8i7U"]A<>eNRTe,krQp)AAA_o$;[
XH&4PHcR#993hfT,k*c'=qj`e/MJAXSF,u)=m]A<*dM%DQTRjn#ot(4>(`/b+>B_Os7PM'9jt
_orf.n;?'@>1E22YSJDW"1JXH5SR(T0j0ro;kBCH6J9ZL3:&htK%C'?,"V9nE)817,sIIg5u
ej<C-e@u9"%=SkG+>(U8L`N4=Bp'O(>tg0a7m=CrUPr8W$nmD?/eSrRXT`M++b!JcVJa^E#t
94AL74;@\K]A.,So#I.au5=o\rGY,?jbli2Fo<Uk2!Rg),pAYAWHRi4*[D20Y5\Cb2)F5r0sP
m6C3"l]A*UN'B9:"(E&[!`7,o1)kpgNVu40[&\:EE>7KKeAn%5[?CaSK*2G_45'FfmYp=RUJ?
)O$5(Me8*\t.3D&crb`p3(/bl8YUJJVUMq$g50(dh,!cDBHg(buW^eKJp$[Tjofq]A>p@#ib(
"!'4ufr]Ac+\SB&,^,fB4^un$pO,N84)S"TWDY,6>lo`iY1NVc!cHocq`#G:;[:g3J*-H4Ph:
Mq.3`*h"#<67[7Rn[,%_pBm`R'a6)Oik9H8YEI)q8*:jo`gS#Clq`VrpfD%U"GEZjhUC^sUZ
p/6lBk:,qOl?"Tlf.phYtoK<Ru6T5sBlfl^DY(;#(K!CdJBDbOin>(V'd*0HE9<1=n?FfYGO
KT.!JCP'n8/E,cXogCW[VTS!(V^=D6rdWBB26X*S/43JTP;KU%IcpAmDQr8fqgtA%bUDDBQf
oE<[Lql3gGo<J:0h@MSu)gnUhjN:8oV3U#jTGNcD+&\j[t7&2X)b-aD?XH8ll"TmPo%^<=2<
G+$;%g."bRJbiaIp5,U0RaB3!<gp@K-![]A]AJ4A@(93*f*QP5M\<D6oM4sKZ^$L.J\bZQS_K^
%Y-46W3Xe=8r9f`dKB2OQ/3X:"'K.T$l2.^mukCVV3k-sHHCTA`\4!(0st^cc2j^'#g5U$[g
s2l[2lWGUu#o-f"GY%f#TV@1lPL#P6_K-@!:/SPZ"lAgpW<Qk3)3),;K.LP/j[dm41WGG@l7
uc6r[K`C$4nQZ19LZ.%WViBWoJQ#-qlsB`km,V6!D#7%s79.fbKutDef;7U89S3$p9#LUcQV
V-Qd)PU+oBg+9;.SYB1kD4<Kh!O`>Y_SMV-)\Glcu72$jW#.t*rg-;&#`Cr?@I]A?ug%MOs5A
H0r[?\N$dH^<uY^!kptp1aZ:3Ya[+4`[YrLfTC*;*qL]ASafA$ffY1Aj`?Nif"mDtckUp@2Z+
d4jLETW<!iV3Y##43j:WleZ=+THA.LFJ,92dt=Kq$Qoc1cbQIp_L%Wo;V:I<R#J%1-n$p/Dr
uL@1uj2`;f9X%NYiC+j(s:Jj"XHVODg:S."'Ns&-t,q[M-`\OH9+L6Ea<<ZV1:=AV.OWs@Ym
:3KnT6hf_qY%YkhHq`P#X^*!^[7G\@S6>Cp:8r66]Af.XL&B*?,2*dM10+rWpKR6Soc;&!'g:
_W[st)#3^0rfkJA<5+'lY#.JM-Z-:K5/d6'H-GI*8kr^0i._)C<qIdXKog5.BK')j5&"*!Z2
LrM/edVC]AZ0Ca?(klc/`eMtL&M$Fgfd`HUk@Acm7$%FmQpd,(=#Jb;q!E:LbK3/7Z07;#8Cm
lc<`n?F^2qMu),<']A;IO'gm3"4mO'MZoK]Ah8A*W67es16I9IZ>[&iBU]A^9:7qf(p,!L9^Y=a
PmoQ[p>u5?I?9bs'j*uj8:H'5?hl/`240J,SP;HWQK03,R]A5Hf7GmH@+S&gm/di<).#[+jhB
pB55>>;mS<GIZ'oamt"=@Hg=X*&2H\+=QY2"!Wp"HaZ%TE:n"A2&YL=IlZag_I6=_W<u(iA0
5"`A'0:3Dm6L2/V@5O!DNt56KG%gW8iC_Ub6IXRbe#3N``ACD:QsBh\o.aCW"J)Xjcc4g-+b
pF$?3oaoue1^&S!)tl[hA0b=+IPWM:)>f1DFd)V*TWXKA^iEL1(!Ec/nN<2%je,AO@ANS65H
OXL*2S\8:%3YUf:nX]AFn&U#">_`XJP.q;8cs;B65ST<#Q[h)P?q1$31'*O.]AWUF!*jV<(:-_
TnN':>_Z0_GjDqE4e92m(0CS+sQiu8mYQ,j,;ftE:&0UugFnakIBIc/YY]AFt[l[tL\A`NhRj
gVGse_=g>3e[PLDRQ#hEV6KMLA((lgZOFnYpGTm<ht?k.*Hfq'^`$[7sE5l!uKa$.t%q$V3V
c"AT#!>%%#(EK%g20\u)+b!c<^tR8_]Aba4Q!UkijufJsC?D%&aEVm*N<.U]AYr/$LXW>a((BK
H6>4]A(cWI'Ekio]AX'M!l]AR>,XY>b3f(,FCq^K5DrXYW;>:UmXVB]AjXLZ%SBg!9ZX<0'_D(F>
5d-_<j;Qa6OKgh`?9H:T.efNqU\XbgHB<!c+<`:?N/ukV$O:)5kW-BGt-ooKebH0h[]At!7ZO
iqB+*'0>ICZ4Q2Jn<Mh0NIP=f!J>*Y*,.I@g40H^E%7p.T9d>$l^_'IJK?1QM5/sjiBuWLcA
Fj?,WKDGU!b"3^*bkOV#uEM/dnntllsV'LV#G!Z>pIcCh[NRtW(4b0?;R>_888[h4)p]A0pZV
?s]A9L=d&J2aV$N'_)m<rU1L%6Ot./psg#<K&?Ce@H'.pA9O/BVN9#?#I>P(c!]A-Z%i6e)A[&
U-ndK)9Er#_*c<<2:84o,'_RGl!',W`5DYGV5['\)sCQc"`Xma-$U984uF9]AZE92XJ$q]Ao9]A
o&549,7g'+_D]ALu&JU6"%tu0#+Z*H#/WGb(SiF/ST-A$aek\CTt35IsgIgc8r8<nb34f?p:#
G!s_:fK*FuA9j>L6%/SGACjsQJTJ!^-Z,5XcoBaPJ\DrJgN^_U4JM+1Q4gO>8)1-oS:>&OU7
F"p=$VZBrY[p&_Bl)V9ng3NrP7b_5kXGHQ!I':*io]A,7+A`KO[0c)k6NGMUA2.//8K3**.m+
,>-sOF@UT]ARbCsY1.MK7_nATs_q*-W^LHr1QfI+>m5S">N<*I`$ZaHEI,q9ZI4P_6G]Aeg4<R
*I`HPlaJte47+k*rTBm:]AmK"XQ\?YKb/Z/<Y06#KlZeG\*m_rcWZ?@)ET>>@gs5<AEo2@>>+
JaDGrOBO@BXWgiM6,hrC>V[.l*DfL<9%M^^;<c03EefM)aAr!80gt0iK;qU`]A<E#Xcn?U.OM
[_]A-"<%pjq\i<Kru^`n%K/%u#.[r*tGSnRrra=Y/3SUTNcF/6FEEh:]Af"fOU-?*b<-)JbBZ[
>4]Ap_tV=.=Xc#nUMsXn>/e5pD&LHe7WkgAU*Y.=g!7dp3?!5i1;G;b'7/7S=T[)*>(dZ$cZ`
?]AW7hZ$hBCld#%u@"T5oj8VoPJIQ74!b$"^,./L#=*C-;H1,3t8Q[/?]A;E]AANl[.EHQ%b50-
%FO*<it6Xo4'S$'#d4/C;jKQ`M6gTe0hG+6e(T;k6>XD]Am#V):5;as-M=Ae_YQhCFlc.nE#D
8>bEaI-!2tBrp>S_dZ[*ts7UMQIrb>Oqj#>IL!_P!;AYP?Xl"ZPA7Mh^uN,eD!I3b]A8=dpXI
O\`>SL-!$'gaY!pL!(Km]AWINi_8ODDOD;LLgG#!"oC1%L#0^IX*USI-@2TRpcj]A8M915B$D$
<]AWR>cU]AiR"7jUR-&<1fKrO=4)2=mhGe.l\B**ZeDV^CSgGd2Se&DtNaFVHJSh6H\h\YI!F@
^X&P2n"\L_8;Lg[a)96SZ_S93/nLT26Bh81(-aYgk!+u_deUNQLgn:Ag,3f/n`o,>\mSCUh>
e7uis)9+9I(d9rK<!<dhO`)R.><lLCb67ACe&7H#Z_mIm17;ErLOT1>\`=H$94?=u@=?IS%W
LlT5>?SEr>";u*4S0P&<Vd#rh&*iS,m)Cf]AQn&NO\>i-?.ZXkAEN^D4#CH-"c<c59$E]Alh7+
?VGj@U`#%C^1Sc;,q>_QQ,l<.E5]A^;SG?0T')DX+bRJaEU)N]Aj*$gldXhb<VZ#A%/S5@c_#f
Dt^hPkgp7hOo)N$(!jf\GN,L#Mn`!%hN:uMS_?P't$fPS%dracTP@W6W<pL"<p+q0f!JQCro
r@":QGUO4X^5BkqL95>$ffRfJ_`NS3_tRX1u/n:Z`;L9q2u4t?0&QGHY>j^@!GEGXe-:jqd7
5BiOG(h4H:kE7DpP85X99.EP-=VCB^V4pk$6'8]A6<%;H/PtF`B<"c$m(>L@dDEb2VQr_XEP2
2N$c1gu4]As%=gF.Vtcn+XNYr10h`EQdQs4S-eKk3!hu1Y2HU0<+jAD^>87beSQI&%n#k[S^c
&Oq:(]A'!Ts.c:o4chEd1mRuB%6kr^JU\$8hR2C[\Tg&9PlK/>Y(N%i@;D<h?Zg8M0)&&&+*4
6Q9sj828Gd.6F/)@-D"fm1mMA2>fXDK;N4,Y'7#Otp$=CBld[W33s'8/ZK5aJ6/e@JKfl&dX
rK5kcm2`Bj@--,u!?r6Gj1o1mN>P*9_9:qH?km%?KlZNq=DLt_\/kZhp!DYsXFbX)#!hfs#)
n5h_I'p1[r!'5Qb$`7=t=l36^-XnQl\-H_E:A2-n;;e#;`2Zq&0M$`1=Ps8C,(8m@-"XQ@7A
':u>jO6UY9P$c]A2M-S:XHe9l!npJ7#o6<_,sVG:7b3[nWjQP&b+BdnktO"==@W5QX!L\ASAL
`/p!5d5qQe@D,QE?AN%L:dPTZE2#=n=D?/8Y?W,@&j0*m`KKd5E^M=3H6S+G:*>#;&M5.k]AL
$'/tL,ClBQ0*AHPCmO<-FcO7p`#jMEBKo:Eu0uNS&4I<!$<c&&`H.#+m;_E&kS!ua!:s'9dt
/HI#"lAaoFO0..C6`CgXjB*;+J)(1To0+sH_Q'PIBcG;>"uVRuVU`n7jR8N6,>eW#8h0L#K6
*mS*C?Cg.oYIPTVhjp)"^e)rhH.;b(aB"n6@,9ZY%GcXh#EaKIqB#Y_CQm#in%[TKQ0r`W"B
UVMT1+q+q\@@W<#u-hHA%8!&ful_ROGcO]Ad(&n`jmbAC.Iis(<M[CBLripU.5Fl*s%8ulg;7
s@A,ON3RXF`+;Lu4=(p;2l/qAJQO*b.?b\H['.\>b+V78e-q<u)^U"_aJ!aOKY#G2*P_RO\]A
ErX3\@(2Hrr%!P<XkUB1bQ@e#MW$9BMP@$M_EtMIia2P1M+kq-76B(;upfIi%Q&gj?q_IRpU
6#de$ng@^?.hk`&8D_=3fWS0GchJ*%a^^UJ.s7R$uoL@<mR&^Y"7F1$1%fqe73M16)l#!7EG
l4h9l[tN*Ff9J<_o>FjE;%aZ@.7*bLZ,$,ial0:T<P(XhOHS;Fh2&*%U,O]Ad8AeQ`6;G(d;F
5R&m$>RN8Jc^d>sX*$XJ[<3%:+"ol[$mB3!&-#Of8F3F7`R\Qk>]A"!Ei.WF/72tPSK<BcLZQ
Fg(Y4t`:(WnQ&i8!1&!@*4?(0a@i9_iqT'Gnk"8uAjqJH;?5\lVd`me(T/_+9pc$-R_f)HP3
h\h1U0QK@7N0H?1E)[7F<k.L256\m]A's.u=`-lrI-4c$3j?uT,[iKeJp4lYQ0OOWVLD%?<=e
.X^)!\>n,7aL4oILbIt<]Ahe]A*,RXgX,0hXXA4;n%!NEqq8m03aMQqV5<uqb6%cXm\qDPmX#2
lHCLtFXk-G*_jT^B)7"lpof)-@&"Z\&A63^R\50B9Z#I/IHoVq>'+rj^a*T!\16:\d0\!2&+
Fr-K)\dU:$)CaYH:5:l>#3HT&r\9Vl2MqK#"5F/tkjS,r'.BgNY,Z%7\m<Z<,(jBtN,jkKac
YHS%cmeOCLgP#V$-8"C`+o..`/GZ')B^?T?pLI/u*o,s">)lCtSF=nm8q[9h<nY@GCQ/js6=
Cb2g7EWik)<pJ>:'3@V@##o=D<Dp1BLcT.*(<Uj;\&!OR$37Ca[&c"1HpIS>0g=tpI;@1j#^
gF-8VMGC;@\Fc$=OXFPjqiC]A$d<i]A6Am9b?<)MEDL[K%9qM&ZgV2?5]A_Oqn@4K*$`R>/S>[?
DkC_m-=iEVcfSBQ/WPk>TS$heF^%J8>AU>:Z,?3oDYX"Y7:Cg?25#p)\:WBbQ.4Jq*sS;Xi8
bi$o]Al3ji]AAs&oi]A%O)\7PGOel:WmrGM5#ij0Mf8rFb"p0]A.>Kf/%;RXg1HigiTK,Z8`Y+/\
H6rD]A0GG1%#n;f3:&p/cMKu+i9&OiQZeCeg)*f<15IN`H)RVHZ;?<+3U+9e!.(W(_VnMSB5i
uCSgE,k:;bmn<efjC3nS'/abpK<:"6f4fur*Wm<)VS%O'uu>J'9%D?2L#X'51,20U>"H0%Vj
q*[#`oB=pLKHW:S0s,H.YtF>MAZD!:;2<lFMG;VD*Dm8OZF8(4U.#DbbYn5j4/-94B"K5WkU
q@W1Lg![hWaV,Oh]A;ros]A3Me&=9DoD\>$OF/nPC*3]A95<=MdoA?4<"/N%.,sAj,CdKGZ\RIT
lo%VouU^>\.)TE#1.$4t8;B,sTHB[5LmH%Vk=up:ac"D82lQHhcS=+.W^6P]A$G.W-QK7!>3(
t$hfT;N)g!Ha]A;sb90IC*ZUD,o<>A2o[8f!td-Vh.90Crg2iK0C,`K.`!fd;IKki"`77Q%\\
WZh(/;+-lIaQkJ%^L1IL5oigBV9CWqBRU@Sm2O7`GU&uG'=E3b3@U-p!!Xg:!n;J+ATc#I-i
u$)\PkH2Pl#3&;-96"4LhOKa(OH?gF8>Tq`3a'#Um?[_9q^;;0((9s*4`?:CCTYh%V--m0Lp
1N3WT5cR$LOn!?X)FL?09>Po;i&m_+.$@cCe=q"$9))_ee2c>NfI&PMUWMinrDHdL(&2#j:G
\G3&m,qpi@Yg\9g$B^*!.EU(8MRpp.i,I1`'jk3Sr,#W.Q^L-]AJi(6*Kd1p?8-3GLSs#4;jB
WB=9[l":+T4j?oPXI312_mPFLcV1=T*O/kmo[)(mAB?mc0_e+;q2rjMbVW8+XI=!:1N_n5Aq
3A4FBuB@TR<`u+'J++r]AGIQ#-!/q0RcoeQOU[O42b&C4pb-S"5!=X6Vig*`cPgiHWce@??G-
SX==ST-Xh*tp6bJ4iau)^&V7e_q7&%$\]Aa'-rEpncN,88>H=Om(g);ZO.o]Ad;9[#m1m6l.Jl
a6IgtLL$kLF)\*eq?k&[>o8nQ+g6jb=KL,.CMCV*j;1#TiSm-cZe<9Hi-3b?i$dFE1T(.ii7
fUh-r,!#lIS:Vi1C)_@87#Ze6/ZCDn9">R&78k_k\pJ@]Ar0bqd5-+C;l=s<G/^VH168N<M8)
4l.@4P[`Nq-.`":f%VL3U!_SOCNe#:93VTa#7S>F5$KhVU+5mEg\4o@WPN$NhMXrmW7\IM+K
..C_bT7!AJ[6`75Wuh]A6`8h07)G+.]A(QGN_orJG5U@[<f_;W$fW;Gar%*"uBK:H65/,L.@tO
FZn!:3g$YJ$+l*_ZEU!G_33g+]A&]A^cF&THdcKpO`Yon3%FrqBe6dH-3p3o=P@u$$m8a3ZsXA
kITM8mYrA@.8uBn_K%`^$+f4QOSaX.R7pC!Da!$%OR"<OP[o&#=I]AgtX5%LVB<nD.*<&t5:Z
!?NpquUc8_Oqp>IXt/k7WKEmk`'<_j1OoU!N?\IHOcFN%G9C.TdG,Ns%6P)<GRR@)5iFL9@Q
-H<u6,W4KX)kh==*NonXm8#a'bT^.uKn"Ja%5LUt-3tgdnen\o9h89>dn4?nLHEq.qC]AqD1b
^'/;1rro*RnQf\6*R1R&oC7p9]A7d"/rur=jZg\1OHpdM#^dB`Da\mQAQ)F`0ks(tV63\(HC9
,M6ij1@Th/U"OfI4B%Q$f'RgVoH*Z\cppi\NT%u'h'gi^Q&d^QI=?X<ZXB`X<%Z.;sG6QOC9
"klU1)I@QHAO>LcD'"XY61l@qgkkS2#6#&4p;XqLG0-jZC/8Y^g[^l>9Xj?Vfaj4\*TY]A=%B
A/Fi[g8^A&KcIe1r,L!&(R2-4m9[APW/:0U)2>Q)+S$j/STA%oK6&7,OJP&eg<1W2?>eG5Pr
fAN9J;2eo('M@D2;pS!Ja-pf?(Hk*J4(g1<@I&?F\B4h_ZLha_0VN<"r:fJG\DudFREpLeW]A
7]ApXBc20hKP(?+V4<)=FFVqC=8ORZ0^Ro>\tf/_]AO,$)ea6[i,Xf+I"Dp_/jU!W@p>_tPZC$
i&8KYW.$iJ[BLAXgOOeX(55)a(Bo4]A$D4!rL9cDfTmGIEZugt[C84RLr)@K[sn;'m8+T4g&Z
am/n<JS;0"VbsSkDon2a5XY+>Bo0;u)&hV:GR3iMd*_7'-\?L4J]AY]A$>R/X`=1Cos*Ml9ZLl
SKl?/]AaU]APF)>kC=X;F$BBQs)Z0sZ.JG$?MX.XrIWl'&D,'Skr]AAbLUZGA_5i^%e`b2CqHBV
N5\`E>DF7;Pr^,V5D,lUDjta=!JMSj#67FgmZMg`F&l>Pe3320[FlmLV&QDAd\Ig+_@:Gc0k
B44E/?V<q:b2Z/g%0M/oQtN.De?jZC2%nYH&6eN^PmICL)Yd713gm,/VGCPoOi*\RID'FX'h
eL3m0pI68M@"&L;Z&Dh-%kAfUdoMTA$u/Y1JO1;S"[a7de_($qV)D7*+Lj<=/@od2C!NJ>!C
:]AF\;GCdKl#LKI8`GQr00_>ntN:uoN\nf+Kaf\<OVN'm+*^ieN&QCjC"%T[@nP6ufD_t<HYj
U0n77:l,)_q_/H'&<bnDEa_jQ1dMnO)]AqgWmU]As0s"=)HhL3MGjUnZ]ASd@aYlWoh0i>>=?K/
FU1Q;#,dApk2d$G9!a)b(Y=[73a?L2ZU)Z*`:b^ATEi`@+@XH\5P)@hCa7mpT0h/(eTHdjTa
aJKD:E0V9[f<32kOS@E`]AFLB.2k\V"9V0bB$.X55CkT>0,Md=_]ARfeC;LbZK!XcBF6n\`.+_
Cb6>V@4+*T%K%g6=RJYnn]Aeij(oN<)bKPg5F47YE5LRgqCD`kO$!"KPuO3"]AO?5BiB1U]A<7i
1?.;i2#Sr66b%I)/C#IloEf>7D02*p9%N<G:@@WG0?a3_H$S_HrWM=j?-H`;p1*hWXtB4j`c
C(IA'7<S/f$Vb_oVU)!E]AEBjA46RFIkQRKGVK3lLUUQ`&llOd#=XY19f`*BG:@!I"dF>:LC2
90`KW+h5#?3Z)i4/Vj)b[^aBM`*X@1S0+bZMbXHjMQQX/kcs`Du#g%3sV$WfKN)n;6'6g8\[
&"DBC>ZqNl;5#+q2CZ9>A`)6P"DZGfJb`Z.(]Au@G<O2cIJ;'KpQora7p7_60.0q=K*T5cUMR
S\[8h7o-KrN;AIKMg+:X?5(>,$1/*bpkjWk1=+YGo05&>-.?K*16[sMW!ONX"2\GdJ\09lSY
3O1nt(UmnFiR;$\HdfQp:g3-pE8)i#buJ<QACZ+M/gL?BWF.RSnlOZ,7HTGEclBAFhr3d%IV
]AN&5Fek;_\I'n!.*&$eB2/nZf"Z(M$Z2.Yt;/m_1T^^;<eJ(Ynt!D/n\hiI]A/7;VtQKJJ%=[
qZgY@I/FQ[":[Jc:TNQ"t(kIA`*&PHlP7PF8\+iD+[!M1q`,RL9pn`4D6l_@(c`gehLKni=Q
Upq6NLLN9!@l$-5']AD$gbJef3J%$dF&ri;2K<?nU*OS)6VRng:oA^"h<o]A!gTh6M)Wq;*dm2
9sG'+tfFir[23o3$t+gk\Y(8=TAiY38pC6iWbq&9)eRZPpfHTmrfKe<uUlXh<@]AW80soE4or
Y<;4Bs-sbiN:`LHC7]A5AZLLjh[fIi>ib?N:c9@)DV^W1,^ll$5Vi!9LT0d;I^*5H+r3'k`Uh
p\Xrs/A['Hu&L\Q<mF2hK(Iadr%^gC$Ctp%afu356ads"4=<BI)1r"24(&:OX/bPMYF[WMQ'
9.=(\,$:,o:l^(K$LLZ'\?UK>@&o<<D2hKA(3n#snRhMI8#B8.ac3(Ea!bPN3jerjM5)c!Mq
07Nnf?<sam/-EB#,5df`I%;,>QYU@L#7%KV*2!ajBDpl3qG@._)Wq]A[IuX4U!Ob>Jl&HE\bO
#onh10-P?#i*=j4TbY[/;dp8LbrVC?)ZfYd^nf<G2lboAD&Y4h5+;-ep#1#JT[`fB5(#07<-
TZi,SqV_81=JEN6FcK?a[uhAoRdkAWU-3g-0ELH'`!S//b'spCM).tVckOnA.7=m,J'ae7U:
Q^T,95>H4;.CX7_nY%nt@XR"oZ'YB>8g,;p<XlYL-['4YB(KGR$#)Qd,'>P$I&t7/UR1%"L(
4)1:C="dSK#7rKb154,0@brIgPP%_?-aE)FFR"=(fK-6]AU,m)fF@')s+FR+Edg[`AF"VXT,E
TbP`U^"oNki+9ka7'fdC,a]Ar%ANp3apl&fkB7+`_qA'_)A6SR"HjN;A!7<$iALmq'f-c`5Vf
hSNm2R!.cBFRkmYf18QXA5cbc:9D*O5/\,NO9^W!tSl,6e=]A+tC\,H)V;7K^lr90*$T^f%+L
^O#['TufKML&`c`#\:Z_V_'?\B^['?^5i7J2,;>']A4d59fn/@70HC/Cc>&=75VLi4#.C;c-M
SMC0S<CcGIfn3&%;'Mn-QCBA0;:CU8[e/-W4fK"$:_k3B`?jcN6Q-Rl_27H819u+%)uWeUZm
e6b3^TJkP8.Uctks.!bUZPM"S"!?@nalg'm^mfaB>h?)M@PKUYUC4XS.BE./m"^M%n'd<^?O
!n7$O\b%CLO@=\XAb?<E_l"=Y<7)Goh=Ir6;447]AW5D[l:=E!gF*m-gOd=)NAOiXfW@17[;%
Xl#N<&G'0=">_>EI#PA-A`lYFl10ssgZPES=\c/aIO4:u;4`]ACm\95e)-S15H<+n\GdbQqK<
(qU&;&K7t!8fi]A8[5(cY?cc6Gk.Q[6_^\ke-ht_.k@rE@Y&86KQZ#"H@o\c^UH#mtO;</\>Y
[)i#&\]AA*Aa]ABZ,;3o>\M*;-tIPgD!@I/8l<qe.+tjO*%IkbbDDX`^cFjM["hQCL95#,IL^#
iKDYiI*MXB*E?(TEN>PT:%]Al\.bn@/Q_OJEY"Tc%BhJ=M<NEZg-ZU)U%AHG@jYrUbE84nZ\3
!(EF?o.KNX2)FocGW&FHu050:rp>T+qo9N2H(Y6,VOqr97@!L?(e=!OWcO?)9WMZV1slb%mW
I*\HUBDe)V5K<dB8$F9TfY#?)I:!`7WeCr"*Pn!G,\blfqrFf;^^Ost`)fE6OV+igu"BEOM5
R>,krgKI]A)g#RBB!cN[`/RBP'hJpgp[ni7dQR2^@N0(N.;A_;0F+6FIC_#\3MQ'IuWc/VJIj
,LF+Jcq46S_R#UGS<EJ/ac"<fX@JJ"E$XM?iME3uds4:I"If3G3OOLc^dZAe5?Vs2-0`:cE,
S"#`a>D.g)Zb=kIlahtLH\"*LW#C]A8=nP;!#C>\jup]Abp^i#DmsQEd=S1sU4V;"UkX4Gb7H7
pN;0XAm\1Sc#MhTBQ28SW]AIKQ:HC4kH)HC-m:,p?mB*_6GL'&31:.M!61pS@q?ESa*L#f:Z9
'1f!FIQ:nHgL>A[D!U;P?ZEc>VS)>]A!<\Q`rt*X#EFV#@d!YcZ`!SF2\fBPJrDq!Q'Y`\_-;
"2eY%0T?UB;H8"#8+#&*:(ceLR7aN#`&^E:RZf2+56sGUe1n7Q7b#mapnAe;(V/h7MQ(<a3H
i5rr"[jZX.L1:lMUiR$d8r6;*+m/E]ARoKdC*m!I9?u.!<P?ZMojfM63K1tr(aC5Rns3QfiYn
NGT3Zi]A^-8D=NNs6^mukR$e8\b10%8cq1*d]AY'+H*gWPFHFJG;6pt'0uIam91YWN'-rZK>N:
`m(mRE2g$+;$2'NN7dN8FihK@sI&VW_]A4oFQqS\0LiXQA>8j$0BKGH&?&??PIQ0*7,&=5Cf2
BhjAgU^s1,lT,piA)p^293;nU#PB"SRd2Sr6\Xr>a+5W?RMj=C@UQ3gKV6c"`$1olbf6!tr,
pEWfRQ0?[#ess'S(+i]AV+??BlPV7_V0;,apfia*X@pRBGiMRSqs#4tBc/(N$M`Km-eCLH:li
8I]A6[?G@c*:'[N_]A>K9gCfoi-]A$QInrg!oUadB#%+b9W#IA*';,[cd;7jKE7O!dR-TQG`N`C
Bo*db11IeCOW`Ze_pG0B>$%,/q9%60,7O((*+*/*`XM!#VS*2Kr__8e/oR^W3:;7H1KKq^ZJ
DrMIOo%If-PG/"cuG#$*R[CpDt90`elfMuZ]A<FcmFC+?*?aJ1eBFJD675+5<-s=C50Jsj/c>
"b[H,p9_<]A4\)+t6c*cTI^TW&Nh!dfA3bbsku]A`5rYf_2h$AhT=/_Uok]AC,;%)10]A(\+]AR(`
mNhX6'71MSBVMoP$rsktJ0Z=6k=<<S]A3U+)^EqTMGF8e[)CH*+$At:5_sm8:6@tsnkLjI-Q+
2F-IfeKV]AEcA[*SUlQU5#^@nrZLmZ))K9?1JPG,(H$79,HC,(5NWfikO@GH^Nje2;F?GER%,
#2^1B*E=#I7H(HGjUu/I69]A)*::9dW&1(bj&q_]A7"/d@H06=38o;KW5^.,49u3LDH6p(cftj
DuS,G)pW?U;7Hm^+AI<<k\%FHm#-EIC>aul`q%g7--&`$`+,ifE*,mB1b9!M\%3G*s'XjoUC
6?9a?IcYZs?;)K;C2@(s$r["?Y:"CXGSA#$nVOR5'<1OsNHVe61.T,2E@efrX;5'V;)/=lKY
O"]APm>j4qGqt%*\A%3^C@_G8p1"%i92T2o9:BB/2.R':U`OHHobpLG5F9o4"q\HHX6g.:BI$
Rd(2o1_ZEK^o)-4Eup./1n@LA.(CfHLh.Q.NjIP"6P_RH2rf?V+`AOX?+kjQmE2?"ct:5*%V
V6s,9-'\AE32eC1,+Zm]AA?hot_`<=<C0T(oI0o`Gp\)r3Mk3$Zl1gSiKlD(fcrHjK'rqG`k7
mCmio)HZ1_,\PF$"+XVl:;CHDn7KkqoXJu@tKNW#Oe&E5/d?*X0fY-[gh_7kX!G:-oo(]Ad).
Nb4LdCsE9#qkrnHe))Na4'+31sg-/<0n6(f4Ni]Anc/.4ZM*T_hW6`g6\?\1m=5!4a-B2Q$JV
,BeY'Y7`KQG,'7<h809t,96P,2bF"hrgFH5Ht;"#PNnY<rp]A@i)$uM$VY8njaltAG)`W+c1`
kjN0ZpWT2C3]A=1b_9]ASe93P\%PadS#I`MeB;=XPUOmFc1C$d;[@I85H&1O8B&k97:rRVTmTE
]Am\Hd!/Md@C2s1,ef,.kV#b$`D9?O.4X@KnBBZg)6"Y.SYHH0$!MI3$<!ID6sP6))*KEkg>n
sNfQ<mM"hiLBo,,%S"ns($>1.>WN;X.)^:StoZ!2T5oDYA&=LTUkPOeIKU;T,C60[HnL$J*G
K8hC*Krh6V%1^oX-jcPe+81CtV?P;8pqgte8),u<h$"#smU2;mN(ZudE\<8ICjDe6\-2UmA)
;#oQBjRM_f`qOns>.2rjJ25G=''08W#u$mM'8S3,1;aUgP&+5%.aXm0#e!Q1"kTd:pu3R_q0
&RA%7m9'T:E('%V<U^>Bf?IR!GcKJbX"MkZI_ph%O;;;,j?L-<htQ2cG-F*u(Ul0?%f;)GMu
q80Xu,af[u->[;\6O!_]A4Z=>Hmqi6l)>X`EU-a?7E1<-ul*T:\,e3;pU0P;*^@IWF#"Aq2K=
2p1$qiCu9JS-Z0!O7BEgS_>ukP+6S=Nfml`^n%'Bdu[E(esXWU*0T5T7uo?==2ZRRJ$[l55*
8S.I/&9h/R3dl/b51D#^CQp3.pKf$C0&'KbDiD]A$HN5AAn?`nH3?AQ@OF+PnFd+;?-S@pb)D
AUuN$0*BSOE%i$iT;S$QJe=*^/rDpmV\:f5%=A!bi;FMpUZ@lkPDar=rJ<'&dOr$JS\N$pHp
G+Xk@T;MaLT2Z7@/<Vaoq;!m)=FjgEX-.U<%nl>#EQt4l-qW(po;VMtNk18d/P4]A,tCF3(\K
08U0,f<8#R8cV'6ph28p@!\<g,o<%2FH2Uk!.[<@B\eO=p.-sapIa[<CDuf:"V#*-p?!(l9'
H:4GnI8mY?)[m^`kSkQD-23Urb@btdjOsdrB:8!9nnihj*]A^!>,@a-J<.8?O,qI]AcT(Lh"F<
";_ib7*i*OFoE?N<JS<Gq%E&QQp3?#\p]AlEfj^Tf#1fEGI5297,Agm\_&`KANCFa*ta%.76[
i6='/l3,R>VhqgXIhb1b=@_(/_\+4+Zs"m(_a@b"L9"b)3&\P)#kNX!^)_`Y+cI('fbS&r(m
iuThP.$e*;3K0@0cUiSiDeBL=M]A]A*R%ND]AQf"CnU>YkJe*\@7.O^6q<>266odQi$(91J]AG%[
G=O&$sM&+(5,%oWa,NU6;F[<8Z6kHahc8.Bd^UQ1*l=MU<9W3kf/er/=>u&a19n!%71[cqBQ
b[@_o:afZYUs).c3LElF[c^Lbo!"#RL8:;!mis?F(*sI'MF"KmH1=pVYG\Jbl=5r#7lctlc<
2nSJ:ltMdpZ)q_:o7LmGrLJ]AXr$VpKYJAam$u,u0=nSD^]A!Mem#RCnC9YENVXd#d5;^(_%fI
+"'G$QS_u_$iY:%Ua/>1/&mg?GSs<u5"kI4)(=YO@1gl7\_tg.c/U%\^-@$j5'35j6eJ5b++
f&K)55=0W\YG&;_,u`WR00N3<'dh^7/YB72&C3jF.E-TU&,('V8nbG8)Y3GGf&(:SnFM`3pr
3"B55rDSCs@Zb2\lDRY+,KZ??c]Amp#\.*B%8\<A[S!:gRN!rVD`"G:AN!72<t<782l9$oapI
MFae!?VZ_C=nY8+bIf2TRc\l[\>`Pr7.`*D:PQ='Aq"NT)BD0\NU.uYa'YoN)3bEB*=tEX=+
AS5niAUa_7s`'^D$J[amL0St9ELq,MADGrGdSggq:aWa"sEP/XFH0A@^i]A_4mm?D8;Gd;1?8
I.[28/d#[r7F`6I^@#E12gs,1=?h3m5nARN,DjYfa@K>6*[2HZPS4^J]A0u<4n#h04SG4IjdW
8+=[D64DCl;A;]Aed`W)#<^Neb["<U!pAEc4qogg(?"5\,hI.d`q.T2JRe>W*:8e1*sd[g%;;
4L?AIj,BQGV0(JX+KOn;qkR/s.\sNYas.1#<6V.%F.VE/08;68/[6tmd*p4=D:&5#OJ7L2+&
j;Ghg3W4`F?F8Li%GAED2T=joLXg;Bl<DPRVFM8ilt;h8.[VR["#!C.\2JZ)s>/SO1ipu1b*
Z.1h<'K6Prgis(3l!UE,r%$?d%B_k)U/*D6nY&=/VnqUrK:eeebWnu&42'_seO!Wn>((o.sZ
WH1b`/t(d-^8mMUC8^8O%KB-D".lA&`?,Q1o+I=IJ<j(1eOTbC=30nf)<31dpt)0QPc=eI("
>404<R5ZbP0#9ga+o<_U>uJ1]A2uD?3Kk[DHkUJPgL;;\u9/Nl-&*C6@De>gn!+3H%O%$R>L!
lo]A@eN#h:!9/lN9u\+a=Gco6,C\-p-%,eZZ=SdLA23Ji\V&^/tnrie'q$2@Eu+'N62=/5X?7
g1XeW"!Xs3TuHTc$@[[%9tHpi.Yf=$dgh5i&t%tH!G_;#b`eXK1-%Z*T@,LZ1J+1$5`@cQ;!
TGq\%nJkD<K)7(FXOdbHt*H+nnnmF$aACZE0qI]Ahug&3gpE5W[eup#9c:NR#mla]A5.cTFAn/
i'9A)[<PJ4+bArP\-d%N5keE[Xcu.Fpk'tZ!+1c\XfnM_.?C6E/2mb);2SC3MA%timR#&nb3
3Y7SH$LB+rMA/0%oC4#$KjcRt0uicuO8YV@B-aX7:$IRPJhW[kgI\`('Bnh2RNINN-1s[Sg5
$\bIMHC;Z+RgO_k,n!H5U[ba4Y)D8Lqcoo(!kT%b_rf*%=&a>nZh?5SMBm<S6Wi>X<5Q<G_>
NtXE!\Io>rd\4:]Aj%;UAr5@U"N$=!D9bCho4o+6-`EYA#iC5196qq(6r'f:Vr5#366kTgXb?
^9@Y\BI$CH9q?K@!)S-<K2%[S%m?/lCU#0@s4j5WerbH%'H@.k5nK!t9G>a-R%'Da>,B)\Bg
)?3[D8;ckbHmAXLN&G_sgPl7nM([3)U;7e4Je%>h;u%pm&Dq+jr^H6BK\9-o]ApA_W0i_Q0'c
c=Iq@;&GTW/CDNP,nOLL<DqCAfu".U1k+/Y[e:@t5p`;nggg4q0V`FBiE\e@Df_\5Y**0)89
10O$85)cVtPLnlST<51aM$**dh$oS3Th?b&+hUDAu`24a8Yg4E)((Q2L#4HGL9.l!`fCBr+b
ZS<hE"FRn1of!^&h39-[!HQAA^ML("pWp4h'\;*i<bHrfE:%=1rHGqJml>;Mt\"`T+B9e[BU
t'Io`Z;[K7Jg7qL30bhTl69,X3Q!prJcr_a,N.#8f:E@JS:`p,)<9&s!6r5TE*N,^lp'927D
&Z:ZZBB6>*(<Equ>;$4nYl2Qtj;42GG(n]AI?ajki\^^TYmu9Gl4g4gVCfQrX2<tsW8?*3t3C
krAftTf/AK83"CU.p7#<P6Bl29k_NP9a"p6kO)!t7I2=;?iH(N]AUr9ELoXS@*S9:lREJLI]A#
%T"nB%fS*BTp<Kac#CDq4R'a`l0UOHLLBc.^;tt_odX^ht+;p>^"+/a<fYfE5-s[,M4nP&4b
K/r1RGn<lELs=qkIYEmN+]AE5f+7<8ZC^df@s;#5F`K7ta^.Rc%khIB8YrrE#WH]A5:bfuK.G0
)`pMoGRQ<1)R9p7f[oh'[:EL9t_")M2$0h3e:7"1#8AF-7$5WKKGm";KLfJLb??Z@?s8coF1
ARFbo@2ji;Rm8tcfi/TE<1^sZ;/c&u)[?OGQDj9&>f'c=48)+&CMmZhk^2uLg@q&IO(#f!(&
PJG[/50VD^%Ak<7f_E.u/51.*4AFKp+s;cAp@n%8'noE)DM-YRG]A0d5C2fR-S'4pas3`</dQ
=IU%4E74nZm=b5[ZRh;lirYijRUSoMj/RT$'\Jmf\:J]A]AQ#u)`>a=]A$[+%gR);`1bN^_.$7W
J,4-KnK/,"ksIk/lBTS?nQ?O,NS]A?ZDq9P$mlL.AL3.rgV4icpZ)%US[TXdokoB4(`kT!6lL
%<lfb8pf6\+j30WrsZKXN0HfI2t*?W,bC%%J<)Q*A)/dJDnap`mC:LG[1-U>l6q`bsZ&`R.)
7f\Fo0CGLT.@9I(m%@%&EjumhmoarH0kZe%gNd0N:mEB<6g%hb;^%dn:;@*Ra@cqAl?Poi?g
]A"IcrK*(4h^:\`#G/j,hGP7q59;F:+OUeOq3^U%'>Cj1"u(@.%DL-5GYL\CK\^/O-g;?MhOk
4\-mH7[*IOl%:XA+K%6KOnWhTE.0%Bh<1;r@T>(aBK%o^H)C.SoRNGGB/;<eCb*%<;gj/M&B
ORM6>I6Tc#U;#35[ZcEKh*.rr6o,$l>!+LW\7iu0Yo!,L:NuFq3@Z5"b5B8'^0%KC/=&Cs.c
I+q$)6+RQn6Fq^id+A%AS_0`?;5(gM@W("[R>l.35dK-Lg-gFeO7Xg3^+n88A%!mMK^"32k7
BaL(6o-1C^JrG"!EA_EWf6.u$=X=%CX6l#WP#(*p8N3fu3l+eob%LK,&YJ#un]AU5pPd]A:YZY
*6lkWPrHWMf0IC[JVr/l)B5?$EkcU`B$jAX"eY/R^lV"auhmZi'51@;`=H(L?&,=>CBdGRO?
8b0fPT[X@\ed6nAsb]AXJsiL;r[iOi+]ASpN[0`(ct+[aslQL[@To#E^tu_$0cuMh-:4Kba+%*
AgNC,)GpOjg1*uaXOhj?t(J@9"]ApC:XEUu6/Nn3VB1Ath.#*"(e%1UM)@\,Io/o<>^0Z:G2q
WhU$m)ISsumkqSX^TC\Q_6n]A&9[UPFFhR(@Ak57l[pSM@#F?\o1kioNEp.8.UMi7%QlX[_52
(dILP;"fVlqqo]ABT7L_r-a8JKH*YD5aMEQE.nu>>5b0G?',@bZao5u;,jLDT.0Q1TW1lcO\j
ZH.7F!.k'Eg"<"oK'QDQPh`GSPQYJ@$HP,<!Hn9*[cC2TCh>-`8Gqp@Tn$rmnJ_)<JI#,iA%
mgHqL7W#hPtU&3/"4gp4RT_+3DR;G[?*s<,7aFUb0kVs)4'9a9-CuH`i?o)Dc*UH:[RkOYJ7
%`Xl<$*!.[#aOoF04.4_eC.Kk)9E8PuHc1mSZIO6IJF=2;mZ-S8@:p(,3GsjiB%Uoo5VtpY?
8ijf-td[64+D:]AW4KAK2m2=j3Qq:1[Rd7M8qOMef>roHf2b>@2Csm)I;BUZ07E:=*Aoi^j;D
Zd5^"9AB0<P/$8V/GTitAdfa@TL;duZ86[_MfsK-gcd`'ZjH\T.AVC5?NGXt<BR&\>2WQT$e
(6`5ZsjMO3pt33aH*'4?&KRVT*VQZSslH%lor2`j`VumRL"5nI]Ai<7UJjeK'<I2=*@SM]A!l/
SAkpCu8V4b3hHO2&7pa3dp2BtsZful/bKHAZg6Q@@bJ:saE\;Cd.h8S\,EPI'gr!S]An7@fqn
TBYK!,SAeU*:&>P-fldl$f)F"E`k!\FQOA2sQ3QN)Hs2"QYQ/]A>5S4&Sq$,aDusqOa>X,D/d
G=C:nr0*CRp2fIogUgu&;"9umD_Dnu`pBkuHa`4r<t]Asn,L5"hifYk;Jkn:>`;T&B.(RF?@k
q^WaKi`sTC,i&Z0V2!73"sMP:X2c:_q%QW$/=Z`)!EVa_R:IEnAKIb$3Uo&R7/\LV7B08YHc
`W8L4q-,dcnW&kVrI'g@,1^R.C^cER5QqRtZpQ^SH0cU.UoUDa>8KJDtG6.3tV$U/Z(Q]A%MG
Y8tJZOXM'2m?$:=Nl&:*61Eu,_>?7BE'\)dRn(*8GgEk,Mp"*8ii<\05.lP48jc,e!=`kB4Y
dJ^$?AZ1s#t7`!TF^je8CFUGDmHSeZsf/A+sPQN:</hDG;e@3L4gk(kcn[O.=ll*DIY($3G8
?$Q&%5Np=QWi0&Zs/3E7*3#L/PYV12rU3=s_D$Enbg,+MNh2d,B9S5@g,efS7]A]AK*]AM^5Hi"
oC0:,d9h/^dq?lIRLo=<OdeXDYMO#g;PesUg2b*dF[/N;Bu6-;-Y28:Cs)Hmh+)bTf[,NV-W
-YHE/_YIk7f*YS2DS:8Q2Xo&S@/HCcD/.Bcon8KkE]AI;:Y(?^C%2M5!9RPkQt-p:;o"T4Hn*
WfU:TQ*]AgP>0sg>QB8@PM%cI3pi(*U6?,(\q1Oe1BZf6-rHfsSeqJ3QeH(0ET\',Sb'iP<K9
]AQ-Qe!:qNfnr\Y:TH@p(.e73Mb^4uJMEWI9+l^V3N@NUKb*kH<:mh5TefXR2QX_^9l/Sjo9l
+b"AErd`&'94=]A1W[UK'ql;j,^/-:-l;KE:aEgA^r2-7]AO95]A8^jdj+?IphPUY<pR8Yjh8Y'
`<6"#oGHNXhaEOH\f"B">o!e!)4k8e6?1*tea$]A$/AE<+_I2LF,Co8Y8.*^uQUJG_`u\riP`
c\OrhU?t3A;Nb5j>//.1;AkW5$%"_aQbm]A$?_"U(B,TfUSO:.!#7#-:6M&rDhPO-q0KHhaNu
3JlM2>PK,0#X.&R!bt^2pU6M"Om5X=r]A%/Y^j&LKY&_lual,0k(T0/nc.B>[lb)MN9L\^Q>.
t[3@#g\B7_6WljM$Eq\Yh!L<G/)R@mPI8OfQ<M^me]A.Z#HSUs)?G`Q8IB?f3C.Po#W/1c%)U
1fc1:q)c)HV&r-ji(R1HHPjNi;XYZerl8r?AUE]A`]AO<^#IEC_m0lTMK9W=ImJ95Vg0=j%Lld
[0f^Qei$7"p`R8_UoSrQL%]Asldmo%/iTYQllA';kV.)'q%!^HQMa#r\\#ORZr'bS8+d%Z<V$
IS=f.`)Pm&t20Jk7i0$4FldeaC:]AMEoIE)h</$Iif3mVC$t`&uGeA*uN9Am"-M+brn_D?C5E
mW1<n+PlH//]AT13k74e!LardRr"@qjEnET.`D]Ac^g]A0b9JaP?+\M=Ii0s2I1>Zui2;bgsOTO
GsCVQ-F55S%Su,EfLMin/%1eOkuYSQK)4lAWu3=+'oT/@:&LDZ^_lsZ[n%T;^nHL[_K7K6Z_
@MIjXt`2G-VO,Vo2s*Z9\01BL8fLdD!:%(tU6f8S_1r;FD^/)Q.Dj#WQVrr"O1ccH_G:fdDB
SVRK$Ye&gaF'$qm+"R(gIsLn*c+`)436r5>&!`c`D`Y16+dXSYkNOn&YkuVjRm6>b13T4H+/
>as?jPE0"..u7,gB\0%TZu[2BucQ9D#=c)E:".it9;<C\a2;C>qOoXK`O4_c'q%7F[&3_?9.
WAq8s?;,pg=,Etb*[ArdD3CKoj'Lj9/HG0!TMVA&b:YuWc217.qb+kQl.Z`2'd_?2Xatn([5
"NQXE.ktKY,9A%0K'7GV0f'QLUE!2[uTAr^&Occ"FWfS$&C#l7DEq!cG4HoZ6t(+=&u(pmO!
_rR%1HLACN_]A2F?iVDp'j\bs4/t(8lV!#C^G21Kr]A[19b$#dCchEp$80r=]AqePpiQD3ViBS'
FcXZDBGf=WQgZeA%307Ri1ad8+NW3cWuag?%_jgl>@lA?%/"kL3<ph#:lV0K4-oVrFqr&$[E
Yi/%Ysc\""3M&DNXKRc0$l$hP`#aPNTeua-dSLZ30#Sr%hOH';"XDMK3)mDg9<,Y?aDiktAg
b\;TLQHl[lW3u^D9/;an.dQ'L(iqJA"R^pi\#LR?Z!c)\Gl8HDm%HJH6_'kC&LC<fKMEZPJm
'eGm*4kU]A01.WiG_^>A+7MD\rqY+b6:muoL;^MFk<e9=:nG_CW*2`(^c+2R76SkpKJ.hWn'b
!_L^>7c1n$^S#<'/9)%h,;?ulkp$-b7(8O9[>994[[]A1%-@lhXPXA>r0cs-U3*p;l]Ai6O%(&
L^EaGZ03t!.fapQ&7`jLi+LAhDcnU7GGHl8(0?L(NEROrR3J8X5,qr6=Pe3U!*a:$8[E@MJ3
1R/PVV@"O^)%L4cmZ\Pj.BsT4fD/4kd)A2a%bfK+a-ue)EXDId[/,:_!CYM)nl>RT[4r8h3b
B/MRZ>Cq4*#X/ta;c^hBt0#Z?8]A,OW%]A07g.pZYRc<EHd45om%=/++X(+QlW\T5lJ>O^);lJ
;i_1iYJl*KPJf9>ANCmk3CM8A\(g4*T/)XIi2U:PD;$EIr[$I&jI`E$LZ(7fB^,YQjoeK4.s
_a30rpY%?dEB]A"&6t+L;-No'ks^h6B9a,M!krd9@V?IdU[WBRFIFYD^FCs*RPHcjk*$*MJ(^
g0h%OIA;KAa;[X:888AGd)1X$BtnXpVntIB)K$Z`ITAgSq4N>nGa+&s!%NCq1>l%_#t2+FWf
OrT2Qg]A_k9(<B%TCgK.$?P_B$9s-JY:HZ4%[tZYBS)G=`%_Iich.#]AaeuK%JU;HBq'V%Xae`
pnN02^-kP&t]A6Uno%-1i!1R`lSJV-cT(Ka,DlA/GujQhoNf1#C0R6u#"7q%uiK;qhbMHMMLA
%BWfml.!Hj8bo]Ar:?$e7Q?&Oi5Q`^J\mgBoJcFZ9`\n#2lI^rs5<LSlhXR/r-EaD8OA`GcMc
SQ,]AWR]AfCbb.5Bf)(^9DHWYOs-jXmq;lPbVK::3i[>rU[E<?W$j%+TlrM#2h0HD^K1X)$JfT
q`gLF]A*JT,P:"m_QBR-4+(lG5qgRNLoMahD:*s*2b!/l)DL?6t@Ys&?IIT=BTgP4UXCRbg6^
&^5b8//AY\S;(UNMf85VVl-p`JCUCMgd;2q6(qe$As5d*<TA3:q'qq!7c,@fjsY.\*5Mp*Tc
8I,^]Aj"AX6MJ0HBYq+#]AAF$6TDSF78g]AJ?oLR0_rtV=M,l^d@'RpUi%T;dO.l,%4+FiBIXCU
K2idXio+%Wb..WFl_cd4Nq0'jFXGab_<YU.X6)ERt]AH3f(E6r)-e.q4LjkTOe+MkT23GRgAa
X2c\VXS?@'qH5E-=BbdL4/"`pYarK<VFS=`aHF3MJi2Huqdg6*%e3<R,8<QbH3)C:nk6POeQ
(JE=Zf7t8-*Iq1lf/^.2Y@N6,dC9%WolmB:9o1hWM3<j,(4<pIauJLd6uh>k]AjgRoY<1!C[4
BJIhc;YE)8<8gcK^4F>9l8H9fT''B:mqV]AAVoORIu8;n%r3`)EPp&^LjW&oIFI:4iEhlZ$&l
>59ejC*Rad?qCEocpM8[:D`;QBKBlP,FrRc(?5(`'9Ut>mh^.OqUi6g*:Z#c3^:!Y1O05ggY
HkN&EG8QOJsm`ClMUZL)HQg]A]A%\Bmqc4I+XMG.`k&i79R?6e;iLWkko_.5QWgA'+S`-E%[sB
Dh/KTAEGf"9g.C#93mm0e)H]A=Lk:0aOEhaEbZH$>6uM:B-"A:&Hh@L#!`MI%FmTn,2BAq>9F
^]A^SYJol."]A]Akl*XL)_nmuO7`Fi&.;O)JQg$nVf-4telY(Oti1j,#lOkAR*0]A%gml0l\*Kpq
eP5Qb8\Yc3GjNYF!F4aO?(UN_pEE71Jur"ZYOo[*;EW4,;QF#cV'?7j\,["2Ge![$@fb3;L.
3\fmJPW;24O=TZ(2\rqi<P(LN8dcB';\qQ!p^g=2rcVjaI(-Gt'Q,_pi,T#F'/=QL5ZVM72n
-HVBViXFEegP+A=7%l,a!lK*^rk"R/oF2'@m6ZU.(gWF`,Y<e2%aO-%SGX(Q?^@D@?e_^d1^
/g!Bmk\'Yki>qR:\IpU%4*`$UtYm%W#Z^Gefs\l,192BD[:S&..l%'T1PcX?>*SrME?GMrNs
J>+[!Ia!>U1+kn:L">-P'_CC(Zb=dYn"!:>TBm73mR-EkFaFFjiXgtUJM6]A'SbXK,hgq<"le
rbWEp<&so.),Ji]Al&npZh/"d%N(39$p&MMRmh_cXuHC@?NSO4Vf.JUNP"=#GIIMUO2r;=TdS
IFuZBV'.gD;\f8C=psRU`X?eVW5J[dh^f5ol*kK8$d*ang#,nj\(;^O-Ka*2h@0"T3!?X.7[
^$`D\_T.@.4k#&fC,O0,H%##q<!_+fXSJhc=]Ag]AlQLK.]A4@YQ$X<ak/A]AX_ZdNW82`##2W&]A
9i#27Djn=\P)8\RZ>DD"^CcUmnLKW4qm(PL[=.-P"6r@lqDCXMu0L3@;YYs7XEE4+?jBC@L)
gN*%!T"t1p5k=/SD/m$E5:uL(`SXPA^=W,:S(`*SgG$,c0;DgS3"BK5`&Z6c+`h1[Lr7$R8,
a$X>Lq8$3tui;qb\B4,p_VA'<&@3;=$7m1JW5["B]AXDRZ@A+E)F,I4j?R(J5%\A-T8;qr*Zj
25gjaq,g=`soFt;B'I0O!brEB3q7G[=^L'aDNsbnBlJ7s"OnEA?f-<"Q"$R#8PO^05=%0Uur
67KuPZO]AA,N_TolUn=r5\h78jDLVbi=]ApfDo5DFQDY9VU<qYDX>\6BM]AW$9.;qPVWb,b;EVN
=8p$69n5co;rA0&N5\V`bh/mBX/Y4PEV5?.GH]A_Rujoq%/?nOXU`'?d.lDu0s%^56c;AV$oU
2(977\Zc;jLa9+2mit>\Z:q!Iq%:E-rD:76IW\e2Dqo6F<h'^1ohhlPp9UK!fB\:tE!Af@l2
P4f&E-a=kA;l>#n`p'+:.o*O:Wum2k^JubN[W.[!05&RU4cq,PbQCY'<pXH'*H&mI),-n\J@
"4^LWCdr:'$*N,.(3,/g1U0n;;BEDeH>!*"u3,m/.NEkr,:HFr^BL@jNUn2gDfLe<C5+O5R6
RJj(K+:Lc+SAOF&/(0!UZUelHCc+3"a+-9qO\8J^)[-$ied*'d(Kp+0!"HD]An5'5Q/?Y-Hj\
qAnjk_F?=9UV%:f]AXa").ll/B:CMsZ*d.uJ6h_k%tET*(ZfJ;uD<`%Fp&&n:Gok*IKQ[p^o,
Sd)sh!ebgp,W669?i3`k<YW=uQ_)iVlXJc?J_p^?\!@f;X+)`B(R(nJaK+h3Xeqg4I#YtO5N
":arksV_#PR]A/Q?U?O^65u3FH*\#-M]AP&iR[QJU7Fbmn`to]AWJ*_dK;]AuAfWoQHh1.UL(S:(
@XT).<hYcEh93_6bFoRD8hr5Xp)4%<DMS[<2bH%?cP7E(I3&DOH@/3$kaPf`@ZN,O%\D^cX`
B0Vj[s@`rW_LpI^e[M?AaKCRg=ci;p.<2,,8-;E7`qV>a0/(Ki$"/\^[W\#[(cYLSudG1^;S
T,eQ9&F_sRuqcPZ$DG?4R0'Ao"_<O-Z!:'G#p:Na@!4QK;eCWP$c0F_;b-uiY`^+,R>qmEN-
^A*UqEJeQ41@su^4rXj"Lab5-p%Ih?\)+o'IGu51f\H#?8<NO@I*j3J^!8cQ527nps2<XF5C
J#frG'rNUCAXqlL<fHM_`QcNYuABm,HWT2]AIG&8bgdtM-Vkkq(<:.agWB.5Zu7^;6Tc9SuGk
#S>f<ei%]Acr^`)96>LsU'-*04`-JJZlJm`[:;RL]Ah8W>tgl/pooBFk7-RhX0Cd9f^W+.q&sO
#QQBe>VAtH_)&@rYS)k]A,:"4BJK=.^CE3HRRf#4Bn(3j$SGWYfBWbV1BKJ>]AJo2o(K*5/q(?
\EI+"@[Kk<CcV[$TGR@Hfn*r<QgI!pK)a\MER9e_#>i>#uFF6!k@^5LPgd>jUWh7`QUa><de
0Wf?N]ANQ`:/E)57CW'?uEs<3j/$U.LGBUI/1C52cCZ#Z\U'dpHioG)"f/,r_j<;\8DY!]A,ZS
.-qP#ZCBh*FkZ8]A9+B1$a\<K$-cXA6f&'W9q@_G4"/9=#[M:qX.Wfh04'aQ"#H;@o_&S"7uG
E-9i(K[:eK?64)DB3QOr_cb8s=nl)f(Z:NH5E1A!EVF2n',tV<`h/@aYmlt<Xh+h9mNB,$qR
E,s<D(P`d-5aMtg[hH8<q4qRR@i6Rg$CS7IoF!lei(]AF_4Da+bB=L[,O@;B6<JA^POj9`Rep
0L#8kM=pBAMD're08/M#:^?IE$*Ymp348itL=3:A;1V(%:iVUcO@e5ke\>1uCS>Sfaa;bObL
YEkO>_Cg^@9u(OY$:@c(?5`VNp71<tkD/4\c[!7^cT)N"cuV'C1;0BQE]A3po*)i@d0qj2Db9
31V$O'ft&=g6Whm;L@!q;A7%4GQt)b%jrl8&:fil)(T@)da\/!qp>DaW<jLrl$]A]A&X37L!FI
n1"JoV$QcR8Euf2f?fQPDKp-LfkY%7n?)a40<20hlF?etk>BLUp``b'Q-L"T*-$d'9RfZrf&
UL,qOCCD:Gn[,YEAF[2BP)tOr7ifDr)0Bdm<Hf)iQ7OIHE9$Q*RCAYiuf=9$F7B[_*$o%@-0
s5Im^2Q:n0CPg39>DS<Aa0(776:-FP&'ho9iQ"Cg`M86#fQra?KX*<<FgIF//&CO'a@4(quG
ainLMq,N-BY&>eN:A<;&6U.$gBcF]A>I2#4.TpUt2[kgW"3u>F(/3(1&UC\8XYBMcYll)[ubT
TM[i[,!0(%o@:ncB1f8SF04.@)Hd=mWlHk$B(%-"D^SBZUYqrekrfk)@_$!o!).B@27Zm'ba
EL2)mQ"d1H52P)DFCY*8=^"Pm"J90Od^G@%qfXtT.?Z-OPQWQpjWu<gMlT&YtcX'l_Tb]APlS
9`XDWSe**YR;L@o\4tc79$3s:1Enf,Z+.$!%\:p1Ul<F_%G=-B`4PCXLp#oc@Js!MOK8*.]A@
A[6`4D]A_I=:[e^tf8TR(6q$APHc%)t@a<Rb%Y\&q\$TMVbn\/,&%,W&d4i3aUpniV8,[5r^[
*eO2BlZ.C2,fo:2LIu*NE^P,2CPF,Fcu+2e9fuNN-/Lpd8`K,,`.#&bpH[ce`$sX$f^rfE.E
ZO?0-k51+_:s4,+bis21E&TBq%*Dq9[G$A&;YWm^%%'7>aV=jD*?]A(lB2PR&PNF-rEGT\pI<
44mQSr]A&uOS0u6&S8L_C"l+5.p=*\[TMuG3jiD@+_E,8j^>KM(qhX)Lt.0E\D7lj7,\0o[hE
A_O#/mkt,0qtL0*,[YA=K_rO<-P_+AB%5-piWuPd$!FAQ?%QMEdja#IW'\2Wf6[-aOR\Sj!6
`N4*jKl,4a)CmE%:7.M;,cO/uga.!%i[5#ueh"<DmNTic0U"NGU8cj=8$;B8#H0K(!&;_0WM
('#*9l9s?0TNX$Nlo6<IC$[,3*=nfm`->GlDmle1\8TsLemQu!a3bg/:]A_8'_1,fYh+sa1Aq
.c3rLa<UQtLXTE<O./9(W9!rR7[Pl'4N]A1s>;9hGloqRk,O?6]A47A<\DB"80Wp13-bu^`/s(
^cin:Enh]A[+,ejn694E_(:Ck,q3"sSrRL!Y.#&U&>Cnc.DSaFh+3rF9<e(A:3H"m09"pEDu\
/;YW.;SKH!&WVH.@RU&U]Ap$*CpQ9]AHNo0!WVs"uaS'#AUsFuFCR5cm"nMZSB`ZO$25!T]A5]Al
"GO:nT?DU6A:q&e,39>QPR>:OAW$;:!/UO1=;Nd)Zg>^<ZletAFIJ.DhcJ0GC,T\KS5&(2'X
=>me!2H;PWZt"E2dgr^%+Xc7D@K5o107ue:T2#N-hNZU^a<ie(mpT4F&Dohk+%"EL%*UA]A/*
mC#5hpN"9jhPT^XQu;6E4:[LI\^M[EgYk$G/DQcc55'\+JlfA_J6VKP$]A7(HeX7g[tb2U]AWo
a+uFRD<Ce3YlY&adZGi$QZCc:u.W2(["8^*[l[d`r!I>loIt/)bGRdo6U@a0>2p\ral9Ki:H
&>O"#oh6HcaSA[:V8*DrrN~
]]></IM>
</FineImage>
</Background>
</HighlightAction>
</Highlight>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[2]]></Name>
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[$$$ = 2]]></Formula>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.BackgroundHighlightAction">
<Background name="ImageBackground" layout="4">
<FineImage fm="png">
<IM>
<![CDATA['Ur_p>AkV(,A*qO="@=0;JLkg2/9ThCGn$`Z\6[2%CNZ?`2^MYW@bR*>,g*0</_r7Dma5&4>
6,DY3Wa1cT0n[2a6-r>UTH[JMo;/(F&n[@".hAac"@6^]A+fK]A$$kKai\5r+BIXX'+JHDN:k1
@Z+)ZTgKmtFH=h!h$m=d.$4]A\8ka1r8D&c/XBToJrr1r6/D]A_W`>L%U(qk=>`@Z;uV>;k.),
4i=L/FC.E;c#JZfes,[5CE4mh>i:cFns=JB:p%tXK8KS.gt$)>8G9h$7/NQnIYCe`?^f`CdS
cm`g&B@>5N5_/FcP9o7Qp?:Y1ddGW,]AdhT(=gI908%<jUcC3DJ<eCC=<+)]A1Xtr`]AuA4kV)0
HZ6:f=MX>'3H@bq:&/>crmds?!ZtFk1J3!E3S6)8]A30ICbA+BJfqB\s:E\osbM[()7Ff6YB5
;RQ'aIgEmr@j5qmc$O_QsX0n_g&ZpnBd1G]A=S5kJ)5pE"j%8d(D@1Dp8+Ljqmi)*'B37^j8"
KZE2a)Bog5&8p86dqljhoPg+#6l0L6Ha1qJh29X@Bs7NN_(,4e;Bma]A;E2B0h=`=@D*YZ'41
3,e1gHL,!CSjgTo69jULhcl]AUk&FB-;!H3.kDHOj$C?1g0[$Kp3(7ag>00A$CQ%[jQ/BC>q3
b%ZDm`t?bnOI!Xo(#dM*[JT5V8o.%,h@!`@1*>h-4Hh-3P\g`bJ<(<ZS70@'6N,gIj<M\L%%
ZKR545rQ23K9=n7CcU\IFg:IIRre-maTZs>E,0F9pR%AFs#fu?3b8l$CrR=?O9_/9Ol6+0k*
Q"H:HftDVg'^kDVbbF:A8WXGqAL^f:gE@:WOMVTC1jIkhrZ-4;Yci(Z/mhr-`MIn>KV:>#-$
!5YdWL\p\S0E08h'E\YO+\Qi(79f)TSW%nPsZG-L+/9C26"'>U'1'Cdn?DNa'fXWB6RoalG`
%Y&a9K+)lGC$[0oHaet)1gqATc3t8#<1;\SG_0"$Wh+?Ge!]A,=\D:CaOt.uk<`EuZ5"2Ml/p
9FIc!`drKs7FTQ0Nhd"PRdH]AQ3?-^Wl"`&JN5IlU2"8^Z)\;gBT/(:8"17b9b.cGCan`tubs
!%3:93(>H"eNOZ_VBFt-E;kRS]AcVQY?kN)4;!Z_Rq"/4NK+oXcSr:f`Jb\&3m5>pDoB$YK`R
`b>HtC/l/5<IW,8D#%!5F<GruI'o0E)4=eHM+3=_3T@:Hr6h5/Y-^/\bRBML24[7iplbU62T
g%j0sag%N0"_D[,ZLs[DEb\;q6<+%2gbiE=%HYTbm;U(mE:\qX[:Zg&kSI=TZPMhgq+<,R3m
UIg$+73!D'XDsS?.JT2-eCAYA&UalWKA.aX?Vg:c[5aXorkgqK1E$#r[Z+6egtb2hMo[oAc8
HnTc'T*2S39YZAYSGrMnr/-"OT?-lig"9*AV&_5Md*=M"(LCM-XHO0`HsGD=-:G\?JP=S#FZ
6@o@D4NPiqD*PI)Y:%g0j@?,XO57lr^Xu!Da]Ap.Mr68C9-.I?!+J5ui%OiZFkNPG$.;`Dm8)
>Ar<MjlS5<?hFLm?H.Rdrnn1`k!kG9^@9"LbFsA"p&"T2I8$.a,s$pM4PY2>o,;32A)IddGU
8/"^H8KEhW?c-MY1@b+,hG"6%ek3/T/HD9hNcsK![MI*"3jA;oG`Wh%_JB`:'q'KjSqfKa[e
o?4f#bL2/Y9,S7-f5I6mR^r+,C+oH!d:MPU($oNZVlgF#YO]ABG'![:RhbT<D`lW919"&qN6L
K7\sS+l*?6F8J!(:V3</Mm-]Ar,_rnc0;9OaU8"T5#faulD\&MNQKr+DInq+iV^_r4\Y`XIm&
QHEdrD3!;I]Ap*PT5;sLV(2.r^=^R4V&25'@Opd`gnosOkWrC1RZh;qt<r+.B$fDp.]Ae;'dl?
eF/LMD$a:54:Ffjo<R-PdXlDTUhCY_;^+=h?m,OcXO(q]A%WAi@b<ep]A:,q#G]Ad]AGi]AHA`rhr
OmjljDMe')SZO(#p)WZ9]A\`CV;BDGBo+?^t0XE+'%J=6dPAZ?scG-Z@6T#SashI53,ldl`^*
b_eHkq7p4c'Jc+D(ZIq[aU7$WGS=e!g:cML[eZDg7+:_(cfJiV(g4.Rb,77O:5i\GWGQc[^l
W=2QVYU,p:3h@SJp)?HA:#DQThiYpe/g3J/D4=&kgcpL;77(Bt'Jk>/$'KABo2m&cX0fZ'U-
;?n1<ohuGe$qK`\S)p+dN_gu"oHpcBN\rbOn<Z1T$a.#Q4O%p4FW0FCB9bU/q=uBb(iZN&7W
LJLot.!P9+nK,HJQ;4TM91Da[M-&PMIF(lY1^t`U0c*i+O0(hi'MJB9p$Cc=[ZAU6N<t)W"r
:&^R0g!Vs]AJkr<9+'Jhp`IKC1CbH9#OHBKZ18'S4&!%5ebl,Q^CINImS9Bo7834bEn%$2Ut(
Z+.6m/"Ei&b):WFa%dZH!a$AOTL<R/ioXA9.PX!ZmV9SBh+;m_U6Xpl)>nV>ns_S`G_d&>h3
0*Wfu2B&<3Re..&[k)Z*$coU.Z;*9(@YMaZD\omk/Sh]A\BX).7`L5Sd7V1r>9:/4c^NW!p'o
E:ZYO^iQnB%LpH]A)<ZAVC?CM<LujJbPCN2qfkP:=!@fHHL<W([hCkGn(,WduTb3MeLJm3]AGB
5C+JLK@l<$4TYLaRr3qrW<=!9lianbQ>IB;YH)ePWcYC"hT=]A(;u#!YX>:*bnAr$X$df%^;"
mHi\:pl5A'=b`$')D4:oUWnG:jqKgEXE@/:klXkZmHD[*OiigVc,,M$#j,!H.?IoWiX'om,g
>aA.s&oO9N!h-OJ\sIA6e%B!og$nsN2I?#fP%*_eY$/gbr0:7n[oQFmr9tk[o?_:3:+s]An?>
3_'*FLgn-sHp*7LG%P[hT%.hdHtSZU2$n'[**'6/_SAAts78X5LTUuk4!i<q'ajMo6>HrQ<`
Jtu@*UkkrG7=]AmHXX&2onL6BnjZ\0<_a2\J(G4`b[_AW:;KCoGceX\=RO\iG*+o(aace58;.
"66]A%E#_WBd<!%P%q'+'97(f73PAs&5Z_4Rqk=fMpGVd!Se7ACrD`l0CFW7o6L@Bf@"!Nc#j
qT=#)dkq^Nem(GN#G/!W$/A^1LO)0=6MNc`kcF6u>e6smR0O.#lfd^eX6hS'h\uTlDSF8/\o
-s'#&VHrG2I3`BhX6`nr7D9JZ-HbhJIuK%V*WPD3,9^mQtH:K*7+Y0%hY%Mf)PV&Y]A^5[mK>
P#of4nm'Q`&*l`pY8[+/LZ!nu12#cTs6RgijmKNC3RDj,WV9'kK2?FD&OWiuJCEL*#fp+>IC
q"Im^FQlb1H]Ae(k[#>>!i%e"&+T4GooRjm7)V)[BH?0sL?X>`>7c1P?;KB$h]AUXA>BNcMRCJ
N,*A1>NH(C#_ePP9nOFL`I`l<Ss;78*"MHk-k5a4:\A_i<"EDdS/OY]A\9Yn(W'2@osG!40d+
W7L=9O^</,^eJ.Mpk:mb01,OdiY`X2cN7(:g2aDNcoG==G2brD[9M&*i[t-=XnlBa/^*D;^a
JMi&FE@.4T4_D4XZ\'m5JR$l''X#.""dZ\Z`4ra(0lU+GDu5L@pF``Xj^TbV_F[a!QkOYTB!
Db1^rF.#8<(JHY0TbL&:D:jbQ)WdNuTM5!Qfi+ss#DmSaA*#m)//_e?Y+U413O9k=OB9sl@V
?fcRCf)hj&[6>G_Z><5/5OVcVni3aU6DFSHX1cS-GJ29_g:V>1+D*"kNmRJ:je&$ZL7buI<P
eA4l7LN\T?oXmmT"*:%JP,/#uTco')q=\p,_QAbiW?a#NpFe_D;1+do>5=(eXk#$+a'lD1-A
rSqG9EaZ#G%GXlTCq0+Em)DBWK7j!oA`/A-J=,MiQVjV^IPO/M4en>+!di;6h9,X=<%Y*Sl^
pi5jT2tl+J]A)khWmcb4P96ft]AL"sq>Y+EOQ=`&n+HDK'Wur6TE`dp4B1lf:(e0Rcs0P8HbC>
+$JPa$)CFe8C947D6s5e`<KcTk`UD/(`$4U<\&#<qGr9.BfqgOL1rp#fd2ibJBca;fQF0UZ<
0T>m%p-P)#_f&=*d^mpIU@(=-Qg+,g^K4%?*2Vu5rX!W4[BnFf;+HeU_"0(!k$7QRbWFo<ot
XYYdt^=W)'FB0Bu,/j6[l]AodGO^f1LG2K2EnXuG2,1.Cu?3IL]A6lI)hPdE42I$0j!pW*jbTg
o#um#NH<0]A$rr#,W8*-"jEWoZ1d-Te+VB+bm.Bg01p';K2q[no+U&s.S[(cH9Y2e?R[3kG_d
cqqSS@e7CoDk;a4,\)>0"%lhg[W<bC%ILqN2k$/k%,lXh-[UA871"?)>U/nfVdJXk3SS,WcV
@ThCNlm(nNmb#L,^5l%*tY0YG"F(+(cp%bcOW0o[SOc2QN\Q`ln*ft8"*8R,tLJ/Sa-olHf=
ObM%qWPr3t%tC!O)[4f85uL-(\3iZ&33@HJ:Akpd33m"Rc0!,A^$*,qL<&ZPAH:`g8.IP*TW
/):h1Dj.n%slC9lbXL?sEXQ4o\@OifHi:(%M.(64cgY*`KHT(EW7PTUguloa-c^s.TjM$2s'
-]AG4k9OB(!/7f2X=d>f/_IHE<NGKWWW`49n(g#i<rS(P@2XB8j]ABDE8!MoL+;Qa'3D\nr*3+
*.06T-=lD4qF,i'/+_d_N#:*Zh/h+IM_"Q`a0Ocal"A7Z`H<eZe(.H(n#g=V).j>i"74S,H%
r$Zm%2Ids9hEC<KM45i@ir4T\K2K(_eA_fY=qR1djQ$()iV="?5NbEVVFq]A.`IU#Lo0?LFL"
Ee*Rb;R"i.f?.Lc2WD6VAa!VCh,:"\,DLWZ]A_!J8]A5@RFc`\Bgc;FNI8P2S:-u?o+cr-`/m3
&Q[c'd;ZnQ"]An?Nr]A[lqVX`=$;[>=@)0*'YBWA7q&`"'KrQC.5&6AFlr>5c`CisQ/^5pG%2Q
f/Y+K/"N-1B>5n$2Rtp`Ip]AFLUa^\gjUMMrA3A0P;g0Ymkgk7>g`?5_=QB4F9]AKP`EdGJ&O7
Xl<'b3nPGDD#,MX,AiV0%J;>E`5ht;,Y-5%VS,ZgiH<)fW,c]AYcTA&$;qf)Os7pQ%RI#M95G
&[hUQVTS,T+oBm`q)Klh0Jr&^;o'1^nDS/cDmVoM`]A8$a9+W0RT5\$o_S:pnC9P9L>USPH7F
&0]AGl`2?11nq3!$9`NaHD82&jMLd$,k#TuM^YOUWKHY)eSshN$YX76i7NOBM1]AHb->)^]Ainl
G%!e5hJpY;M_icUl49J8CbH#M"<(nm,#f=>SUZ\HtXaW[[Kr!q)u7`>]Aomrhr,8-1647p2'H
b8@*ZfhZ7f9cDKEe_D[kXmd1GX:\c,iRB_+\[i`!0k+9bQs$Tgp#B"=7J?[']A.=.ZM>j8NaL
q.lWH1t"eY"1sS*Kf>Y3C4"!TV_BWN8G9X3A@r"KWksRoraYD`VeRg26RUZ)`L5Il3*_4nTV
Hf0,CF2Dr,s$ZSX7&/8WI(=YEe+3HI6hinupO"Vtq9G>f<tkc8NePW^20ee77c\2[j7ns2GL
k1'\#dqCh0Rlh\?oMOQ%\^$Z@-g%_poD*egL5RE;atd,W[2k(+Pq65;bc8LXd]Aj_8R&"j\f3
$!"OKPGRe!@!G-W<^Lh-F[4MLBnbo_(R!hKSfo+5PT\kjC$1/An+X?\]A&?=t8$F<j4JigDoa
-[+*Rn@K\_Nn$-@<G'M^55>F)X,mUVd0r7JHMRO<j.!9)TL%?[:C3-[HE>TTUWt>m&q+4X-q
nG6S-<c68ib*Js`%b2#\E2Y.O2aa$(>\QhopJ%@3B?..3t0!XR39hd4OfTZ'(d&c>i`Mt),*
KYZ7g2R,cZWaH@bs;=gZ7_%)7"J?&OKG5HpugI0F\pn+iQ=O>"a=qL&OY0@@5CpT!'Bh1g=:
:s7XW-.,$,J`>\@TBrJ7b=)S_p00b_W@O-=&FCkYZ;80q5OlsD&4n?-nT_hA3%HJX%3ng4lR
9(gr$(k.IL7_Va!DI1X'YpTlR<cN$PX&5-Yt'Q=<7&EcDjQ*I5^#kVZdqN_,7Z<f4\DpXWn^
[n$BYJY^d2'qr/H!/F%Z3.VW<i\R28Y+YIJD@Q[H3cQXiHa,%q-RKa`#JQDNS0O.n?mH5'a9
,J[uA"EmpI5ZP0,F#!-VS@Yq1=)k)"-B^.fd:(=Z(3cgqRBHoKqo_MWM`rbF/,3Z-')%(9:q
\7Y)Vs^h[CQ:ZIggL3b)KWSqZ2%I:2HB5/8,no,.>oKQ^q<Xu(-P(F-TBInPsYeD/FpD5rlA
^Du%nWYMe@:TRP+IM]AXR_fQX$O&$G@S4B+K??m-R]A589g!DJk^j>n<n,c8+3L5B'rPDR->K_
?jto&"S+:@.mR!jC&`ID!=bWLeOO/S-,+B%F[2[q&8']A0d+@q,M^5V(IEC#5[&Znt1D(GB3e
uhPCfdUi\T![F6C6RgL=R]AjdR8WKpL237+P^K.QJID@hM2-Q6E?!n]Aj=dJhI[kcQ"0i+mbKa
BY\u:l<k!!3?MIjs^lLnsd]An%b(]Aq!kM2A2h=u-I5bc9H6tT=F:01K@hn<ap4ncpq`k#OF#>
m[3f`\AcN>HNr6<uWSO!J3g`7EI:TI3">E1]A!*7n"7Z$_.uFH]Aj6PC9B'>W,7/3>'D8SdJ&6
oojCYO,N%i8($KkN*i%.2Es-YqZhm+-5r:bZ&`LQ1)#OI4q!?CT$Q@5F[2;U7ld6q;t0J[dT
;[/?*;E'd^P'3EG)P"N-K\fbI9'SaoWaH&koP7V[cVYKbI'n#!Ur!MXl?h$1_b(LBMt#PDV`
g*Vs8[b<Og5d=RBTBDlf2'nAC_fOl6U-s^/\<2D?Z$Ya:mnKKrj@@T*b0Nn"B;IONLi!d?(A
#s$N6%MWlWH63!'Z9C8e5B"@^c"k30WX62g!%pYR3uVdT*H;.lj"PtT_H@L)#;IH(#s!g_$T
>7I')s*WfB.08i`Fr>0GkbCUlIM"--ol>9ijBa=m?98btI9+/ms*UPf2]A<')7L;SaHtC?i#(
;QG@?%VuTh.lim]AfhWrhe&5k.a1_<^3jQUX37r]As(o3;L_d.^@jioLN[5Qup_?'W(5C]ATbR^
Ah2gO]A28!B,r"7_H2;429q_q\"tfXFo3LU++bE[Mfl9#-J8LKeFM$\%O@"`.]A/<Ei[<R-jn*
QG0a18Qua7a9<V>G@&7-Q"&T]A!&02#)(u"Q$TDMMqEjdua8$Rg'Hlb2AOAp9F2s&B:VH\?[h
JSXqSEg6OiS:ah'tRKDr0%UMd`(4M\c_uAOOO*14R6eVXB-BsKh"<#RqdKAgK>C0BA6F'j1@
DPl`3Ol<Zq]A!cKfOqU!!n<pVPgi\Cog=I@jJX>7n2:-AVWp'Ol[eUp186GqRR\Qs[t,GPp@,
57AN#m?Bi_1As>3Z4hkN"6b<A=H<E5UX6pQ.SC8O(P9WH3B(R#8I]A]AA+;u)fS-Q*.1YmcF]A2
(EXE1tDsFUOU[;O^r0.A?'c,omRV]AmGGUkTe+!IlOPmZ534U_(_;+P[1mQM!5W9Oaqf]A'T_7
%N#t@^<UT>(-Ym'-*g&GLgbNkl5EVe_4Pcp?NNr%t,d\f\c95q+'SOlhDENb5'iEFYM,K%oQ
1ZK3VDa"&+CF[Q;`B.G`G/k(^eCd"0RYV1\RPi<@l,r\::<@5_N0-XV`Vp!Z\(lg`B!tSZH<
)&K=g'`hO6J8lPqDVNbZ%K9?]A4(p[EU!g#WT#35")OG'oo5d"V&%_dW,(E@Ic5msPI!'UQm,
@#CJ]ACM>\JR.6p4;i+P(,;)AtGL_@^Ou(6-11moN03o;H(+m3S3@qd5V/&je,38Tpj>$XBHo
:r:!e@'i$\+<TL2fL/\Wb-;<6TNgrkrrJWNl'oVs<\CY#\bqf8NXc8=K5E"XM=q^82!nArlC
KA[a1:s%2b1CdhobI!F[%"h-\Tk6qu4)?94AAhnl/f5(a!JTkDgGq@B@[k35'U2No'ns1s2%
1`JEc?eL6U#Ho!&@\;V<>)%gR7?H*=K=0+r9"K2maTDgA29+T(RoMd/S"rU!,Zj"\(9iP*=c
65/c'+DO'sb?HC&=W[iP&ORiV*em,W+El*aH\I`X*]A;_,rPpD@8Y`+U']ALI'1__cHm_0BWmB
h[>p$Id`e@DUK?7dl%0QhI?D5$Es9/-rF_3il+??>@i\AZKp3A\>cp*LLbgB7Ef$/Mg^TnK8
"efV"UF"%>p)A??tKCK0[peU!u+q"eR4Z$<=]A9hFe&H*.bqc^32/2U4thBa^.Ah1JH04pNRh
9D-.\D]AcQ(K`lmG+hA]AH_=A*H<\0b_*Pn1h?agqj[Ae+-S/+WB:8B6PtF2bogIb%l?nXiTn@
(^*<\uDh4N0?()ai_:\"o0b[eQ-bB^Rs/eXJ$Bd.XY&O'E,<_#-D0u):u%^i&1C)a%-`.Tr(
ldLTP9Kp)7)FRA?76$bCAiIhFU<%]A5N+fBq\%2O4U7me41XM<D7/ndeV'pM/Z`s5H&,k89ic
rnub+5C!\sZb!3/o6CoBGhQH["Y75]A`V,:6=O+$W/&#eZXQd^DFrZn1M2T0N<`#J0qiefm]Aj
p\%S6&>J.M8R(7;k\S`-*M]ACqA?'/NuT'O\d4=k[\5V4i[qjMmp=k>M(cYc5Xq?UV1#I<oIL
3U^[p$EWMm_JZ(5gI<f5O=^;=HCdr(pV=H)-A&"[EZcsou=pMNh^BEPR3rW'bmt(dKMj5&'*
HB(\rO)RUr)naPo*WpPQH1W%:,(<<UH]Ad>ZZ=n6=(\G5ON"^%LMVtKm[K';[N,"6/KDJ3._'
h8\.?T=4m]Aj/UA`<#D&a3#lO!B_PImqne,brlgQ:-nqc+9nVGWpAUIX/gZ^L.),kVE/2O9uC
XciXp01aI#SM*:q>!gKQJE`,Se5kaTpH1inViQ=n@3k9Tq>[%CE(HXbIA@LNaZSUmng?5$jq
K,L]A2/+sl;Y]AS4:IA>C5h<9a@hDr_oJ4EFB;fGjIkM`=",cWmSqFba#g]A8XefV^)H6!H/,ML
*WCeTdLd0t*)Tfbh12M3rpF<rAIFqBse;D0NfIgHU+@=g`lYQNVs)F9#A"l]A/\bWKI,-%8Kj
%E#_)Z.3k[rp7c\KJFP"N3QA[hY<+C9L#>,:(Y\5qRLUcLNg4_8XH$XB]A+s%mlXQGAee88rl
W>MIdWE(t?7>".ZJpU9&dZ%dp\+D4H441?321:erZ3e$ak?rTRHki$D(8>dgK4A_;tV0@`n3
89jhQ_X-j,$66;$E@RKZ]AMSDB91!tq[G^ZK+iSuo3t:#%="g,XG<51MYEtp2-rrI0B?=jNbH
:_5`I<L2BYP/\4r)ArjN_I%91"tMWg%*M?)ti4`eS,#ZP7U_PWRs?$scr7G\+/;_t+3C230>
'):J:MZ$8tX\NuW:fq.$h.KtEXg*EYo.#UH/%"?6g2e04+ls?MJQh[;[-ComiOcVdn'@3bXA
5]AZe`-o=-'P'-#+2K/BE'MH6Xg*1b[]A6J!PWLJW/FTX_GmJbGRX.#7(Jm'iSdJSI75BT_M01
M]AqNPfj!cY9H&MonFc[F;Fj..9DMGkgJ`9N++p:JCbWu6!O]A*BQ$CDq*0j=EDN&UX)?;k,o%
#lJuXEV#aj"O8eK]AaHG4ri604]A'$GL,IC!Qit48RrMT1.6qq"]A#ZNp["#+\*)0(_2\jh6fS1
TCuUE5N'+ZP[MK=aAhn$@_PRftf3qAu[d+retO\J:Z0ccVfUN[j+PS[MFcLXkF'/bQjnh58!
d-E_m5]AO'&Vi$X8_futo)k-Vg2%-RqlJ+^4GMC5g;o]A&#^d!"TOau+*a9G%)J1<TB@Yu88Ro
T[aCQQI7!nXX38nY9b(Fg__Vq<n*gEc<I-qRQ8q&EmXK<uqYW5bZ4/W[#+bHuH!J0"ha8s6p
W>MK5]AWNu\i(UFtb8@M!m5.:l-I29>tbLLHb4@N1(jRsZ^VK3<2j]AWV0IM+E`6B]A+m51,Oh'
Isme\nQ%",QR/TUB8O>\0HcFE!_s?:]AKhO8`(;\'ihF`IGi2@rV^?4WHDLf6lQgOlV+'-ar]A
`EkTc0Dk&MXTRQZSq%qf5bi9NU%"'<Xi7ZF07'#s%SSCNYq[&U*B+Rkk,R5&I<76g]Ae?d>Tl
@:j.T8oGSn=Ocu10r^]A8(ou1[e?;:&Ocl;3m'KPd;<9faQf[G`'7r;ub1(hog+3.66`d%qX`
",Ro@TYF8V4!=@KjZ($5'9Ap/i#&cJ$5`T;Ee59OO`S"ak_[X*3$oaM<aHfR!a@XX)]A9!LoK
9QjIgDW>XQMPN(@gfV-RrYg$C%H.KT,_:guh4%?"&$kP`f2XkC]A%`TsWq+kmJNS\Pr$#5A('
9(G9RWImWVS;;i?G[+hH]AqM]AXXo0^(C@G,D!pa)a)p9SuTj>MnJ#rbfCn#p-O(%q>E$kLDs-
0<on5/$Cs5WFY5SUWrW7)P;^R"HVeS4M=P;\s2KIu3GLHrjc[V,G?8cm!!A"u@$'[n=>9+KA
o+>*?n^J+<*]A'KN$]A89T@RZMAei>AC'-A'e<#[L4^9N`qY5BApXS12#IT%YR*ia%pAXdmG$M
(AS'NFGu0=@@nI'o&jb+u?Pj)ZH164d=\:gt&Lp.EKa9e)mV/'"@<\i<,-96F6rE*rRg32i=
A0YbXkSNMT^t5.iM+hF1PMA+9;^.F`XM"*mg!D2gYthV4s63Dk*b]A+]A[K%I!.m5J8K)1XdR'
5`D)Bq+5EhT\foe-=:Mi0U.R)7qLK9E^66%J4$[@,4>o'?-9^*->1Eu./cjMWE8#r2Qjn@]Al
`\kYpR$FO<)W,Zbrn!%aED7f4Qj_q%Ff7?gH?Kf_F'/U8AXDl`hGkj^uRM>iXsR[(h+9]A\Y,
#?+/XnC2`26'oB7VR6YPg&6Zd.b*[8B<T2M6"ekU!6_b9GnZ;i?k*Bpg3DV"jnn"RF.,$CA,
CY!IoP(RB04kZ2Wq8#.NB?OG_T8\?QM%E!Go"p+[c39rTGddq#?BZL[]ALc2-*8`5?nEIf>8V
pf="qh/Goh1p<oTgJh2>HoJZ-7D\g9cN]AL"9VJ-+jI-VQ&cFZ%6#BO2RJc&8hs)XCkW\4F?#
XH/*h9b6@):i.[(ioajqC/j.p_`D[t'GiaV\ls9/eQ3>B\qd2`AtF>]A5$9MpFM7V;,[H6ul6
JNa(,/>d6r=Fqj,J.0c+@Cm[?pu6aQX3t'UKeCU*C,3CVY\,hk"CQ=0:5c8(8rWpbr#g4i7]A
M7XdTIo.kf!bC+'*Tt80!N^BmJ@V=1AMAHmU1FTU/aka5aMl`83Mtld5\uL2FT;O3,+3Nk2E
!P#BZCQ8C+tZgMm9&16l+S):h#HXo[,J"eRd(D8cUD[&/P^4M7`\]ADBqT\RUnde0PLAui+F/
,.P'U.YV;[0>WeO-'RrsM^"OQB7M(s:kXnJX7F;PGDHb1QflqF@r4oG.;SBk((fmj5i4#)W%
SSb1CM;57,9t\/i3qLauPWt!<"Q"Zq[c[sM=NCY/U6?AWFEAk>SrK#YDtA:]A:ZjaJY9U5Mn+
\Ta5SQjE`;>W3j7r=JW?/Ob\$t#P2'"8d;=<GGI,Bh"KKA2[4#`sXrQUOc%[I?@B5uXg!0\p
ikOD"Me$E8Z,#&>!@aI4hQ.q2*"Q<0jCGc5UlnJg_<QLuk?@_X(OWnfrTYp;%9?s?i]A2/QS^
Z8;5=8GZT4YCs>Fj*QIf(STOT"36n,F+LO(F2/:>d)D9Ikk3FY=RaS[u6=,]Ag%SDqP:GHm&n
mN^"cr"'!B/41AC/%_dIrq,VF@UN;ga>K-V.HC>(l*3ph&Q"b6JT*`Oq6k`S"cd:QHPWgKD'
P"s1gFOjK2B<@]A&ph0d=`C/rLF8/tH45II-<[Sj79c`LjdI`!ZCL_OrLd+XMS.KU*`N["T4`
!0&'s^R.&j$/$V`gUe^6.+QQ\`:ZF2a/PRR5UN0He\e4h1/X9B-jp$\?8E0,%Z'U":'YWZU^
l+dME'E*CR]AOnR<9.et-=Ei\<WSL_!P73T2F(gkL&CkfRZC,WD!F3p>Q+a2B"[a[T"?2[=Fb
f#)3,R8%`g6Z;Se\s'3^AT@)2HD<@L[4@E]AZOeAiq31]AD>?K,c1ZI4=H`kf$oJQ-&[m$F!,D
`Y)bZ6&)^`<eOe_ed9l^[RF@J6h>'$[9,;PuT.nhdW/FJd$6RIe=B3,UYdPtIKrd<P:j$/m<
*l50KA/u_;2'!GQOHp(8L;V7oOJ-@bE0i3P#1CSS41%0pKY-JM!I^sfj7?pg[STjeEY"M^lp
&3m<qD#<V"7!b*R2faA]AY&,YFaP5_Xfu1Ilm!AES'7(IC`B((XaYm'ouQN;512grk]A>(BQo_
#2#>'d-F&i2HQA5M?$'(crhAkmiHtLe"19GCEAtZRS0M&j3V(K-)'RG-?#p.]A8#.0"7sj/ic
GDThosfD=CSf6i&?_Zh:X?UuZN0f$a=nXj?Zc84/&K63l,[+"jZf8.U`mu5k%QW[&7"p(rNU
idoCgc^g'3>E:Ob8?Sh*jB'8pB<!GdWIidDCt09\Y*p&%5YOn67%;n.ZJg#uk4ao0A$'*enl
8*fg;PKj]A\2f/Ld-:aKjB0t`Cr1*R<Y&'l-?L#/e/_30DZ=F`HW('QlU$pE=G8(mQZ=J'gkD
lDBW)f>L+4L1<IXU*X>,o/8l5Y1+?0G:1jH+ZH4MVkcgipA.?"VG^%oZonD(9ilaY5`H=CWS
=SN:e?ZHLs<[+D+^>det&g#72L2Gh%!Pr=e[idCfZZd14f)Q*C_7GYS*Y*?Xna_s3Oea3<'E
KOAkboVZ!HP8J\m/%YuYsf[Ch-HI!1:=Yq`%`lo2bg9SK.9W&C"2Cr]Aq0u&;?#ti<43oc`5i
"lp&TuGNIYR0C"d3hK18j;J5*7Yl1JuFq9/ti_;4+:qJurmVA[nUe4<R1p*@&,q[#O'jOko)
98J83K8LfZPOEh[,NoUbm^5LRp1T!!_u<jGXg,os\-cRh^sSTIm!E>9QCQ^C/n_Ak8^jJ[5L
+KgOVqo-l6^G9&3mPWpI`HC_B`a_[\dnRXc>5qo(sj.3WK%Y<B8/6X%tW\ZA8o#Wq,!Zi^o)
3AsV5?`Mu)oYJ(t\9a>l(1UaJpF#3\[AL9\R]A872N\e'e+_oBj!+4eTU)uUsE+7o&lVVX0j/
CsSfgl;"hS!kc$4:*i'ih=+.0t*\cQ&T4Fe_/'Chi?#(c;LdeI;;ubSeG2$q!hs>Ers[dj\V
5"GTP@>K<a1Vlfm:C%3dNY00C=:ibokhemZ>aeHkKN43hOni?q3nO49Or`/eA-bl1jYKSVFq
)oV07OA<lU+cJU)."iE\%tXI"Ah?[6/om;]A&`SS*S5k\JH-pe_D,"jiO-!]AfP`+Q*)cR%pB6
M5-s10!'gZ=YnVp$?u7AO-)@l1Ljr'#R[6Q5j^Wo]A-uV(iU3Z7IrXl`Z-!r1#U(amr>S[T":
BV[O$15[fGNo3/a.N4uGmnio>Hqf7;W`b,Ti=]A+qj^2Z#+[-kR.Kgo+Z!1/3fo,O!r^-Ue5l
C*J0MSnrQ.DWmeMOQB^gqU;nr'L59N&^J5dm2qA$)b>+@efNAs$)Dr8uT-%Y?UQ/34N!/aD2
)&:g.P!I0M-[ofI3seugd(ogkckiDc(=q<%B-l(jMA*9b>$lYHU2.Fm$$8#KM&3JE<(6'E'*
W'hTjP8gsfJotA;Y0.`'r_&`48O3`5[b+BQjr%q`@1R*2LI5gU2N#6s1RF31V7L?rH7LEd:r
n3rXWZo^*V.=@pM%AhhjJo*OkT\&`fYm*h,-W+Uf*dnHHm1kBKTa=gJHH0i04!MohYY)=%*X
:'lL6(emd@]A#nW,*SpTS2?F&?)ItonR$OV2Bc.D`(AF;B?[dV]A&Kf@V$oRA"A=[KbBrT`68p
$S9fY`,W+>5hc8'Dp7N[W?0]A[%p))^N&'Y]A%=I^,.iVIQsZm/ML$=r5,5R4)&Vd?pJnpn?u/
6a9`W2-da4n-0r*h0O8]A(p-5JHaJ3>/3XRm=7HM-$8Ceu]A9^K75+g1G3:qI#6:Bf.[4Mqbu[
.3RpUqM.J/@`,!BEF(!Yi!q\=V.bXL8PJ:&aAPgY4&-`oruLUtmYA7DIC^'!W;#O%cG,@`iN
((QcEFeSXVEC8Y6OliqiL&0.<7`9`ZV+gWtCFHH:\i&;8F-a\B9s?aMd:tr3n9oM&d,<]A`<3
,WumF&H*V5ZVQ<=SB-d[,AJIh7O/Mj=`-h2-.B#QJXT/"k52im[X,HAF7Xe)sDWl`J[DKmNI
i$9[1/?>0qG5n-oArpT\&@2(rZG:"4N^IrqQn/f=`:W3$Hg\g*D_#Y]At::2Cm$;b%s<\;).+
JP\0m$-!\;SZ`oh54LD%]Ajc^[;]A9l_[j/g^CafVF_aa4@AMW/M=]A3cfN%p#iAHqf"]A&nV^-0
,\@*QSU6gB0M,%rZa2Np9'1D?b'g3Vfl3]AoW%7rj^FNjC"N164oM,ge^m_U)K&@;hSMmr=p8
]A0ggMQA-EZsNSZ>BK-*P8e95AqZ.Yc:q!)sABdbbeBOQYon#5EAukgPtTo;,Q>;P4?5qF3lT
gF\!4)U<>PZ,SK$X$FR:s7%@:rhe;6K?2\h8R"1s3f@!S1cr7Mq't!p[#.1U3k2_j-IniQSW
XIf7%h0M]AJl(&rToQh"EAXi=dg^'"phcmEcI6P[_6&QbWSSV2j.@Ii^\a$`Kr_ZB$#*k2G;?
"`I*mV]A=-O8A:[PnCEZuOY6/kp-YGWL]A>gh9_]AoV9dW?"^F);Tj'Q!e5iE@l2[(A6=WhC0`W
;=i[T)8ed;54B2$DuKhjei<N[NW@_bi#L7?;,WQgi+iL*U+utILW+U=SI)D%I/2V!(V<7?,E
S%/6dj'Z_q7^/N*6]AnCHLeG8%oK>-sM->e&>!7j<eP$T27=IH9USpPqT;N&nQ%H6f'm-^(fE
'^Cn--)4VqQ[\YY5quj?Jm$I,,SMR@AD><Vs=Pe"\6slI^p9SP_4R$^7^e\=GV]Aa:1[Z=02o
Z"BkE:PA,\<KW%lij]A@HIg6,Es]A#DDN8fjhchJVkmCD#p^e;K<RN7gJj>/0'mqVJ`B8>)^$K
"!Ci,fROgh,YZ')c4'X]A;Si1=OIP-T^R:d6a*I14P&7o")FBAAK"QL#44p,_n\m?d,UPs3p*
$''Dib&!U8.cksBO/L<qN_Hmd:mdI@@Qd;a>eZ*H,oF[A6N'9cF>`Q__&q72[30sW#!#m+&W
Ylk(/E[G-O7iPW9iD+]AP?ui`q);gqL!s`gu]A.X]Ao]Aar[rY!7c+-;]A\)qT..-$Z7AfDT-0_(G
(k+\:D>^Mt<'.1%Wg%;m33=@.bOj6_"^.7-ucDh3Ma6jaQ+%psMk%#W(n>SKtOj^Xg.Hl)["
DNX^5JO'+dFSf6%uj*h7*CBoqR9$I*d?c;1rF!dq"#B5(jmRaY%,qXPPX0fa(".q'mf*gCYe
`f1;8!#=qV>g,<B`p<arB=GPK-`3tEPm:<3ACY>-DRJ^kF0Z.Y.@8e)1!:$15H'f"_<_]A@Hf
F+?i7,9^rOd7A$D.!LV;jbe\@'5p?5SYf-['sL,/9p#+!F_g4drhVgWALJUkJ;;2V^P4OiGK
*>VfY[pZ=7=:6B7>SQLp0E(0+4cs3*.ar;N?71n26+@Pgo_^I^*Kg\fpi+=#+&K;pnQ$Va_9
KqGDlak@\#k#r&_s2*@U$bcf<d=9`Bf]A5,"@Ed"i$l2..2@dqt`XK%(^#Ms>;k?(ZB3%a.6*
.?q<Z/Y:sYb_T(WJMF5#GPPCEp#ks;@3g\E>DYLj$GgHk$-V'.^sQlC-[4_I\3\m)oBO+^dZ
H"oNh/5`a'23c'L;PANBlOM8dSY-$5_3CH$>T#UcOV0CUO1q">H8'@ulUXm-VC#q@@,4fj',
X1=>2LDkq?8=W%,+Yr5!OOnigZZlH)D9ZX,4hL(<4I3:<\f[WJp99F"0nL&Yq&Z@8KZR1r]Ac
Tl2Jid.8.]Ah4W"+[u@b77"@\(((e;#hFE%p[T;\"^n>[!;'5\@FN"Ij'o^%\)AN]ANW7UA(%.
S`KT!n-Snj=J]A*XI^gZA7VKe%iY#IccIeN'H";ag&Zj/&NjZ3UQEWXmoF\SWRV:bW>b,EU8]A
4F9AgYli4!*GCE>PW1a[]A>?-r67AC's[_fOl&gm8>:TDI0g4GQr3+t9Lt7>j?c:5k;"B9^oR
T,;+d9Aj"T78^6lWd5BF!M:DnBS^bL?)JXa+c?JPPK.jMc-(G6\':&7-eDlR0N\@:DRjMQEY
=>)(8L`iT:2^b$49`<]Ahf%3Ui_Al.)<"bI(9JGtD'#$956!,rN:&;q?i#e8(;#SV9`N?:.Ro
2T)\=h:/Q\&c0"@7l&[q:q)'l$rI<;t_LQpn)0aEPhZ,9Cj9R2?Ed45N`XZ&V'5IhtM#<\Cp
4<RCFHdI[;eCU[UEeM(L$idH=/Xjbn\H=;<O,f.TnhS"\nU+sWB>#mt%H59q6hbh7TnhY<7^
7-g_c.X%\<R&<GX[u(h;6u.*OiO>"RGPEcn0E3bq5)'Dbd\<7:cu9u?L\,sL8sZ[;iJGc?6G
9MFQ2Z4"3$H!>ZSg-QTJZ8j.K@J.C6-[AFeUK"R2F)ru,,=S)o)?(04\d]AoCKeMhDnt7qXJJ
BPW]A7ec&dhb1%"mF/<Qb8P^-rQ)bh/C]A6=bNA!d3]AGC>dZ1BtHSkPCM.bXQng*D[Q#OWY?/0
5WXlWs;cal?=s6]A;V<F-tGE[bj=Z0=R.+rpD1J(3QbC.ee0'M7rbt@0ue\(;kPC`;_1b.$;k
kR$pHSP%%":0M,>O14!bK"Vo[T11PMd07r<!q+^X<#qjA=WVr[4%llgh3"KRR9!$5"1V,Z_W
bWRU]Ae:tm=h!m&"U0o.%1r1)be+6hFWOi7!7;P`Lu7fmEDY,eq)n/SXjusB"Ph=YbnX8YhEg
jNVR3\1>8u=os.Xjd"5h\Prd.?U),4rccaa&9llAPCd6/b\,m)!hAR*i6!n'Qe*Y7_N/`fk2
,Sp1CIhI\'[Y&Q#p/?LjM\[a0lI((ZGkZq?=<<kDWFm@9qR3M[;*i)lT_s8h2u[0jl?_"(\N
qA<$-l>7?`%3QS]A+r3ob<dq/Dj*8V5rY-$7Y7`!+G8f/g82UO^-GGfs!%RC0/1T%#A@OQ^;m
KN[E\i!0]AAMg,c^]AXftV\00K739iHR1]A68]APhjT:N:8LQ)RlO=Oq@2[JYL[noF3?2:BtQ)Fd
WhD547p"$D-8@udlL+Jg-d%T7d0Trd1pUT6LmF0eg;\uO1)cW!Tk^d9u8UeZFofqQMa5Hf5d
Pk3pu`\'`JrL9n`j;%K1[4$4KE'R@D"mV7O*sf,LU-g?##H4uicFC\(!J=+1e;Go.Rs_Q\9>
)9goJ#F#?&WSR7e^Rr[;0'qjT/P(uOhR$i&[Re#<N(.t)87Zq6oQlF)->I?R^#BkVHEQ(]AKC
ICOV0R\^HC'&1hn2FEC`l>:?8T9L6b1+f[!keD4JoRkY[9IXP)(c]AjT6bTd@70RJCBMFDd=o
T`raHsf%hhnWcFE*YG;%d0tGOJ%pbQCDue>`*=b=nchrDiA8sDJ2]A]Ac&G-"brXsGTtCUU"@Y
a-/C5qQ/h$BPeG*9]Ac#:4\nH%qjY0cLY@@oa.#(s4XB6KpM>-l@E2)^X!r4:=?/,RE1OaB]AH
t3$Hh'?7Y6c;KdRB8I8REgWj7jRF^ZC.__kms(4g(0L_eV^.D7edLt4sY_BKQ+ZfK8%Y%.98
,O(t?XP_c*KajObAF<QH--SN4T&[ME?#MF)KFIM%nOc;:cLLiTe./W8]A(88YOSHYc'^em<>0
b*Ul\+oI-eH/h\rJW,!'*:bd$8p3[<gGV,i<_^itFPH5EupC!_fQ4]A_T198O[)W.eDXmO7?i
ZE*lhD1epIlWr;h0J\=R=1(bM:cCc,%Abt7L@@\tV*Qo$,K'k,-qK(>?0hqFfD+]AmpdpqS6d
obL(_!(tA+ZifUgQU\/6Yl+^@4aPj'mZX,,N[p:d\T%Km35C5C&XSrSKG[o9$#lnZAUrRLhK
MHXlrQBgDmi6L>40:In#9HmUj3A>\Q)+:cGY?T".N&W`)nrQ&k^pT5"D^.+@(Cb.i9u?M9^/
JBo1T`A3T0MPi'1*iF,9mM&^:4m_>e;9qjX5U:.gQ<&TV2)>**]A_!,&_H6^)a(/'\qEB00/W
]A;(*nHRB,5`u;@HB'#V/+si0Jf)^!YZiRkF9\jDkb:W%q#p2qs#M\CSHG.6Ip0g<gWF2lHm0
1BW^TA-Nn#il&#kX3`Ar2F4#/<EIdsnc'2jbFeS/D'/%5!%2T@eIU$P(k(uRiqfQc'b\+)`e
W"l6onj7#m&FKp?q]Aubc,qh/Z?1@:b4'61WH.fFB=';l;:AV*]AJKX#mCZaW>9&o%s"1**7"5
%^/lc/Pj7C=a+'=U[QIb13Mk7)l6il1ZWNbkr<8.5_W\;L_;U'LjY`3p^D5d=f4"%/Ob6^p7
Cm8%!Dd1?bZF>L#cCr*lDej'9.qcIYbm%/F)$@Ns:i":TjFCQ+<n-+]AefMI>,Il1/M.bdtFm
0[TLBm&1F.6B5`Cf-d"X!,'dJ5mGBpr<G8T-0saKIJtm7G/jrZ:A\8BQ"S))rs^8UNifk)mB
C0"39WS+8]A&]ABe.BrW`l+7gE2nSWQL3^KJTaOpKSF-U.cc<]AlQ$gTi2'?_#(-3fV,I$U2F)*
qm6%kB?q%BLCBom&%#AScHr^Q5l_F2f1F5RFk./CiRqMUM#46!Ut6,7ep!toi(/=p4a@*Jkj
hgZh6/X_!QdA=eb6]AbmW-#-Dh?>;P[Zi6e/&Qs2PO<4QKdL@cn70-D[:4s8RLtkuFd2s*9Ci
CR_e\RPqJ*AdB=k0Y?$(@\RS0Vn6*I0P8Nd(W@>pBuol#K?i;5SFfSBa5J\4#o^EORG3pe9*
4Um1]AC-bT-#co&c-O=(&V6"7b<+<%EhW?+bps"QS,nMiI*NA3@*VgD^EElWCF6;)TuKr]A1fC
Wi\2k['_O$cUcZUNM7X4h311,Q%GJD4Asc7g;H(1EYmt,:lq/-LNt0Yh-u7'ORXO<Dm/FIa`
;&2[O4lVuk=L`8-oCL?[INl6=.0P+KD*slQ4Z%;O15@&JgK7-hBhJogAtVqGF5,$jt8Ek>?0
#RLRS=_5;]AGmZ6XV)a,5QsmDdes2f?;TWC$2=jas,'i3esK@pG2]AI7/\H22)-hR[C<n;a_(I
H1<J;O>"TqT]A/3sktTO&92e#;bKBVo(3CWXQ^"7p[DCl6M<EIhWSuYp8@[:/Z=k7mm-V]A^E5
*I19)nK!mA_rS4'JZ-O1j=DTDBsJ1(>:E;Q\P:i[B0q<Z(Wm*a?hadb7:W1'b,gZ)<(u039L
o[KUM^>G5C`k`pQl-D<J+D.rQMP1F;Rar4040QNE#@(_&D^>&0I?8%Z_FZjIR([^QGN_>a(@
CAg:I%d0<N9+>8(+Ku#^B6E"m3X_T4*.miR^s"g?g_,U/BJtl#m0DmJ(/YKe>s+Aj)Q1I\np
kk".gkOM-H5+1i!Idh%d@2^2=T!8[H#+8*ckFaN-"3EJ(LD8]A@^Zm0355a=WpBMac9j($DR4
(mg0GrT\,*VFHo"e6+m?pHHbW$?YOm2[_a]Ap%p&S76:RkW\hZtP.H`uV8DMgS&0muNnF(tD3
rq^I.+/A+:purB?V[kM\n4G@R+<ZUmfD9rS:XWJ*MG,"B"&=0@ALggi-ts(0mTr0rmWWMT7G
YPeBC-q[0LU.XUj%j$4m2Qh=,4HBk^%j>\R`AiDi$LuGX^pY(<ZFuWL&Db4O>Hrgn),jSN/`
-%6-3P+te%*O1Bq6`Y[m/Q?geE9gf*V%KCII1iBlAY]AA[`RpcH$mt[N@Y+e*IR/9C^I&pT#T
;A[YP8^.miD+jnZFZINu1oDS_h%9fr51G@PC%K.B)Bh2j<74l0Fo0\n[$h"nub5NWY-'(:Z(
1g6#ZbY4\8AZJZ#<p?s1;&-mD#C]A"QY96`o4!XIG&HN>1<j37^I'8GUB2EL>pd(g$nI+7I-\
K2&1'("fM\FEiNJ-RgWoZ[W5>"(0H4TCCrIbZ\XAcr[Xddu6=pOMc$#S!S+*g=oT)r?"m$fB
Js/sgH`E]AfI[J4AL1(o\]AQ21$c`YB5,VFT*Jho-,+[6Di%E@O*Z-jmI>ltS$2qlTZE*jLi-Q
`e-i"Nj(Tpe=u*2N8FB;`K#f;e)LZepl@!7AHq*./#[SHrP;<5NlB`3N.-#5>PN55s?iHi!V
:%Dh%3&hWL-q=#]Aig`qc0E#GqmEIdei#afDlU\`FC&lX.PHaoAg/;(0OBeLOs=?=C6_Y=^N&
2ot:hU?3qF03Zk21lbaj43=1Dds,Z>D^OX\9<FkdQMu!"W`l:F2"Y`,O\PW[r++IVeDsOt-g
L'QJ%Ln46S4;!\b1P)g9F#Hj5cuO*V7u-\0FmE9t-*VPCOhkacQ"Lin?hdLLVrL@,KB6e^j_
Db4+BKd]Ajph:Mdu`;^LchBO*++SA.$^b4=,5Gn*i]A#ouCN4%,D5R[NBD<hC+>h`Y^l2,6Fc<
I,:qn(W\\ch`ChXeilE<YCO_=\3*p.<rTp0<Q9TK(r-E$WdCd,S"Ka)AB7BGP/g[+GS5UoQ@
IY253/PHSn]A1U>C+>s#_>,e\,+#LW'!lf/m]AGh-_)kD.JXZL%3`^C+fMKd9*&986hhYe:]A"Y
RUt%<4aNhnN:^Ve[,gc9&Ap7AajDV*3S0_IB5\_JIV^.$+u6<QDAG]ALGpi?hM[=24]AeZMINo
JFWp?(_"2%q6*6qt6Y\DEuFV$66Tr*mPc.dO%OJ[JH0^OGr2GXGH>`&H6\S'.&W($kmfGmLt
t%g)XbV`ZhNIp2t,VHR5SgibjS>tTJk6k?YlQB`gBTf^8b%V@+jl,.mKL81C=c1Ng/0[<e6P
)%=bAUgMe*st&VV;e%"NcQ&I'HXCTXPoGe_6]A44`pV/FYOi.VluV3+%KDlq6@MG,E5#SQhp:
W!!dnnO^V$p)7,(k<KPp9_.en]A98UshrU%;FRMh/;g^t@.T4Ms!k*>N!N\.C@9Ef\S6%Yile
K_3$$Qc?>os7hp'*g;E.;un:.=P.Ks!?prV+!mpk$]AU*"8Jl?gI!?OT_Kc6Re8SSIc$rdD):
`aB5,XNB9`:iSGZi>MD0!:SJ>?6)QR!qh25BdH#MN/D4+tjMko4!_;A?'[LO.83kJq]AtEPbr
AI-^V.EHK_39tahW1_QNRNCF'`(e?TA&kXQ>C)^F\7jB#e5<rUu9.<C;N8=O@LVi8@&Yl/69
?Id[J*u`3pV+9.3Tk[ZF.`?DrH1nRR$&qnTX-,jp*pkg$*u?l]AA_*?G74K.A\sSReb[-+ckc
)pK*Ge3>!8A>"4Q0nh+QD*d.Yb-^W0eYj81+=amaaAa8^/H^D>R<YfoZX5O0nNnTr,pL[sD%
MjgR7%o2F9K8Ta>jkMOBpFQX4kH@e)^[l1ojSV,D6/Q&X4.*ZQY0sXTai^=G+iJ#`6=0oJ]A3
!dCODMX1d:b1qSN1n(Yb<`"7uA<R3uQRR)#qus3/2HGQS47<1(E*.TR`eG58rUPg1rh.b?'+
deW.1\\i%17_L\6bQ36nAGea!]Ap&;"c8TkRS]A_b`Do=8.h:@2!\Ui60EUr-gSdF+hT9*\&gS
^kmTF*8hronGi8Htd498:Bt8]A"(SQ_?B5Cq5"bQA`+\AQ1?MVKV`5MUhr?Q+Kf'LnJ``H*+B
T6"nYP5\e438d5?KRO$]AIr,qDU9WaAsqXC-t64n4)%!F8)n(%Q9ij8<$ubfmE[d(K(rXNM'%
Qm<He*p[ZrTV3#W=t%CQ/_D<_'1D#Kp&8lPrdVJ.H$eiYK\IBZX>jg0rCLsT7K(mcd8FVX02
tVi!3nbp=>7=>r,I8tMC*ZQ.<k_g>.\YmXJJ>ukbTo$V<%QJZ*pB/ai4ZgXH1!R0o0If(%/u
Gi_XID]A6'hfXnDfkdu@&*qX'W26Pc,!2,&M,Ef@F_CNAXH!QBX(W.GHcaPm;Y/\joXq5IN#@
QTq\PbGl59Dch1]A?oAGlC_]AlJS+anVGLir!Dq2/I2[3F68VT;:o;^R?S+!oI7lDanK0VM^+>
cUk#=pq!Um4Lr3R.b/oNQuP7B?sH$^Rr6_"QO6CDSPqHuo_F&J;V;Y*Z(4<m1m.SPf,RrS7l
2^mI:nb$K*Ffl=)CW>:r5\i%L=nIW*S8G\*A]A(WP90t#"g2dWN;5QhF9B(aI2ujNMVh!Sd55
$E`E'lMf)c4bl;>b;:H&:,*lrOp(QoMl[2pA>&rlt?4h3HfdYWNN52!dm.+T(n4-`?N5kK=D
,4f5;6*;ra6[co(NY6(8nSrC^1RIu;?j7di#]AbnKFs5Fl*ZJZFSD((R]A$2[9uC5Zd._Z[f/)
Ur`_.!]A>q6iLCB?!NJ$q:k9+&bkFQqdJ;FC^J_YZQ-X-Ue]A6b_0[ld$FB0Li#2pg,3S#i#fJ
/u7Cs\';s&u[BCCitJ\27GiUuE5cJK_=0Mpk!1pO^&[H!GL^2f.lP2L?KOP8UNkQ/P=LKAK?
Kk-G)eNa)J81U*,m.E\!HaXWmMuI,'q=9H>,4"bH$A`YJ;eP.=6ElLKO`\rS6_4,hZrdKn0f
.+-%(cPC0_ln(b1Oa6XWJ@\j4i*c_hPK'l.uC<dUMP]A^Os#TWtG=s\5#C7)erF(#(3RMEW-=
%qB&5h":i)'7nL5/dVs(s[1E%A,Yh=Op$WT0]A&pU`588)"^BpUtRoj[I68&SQJ'Ch12\EUu&
^L@A6"]A)]A?]AKuT!Q")qRAiZ`=#I-P^_qur#gZ#o@AC/_5."c;G[>X;]An<\hh;kFdX0\^\\S4
9TD%3HP`Bq8N3k50$"F5,HhUrX<HO&*,Bk4_6U!s5nKI07%*'TfW8bRr]Ae]AIC)(.#1PAeh<n
R`i9iejhP^:h\-..(*6J*;0@Me2>%&bgKiB,%7oI7lb*`4u\N''[b+$FR%^Ys$Vc]AC,SsL1K
D#r=BoH&;rV%&)5`>b?STB&H*SkPcCJLWZD=NO`T2'7D6Rq9Pk#pQ)\n+BqX6l&o\pb8j(2e
A'07P8OlNIBJV$</[>%H@/k`JUZ)o@t[!oRY&6]Afc,1t"TZf?/lP>3:0qTRdD`Q-RSNeWC@l
R=iI\k!="%Yoo:%^QGo8A6uCEnr2fO$T1;>JL&As76k!/61f-+)_TSL?]A-lB0)QsX^^!YD7_
_(Zb,#RGB1<?OKn;ZP5AnIA&?:;Zq:0/8%U#3D"(Z=Wcne*aQL0:a0%d)1V]Akc`]AbE*'V!6Y
]ApXjr&$H^8I*e5&0m4KPK?=G-mMgrlg=5PXOcD5-cI(:WU12H$r8nK]AjJ]A2FmZ5STokd)ICX
5ebOLWADgC*3M,=t='08?FDWc"a[A7F&6)k&ZPX%pq8QeS7m@l)5SGV8t$9iRk5-gq<cDYR/
Vg-EL<6gZaH19%q*^jEGMD#%gE^;-pCiO0o4*$opKM]AK"r?+Y[HLX;!b.E7\8Eq*g--q,qgM
5PZn2[Q)(N%jNU^n3bRnB?*WhbauWU*tRrG,pbtZE2+0N/n[lZ`j//E/>;I@p)E;6sXIp:?b
o`IJ_#5>]AhO`7QH\t%sQ&s_1/"T,6OX,+I7bK#udE`9dR_,!9R9<SH5XSK*fr;8t5Wte%^H6
&>d"`*W?P\(AfFH5GYhq]AAIP7%o03;8o_E1p6-EGQ?H`e@=0f.iMbO9g0'$Lke'67(=#i87%
-ELHpg\+,]AhVu\YQ@[0ffdj8i1_4,EHDh=W<D:A>)k&*G10m9`,\]A5NZI4*75IjLJC4fGlii
'+sp@^+QC"J_S8R:7(m6:9qA*4U7V0m8p=2oBA!s+:kmWs-XVSoGT3%Xdd$C8_F>Fp-NPQ\A
tT\=HYg$4Q&4-7lq*5l#f$]AoA]A!E;T`5Zm(Qgm0s2fA=*[88r47u9/\FFHc^0o94@]A"c/2VS
i>8spf&&4kRUf'!/=!IrYVq4<h^7&mj.GB8+'das6Ja]AlTC2d!Y"U[gaST[A%AHgVMCqd<c?
PXe2]Aj6jU<gUcN%D9Gm*2miU)Cm=<F0i9XRa]AjB.`('S.%r-mg6\2Ld_C[mr+kmJMT(hTNe]A
@e*3:s,:3W?[V\ab5QUDRI^@*tM'XN?N6`#8qHp(!s>FN*5EM8HYOnVSGfG&1/ApPVTRSlo<
G;[%l!OSr%-(N,[$K_aquMpVu''#IumJ7?PC[lO`i_M)e9\9]A`\Rq7>AN>NY=k,k(lV7:a7;
!o.]ACqWkg]A.@^sQkn33(lq7-OTHUa>&t"82B;bT7<MKaKbmL<Tt"mr7Hgpjk;A%ekF%?Z:uU
J7cZGoPZFa,!Cm;72]A;\k?a($\cdJ<g1q9>iFrj2*C&UtS8SdguIs*R47/XF]Aq^<RS2PFF*K
nbMV<%@bV'AtSR?4"9pC7'rjqPhs,NeS`+\H)MXJ*?%f6?Cmbj810g*=>io%a$\A9QJK9Eb+
8a&$&An0p=+)n540ae+ZW%qkBi*MC<@SFH>?k37?(;3mBD=f=HPNjPVEYFNIJc+kq?JG,k!n
5dp>%t9rZK+8VLBILWK2u!OKoq!^r@VUZ9`Q[XKpjd0IeP5AN6,giN`Z&c:A-i>MB9c]A&]Af8
UjaNN/fM]A.\:U)R,<F:Oukb;hL]AcO/!Dp/NV(E;=M,*(<Qa[m=$M:3NOW5lr\qA`_r<PXQq.
/pcf,-&I4Wq%]AGs$86!l]A<7Q.$D[@-eRMlN*)dfDslIbFWgXY6lN5CZ`:==Z=I"\VoW$Dhpu
<'M)>RZOO9d!mJZ"(k(mlR,j?mT$(MWna&>CA1il@nPoVTZD4..&W9j1O^b/OYmi]AeaYM+QD
o(JX3G'p]AE1#BKrA4>ogd2GeXU#Zqj?l.DaSh%+lcK7E7%PqACJS6dIW@r5gBb*#@*<Fh-OA
PiJOhrYT@:\mr>N`k_ma\Rgp)Ypq0NJK4-Sp:&4;M.:d,&oqrA,o#9e$M=pO>LVpPg*JoKu3
jfm0^#C]AB!;`A`FL&JfDh3.$"@r]A>8bdD`,b.;Y2l+&KhK.W@\SJrh68Ur0&SmDR04pcaoE"
4r#"mZ7dms[th-k\Bq+YSF7-oJN=_M=/.bYFo;C/Gi07OTcEP6f5ZX9d)'rb`MmBE!8Bp;G@
3$l*F%sRM"gN:1+,TiRc\-SGRdW$=P5.>W"*C:QB:(31<h):*o84k]A":u"Eoj2E0@rWFV]A["
Nd-rP2'Sc/D\pgVAT`]AEj:'4eY7,SU>irl!0%^S+fWU_;=BuO'W9iBk<^78l![`$oH5t<'QK
kWsqH@[H6#&JbONKC-FVWh3lW7!12>*'aHd>SO<@r3tHV*HM;s3iN(:+NYNVUp/eHd`B>5$7
DE&\^U`aG0%k8e]A21>Y-/?]AuYfdEQ"9C"O]AB7\RJgXd-,3qLs)G%eSP]A"a0V\LMB;l6W4B0o
b;)oq0SjT+=X#DXmoSW]A[dnfcu]A+N*o9kjYbdE?dZiTbr?*XTV!BC@3S<gqSs#l#;E9rRC%S
>XbgR;`*uhT?$6'l!2,ILaD[_R(DM%<bl3`@<]AI/*sd,@iZBPb$gVk#Au5FoX3Q6ZfGFVl[3
>\f9dWL/`M+KYgDqSbL):rkn`3i#PYo2A=Tl/s(<I!/'lrtL7iiMj(ZZ%,q'GMG-N<W$c%c8
id9)lRD>N(jX/[R#i5upEn<^l^VD6/MnR<u0aI-Qg[B#<3d6V`4P9$RQ3!ZDF$A#U"OXi<$3
g\Dja?0#rk72uX23\R`]A+o\JkERJikG+%#=_u`nI?mWJP]A)<GV%N@s7QQkQS*0RJJ:75W/j,
HCC:]A'[Z=]Agq`_-5]AQu`:PZ.Ao+o#W`@_L[Hah:pEh_m$U:,%VBS-S")A+rCIf@R'jihMKFS
'plNIbIC)=nC):'&4/'%ETE)1aAW\U!Mq6]A@so1U!q4/aW_qd4MNNY7:8P+Jcg6&3B>,]AbK)
KUS4TF,^(Aa'+k@3-s8C)"e$oK1;eP25K@EDS5V1[2;YL06$R'Ko>C\hYt_Ml#iaZAZ6d.We
)PmO2#VY+elYOBe&'uJS3na=+^9:'hGc5OY^e5`X@EU8n\2RiJX,%aMVJl>;cd2#&(U517:Y
K!ZYDX9C28e;GKFTjPA">aPQL3>su.'NZRP1EG"Q-IiU7d#;uJrl\ZJ=(r$q1NBpZ*s'@23I
8C_-c5#s135LN)l-4%fooM'qCcuYDK,Tl+>I//k)_[c%7!LJrnB."Jn-rp&,R1GCl8ZjnCL=
GfZh=nG4n'Ws?MffsU?__ofnZ!cL`I&7P)F@:;17UalfjjLY$>dY6fK`n)hHMq:[1,2pinoM
XSN2G2o[Pg,d7FK8$Qm.Ge%_D=;%B`SBu&SaBsN0u,M>$5%XdFp*,cl*4!g8%!]A[-j+SFDm"
^idt.[31jg2#f4sdW]AO'-X?Fc!,o;`aK(DZWLjnesZh[.ua)_Lq%1soN);$$B+%'cN`hAA0k
b-&R#B1(6c*(D&aI_%WOX<o>eJJ\X=3U='gkhl^Vqm0k`^`fo+88XNEJIa8//uoABAWH]AJ=T
t^:j@jpIqeX-L4lK8X>Xk%>?rMWkL*lkrI0ER+2A`:jQ#q_>2M-,K&86@Fi9RJ?VNAe\pbug
1rbU=f8kYac<XgD`sA?7Mk[o$R'01gi2H?@!A@2<d>=.,15`bXOo>`?2L%@:m;Bi1QCrG[mh
Le5&%N$FLE3R@c$Q9!?gGVK1,G:MVA`i:<a%Bp-r2%h$@[K`LHG8G_rDPjpj3l02S$%HJo9*
tPnb85(0m60.ls#"\NnVl]AVMkW+23X+HPu:.S06b`iua0U"`E(sO;@6AUFB_Xle="?P@_bp,
W[.@muJ*:Zk$cY%18GEHE"k>;pp`p!39/MPoP69cmBa+"ne6@:J48+;HK:gR!B4u%@"BT7FL
?W,KJ\kirAAK4J,!kf&>Zb;D$o'+TJ-CO&g*6a79LmBe>Q,7U2,_#%C\4=$GA^qI=I;lQ[gL
"0Sh=VSD7=*QstPA_eFa6MV5#W-4nLD/D<3DWc&^$D)[d6iR!9>^t"lr_)bu_QRsCUo5,Y=(
5o`iN/Dl7-I:KRQ&-(c,f[;hph9:KpJi;XIE0&nQU3&AQi`2':j9Ca_>$+c"t3d>8$h*Vc/n
gZ_9DDppg+fVpg&W4m'5R968(!MBkMe7Erh222[E418N;i%Y8SH=kf4iH#l%OZ^nJK7UlNRF
WQJ6-Un1-QA!=!YXE&P8gd!Z\&SUK+3/l<gaN)C5e?Pt:UAYoF_-q&hEjYHs-6BTC`cf&Bq2
[u0t2pVG(rsf<uV^QXgfC16<9aIPq-]AO"FqVLL*bmk?dQUC@='%HD6V=EPV-UR),m`Hm7_k4
AFHW)15hMi6!U;Ld)ii5+p0mCTIZ"!/[9(4/pEVr'/=rJo3(rQn/LVL;0OaRfr4lMFtPGmS1
HEWZ#&T):3B5/\'0V9`Qt/hSL2,>naodsXCDH9S8>*7msJgjR;fg[:p@c,NaN&GEIeN-dt=_
]Ac[[WsF\?9t,Dloa8N]A3m#,=A'Ebg]Aa[3-7O)!d\@`9U0U3i\IUDL5>/FH!*1E&WQ7Ud?cr#
l[L1=-AO==0JdaH()EnlaAp1+5kIX#\D@dZ84n-!'Ms]Ags6tGhn#i`k,3H=F9dBnhP1"TBIN
'#8MueP*JAb=OpdK-`lkoXp+JQ,M8aHg`\IVqMM@sAfglrjqse\R$'#RtjRdSs,J+lL_68^m
IX]AK5^Z!Wf`T-%RmChbDml'g8=:t4^h?)Ra-c.@_UOZ[67s-)M`7&Tn`pr(rp)tBL%0^suWD
%tS2^&nb?*l@u`>0erc2gm3'jM`V4hJXZ/IV#%og&U1YT.9%HSW`i8\Hj>(LUf@m/q6#psEp
hgM*nDk+gQO+cAVS'N")cPOX^"-6!6\(=]Ac[:0%81(Yt&W.o4Ta09,(qf:8.$\r+ko/'n'6>
afmP;*oJ!-lEc3jN`N6XWMD2LlDYV9:knA^f=C5(?*3$4*tb(S?B<gNZR+c^SmHDU'LhZG&+
W+<>=k_!J/ZS7I?%Kch'f+,l(ph[E2EpWe<t/M%K`S_]A/7`nD!#_ELo>%G4H;2aeJW(prq7"
\mF':Tib*C-/AB6q0P\mGI[RK;HlGDle5VVq[\jbRm2MbErK#+=,C^4dW1VTf_D#T[2D,MZA
QpW0'P^U]A&!18q3n4fcH*;$G<X!4F8*Gi3gELJS$[LAM5C6q5kmBT/VR`g\(+5F*":<n4sl]A
#PIP+]A@JFl;'@e(K,m7U&j/8ps[K*4K0Js+SF)l\soh#Buodjp`"iJ9K8L?J.U?4;Ph^]A9t!
&hS6S3u25I=>+@/9g>$7.%eNoZt/$.<HrlWlDnCNN[i*Y160XpS*Zua15cJ6r[X9XeP8o/s*
$VWgQuOUm>b=S&6O_?M@od^7g6jqJ=T'mpgDFd4m[ON;1Ga6X)(^RVeAI,]A$FQ.#Wf4)Er:-
onE!hRM9DpQG>nfMgVs'SeaC0lN,a,r.0)XQmS3GTf/*?Xe!n)c"_`sX+CB_47<=l).%C8DH
!Cl=NuM7U&<$<dQRIi=VMds$/poRFV&QsaH2JTImQWFVjbtHD@f7,X)p/!l$%MO;Gsj=pn7\
<d(?2pIePfHNGKeZ>3Yrr,M5#g1mcWB$#&`(MeNMHRrc&Zr@<RTj;aV$96%G`nn<#3*N\&.]A
WYsbh0t?eEWUd:'.bf=EDO>gMYFjXA_1;?BB@:9anUo='`WNnoD7Oc"=?BkC+h0+(2I*.oae
E7>['37+VD8jeZ;?`Ab%7BX:n!LiG=)pb?QDmIXG%J:B0.5/!Z!U\H\7/lER5?>!$Q"Qd)7i
Cb-s=Fd`9g)V:3.MQ"&#k(hH^<@;qB;=%!;,NX/6a;/EoQ"*o<C_[uPj?;4\HgdbdO#h&E`m
kdi-i>[SVJW4V$oE1[ZR^8OfC/o/@Xm>`3h&(2/kVC<ZNW;ag5.$-*'fVX;N7R@@d=j_[&OP
tUmW9?8d3\X#.XY<>8'j;]AY7*XDOYR;L-/$(rO()FQSg0'1b,ENBTff_nG>*""0S:RDPW?.\
g^-eL5=Z,ql"5N^mgcB]A%(.4ZnnlJctqC7,i&9Z`b$5'epX1*1QF*Zf:q\]AksA6uDBG.[o7Y
GTN-D7Mb^ONZRE4*@3sb1F)-K$fpI^ssg8+D6,m[[BbP0fhgmj9e5tBXG=m(r,9T>7^T9.SH
M",-EVKq=]AK</8Zo!5ST]A04FBZ&Lerr`XkIE'^'15KEBAJR-5b[>c4i'*S!8@r(t(UA3,Ug]A
J5)GL0D,H9T%XohMejYo%WJcluFq\.4jNJn>$b@m58o>R$*MS2+Zdg<(r`?)LiIr?@iZ@N3s
2pI_Xn'Tl6A6V##[5@lU7oqXqL:02KT-?*C1Pu?mq>[an3)2'8e(;P,qZh7d<o]A1Q6M1l=1O
hn]A:";Wi7VD0]Ad4)3Uf`uHTX&AiCJOL%Vk"#3?&($o(#([\=27J_0Z4SJomRdtT$:.Bci"!r
LHdcOsmL"u.3@_!Q#lTgoTX#FQ1!SD31pa"M0h`Y3373T>64,o8#OBqk%8\N9%r"fRg<>5&A
iL-?<gop5g?r7.3`$\t^?INH!#o(Mm%Ci1@3&F-DJ^3lR=^\T[KTXmR#P'tQcQIiUqNs*V!`
jZLD5R##O+)=-#036/%1`uT!+&`m[knr74OIaRPqUBt\Pr;T"]An=!A\I[dJ0G*Q#[mhS3\`:
h]A(<lLNFPXGFH.4(0R9*G4[5GL,4qf>e!E8s5XctgdH\ZhVNGoD@1$=b]A'LF%4IGa'Mbp$V8
gj@;MUO\@>/;,8<b$beURkZD4).q`Jc+6#(;@uL>:SOJG#ciHa/47;*eY>b4>i2Q&630r^&b
s;-[`Co=#\MuCP_b<ei[jCr0U+aYZ"jL5`sn:^rtt_C%&9;*ZZ]A>*sbJVR/i[q"0h36"jWGf
38O6@0=kBTj4q7dY=XEteksD$5-;j9W(Cp^?YT>X95D<!A7'Hq=U0Fir4\dC/AJ)oNRUc&&'
)f+RP1Z(Wq!Lo=gHC9>7lD8E@oAcDm.V=,i\TZ0i*\EYA\GB1/:$eT?pnqq2Pqc/=Mk#TSq4
#i#8ut/Dq"_bFe_*4,A\"aVI3[@2cS$]AIDZ98:n?Rl2NgHBUIP&^V"]An+o&itH+jd.B,sDcO
8b]A74*14%bh)>,?d=p=4LK+j<o68=9/D>&d^'k$aica"nFl.i.s_4bhe-7(Mp%?->[!20']Au
<<o9"p;_g"!9@B8*(3ZC7a9)`.GErLF3rM<fBL!lEaH3%/:o9d_E=ob4P=)<SkpRd_'_Wri;
"1UoS=_`.nF8gDV-TFP4D]A7Ch1/YI."s.<eZN&XkP1iX[TR1%midiWQ:tki+:bM99/VT*I_2
&7;*OqG1D;;<5(Pne#1Qm5!+"4DD%gC5q.*>/T.#MZ_JFMg--M1'n*>;K*F(fBMb-CI\r"T7
_:S.AiFJO$PG$-3b^=G]A<5^,mNB5^j^c]A[+b15\QDnpr\(PL.d:.7JfTYGr0j:tD]A@C&V16p
<6mt_kro_<7Ps[ZI*t_lK!,g>FaR*J"EV[\8?N4d:6<ahf6o*l#gp1D;<+2F;9QdJ(Flt*PO
S[F7R]A1T:*!`W/BUWk<S&/6)Gl^*8hPF9%ef;2Y&=ZkKT7:aT<.&?&@5uqufiDr$YpV'V$0)
FHpW$%@4j\p^>_F/"_IQ$j%HUc7&@+>cXQF6Dik6%ukQpL+h(hV%l:*6Ii%5qi<F@c2@$0f@
M&MdHO+(bkJfY%JeKa9P'>MY)@7Vhl&9tpaR.qRHi;6$^a*^/?m\)"Z'S"QI4T4W(FrXe]A<9
SMp@h%F:;1C[P[S9MepNdQb6qJ5F^$%.(<'oli2>uJmFea#+`R!@+ne_:csV<<k;1!ZR5EI8
5P`_I\@YZ35.gD@gs=S53D=PdesER*f!\Z04/uLkkGV7rBPHbQ!!pFnU.;1#*qZuj[qC(/PE
a@aDo,kSe##Z&?a?UAY\eDE1U&u;jDh;;9:^lDrDnj#>5pW]A,4q%s'C<agG1iP%QlX]AU6+jh
?cD*S!>j_>Dg2Ig]A!`s"0e^=]Ab$LWF=m&V""$5VGZ]A4q<K8qmEaFD@PRc]A&kT-L?I4JUZ8rS
V%dGuuc/Q?g;eX-UaTj`*%o&GbW_$Y;_Si9bt%>r6e80W>U'3\0/a?3"mZ]AlP7`B'Rg:1C;S
]A(iVmecZ7?]A]A.-%F4,3^>k"i'Z0QY>nk$.I[`,40>9clJuC%cQ&j176F)<U.@*>-V::iG>""
S!?o<#,Slf"Ikn.^1jjn]A1EUkqm7#<BnP[fB`Y#.DZl]ArmbXZ52XiW)r.G<4=NAc8?hLKS7"
A.<"K^(X`FaScIR.$D$>b%V"NGD10"(_'uLJEbn`"p9TUuZ,3a>@;nFIC?njr*:j1FoGY+J?
93Ok[$qZ\_F]A:U[/p`Cp3D/aUZ(`8BCbWjAZL(Vn*N)V[KaK[CJV@RSp\HZ^r^Q>+)"+5K-d
MMAPW:1j\6Wt[SN^t6.?C;YgZWjEeMAV7o`55I`9Y<VcK^/E+2(dS>eBg.ddp[k<53A=EbXP
=.k[.K=o%U4Z$_U@#q=N%>0=<)g6f(G*!>PboK"IpWqdjAY0mDI)WS(C"a[tK577o?e_ek49
T[6@BG%_s#OWQ0%4%,HQL;_b?]A]A\&Ktrq5^X)]AbIg,0Y?-G`IBj4E1?1t]A;H$VZ+(61cA:,#
[%R&JIP4N,LhYY5ril3rh+^t`\G%biJtW`_!j(<S/2*!AJl7HGi<.o-_j_4PSH;&C<W]Al"ar
Z=TqU4]A_MX,qOeF0[ZlL?"R5.$bPO`Uc+BYf!OMJqJXq]AYq*tJmc=\eH!HH)(ZJn]AYS'WX<D
J3._Phj,2P3W"Yo2Yr3$/1Y>hNFR_<S3WD[(N6@6OjGaCFS8n!OUR;'0f/+4j5G8(=c!FB&6
:6oDig&:XSjMN8DcpFmRI.m[mH@&Y-n8Y?_G/K;cLMXYd596I1j!]A[=JrhVP@8E04pM9(/u?
b;.<LAadr+(p4@`8@#!m?]A..Pl)c<4>H`=(j$0XOEo:bIhtsf6W*\<,0Z*;BusJm*7!ks%ru
^YH)I;:[V$HDo\X-k$Z]AmqmRhu[o7+@p]AQY(rm[`[u_"Gi3]A21/ma\gN&/]AFij'D6g5+X*kc
arc]A#W29]AI@U2+Fpc7Y4d""Zh-61CGEk,#PnU+c5fj)-<6G9aYQTIVi<f)8G53D-1;`';S0^
NWZY6:O+3$1SB2k`H>r:WjXCT')JEc9h/n7aQ6&s3qh_*n!+'OImtW[gPl'-6[X%*;XngCbD
=JsDX`_`paSJ(,<V(40DV&fo_Xq9kmeHC(t6MgKYF/!J5lLsiX+pF!QDT_BLDCi`jF?Ci.b6
(BTm&YRcM?W7q]AVqc4p?*,%>/4F^&"qu6WrPE#ao]AN=-nl_N]A`r8A:^AVmPY*q0elUfJu6o6
^YP]A*9k^/E49&TEBdq]ABGOnK*D9?9m`t0e0FV0^''?lOSoYX[S0.E\XYFg!sl[NbeORV(3i.
o;%8`kU1q2/Ma`5C8<A*pY6eA<N$;]A8Hf2Ep<j08gP!-'+b5`7bZV=Eql9u7ormq)B@P,GL[
5)R[c41LXLT7`X@@a[k78aIGTpA^eAA*a>o=k#.IFnL3S=VSk:uKbgoJo^mZA-L;RW--g@&p
KCA9sMo1F<*9a!t,pfW1fO>Cb4JoZaKb263L<7Ahj3*V(t:WQCdm3(DpX'[g59g/R]A1I:Mc4
;>WWG+D5g2>'af0SOEAb0N<"#'[j9:::h>ZfWm,l"K5j`Z^!kkpK2g=@p+AV7Aff!XB<Z-HQ
?!\+`PaTVp5>/C,\0(Ht:rGH9Au?J12K=::%$,9*6%`3/!nTg?O+?=Fi#eL'pSg+1-Z'e>Z,
>(!tXf%tse.t.?jd?Ct?iV%W$]A^6&r3@j[C7!/d?8gbW=.@`[Ejk!/2q4l)MX+:)c&%Vf!St
PR#PbZ$^;TL!DV%.t/$$r]A>9sUn\;=DgO6L$3eNMNc.M$92jk%oqml,9SeSBF.RWS:2$@&iL
1UksZFJ8+'o!?I9MbF*JS8!e1QXPrA^V#hE8CRItA4pO_>CkcZ1V,K9R8OF\\GTfJEjNX;#h
p+.q(oFlA=Hs-#ipRTjNI:NQnbe[p9NKZ*\R!A8opDo0''eHqb[SLudtu6j&SfPIF*efM5"0
3;*4(.\BnuHM.RLhT\R=:2hsucK7^l<JOqZdGi_!aj!l`,Z1hLPXF4T/DYdG6<pWiN96l.2g
@>n]AAp3a0c0rp@L.rOAoL0O(bL!;N2R>=k'$18b=>&PR&nnitDoXK5S3OK,PZuA8_]A1"]A11\
(R%<N:8%:UjWUH,mjO%n8Ej@afmel/_R2q!R<OL;tX_*S%EepIBmAH-??%Ag^V2-_s-NEubm
a86hp[>U3Z`"bHa=\QSTfI!G_t]Af/;Qs%]AXF&gbJN;mpal.\:<hf9A>uCofaZpE7p7J-&Y4C
HEKg]Ai3RtDPZ3VihhmMJFJ%(kSf;Le2,j2q\Pf_>>Y]AaO$kh$DX+fU]A_fkY2EltW#)`<OTl'
OBl#te1<#JQgIN09"Bhe5#l1;XE;$2keoO1)drICud7&b]Akn#5W@nSX9MFXZS%N(=tdSZYu)
T,9`BeXiUN>E1kD^FdRB-Y45M(5j8**c<%LIqRQMR(j_@KcgQ$E*57Y`.1!VZ</Ajku$FNEa
!X%dEbmg43gZ72Xj(k?2V]AGB+r2NoP*%ud"@BYbLXZ!#*S)j;A5k8>l$%+q>[j$Pks8)CObh
ubc.uqZOujip+_7PK_<\2@DkcD+Qa(t&^+]AK:)^hgJpqG6V4T9`3;0=T!ElXX8rS:&NF7RlJ
3EaUbApd1$+nS/fAfiML:_TOUFBJJ:d7]A[o5N"d7$^@'k+6"uPggjUjPD//p:u/0PAZ"HOj.
ajS@eRf_!TLsY/V@CC/V3;j>d*Kr#;2TnJ+%fAAF=$3lM6j%*Cg]A]A#WsA8EU+pQdcN;UAL#&
*d8kmckQC0^N3c[8"IYEXP[&2p$c*rOTbJP/.LTdH?qnFTo5ihFo*\YFB;T9rZ,<hd_5W2@>
j<P@s0<!$"Tg;Y<L4<#)ZCc?C[t&[JlS^HVK)lhO%j(de0'N`<3;[ZGEmIQ9*Smf;B<#0/0X
mqDi?)J`m>?UeuTBgD@'QXZ<DN?.5HnkMYA.;W!f5"^g1s*,d%Zoqq#9O4!Jp=5=@8`2^@q4
Yo_[M7E`I57g_dH_65eVqj0H#7QY:q$&'?K&t9*;acE=+tUPk-U$&IJ,([62:icpP]AGkGBiV
!X!e$DY_9\+ce[tb8*b<5r"oUkd&"-HN_LM6#<L<7sTnK/93O"sdg'"5]AAC@(H2]A/#CK#57e
aT+Q)j-K);bm0pPIg;hnh^q*>2ON>Pc5UcWCcp9BQeC/:_>f,)fd6t%UiNOCc1fOsgi9nY`[
?m59O&Z!`2i%9A8nMBs1(N`I6MiU3H?f>-;:CCE@2a'gg14>EE22,GlA>d>eTRb,!)1$90#;
J4:,m4gq8ca-f$HT/hJ62&3'F8Ldn4ZW$r(lO58%T3b)ZY+((&_)i,XaE%+$')Y"n`%*.BrE
GEo?"rBA.O.1iXd;_6s/[`3!qme\&#OY1I//%7TjP#>)4P1MI,$'mAi5i9=<*7p!-L8p?HSN
(A'V,bS\i'G:W.G2KMu8]AoEk^IUrL2?1dd;2Lk-S!G]AI1+6U,Q/V()5!D<our4V1$KJ,_`'8
`:kYB"h_^hY#hEq^QZ?>D=Id0X>q^'^3'[^h*+<CKd2^kVh+b3jC/G.3FK88,!ch2DIXI&.i
:F`YWJ$>':G``E3_Of."s-cP+oT!0qbDo#+RUXa8W=lbiGhiM=Bp4,[r%b[9(G*CS"(R6V/d
rTrM,XGTCV@48$^1cUG@E>5T.V>s=K%oAnYqq]As05NMlpPc;k?6U;)Gq6'!\tdgXLV1>>a[;
4I7IMnPs`5t*aupjGgOiOPR"GM,?M1NC9RG+.q\$opL63)F#k("!t)GED/=-@6/Y5s<iL:o8
L4!m'[h81[aCl>r-<9/XF4j\TJ8)=\q7aeo$UDu!3$$lEf<M[bOP]A_-1P:#k6Jj\'UZV.qDS
c/DmL#973`H$R@s3^&]A>jfpjO1!=#RFcBji`2Jo\,)M1bJ,.U^8%4q*[<pr4:9GL:)4Hmt/H
%7"`u(-bG>aho3UIQm55)XFg%tuOmNl"6\NL28ed_91=1EHSDBB!oV"HNU,"VPV'mo9EX7JG
Bg*=l3Q8@1)?;=Q/A'UJ*AnL!2NcHt4f&F.8k%=o)ld,gHoR9(FEB$1.`>9beT'D_!*UId/&
6,o-4bKa<oE6F]A]A0uSZO2"Xu8W<,>,;fK-UifR0-$]Ah-V/?$8%+tSon^sBi%iQS%go;A'H:c
U6.jC_`^`LV73,-0%fl!#+[%I7//eOW-iU]Af]A>uFNc/nYj&mtGM&qNNXf`,_$Z?#<rS-.$nD
2@p%[eFJu9.._Mff4O<J&Q&4u-;@o$N8oCjob;&3O`H'!Sbtc=)'k!8gP$&oP;c-1fN9m^"r
8)$oaBXd%aE;7#cF!!!$($8lT]A1BSd25[NuRCBp[E^d<Y+u;HCpd;E"mV`*P:[tk&L72P>,3
JI(o[L-tg6Te=V',d1o<5Fft_4moPT3%)1\p9g9k\AjhEY2,6!&j+@.l[lpO".Z[`\7Y/a'c
,cQ[)D'2ClF::dObG`]Ap(OQ)9W?chd'fjKnY7($q0rk07*CV3ChhidfG.f-*<]Af!1mqt"e72
c;+UjKB&UKmbTPkiYPpte8p6<g_&FJC2(5rSD"J9u@G.Y@]AqW6m8RtL#[;[%<bFH(bIGZmT"
43I9KPr)OL9^ZlbS`@3LI-tGdlM/3ZR7=(ea_GL,\d_F=J".[^f1)\#M;i\/o*P53WBGWT0i
s7cC]AH$6=!LeG"2J!gDrLuPEc-=)^?@Kp>99g384`!d(jWA>rYDZ`EUu_>]Auh<J(#6TW`62u
YXn@iR/7Zadk;f`N`DDg>HJ.5?=)[kkh&?HTjrSe`GjS75GeX_<C0ch3l?Ap0q>catbTE5t(
a=;HYCtKj<GofnPkM^d!g>%XYARRL[LO(]AJdb+,&&OQR=Y#[adC\QJLOi3HnXdFTrZokD!mN
?p(@C'R/^Vd6Tq.?"S6G&knZN3T2B2ZeCKafWp:\#he7!'IL$"#YnWau2gHYsQJ_1J4TZq+U
pG@ZWWrKai2Uo#U7JPsf;g&ZuRh"W]A=O6BVbKBgp8#FJbnkQm;*:\au2?I[sW[17kTVC&#'8
&B^U1;5G+3,fNGfoOA%B&T3S:$Fh;En]AXZ5HA$dFPhi(@kGtn%OrFf37WrL.M2T;>_6jZ`>Z
]A,q4qS`!0-+7uI%63\?gjV5F<s'm/#)gqicje5N080isA(m5j.C`<M;5_(-[K-`^r[J?qN+Y
545@@'91li;+dAedl]AF*uG#R^Aj_cT=Xq_r*$8$K1\fW"CY;/_8gTH.a1+sf!J5HZ2%N]A:i=
?^e,LCH!ISfVD<X@g]A]AcA=+@AT)9En.^E!ok![Ol9*1G:gq*Yg.q_3?A@.B4djoFoT:*QoUt
Dskq_kj7T@4s6dG)g`_BNV")PI;EHr8lO[@3I`4^H^;+(=W=;u5r&7t0*nY%M/JRdiXHs0ra
p@l<.<3O8J0G9fq#^7+VkJ<G0G2)VJ1dO%$J3?ZH'Gln%T`#"8;9G%e4^nETj["GWjT!pN#1
U5t=Ds^/Rt881%!I\Lg]AYr2=EV#i0b<m(;E0EkjGeB=jV1-`SWq<a]A:VjGirZDT<hPh8YSg%
C]AW=J4LRJD6?_uT6hB+I?RXR(IO:b9K`R49mtujqqOd&`1MEq<6U-7Ha?g=[o[$jR0NPlB'r
t.Gj?I-pMcdf%bbq:^,GUqLhLdT<e(U!eT&uEqV>SD-pJ8\c1O"E2fHdO\LUV%04j@"(.kCr
W8C7Z5r2P[IBn]A(pQrKt&^B.Appct?`^3=b*fPL^QBHBpk62rMUYMdF?P.\rG=tb=\5.Kn06
[,EP"Buk_lLmbe5N<S"Kn7cf/\NE8I3XIfSo?#4$,J%5F6.K:;pR6qZmFh+g0q7i=ZsjfHeN
2P+m8+?;XbMP9jDD="qY9gfpL8/fA)X3u@7``u.YZg"8>rmqJHF;;Y:eKLgmuC#BXhEg8C$Q
e@XKSa%#bqSk(t\E0LL'W^+O[jH_N:-57?7e\bC$Y4hV]Ab&IsZP1%ih/Dd<.t&KUBdRs/kT/
\AN^?r)U+o:h2,lQG3aG81?RuMaam3@k9iXXJ'D&\q)!`2aY'gE9k@&4Q+DcJp^:=%i"UhXc
q"K0lbF4*EZZe'.mW]As=<hE6tA*X2DYn_&(p;LC,bKJ-(n[&7XE@Y>R:2_3klI$M+\%@1e'9
Ck\=JjP5>U%c__Au$/-^oSMD/r(.-ZLf@\Z-qk7KC.//q<;e4F.%EcK8$9(a_/@g@>14>"83
*UP\8pmm!hp76]At,"lA+,TrP]AYnC-9Aa)k?JkrO:_hjjRiT5ne7k!jbs@?c`\+cjHg>>mZ3:
_k:J;Sc*CR$dBb_j#F:"Y<D[6e+d)[V)I.XGh")C_jQW&XnVlPcUaW5:*7n77o;o,AX?km>k
cMa21<dF6&SkAtUdLL(EY.l-R]A=cBanZDc3O<kqIpYTm-;-@pd[uoNlJ03AB#Ag!RI=!YCB,
gG+Yi=aIB)EuY7,D)2mKY!qrTpU1\&>l6,@q&;PL$2$,2>sO,'e%IcO`+04t.1O]Ae6_'*+)n
(j%cUURR@R$A[[1$;#huP2X$##&10H2QA\L]A(sa,ufJ^(B]AW'VF[TBsu\Lka2>uCdLe@pjuC
*V*,)Vp$Fo^hk.Y7\#fro@%t%.[n/niVgMLYpIB5'qOmE+/X_3OHG13_+*?s0)ma9e@\:)"/
(ar3@2Q`dL=_J\!rX6oKB&6F/-3`8(TpFhn%nN1OP(:EgZeg[cZs8/"_lfA]Aq!AJ:Vs6E2kP
FK_J`cod#Zq1f^\_eU:0#^@^>tqZRMHK6GmU1Mp)$s9Nk,r0S(bar%BD)r1s3:+uPr%9KY)i
e%2?SWMIr]A/"Q(B`6b'JNB&57'h3Qrp-]A?VlCtGn!5^9`IGSpej5N+BL4\i>"L=C1e<8:D^<
l"-,P"A\Erg1KSS8,-SR!/X<(ZCS$U&,@\j'r+XHe8,YW7'n@OipbrBC.T7;uVU^*"k4hOOQ
/r7ap=%'RX,W&M(?AQM4>+:12#s,"FZ)hkZ`lOYhD+u>O-D<=6Yh]A*\8#=k_'/\pi)AIXS$9
1"7oLOiO&<COOo8>_,2aoAn>!=7Cd2dC#LQ)_ZI=&J8FciK1b3Y]Afl-amI\>\o;pBd1;-4lp
Mf?@#c(EMf+>o=:Run5b\I)4NDKkZ_W##Md`'A!s:p39WL?JP_Xk6=5TX;-[%4+nEcU/1uIS
QaKTr`VLQ;W+taL&W:HV.IR3[*\iTIGil&_HLqVnfscrtc+E_VDG:;diF@u=26UT]AQ6&noQX
,p7V#TgZVS[s';EX&_EiDV6(=mfC1Y^o8e:,aA4l46N]AqE$Qo!daf7F]ALQh.<5"FE3+j#),k
;'ZRGfjj=.`D.5GE;*-7s8@Z`sFD)sF/L7B$`E?5N)ao%n_P79'"Wm.hWtVAa[*(:"-dNSFY
dSCl81/Vr(#'k+.kUs+B=&6%,"]A.p.<N\]AdUI,[LNH.\M;Sd<)_5lHij@gsW%*Ki>tf`ibOY
Y=2=pe8>d!.gg@*kRh'/?C>Oh]A9e1UDl;a=R7=g8<td:Dd+GE6A[UZ1h]A57XO;nbgC>Q0Z1(
':'j!_F?[($q,$dVEkHBXYE#'Y_#)GCE7fJ^8`P15]A,Y`RZh@R)g&!RRi'#l]ABhqsqbeP^bi
X,a@rgUj4p4Q7ahFpX"V_CmX-F$6Z@E4WTC.YH6$ZQ2Ve16:o\#D2@.1M?g8(/"BCaB!dq<M
R;!H4&)_`f$HfP#3!,/+58m,&IE4HXWG#`Ja,mW>*5C7P0;qF?!4Qj>6`6!"/([)4@E]A3%'i
R_.+5g8aph4fc@2i%`2jZ\Z-^6asT0mT(HF0'>r4kJJ-Pu;P'7<QBh?8f53EXmPnVAK8RX]AR
QF%9(o*1A`=hQaW4k48Z_2KD5dQjTKPY2jnORs1<gUaRM5"\4Wg"&G`U2g'2"JeWLQOAZLCI
3U;Vp05eaZ\qrQW=R'.>/`m6KgY5QuM_jh;W>2eqM/UL'C'=p.V+]A7`#FP(S>eE>RY`7C2ei
;OG(oJX[<T)-RIVHC9q1oHH/G(F-4!bgCfhol5/4RunVNTLVch>WLbp[O5num$6M_abm$hr[
qhn:ObCiABWC*Ijp91sR[?"VgZT6&f6$9`Y3?R#(h5pAOWjf'Sp7+Pq7Cj'%CiAK7mr3uUI<
iHD`cY]AUG@SZT3Jgo;Z,Vfq\=:jiKn*u/!Z)<>/3F_nOqdTk%^.doH<GfU4qRs;S0+clX_t\
!3C#\S;>U0H0$I"L]AFGEV!/>mRW<E?PAft,Yl=mNs&:IS0*YPdY//t4qg'[4>TjQ%^.!1[1F
T^7.m#u^.s)KQpHhWOE*Nj7_U\\^8]A)96CR^m?+]AqE'/qm>:g#TM@XqjH)6*+hP#JYkh%nd\
Ha-`C+@J9&'k9j^,k618T)m-[aq`g]AhW5PG?;i-*l3K>IHhV?S:RjVc[<,lXcN<U$W6nnNJ.
\XIo(mk/BON^3Ruc%g*)oU(f"N3Lepn/L?m5idEGA6(;;@/eo8unAfq^fNc`=?`QO)&ft0%d
97Mc8>qfrXbm[9(/m]AR:=5Q?/RemY#:uhQ]AfA"P,ALUtSOKbhlUUP-=']AX\'A;?=G2/46+VD
H+4Y3pTd66R8ZGD7piF)?0RK_hIJtji89Sh/2ZP;66YIW?'&K/H1cTRTjJFp\D0T&jko05C\
hKYI3nt<%lh_A=[fNGhIUJ/K[j&OO@s,<l]A#u3=a`=`PoOl7V;+338fC4pPmr3@Ag-=tF:l-
qI^\&.1?;10KMhU6^J6j^R.;8mJsU\258J!R.I<U_eC((R?YSs*m7B(]AL)0"Z*O-L7r)b#.V
SUEqm"khL6M[b'GfKjV$ha(KZDI>p!9IQO>m9(ofkd"(>4F-dlgCSaaHaG%\ff/5l-@U.HIl
Qd^mJc1ntHtbg-jl2s&mcSE:pC;kK<s[A.b(t%8b9$KCM<CqaP]A#BPWI$a>RFsDj51_YJ*,)
'NZ#&HMA;l?>hQRdiOuV%V1.#TgG-Cf[^33XY2'h4Cg^C/U]A;Q/*bWJlep'2I$Z"&f<rEqss
5J8ueCh[G4Lu"AT;irp"ZGED=ku33&hY_.'c0aNTT-eLBJeRDe%?`8j!A0k,:f;t*$n=n1_s
0%]A=BpB0FH:fV@E]Ades-C*;,.@%!;M]A5oW*Mn(!:#20.[s2b(+okS2#T_Yeb4Ml:qBYa2kS?
pWes#G]A@UX+aS>DpplR:/F$ip2dk_YoD%S]AE7-p@DgE$LKX1kkF]AJJa>m?lQh#=+It%Kl$FF
qbm#pZC5;ioB(6T9m0\AmZLKS?s&LkUc<]Ao0S2U5UYaqhdCrNK1T&B&N\$CR)u3l*4gbf:$1
aek[@O$O'M#@VISW[on+<pp4it-MK36#0e^>T&2X4RUZ2pj/YGkY6?1Xofs38G''6+1o_%0;
1k=V5Q-t9;YZ!"<V%:V#r97=ZWh$:,b_R1Gr8W!*2jBR>c&*_&YD7nt4r0NAQ-fes%EFfYH+
o"rK)3j4f[bRN[/^?7aW::`?Yq).Bp%To%-XQr_aqt]A<(I5gGF_V2RYRFoP<EXMh[24%$bi*
/Dc@hHXfZogLhglQ,:pTEgPOG(*/*D4-\*Ha:0FgO`A:r5;?3\Hc@`Hro*PKaM,Qp^mj=OWK
<':'%hX]A4EuVlDa*7G<U$s6o1+e3:pUml2=VeuAq@2qP'Fkf%7CDjRc!$$=ZDo3dU'%jP3nn
s_YR"EEl"LIhmg9ou1&a`<h-8P$F-Y0*>6ctLJ+(%NIkQ0C25`1_,faR/n@P(\C*%>]AE5!GC
\V101.X`oj':U8M[j07$n]AIA&/#ZsGG4YB2LJmu92-4CY:=&-E-!SV,beY[Y*ntY)TrdM-I6
5[F@$-$"Hc#%QiHB!Da*ddN4,5TS_doHZ!kML!4Z5oR+"+r7NraC/7LV\_9O+VC@[YMO<fd<
^OKqZRomth`1so]AiFrZPNC.#B)VEAS_6B"]A.JU`IOUeYZ#1G.KD>l#"a!7FZ5Br<?qhYZ4Mr
7Za=s0Es89=Lfd<4),:Io;dA*4"-a2T#ZI02%--R'8I;*<'.c#QCg\]A:%iS!DB_d*Jbebp'M
VL[1.O0,1*\;2GaIUT17r(&F(:M94]AjK(2sRKNT&G4e+;o^[Ac_F#5O4,[9/%@,3spA!3NqZ
2)8fBcqtg\d`IQs1d/A>'W+:GIl_MVIsTZ@IXs%6>]AJ6J(]AG0=qtlc-&qdKFG%@B6@l%'Qf>
/58/K:$FNG[a.L(nQc2;F=5I]AJg2\/KMaMaamZ3lStiC([RtY@';df]Ah6/pW1?uMk(o(_t_'
H9gtlg7K_a+H$q$Af3(e3?&YA?^0U2%b.=H>G<1@OAd\\mTE\!^2J6O&S,b1^dq*T_n]AKIYK
,9CKK4F'DR^W"GEP`Z_$"BN^KkT0*r"DO?V(t>b@j+an1+>Gd9T12W'B@QQDD`uX`'HY^L>,
8W]AUUPJqQiPAq53tC9#ei]Ais36bj:*3KZ>7Df?+:f19=g"6puWC8e,6+-Z'V<T'-5]Ap56\f6
$Pn,U67e\Uc"fU2CJTotlqlAJ=1[hAj.IRAbEM3th&'4Z4$QLM.hK+B7"=>r&MW=n9ic>d);
L\Mj.hp*RG!BhC+`p:jZB%f)]AcUeK1ONJLbs_@f%@m[CC=q7^LMsgWL(ld'(Si5R(=XO3P-#
!1[?]A/2J/$b@bYqt:0"hQ6kt(+VqV@0qV:gC-;5o)#hu)Ylu!rc*#uS;EGFob2BS2Jm;pW[W
JJ%mG]Ah[QY^ZQJpH';NJl_eWX<(RH[IHFVedRfA.Q`L3F/+?n*&%*pD=Gsk2V_h)$@LlsF\^
kn&XTi[IuXs&)^Dpkcc^2u>I6Z>[JX0T<j'rH$EdqI>:&M9;0fRSha0[YC;ou4J"V[lk)Z?K
9q-FCVqPL%H@s5U(infJk*r@8]Asp)@FN,g9@=/=N&Dq-`ccq.Dj3.9RRh&N8Up3`sO+6'7(Z
($$5-?-I7Q?2j)7P^%EB%+#m/]AUdI37JC:gI>a_+Q+K1!69L@(6nss0.ojX_5.CQ:idB9Aq.
r:__(+2Sc'3jR8XRHP\2HcXgR1lslWm'XI-,X@mXX0r>.CmU@okDb(cH]A-=VP$>2f8\DGc49
&fg.I<6u!No\*d=?sl.IM07&'4]AUX,&E?.9bCnoEi<\n96`-hkaghJjZ1h*1+bF:TG)RZkE'
?J$MmMMpR!8Wg.PrO!ihk\qbrNJUrPM4B'UZQ_o9J=f$_QOX3K.+140D_K)]A_V9>US]AQYQXi
jRT51oOaO+M0C%kYK7OaaCkfrWs"j=FXl(t^;cdMhYCLY\.2%!F,6MMk'5FX%iK[t0.Y0r&E
IYeR@lK2Zk,=Zeno#$$8H`-.ILtM:TKdN.>^h(D??pm_Gb&G(:XCPgs:TP=>kS,O;^Z.3rl%
p6"@&'7LLG3Tpcr$9MCom[fgTb`4p]Ap`"W19;;(l/^J`_L+!.&8+I2..'r-^T8rOM;f;@1<"
metLMM_I7a@"OZ"*msIf_3G[[5ar;^3.VC7DV>a"1[lrraSfe[q+MHB4k1FPdN6CV#bMpa)a
[`^mj@Sk/Dm54RPKS,;'F%H$oY+1UI&[gUl#Q\^!5e+q[[<;"0D;/#'sKWJK-*GcOhX&=$_0
.9K"N8PG)>[C.73c)Qj@Ujhg&T@Y@#Za5!jAnNl?p<:(kC^R!\o(U)s4m0K@I=@N,2Q]A\#]A/
`)8S4T1AP0Uu6p,p[))FQTIg7QClEq<mn[6Sm'noL8'Pu!^:Ba7[W19?q^!;=(Xd=U@*BLS\
,>F0'OoF44l#J!ts+af(dL#`SgX6cdYbdJF'Z(E>=ZI7?F<YXt;V.]Ai<b_>&3)80b]A=u7pos
4NAX.uLqq_V0c[CMNn`Pu%>or8T5"O/IF\'nse?gWua=ob4l%Pfp;64LUobZ`SZM$ujB3BA)
bE4Fb\_nSfnoP!/g!h`WK?>/'+jQsA3PN2Xb?>id"[Ak-QHnch'0?A7EEg(6l_<(5+]AY5[CV
Ypbe<V6P2[\lnj5r`7M!3\E1R`h%ZR8J^UA!@H:MVRkKs'Uc+Qg_<oXC#/VUXF4!0Bq$91"_
cmfitA07fD<q*r36F+"*"(rFNp&oQ[2)?o"HDa]ANnqpC8RO#NL1n?<sQ7W)kSC613n[g6AEA
<m4,?8pg=G[MOt2W"3`1[D2AfF:1.DgHeZ-Hjd4u7e^%i$hn"r\]AN_G+]AZGRRp9pDO,PJP[[
->a>@'9.lj`'?J4-d]A3fA$/\'7eX8en*VF1TiBpUTA-ZC7hM2Y!/?!H`?qR/Gn[[7ut<H@ER
^[pkb*ZV0E#CT6ZjHS%h3"mV>>PnphreKM(<"=T'f9CNTZo38bV7M%uIINsc5X8b.HHQs<jr
+6:jr>EnJ_8_a;'p2An-V$[JFS^I)8;*B_u6`;!U5JBf<R2/ETS[pATJSMOX=p<]A]Af.F>3H2
;gckd%tl7l%7>L-I(PVl4u\LE/g]Aa;)6PqF.[>O5acV8Fb_."!"\=Z!@<6@t<r#$Q@^I.bU-
\[%Z$25!9)n]AL$>NSlT(qBRWf@gUbg8UGXri(5uo=OYW>GO`NaG!l34m/'DI).ehB(ag;P^4
8-"+qF.YEaRcSeqg3df_j%O#1B;lXT*tb.c[TU]Alh@g@h-.0c]Ae*h1;uL[C%pk,`o5_Z3?>-
C^Y/A;c4P%3@_?24iXAo/F179qn%P3YY(HJk+D'm>NZogh9H>RN<N$A.&=S]AJtfWh57:lAp.
<L:Sq1c]AEYXXfT.!7sIo^[BcBmiZmX@PX@an&f<c`i4D&nrSS(N!D!/ZWsN.#m^5o4]A`\GDe
/3OZ'Pn/UF:)p"jNd"H3%2Zi+B+(&C:5Vl<qH*a,'r%*(Zo@Be8XaW)Tr4`UhLppTu=maC+C
fR5XYP+'1)HAb)[p^TB`plATM-cYE9d)HP\OU4g-!f(&4OmeF&f(%C-L#QRr:4Fm,]A#[4#[D
K9>'bI!tWeq'(d(GdTPU$Bt<TCo:a`FZ@;dR[M<'Y(_]A'H'<D96rQhhI<OXD.9Kem8T:(cA3
c%=oGjn3),*7TW@dm==23(\_5N13G)A#<`^VLR<Gt@DDc">\<CKb*#\Ll_\hN/r#&F"?`"Y4
r*_3Pn\b6,jg(I2ObZmmJEn8`T-:3V72X?&BJrDYXZl>LH?r@KH'O`:*5o-N?>T>DTXSJf]A`
fbF$(iJii'r:JO'kBW_'3nujG`c=ODV8+mGT/pqV*@?QCj(8pC-3UEsB9!?hX6'NH\@5if2d
AWQ(KK2"mXETJ7M/5o.79mamI/TJCPnKeRb0+k)JESLn.G&>bF7e!"E2jQ-CFC1jh"#St[U+
&6Y]A3a&\m3!A#_MG/3$/CWSc#g!iAK\E#,:J3(U=;Gu9g3::7D>@M;hQpQ1g2eW32/F.@_#%
dS1()l8!5+8$_2ZZ1[aham#[4X6Q.fCo*8l5s;u[,t"d[;aA?j0IA4NXr<^;NY1@&^q"U$17
;qfh9^nP'E^amu"Jq#?K=q4lM!c"UR'XUSA>@gnAg'GLKbHd')2#TmJ1>g!SEW,a3Y767;@N
`Y4@npMB!Hqu6n(*Zmf_)LeoeZ+N4^SsHFD+k<+Oe'UnW;T'B9V,Rom9p-@\NCT[7?]A-LNpn
Yj@u#T8KiHf=seuB-H`9l2=Ko]A*Cf#EG)*8NGd_JcgCh.LFsU[k]A'!A`VtoSnrr,ESrV^Qm2
Srcd^H*A7aFN_ddd2rdobaN&gXe2%Z@7(,/G?K?l'nEJ'n?aqIh"A`$h%jMh^FTL/Te90qq=
_$HR"t_NJHjd)P/'ICG%C3OF)pkJP7KqXj=@WPAqU^9+^:^Mc$'qds`[1rOm%-9nk*r5I`_B
r8)uA1G-@ElTmW+455ii,I4)IO+S\c?6V1+PhOac+V^r)4:etOM.=2$92Ar55u6g_ldn:(Z+
foDdpn)eN.#QbN_8LhWXJ`7_*af/V/]A+^;5#P!CEKsfD)/7CQ&FXrI7H`rjQ-!c5HsMC@2o5
Z>T&N]A)o/RilQ7r<Vina4^^[h1l5<Y)f4S2bqa_b`dM[J44D"IB(D'E>&)Yu:V,)-")nfr3E
g4q!X`1Qg.j(tmfhhrO:9N3dIMO\U"53poD*V<lb8.JYW<%FUQeqN8ZG1U#]AT'21Ie/p-k2R
JG"_jh;i;bf`K;2]A8@M&Ym3]A(RmaI7?=MW4GsGZbg*9^<]A;#qIL&2h'sE._2YTZ=*B,lY;-M
.Yn?)Y#\5XOVPh^aW.O,<sq9qqcZ$PY!C1ek7*fngFA#>E-+RE%r[CrVl9,i5TGh-elG"'7)
2r&PT>H*0^50phYJDRAQK,4BHSSLU[0CIoJVs=k$7GOA6UK$W(l.8?n,plr&5uI&<l1S+%/!
8A&aW$=k6</$^tp@0]A`<#SmF.`3%0ZJh9"_FbPlsuEL1-E4FYWWo0S8]ALgEq\-IXEL`fB$_j
tSk4ikX<.BkbfE;%BheSPdM?MF4/IV^;9n\l^4k4&an\BVdF4PG_+E1F5.ob!#G<j;o[OUg?
II12\NhW/"1ZYiQ!JU]A'Sq!7mFZk5"$[bJ(@Mmo(/u#cm\V+T8kPeZ'it&?l3t8s[R)eB+`s
=PDM-;7nEC^%De>rOAG"Q0FDd\JdrZePC4R+.qZu$\+O:QH0N+O_%d(-G-?P=$Ib-rgg7_@2
/FDEZe@p>*a.?\Fps)q4@ktfn6D=[uGFqeCiT'_uTL/(pFZn8WQZ16T8e+M9HK*C\BRL6*?R
f/?lV6m:Wq]A77%7q$O$['K?T*I).!'"1)YVR6YMDr08mpZaHsgZYeBnhcY"%&T`<fno<5N:T
f,<kiJ6Zm*]AAOr8XU^Q*lq?iQ,3P3=?_\<450p%mE9PC6VCu)%e*aU>0pY1Ml!`'YZ.XC/SI
*[\X2UP4Kc$0SsBnbBFe=LI5LFsd$B/EcVO;@rJ1C.%]AJ)@-nNoOP9e2X-HTsrVFS=]AFl5/(
Z5Z2+3&A^\J[j*s0J@(YjmL-LYZ8ZM:Fc+H+k7)VP;tFV=jGCb\B;*m41E$n`a75]AaX'J\R1
,ar)>BP-;1,(65IU*J@Uh1hKE:Ym>Eca%o\6d:LJ6J@(#Wh%(6jU@SLcVU8tlJNd"OSm"=lR
ZL&ERVWFD8(]AOS4Q-.s'0H;S'r9E;.&Urj>'4G3J-V;6OuZY28oaKkjG[rFfFnAZF9mDSP(%
="Msp9fhT=_=^<Q,AVmU%GZZrI[4C2h]Ao&&ijA54iTum5YEHGb-"e(+&cII15Ndf/`@peFS2
DoaR4nBiXaVgVA7^lEC[oWLejI5r+%aHs$6lf<:/.g_d'pR9o7OBH:Dn^%kWcV3[;4=#QQZg
O"s#`_K[%kGr'NPZUMio`eoX%[8CL+_<RpIP6]A))0>4afamc^ig63h"gte>kDS<),8rdiYm@
EU`aknOdjV2uu>ooq"D*eG(Jo%,SOWB^LPfQDr\;J,W2Tr[+VQK_uO`>HQne!1R""mgVoJ0S
kf0B:eq)(CG]Akoi*DW@=Ep%@ufVI+efAB^s[P&s\8/Rh>ZE&,+\I;M=>qa@5Z2K'^@6u;8N_
)kZQ)*N50^(sa6?=PJh"INp!$E2!kgHe#Mc@WL>^]A29=lIa*>*OfqBHDbmFge-$;G2qg)rQm
BfkXj[1All$,N>oY7[?9A?nUO?cBR*8n,12U&/Q)F&TOhm]AS/sV;D))'mq>5W]Al>Z-_ag1r]A
[*clt$L=G>SPHq9b2j9`URnp-Wj#M-3[=0T_F)dgmF1Qd$3.MC4`-(/-t2g=LJc%-oa`-6d@
o(fr2p(emVMTaV)I&$hm3:;gM#W-`6Fc1O-r3-ZTE1']Aq$Eog&Ub*S0X"cHL.(Ap9iX7K]A84
c%p%hDm"cCH*E@>FUDQH$s1%?0ch-i,(Zt[ud>]A*;ZN!YBrc;qONMT&X7IRZ;M'`=S2+mEQ#
'eI]Ak?O6`X!&QqXe2FV!\#72^uZ5?P%j7.K;(??S'Oi4hrI'es)B^8*jXn3rHDQ@T2utK*/^
s/Ubkg'Do$:^#C>Y$@0=+08,<)$NlceUI(qT.;[0>dlk+"(CL2hFr'g3^fJ_Zs:W[:mo=mc6
r-@m\TC$9tZZbMH!<&t7D"^7]Ab9",R>.]AFSRo4a'VB>,kIqHlQ]A(b67iY.^H=Fj>+z8OZBBY
!QNJ~
]]></IM>
</FineImage>
</Background>
</HighlightAction>
</Highlight>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[3]]></Name>
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[$$$ = 3]]></Formula>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.BackgroundHighlightAction">
<Background name="ImageBackground" layout="4">
<FineImage fm="png">
<IM>
<![CDATA[,ar@J'4'4u6Uq\bPT[Y201lTp>pUmf"R3T&64BP[Qg0Q$#O,,4;PXsm!9m,E85DR7d%j8M6K
$u$^)o0&@uf5Xet1RH3j3\mkZ9FF)!KW9!!!#:Ms&CpYHNHUGL05pT2gmNHia:':0p'30_3Q
CDS;1#\*>27Wr!p@9\WZ+/R?k^r'fb?QTb0k69?EQF*GA'SHfj)Ud11-o86.lV#Q,(NWnoM3
nu$2E'*q_(SA:aM^MrBBe,h)L'&OqGP`WJFr,P<bL0l\_(c1cleJo^]A]A_N,\n?q1W1'9k;I2
Horh2#QX/L93(UVr8&'d0_[9g:J>nY[ur'R,YT=qWbYukqHX$sO>_KX)+,1>;iH_`L#*1F*>
FV/T#km_NIgWVCn(MRZ'I'_C*?)\*8Z)u/H4D8$W4'T5/*E%;o@sq?a?(%O6*ddk<q:g<T_X
Zc_ji+0dP4rL&[r&bUn.8'E)B++Y5+R><KWe]AnY?p1:P1m+R/UgntlukTU9Bj!P2fi+3GE./
X!gpC0*X;W_YanZUb&s"c]AH6gM*Uniog3h!GCGV4deL/=A\?FHu#L"_C2tsWQYH%T`'E-(sT
o`d+bDXqG7DHs`8eq/`cj%:B/^'CpTlN0/CSq6/1m9<%\]AqpA^=#3WRe_@l\i%#Wkrp''0"J
B$V$%lT[gM!ZK@AXG8>mVA0j-4=O+L^b8->aC-$_-!WL!>(#5sR'_^rYZPae:(8"#W/))ZBU
a/9[4h6-ilG_<'nG6;TWMfiDCI9and0H4_L.0*Lf&UKkU.!k!q[X2S^:O5T19jP]A_3=7JWD$
nZB8N[DC0Jll>aWSc)cZ1k=G<9)@%-,P5YV5RV8&_`gZaYdN:%M>H.>a3rr#,*j2VeW4%]AiU
6(HM'LXZl'-WfR*qE1Blb=4V$OLE9O_+e*qMV\CD<qdnAmH8&mT[-G!WVSDeS?s&[u8#,9Vl
T%Ia0GV0"\I,"9<2k>\88_Jr2uK3S="H`LS-;KrO]A_]AipJ3I7p+Nbo)ads;kF72]ANj'PeqQ.
_E^-$2eD8G^[NNh"L\2"Itl$ab`B=r,3h7i9*R.G/"5/KqGUDm,h%/[qk,7_g3,[I!<kalJ#
^KB;AT&(u1`kI[m9C4a&,Z?H<E2;:GTZ)-)0Pk#=cFn/?d\4cd67q*<"8q"RiTXPF&6m8g(.
C!JhHcQ<T-DKG22Jqu<u'<fX8a"*:,=_Vas=CXb*)+,'`Hp5@]A&<g^nniIcU*A,<u(jF?4Zh
+6p;&WEaNJ,=FRU6c'2[[4"fT3iec?;P]A-u95\I*+"<]A,2(u3Eb2DZ"mkt@I(#r^V7a0rB]A7
S%BIEY_H8<^T+L,V9YC/aCZmmjRa^[bB\$aWFdpQsP[0Y[.@0,5F91F@:2*H)?JP`B5+_6XA
pid9Iq\Sjs9>0+;?'^5:429"JPpfdUK!e)F.(NI/<Mg$L[0-b/2a>g2&LB^96JZ:Oj[(ZH24
$RRjk-^E`[U-^ZX1lBpLo=@)7C%7_m]A3qY_luIW>l$4/^R'_":o^F>`K8`sk5Sl@F/XJ=[TZ
$9SEVYc2SKa40cSL8)d;qWG,ApT`gaK%f^*9a%LG_u@qLbjjSQd-omoW>1gRlFg^j]A1$ZD:f
p1S0=RQ@u4,[SPG)8RCP,eXmQegahTs8"Eh[k=h(H8*<^Y$)d^fUX@_O0qcLT^\Ejb\%Ft%i
'<Z'o!Ih5D2DRfEuVM7"A:gJMa+\"mjf@>HdojoELi5Zs30^#M4a\O=.Ss/8C"9FNE8NUA"q
IAg9%Q!lY+^aR5\6E,jrX[aK!94r:uq$Xq@b/>#,@SJWW.leuO1rV78R,>ecG[_Z+<M7n7j/
7*Tn+4W^pW)iPWRXD<j(Z'`]A:VB<?kUP9]A/C02+C(E%(%:M^9/5I[Jd:4)+_oi9ieoXa447H
U0tS?Z9I":nqIO<YBH7'1LPdRpi;'(Ilk[c'7OL"WM&:XsQ=&IalFMo1Api)!?8?u7d=)sM9
([p7R^@O;Df1Do.KS,@??H]AZ]AB+Q/r8`Sl,)[QpHoQ@Z,KpiUhs8`g%f31^;;n,Kjn.eM8fT
.Kskk?;S"LongTN_#@B%NcVl_(1W[b:(JWXg9]AA=#!3_[]A;B%?a-/^P$"%F-XgM2K2+t8GcZ
E3q;3LgEZW4BGKhhRY]A$gTJMWhcZUgsj4%5KsaYL4D*NUE*1^nQ@7XO4[7Ia.4dPdsCJ,S88
YJ(MDQQ%6]AqsPmep1iXj0gGPX]ADX%RftV?Pq?#)+q(#YjQH?Z\baU@/pOg$?BLhZ<+;k<mkY
ZbF#"-@1Bs/[%g_Q5;GSBtQmW]AL8C\Z>d=nQ!;[+">SX7e3so1L/7DP3+deI2Lc2iR+me1HT
]AAfqfIL)IddC4W8[1pd-ArH%;/J+<%[I[@_Qm6?)-Y&@"Fh[b:!Eg$.[4+a^bFjs!(a[qP.i
Fk;!6>=%??RiT.:jR=qY:MUmaASo33"S/5A#PFr"3ld&9>0;s@>MGBpm%cFITi*Oqs8Ea)[2
OJaW4@A755hAWD`oK5@17'g^,:]AgC2^_4NWE@3]Ak#M]A]A=2spUL*-4Q\,(G\B4<28l:6UsI7K
j(>/eY.;K,X.F1=b)Z6Lljq=_5U2;mR-K)Y<jk"pQbFT0Z+JM`O@Lfa^=>(PPf#41]Anaa<YY
.mudE`k9f=KsX5PWpj.C&'\J8KS7n%roThO[,%[W<Xtcf=<;BCh@S,[*q[)OIZ&i-B[j7Y[O
.h\oF+EQ"%RZ!C9W?`qM,g.EJ@(-'#mDc#=/!Ni8G7AHPj1[<*mD:j_f$Fc@A<I.nSRG'0H"
,X@"'BkRfe&&?XBSmZ7ia%3)e0-5hSOY>RrXNW:(UOadn`f,.HV<V^^h]A.mr0kUL/B!hBFU;
.@6P7]AVXL^cr=c)G?lstaN#c"1rC%HTP:Dc>ZT%Rq%3)b2mAlJ!$pl?DYH%VqQ'Jc:(g:CR2
O1n0\6PNX^b(Y7<!ao0o$CR_dG/E(Cdn'W*>,'qu(3Xr2dc8egL6%7K[Y\UH(C?Z$s)30.<!
@c*cTNX%[84'GAXNN0\Gk<@.daI]AG5X+"Bl@Ki<1S^Uq3.WrK2FiTS5<AG8=>IDNMTa,*<8f
Le]AXrV,b6iDG]AZNC&fKZol_!s(_!QZKY"=Pe"'MNd)R)WlJ^V0T\3g"fgj8)XbT8,#J.!t38
8h^g*f&;um?`;+3(#@r"?:6crEl_B:UItCSU4Ueqer&1?\0>*Ci#2[Qi[<,PLDSk=F/,r2O"
"oF-VP]ANL*D=e@m/1,e#RYmq.NAkRhRq96Js5il''%4rWf'@,\drG]An^1151Y8dHfBX\!`4W
I*(1mArQr4-IV92Y;eQp,1,M9$bo+e/BLYRcbEcE0-d55rb;1S!Hi(gC/R5rMI'PV6\a+2'O
FSVVIAY/9/\@JrqC+F9#'Y%4t4ILMiEtP>6rBP<;si.`"!OL]A55>d>:O\&OJKN&Ep't7*j&q
Y=V*U_^J^M>7/;/f=$A>Y\Qpt"&M\WI%DbOtKI,>PAn(\qFC;I:J>&_o>dr5S-4E4-/)R<tQ
OqGs]Ap2P_poAUak>!17,gWm4-E=f'ncjM%=nVihY@d#JL7[D%R<[^bSe>'TA[hn3I_AkO2(l
qg*+C@0:V4i6/)llTYWQ>XXaMaB*hBC$LY,<<V2/[AlRWN_a$AEGA"]AqV#smuK.?W$$-o[s^
,Yd,\q<$=u%!-F!aY2i7D@tn-r@:0@hYQb6bA5<u41'Fgqg6[`N_CR;.i<1)Y`_[Z<2+`NBQ
rE@,u^]AZPq$I5Z^'8=gTjoRVH*%(BX=!Bq%8p^2bbWB;NF^Ol7+sncZ:oV!m@"HFbn"Y<5;h
G4/31nIL^q'%DF8uJo;HE<<\eIUa5hnH!CP=Ap)`eVKjZS5Z54k'HTJ7Mfk9<%f138W`?`?l
gG^H\`H2]A^Qlqr]A><>B:n>[o&E0Xt[AKo8X_cXh:#NJ<&.Z"-8=heWB\I*869:_Rki#Jg8#7
U(f$jJWrQM<4FgWOHU#F4Ln!"e$P<Ft5BCm?J&n3o#%()SQqlNb-]Ak!+C/qXCsSJHA-l2@g\
KU..=p]A<k(pD[P,mn=*7(?NDtg+G:@3,KJg_UbLT]AUM8sNE9bgDko4fZ0T!oYW#7lcDp;]A^(
/Y-B@o*=?>P$5:P3ma-YoL`YjrjR)%2TN7thro5k=%q2k[u\"Wonf`SUAF'u"fC=/fGc$)BE
`Y+t+Fl?,HfZTrU:/4)5O<H^>oPcM[*=dbq=qK'0KA35308.jr91;h^3T5(2Of/CuuGP4itD
,P6([csu<fYIqES$)iS\s@r.!?AjVoa3SPT@rOK%DSSCLWos^#W!3JK=/'cV&T'4<Dg%Z[l!
<LKU'hkLBA*Unu56!=gN_7OX_!CrLr1"Q0E_(po$7h#r+H#(=[4@:u(`*)R3&/h),Tnl]A^V!
>Rl"eRdU*SMMnJ<Dl*#fo<sOY:?rP[:%$tT!+&AnSLB#N+h,X[;h<0CSDB_rJi%u^;%DfNnA
&Be%KUR=qZZ\7Qp%bi:%i)@B#9aRJ\QcP451lJoZ(du2c*R]Ai4!@5b'i6?&&#F3MQ8VT9Z$G
]A@Y57`0"<K[GNfqS>eG,dYmFKhL;D>_>g+mrajH^N_j-dYiP'1D90,\3B`F%=Hph2X@F9%Kh
poQNqNL?1`52R<aVOTKHfXPLPJUT7g%YdWga`8dU(O.aAjB'&:(e**@(@N'N2p,0DGVm'h(_
Cjo9@iqgs9bnH!DQ//Y1;DK2l=2'\S"pq+]A`GM(7)A>[Z/[!GdLS!<]ASfO%XW3QqG/,ZYT78
^r>?c-c7bq_3CM#8%Zaikj15UPo\+D+`3Dpm58OT.Q*7Bd#h/=;"uGSla*\bi4c&g_uW[-?`
tg<!`_e6A0rg(_+Eqjl+>=0fBj5_>U+3[$Ncg-`<5_d3!Ygq/4DdV9O%mJJlY(G6ZpE3hdpq
#gX54`mB^"Ukr8?LpcQ:3<Y=LUco9=n0Qp7>Y\P/M>)7_mS[/[Dr0uC14'Nf&"3?NaB#Km^+
haAGfQKUu66/BngRq]A"\H,I'$lUh^2A5?o&Qu#ZgDRp&m7ep^HrkP>.d$t/QfL20S%/.@RIS
'-s"?Cb_C17Md)Lcq/`g3g"l^m`gMdMmpUT<=#(:11Yo/L$%CJIP\V4uX2d%k&#=G^`/]A,e<
3151DjGs<E5?N*OEi5]A0Yl!.^/e^#<juqVGr/8.JZi?dW("HcuN]AtotfkV3$!\A4]ANTT#T%S
!DZf#G`4]A,D7fQ$4M5@+M(sn[SZ^pHR!64mG:;#pRZsKRJ2V4#j4fHX$YX\)TH[d.gJSpYGa
:I(2;#kWm-5SJM9g3<PQsqZFTK=4BKHs5n3YldQ@,-;dmVnrXm/;Cu&/h`0'T>(H9mR[9KC0
'q;e7bHfiNgl+:O)PpHXT3]Al[Voa2?@lHCR3pJhFWAA"N$pT@g"<eg+/6<iDW`=-XINS`]ABM
0TeeCH-(4HB<CBHqsr(CI^:WNh>mu]AP^+j^dJ^#ftueqkQgari.F/cFN530gWh^7uDpP4gT$
KV1*5E9f2r?`15W\93r)2oO6Yhob#Yl``meFt[I"n:@--c(t<J%SL:eb!?YnJi-dIhdsiLO)
etF8:<</Wnhms:Um3(mgolljm:8J.'?%h(2&TGQ%cQ6Vt[.$`FsQ\Ipl!OEOuMJ&pID<%i:$
Uj/V_!eLa;R:X4>Qh4MS)%Mm6V'S,i=-[a=e\>C4AM'JI!#p]AcHSQWD@DW6+q[;G.Cr]A%3-h
.I7rlu%(06!3P\Q<3Q>)J'C'4o,(WBNNiVmEqH?pLidbm[kK5R*p5<RbVJ$)AD@]A;=XL2,U)
+Ui3ToD*BOTEN>Ir,!(fW?O.O;"&/T!&g9"%ma<6.@6C]A38:I266i`+l@TCDHnnO/#jL\Ae[
j5fN0Z,+7BH>>k1AX)[QG+i\CTE_Kc77IuaL-m,*Co)/antYhM%/NdUm)\D7da#hDEQ6@e_3
QRHA[Q"$^[Zp\hmH?d&HM>\o@NqF04XGeD:YTXKuV,t_gor`r*`s(]AdtScaLZjHQjtGZAX3%
T/(Ile;qej;jJRn<MJ<\!rXsEElBK7Tlg'7c=hl[so&lo;4HkJj;\_CeF;q9*^(BL2h:M[06
]A2ta[L9L%%pJi`"@J.[9iamX1l2%6cZiXf+uO!0gl)Se5+9Q.(<b2Aa>T?uaD@c\"M??OQCE
>&bIs'c+[0,M.TZ``_TL`8qp*OpGmj1`+M+3f?X^$5G2j0E=FG+OYfqVgEr12(MR,5!9jg;;
iKR&Js"gm6p+k.:?G/]Af0%Qh2/g9saYNj;eaC\)Mo"\c`%8Doa9)NkW-i=jg;)3>J5Cr,an\
MU<[g\Hr#`=Gscr)IWOq1#%VQ)GjZ'thW"pDRKX_]AE6ncEk'iGE>,(Fo5H(GSo!qVc$0:30H
Ea'35**O.kZaTn?h-hgY8Ar`HsL:E9bTeG45!3u8@.!-jijMsQR6upHK,1gWX2GWJLBZ!W-h
f0f_>>Z9FI!-.4jVAN(AOB$POrIkASG8[?jrVIt;VLF8EF['kh9-M@(-.mP!(U-bOXGi+`N0
1[qQF[5iE"cS1U1^VTOd!,VCA&BQ'n(ff[_`]A1[+lQX:.hJ*tsAmfk)6cs-36Zp(e;c8Qf;_
_V9"K]A=KZ!@d,kh.W?URUYJoHF:dF>[dFJie/o><OYt9Ej,"4,a:[C$R6[5Vg1fhfr;%/4_Z
Dpjc=4^"5CX9\OdRr.!gmS8b_Ku;s!='8G+nOU,hFj<$W;GhEm3rI[Gr>UMP:mC]A,U;G:'V^
K^ks\`XqbNfM>b)fcURr0Vjrsrau%ctU2Li.I#:Vd@oBl'>`V&n&<d0cFUkZ(]A)(nfa65XQr
1V(V/.tFPb^W4Pk$ZJWAS2tJg)Nq#`qD)4.NTuH%d/rVFpX)&Lb1cHN[m/(WA<I2Eb,bkDi7
nfTd#rl#n?512P7Qe_DnC?"QRVA7MV3RdJJUkl0b@D*=M=0*=_cqYMUqIS[e4B+m>]A!(IO<<
D<ZJb\[_6Z)5\#SB<[2Ib1N10b>%^]Ar!?tJA=Bb@q'cMtBhX*0C",#ffM&0M\G,[f.Ts*pdW
Zt0_UbE8r21Z[0pA=G]AHjT8i#:1=B&OgTKTd?g#Jj'-/e?dgK/@45)M[t2hfa2(_\TOF2i"o
#1b4:/)ZC.LCq>PTr32Oc".L/onYPBqn&pKrc=Sk>7gQ"7mR`X!9B(d:0Q8!M3pEHd6:A`P%
$13D8T3Mb'M/n!dFM4)dF[%d^@Po]ARP?G594\@m>p0tNl93=[:@3K"+4GS]A8#?G%*:*9'kQf
EX`u/AoFeNO>kC6h'Z?KJK1cSiPc>&nGaD$J@:WB!QRNH8DY%^5L;TXHmU;%Z89d7eZK#&id
'#FO8Ns;&QL]A3'ca<:.*<,4*p?6rN,0?`*hWqZ9*6(BNWa>Zc+49Y%U?;W48'.kS9FB1rHT?
A6>#LKqBSn;9<a;f;&Eat/JW)Sm<LnsP?[$W31;4)*t-,dadZEMekpmH6J1PN`mk9qo)fYMO
ZecLS0ll%ZbpXdrqe1Fnq1Dd1Dp7(%>*e[7i"#5=u9]A_nJfYEUu1;AS.cf4qgWEmA!4<><PB
5Q+6&jOqaHU_7VY?,d<mr.o,iZ/+?)1CE:T8MYcI\a!/k]A&n!Wf(QD2W,,3AT4jJ[bN@/b\7
;6]AXuFYXl--ZklT_nKd6ME;)#jqDA96Lr3n^OeB$",^8V'=)[9bhLSnorR$`oW<c@[<RGgWB
U54Y;HcrOe1=*iKm'b]A=eTM=ARqa=nI:'"X]AsHtnK2)[")<bL&orYIEgK"t$d+4.Hh&F.Yf)
"GKPtM7h_jhUrb_WJJ6<=<bCBjYOCbbMq6ZnnZI;%h>1hJB:'QG^2cEk!uSnS=Dhj5`*(:Zp
e8U%HK8F#SV"/Ya)pm`#-R?<5tYr@Ms9SH/_+`#JU8[6Te^ffTgP67Br9ieTm[<VW:DohK7h
BKF5:9\]AL:EB//Ujc<GLqKEF68o1V^90hj(5YP7<f.&X>)Ypf&&FC;Mu)HrEDaWt*tSK*b$c
[kVB;F8H%&g8$f%?3l]A8h#j?<P_I#=G*L"XE$Oe#5e;Q;qhfZ@Ni878;m*.f]AWCpM;>XMg/3
gV[q2CtNl27b.*Q$K>96R)]AuYdth-L_!5AZguiQWp#`*urf!:c>D)S_l!t^h97j81B<[i;?`
st]AE@#L%J;tTBmbiQ8WU.EM<_UQ&+:S%$]A;8)]ApjjjFCLqM6]A8#V,=+3V+C(%l^O`u("XYul
TD87U;QZml7L9MZ\qO=g;HsjmR>/p?aa*jJH"[9bN+h$(8^tdB8hU*=-hZ@J(CMB\2,9FDu@
NCCS7TJn.C2!%,'-q7rAYTMe'5\!XHYs9P)5tu-CDMnCpud&Te6o&]A]A;2XbA!6Mg_/4L.-Vm
5/l-NB'B!)/)HF'<`?`X2lLH"P"8fYC&H&:ht_dTS^7<9:BL>k3._Hu.b`M;8a`D?%$9Jh`u
R_D''c_:*+WJ@\L`Rr^e=M(n>F)B;S&oJM(R3kmkWFNP:W]A6K7,ZeKlW*bN-hc9Imo>,`+_r
d?k=,IqRa/7D[FE&o10(^169;'8'3msngl.*,DelCC%TUGf3jnO3Z^7T-=Xo$r_rC,i`%<U%
!]AT1`*:GJO0GaY@aKM!ZbmEYqWM?)^=o*6A)Fne2.rom5<"i.=hD=[Zd2Np:e>qL+kQjtER5
"*@</TL(Wo3&1^3L(H]ApVOBB)Y&'q,^UCie-I85Odrhq,`.-2AW%MYQ9N=4-O8_EA2ZDTcfV
!N]AYjA&JtY/6_IpV^-)E*B;aPAErFNp(X]AX49Js5iY%:Rq7beNGb:2@B8O^*hV=d`$0m;19]A
S"9QU[B1:5hH-a!Whm]A@j74,!k.o\?ADD#&(sq0<_c,k0*ght$*?R_=I!kO>-Ra4Pp>KpiM7
O]A`kP;s7hl>d[-lZ`acB:"KC9&JknbA@h.%jiD-:S0*/.-bR#em)rFK]A]Aa+Xip@:tRY0fZi/
I@&S:Hj?+?^<H`G-9`<[LG;f'R)f0MLYs78uEc3c;^@ZIold1t?K'NG-g^n'2oXsTrZZi:R2
;Ra+Nh:dl"hgl.H,;f*\s)9[7[(g[;U]AS:5/t]AB187Utc!B:t!T&%RqDm"+/c._($dq7`2L6
I5hUAdjW9qMp>'cA;Fa@g+#sI;B`k%;C)h&^gA6*=jUG%dfaNu8UTZA#^ZYb5\l!^2#!*H[!
B)h/@OCl:897`.Q<[t^a_)``,gZc_95p<bM)]AEL91UEP9N<=2t8^(kR7Ri<r=_S2&*3bZ@C-
SLd?%_S.?mfU#5mGT8<VTU&BL5t4-.d2>QeD02,l,g)&t+I&)ri[m++KEW2[Pfp[C\l<DpW"
<.Sq(TMSY*qnaF3(fJI@Ji<%f?DCuLUfLW<ZfgA"\5+8_eGp_7*'/NFY3R6dfG_Fk<M/.183
\Ih,G-YAb\?`e6F6TLd1]A\Z-+KGEY1soFM$K,piZsKbGh!,]AlRhmg-ieoGPRckDo3Uu3*%"?
^jJ.2!VHWCKtTNQ0#k/n!m(MEN`[Gi]AR[aC<RPrkSiWn\0kYD>h\EU$CMi.=H02:m'%I&YC+
ZATM,r)+.fNucFcB9_(T[j1MLgVMB<=*A4(^e<D/6NoPXkN2u*"s:5j:XFG@0WXs@8rpE#d>
4GNW"p8:WJ5uV2ALBr]AGZYF]AopDp.Xt[@dUPY&!1UDN8d6Re30n`1H[9a#X0k_I_(,MRs#*W
2F7k:g3P?:\l"`!(rE4-/[/",R#P9(O'&e%:fJhe#CT@r",i"a='_qE!8]AJ'Lg*asN&G&>99
fD_,,>/i$g`MZmKq[`qYk`9eLW-SAR)A'hO\>b&(*f";63Val0!^`0.htf@^a]ACQ%MqjJmVm
N_39<)f4lre)Rb_6A-bsB.?KK>EEI[Dle4.>6e-6.bNXKAC@mA!hYWR/dWfp0"1!$B=Y>MaG
"HU+aY1>'F0+CX:hJl11Tf;$2+']A]Ab`,3O"]A?2[t7[2XIm[Bnl[ER">0h\pGl+Ra<m.m8pnf
*>DODoNgmC5r;R'VH3$M=@2b(Dm[5`=B(Snm2/@RMi3ej$SKd\V.SV=rpDE5`&oR4!:s$N\/
)nsb*'lr0f\.S;U9=,t?4lm6_]AA>k#*"SWC2-6i*nN:8@!WAGijB'bilZsGFsm3)SW"tuq_)
1F>M24="NbXUrtL$^IIe]A[c;2HI*F:mW)>-$eR-VY?i*Q)<Snq)hWdV8M@`>^a$eY/J?)g?.
E%]Aai<ZDFMKNrZF`!baIHo7Q.Ltp9%<HPGZC]A-_/pFSKt]A=9WUWTd6r4WRlRIi*`%Q_8aeq*
SJ.'*B28"sn-V@Qm#l7$8AIuA'?:H!\$W>JX!k`pRnUF(YZ0g_i<oim4L_kfhC%k#I*4Ttr5
Xde;&%Ssg+D\![f`nScT^]AVo".0e$`KRWf?f?<;<%f@)@SkP(.jeaA_='BcD]AeTPh4@[\knE
%>:4R.-6dK,,!^4Nc/#(<-RehqS!3Z_dcI.g\DT;URh_U'5)kWaGI58r_E`Y#2h5]A*,-WYe'
^UWdrB!1KR]A.Y[,&@uV#<W8j(XogRS@s+gbu!$Jb@gYI@2"CJ^A7<L437`pqafR$.2hMM]A7Z
f!Yf[d<]AG*sMnQ>SYc3('t.t^XCakLh(,bG6Kof=da)PX=m(\.<,R.'o:q$V<;ERM`hi^1AF
a>k9R]AD%RB>pV#I,RYG<S2p*gignk%SZ2E*;-JT6'jjR:YpX30/mJ0L\Jl9jpg!YN[<<3`IE
;q><P3h/iq_Qn9*R/;+KUDJ.NoW1lS)'L#S^e_=(mS\EZEG.HTJta%HC^i0'YlqM<cFR5lqr
@86E"O)fOVcL\h*'eI3Ic6qb8VNl\GZ!^>@QR.e[W#&rh3.*=cbFl!2(]A4rpEctSkiDI+\PV
FfLUbK;q+!bZC%j-saOh#$BBc/6p^JFOEo'.f`iV;'3)nEKj06e58nmC0iInYj\scpf5NTDS
rfL8jIJSiMkWbQaI=a'HVCCZM=%[*cPdQ\KqfR3P:f+MG6j,4!HX,umRHJB^u8b"/KbGR(t^
G6h/PTa*GIM6o4^N?1cU;-%4b0tGBuPAeLt5?cMe>I-)(euNC)FHWURH9bgjo>XgI5jG[Xi?
rVPn?nMG>E6:DBolQl"F)Vtp8NFdeg?d<X!6_6Xf&Ig!:S;dSt?,[dZ?Cb\l-,%@0$`@9i\+
im48Ia<;nEU17"#)G6EFtgDA^be_(KREEE#?hAtnH>gMupG3`M`(;;V_e!oVWnqjK/.RZ,@k
@il$W9]AA&Rg&C!r89S_km(!1003gM%Ar/ZoCN@?k2j4]Al-%GI(>k!cp23qOM06$,Q9Y=%d5!
-7IBJh#`Q,[F(^!Q+b$Y>T071ffI(rn<!G?S679=anrb.i@D8A\[a$9Xhn"7$,[cNE#cFd*^
2<uM?S]AsMPgHC;PnVI+RRq<_1[JY+Y$XC9W4ai\Me-DAhjV,Gf+h"mKP8dNI'@ff8S3SH@+C
LjF9`%t2G31NMQSN5%ZIR_`2/D>Z<*HUj-I%'SDK!flbgHA'WIX%B1+6'6B6om3`-nb=*h&r
Q)@9iS0fgg*NM>A$$BPG']Aa`bEg,R4%h,:,u$.jb);A*?PH1a/1Q`Pqb,?E&grruec,qcQ\r
8>TsbGdmi=&09n5Da+[2\VG`I[DWSG^;]Apb+?6O7aQ4O(/B.K7^D0+VoZ<?'HS]A;ahFqJpRR
]A(#f@F%.mHfr)QgKE.d&:09TPFK;1ILJgCfq6?E2VG+q-1JNRA9mH+*g@C?8+Uq1*.YmP[SV
RL_]A`=M'7d^jE'#g>WJWI![grBGYO,#2INO-'c8;MsWho!,%"9*plE*'^T%#\7?`[XA(/AAp
dR2[/V``NW.T)A#/jc[i)gMXNlksk%>16]AG=:p*FGn^+$p]A,$d&=c>,7YG#KI8il]A\q%ca^R
B'>OJf2!$es34DpXd+mYn]AF%<*+.V<QRWL=%^Su@:E)]An!&p[i";HXF0-t>7ldBaH1p;j]Aj]A
f4C`Gmf`=94=>p4OSbWcA_2>Ot&k_KD7Ro)m2>%>]AW3H9oiV,6Fsbj'$.4rJ\[>1p?9bn[8p
T[p.),F<,3sC[CpnCBaJq`o"7=dOA0e-YMFjOn:mfNJ]ALM\@$Og"?d8UOUo+mmS_:Coe?2DS
Qp4>!1o<9QNQR;qG2c7\<&WRpp2cMh"g?5n3NcckH$#T#-Bbj^MY2RFPhkjoSNQEgX'(7K.0
j_hOZ/)!9,?-;\&!1dlZ;'_Qj'#R6%=/-H4n28O&]AQhHp?,@:(<o;E,>o^T(`S[T&6K_-s)+
,9'uHp.m9%`+TU9/!;tt$M7ae;OKZ'*WomHAR?6K^Ut;s>]A+YGEl.p&M3Z'W]AP-F`h0Ne3"_
+u^L>fKYu*mp<+OslTBB+>'3q2Ti11\IK&<d1S^q3E/q'B=[Ze3t\*fXl?9ZGmPH'!#sJ9tm
t0BI\a1n!+l?N6M<0*ikSt9XWreQ#NA+1H"4tgRd?\(%qXZ#3Im(d!Mn_qiaTD]A2$T&R*$Q<
k/IZR4B*.%]A1V`3*WSjiQI*T;,%XEp@K7S"EC$%!D<,aZqapY>5L4!"k\=-T5[/e$hf!PAd'
E%1NOg$DVOJfp'f]Aid\i9j]AV/<_T^D=c*J=IT,`?N*a2t]A'@T!3g#PNX<b*`]AR.:QafF+2'&
C%kU_%?F3UWTK8!@?6L=Z6HjZ'<f/298iOg]AX'ZU(3TW^PK?=mPkSHa0D^2!I`Z^od6O8>E6
jEu.SkQO9fSFO@Eb2ogEQc,rogd/MPcM'BC"DXf_S-9.O6R]ADT*g5WDI4[hqo[`(2`0]ATZ-s
P'<X9A7&'Bj-&lJ&^*g$6L[s#*&HY13Foff?.eKOidSG2%Y*n/7:6%]AlUHm"]AqN<#@jY79.5
:RZKmhA=-%\gP2K`h,^^E[ul&;/O@MHiEr9TAne.8CKn*f:Cb3gG3?$?]A*7F;f8^Bc;90,m5
N:Q5"dWkU[SOm=HJJO5<"q>N(2q3Yb(dq*s\Uiq?d,%bh=SaWf_X44mY=slHL@d@c,+J(%8*
eFSMf@LX?3'(R-$0['^'D&K.!@hU@f:M?*XhYS]AkoTYKJpE@$&"r1V("9+o@[I\=Dj78)Ij.
F9PkZG/o"4j<]AfE[Qg[9).B7O,pK!)EX^7gh,1qkl)5us27pg>7%**B(RiNSA8:32TOq90i,
865S\#K%'OBj;8t)M$WuuC845/<AmC]A$Pj7HR\kT\lWKEYZHR;S0E?"3;rcYtQH@K_8XCUM%
[hjqk)*Mk#Z<!)Pg;UKQ='uj_3Z)]A]AcY1DHB1OPn<(*dWb%$.Jnj%p#rKb0$fir#cWVoI>5e
h[-]Au'&;o+nbQ5isC`(F;R+W)71Fa1l(($7isZ8oCT4^6[KrYU5KCWT<S$pVT^$(9tS,--'C
NHTahBer1&`^W:P5HU^*._TBt%[r3Q@^KHJp'RHW3pX-cM0^9d%OoR2iJGIml]A#O";hG@W*>
9<n_O!tk;D:O(K\EWnrT-oca4R=ql?l*lEqPfDM&k;_ZhE/S8<#tjlR4L7r8_MP>Qn(U[DQV
c@FP;`,W!]ALcr^jPa.'S$t?(^.rbI!r/ZDXKm%&:T=OJ[ak9<&aN:Xf/77XKYnkCgkI`5u7/
W(V[3bOG(qHGD)8a\`jiOUC*(Y@NnL'P9k$(i5>k4$tnLag!c+htgoM"rTf>k;*Z5GQm;pn*
L2m8uhGh.C]A$5IK+=K]A=TAbI/0US:KaBZYkY8X.kZ'N5Xdl4pisi2?0S?6^*)H@X^&,++D2j
!aTMAk9b=R9\\*&?;`pt@]A6WT-^i'MTYN4iqWg)*08&bOuN6gM3%IiN=Z9/o1]A+6j,*me]AAr
VDk'`WQ3G`jMZMHd"-g/*t"!\N(5cZ5$qkA7ti0HQ`LsASF^RGIW/2K55bD<@Z1<RgYf>n.u
?E8,i)25CY-?eW%/05_G3GY\\FumSs%"7^]AlkfBi'$mAbf_Wb-197RfX(-kW/=XjlMJ.D1KK
TeUHkGnM.L7aN&Gqfh@D3?,r!_+-O"E1]AUOCGq8$kIE=]A\pGK&X'ApecBpuN5Q!u#ArWsmPX
_!13V:=t!>l=(-"[4ko;:0uaRoHCD+F-Kg4mbSXmN*DVf^3$QjN\<%UNAVGoCq2YcB-m$]A;S
Y+HfuT]AA#(?TX?$fMCC']A1llUNih'P>QZs:bo@)1r9.@?`g7t'$gY!^i1Yn?[$7bf?p(6%t&
_!QEAuR;/W0VkmY4/[88W\W8cPTF-k%iYo`91:S\CXZ)T]AU[CFgV1[()2Cld!gqdo@5N5NrX
knW!+Wm<.`;th>Y[a9.(Pd`Lh6#akL+kh!UDj"Bn/-GD%'p5i]AU$s0BB0i8V:S$`;9]AKjT1T
<JX&;+$6Z>HjE?@;Wp^'V=0KDCZf'RL$9(fVo%<C(X]AIu:smGcroFL/bn9[=O."JhdA3>QPL
S%;:QWm%2-8+]Aa@qa3"4r\td,/Ct7%fuhjZtCO5NXOW:1*7Dh&OA4Rf0G)9.jS(&.2*k:TLl
^V74lA/^7LU-GPnp%c@-6B3lS8_0IM>O>u#3`;jHGp,UJdXkt9l,.W#,9?l(aI#u5+UGfZF[
+Y.9Aof!6>OYDN_8"#oRQ[T=!1XZV2-QLTP29c+[auBQdDZ.Ihoul%W*!<S*sDN@__,VD'cu
L]AR'XCiNj]ADKj.6R:CGP*=28'/XILkHp*d4S`5d"5:Eism5]AE.q7eY*XLd>&JooFX=-]A[5R\
$C,TkIXS!i7b0TN<>rtOl4["aID3H)a:]ASac88'))0T[tS7*=0GMhSSpma8t@i.N)^jMV,h1
pf=B0,k!\Eer$/S'`7gAR=X'2GUY?#)6)!"Lk54%7#$X!PiUL$2k#/Q:CkFKfO_[ZI2<:]AEf
]ADY4t;H:glW3VuD>K4R..>#nLd3[4+'E9D`1BP2JDN&KX('9W7`d[dEc.Mu1,HmLT/!E)a#o
NOOL3INe9N[>lLH?U*+PIM>[\H/n[0:K?U'$0Z2^='O!.M_l-2Z"jKO)aRn1D7TJ>i2ho2fE
V'?<3Bt[5.O)ppc>-(ub.88j'^\$B3JV^_(,#&V66'Qb64<Be/,O-U!Rs$>KH_fm7gn0>FVl
?_![X>:[`$P4I.f_]AHCgBc#=VX^hO^N/\)N8B1tIG]Al32?#IL6n>"o2"hhla=_lbBeMl*r$u
(eb"K:W;]A+'gZ@eHuI0[Y%hGR)k?`M(_(s("j6n#]AuaUZL(Ul2SQ.$U&;1`SoXL[js\X5eTd
^Wb&PFlQ"S;72$LbW4BU;c&]AkJJ/Qi=Hg,W#RHf'TU4"ZkGmjX2k8(N7hkW>B(rY+65iH`ls
3>9o2"*%%/J^g^LFW3BJR(:hR8;$@.Z$X'rYA>@%b;Z7OUtC=d"2$GCNjZi(!!65.%]A4P@a+
*_$41JaA_6)lYqTr\TWG0UX=>ZfgG%:R>tg'+9FM7GG<a@MK=h\*I'1sh"%uF:*cK:kPG9Vp
9?2D#af'&teee>qS0_1e(.i@=T8V_0IO.MW)[Y5MZ!<#TrP/94gT$0H8"[kj9aXF`e-?lR'?
MIa5>_h2l&/b'=;t#-1G&K!%@,.uf#k=e%.[b9#eo#cU%p4Sl),1.l.q;dIjB$*<+!nC$@.I
H$S_rts"Sc"X^&7d=1"%\[asCZJS4f2><b6e3);s8W;aYne/`!K.`]A<HCc3T5pOB>1OnOEWb
?n7IZh&QP8at8b*YHY>dHVa(90XnV:POU.:+YsJFobdGlpkh%b\@2>hY"\j;8g#1V]AgfXfGk
dr+m+6cnW*lrpoceW2Y(RqZT+&aU]AH`2$.pCmf--i*8`mM[qk1@nh8@QWV\gj!k3GLoLtt9U
F=([4d/:j.IV<kE]A20"m)Dmf=ba$EEI=8o#P']A]AGjh)rqPZK`GrMFK+,fD0eL!!Y`E@f.@O:
^Fi+*#,c@*3j+W>O<"YBP#VG>'CQ*bN7JBinU:9^-LNSNfm7Pfr1L6`P=I8_>Z&CcO<%>ReP
eKjP%.0\7!c+2[dDP7elRmOn+R#A\*m09.PTWjD<#&%##/;nEp/T0@76h(*k/7dVXNKXsgcF
@'UfA>2_EH[Ml(7tlT>8sot7J*48Mr'EW-4`!uTBS5-]A=g8ER#d*T&bA9@/YE/XXI[[f<>?\
<$;$Ys$ii_1P`/rXQ@<T$gPbn-X8A.)Khp"qOY:bYg5&)jCE3NA-JEG6#-iDT=MfYZ(VUi4[
:-GW+TurOV1PKPbGQWQS(p44KWT#6GJ,]AY=9)+ubIu&fC4g2bkENL0GglGdB(ih2TklMU"o`
ScCe36M27bGtis6%<E25+3Q/s5$3%LZaA=ebomiD`9Qn,/@+L&OFn?lf24e(5C"*lYC=c;WF
R<"8eIQ5"g`L,TAuMW;j)=X?aJ<SAg0-s,+ar7NFj^E/5bR$La`^Utj`X*i9s0Tp?[4T=.\P
as&2\2H(2dn)ZNjG'gaK8DuYJV+P7.s"Nq14A4jSaHd&cW`[-oIJtKcc-r44Fm'NX$]AQknKD
^Ye/]A%'$J4W0r+BfM--7"OK0//+bL*`JRd$7uK%$!OmtBHNoDIcIW>;;=RK.-h;q%-:.kcOR
AWH$k]A#j["oS(bQPC=h"e"@BAA#P8r#!sdCc2J=G?T+>;A1Sf4;V:rO'<ST=n6db+T1@X"3l
a*aA0q5neLA:/.6^;t_]A$C,@Sh[H)+G,4`%9FhN#;?&p>]Ab%7(Tgj1VSBtB)3DWIJ"41@LH+
3f@a2LEFdFT9n+^M+,[T8mjc"JnDG!c*;l2leZ'\n(1=H8IX8nJs$fM_ZY(E(c'ELHKoA"L<
,"]AEjB9MB/_-$mVj<mck8''>><*]ASs&em4^GjbSSl&]A9O6ZZGQDElK]AHt<Rq)9m)ptU0UWde
]A5^N`&-&2GctM:A5$el^tN%5ls25(K[*bniS`koH=kUou;mLsQ*<?>5qB`PafY1s*s(\B7bN
X9hD4ZGQ#qr7V&:V=qI8AT_u_ok&g/9E>>3fWbb0';M9,=reuj)&-tQn9nk`e_&-[j_F4--c
OIiVt18mo(m/C<#`G+Eon`g9C>eoA:@I^noTZ"?NUSq\dduU[`q8fe[Ka`-U(#ZO]AK)q6Z+(
sc"aKe!b?CQRp"dHn$8MOGN,^q;):`A7k)`N:Q`65of4SC`A4&W=Pa1arXG<;m(W(W(0S2KN
f(cahIqT"$[k!:NBmU8%KA7NfLP73KPiL'<FW+Qef73ml"Z\.BOR'gD<"iig/!_6N'Z-3<*L
*YHu6u;Tg8Rs7W!hV$sae_YLUNJrJU&PS]A>KhAu5^0a3f6\GDY7lA[Pu]AF%l(*e4&U5>k-!^
:YGISiOkT?4s=j*mn-4&;^sag[/-@.]AqGTG:)j>?(hIhFAFhp(1_f[&&XH+<0-c?@0R_(=lX
e1,,N^s@SZ,Pc0#0O3.$;@Q]Agl[$ohG<.q9hP=BGc3p;2.hm\O&bB5$5GWM/Dk_=^Otq>uf%
<ph8"+p/-Y\psMfj-'Q<4>H6Nn>nk&U03XXJ?#L1]AAL%m]A^)n$:qd+9UelQU23pF`cUqY6&/
$^I/?fo;9Z;,nr+k;XH7J.+!s5<Z9!Es"*1;X;CqZ`o*VSA*A<W:?CC*mU5n!K0f<-\dUWRX
eG;rDXd*CBPs4/"!5YQ9Q6W1eVW'df3&$,\a?j%ShT,@LCs<mV/a's(l=_k.eD[7%/FjtDA)
]AsRd4RKm62<nHrU,7YFI\F#c1MNG*Dja0[WRePdmK4b.O7:J_]Af8!`2)88#"ltW%$T%RJh70
'FueuYJ'cc;GUht8>q^ea.?IpnV8cBPN=prfG.6h+(/nT=^fg<IRW>FO!fGTnb';OC'm)"&i
L)KAOlnhA['%Wp=j<[^ednVFB^;jT\Y9VEHRZqn1bdDn9?Zq;28DnMPjjk#5KYm#!D!QTj1I
GBdbZ_4B,9>cE"Wj*MFfPEeT_!F,-,0>IS+9;7F:h`*\5qk80bLYkjD+.K$-5%JGH(6Irl[I
N-24&`?AbR1[;Xf]AA#=;^Yg>BgL0q[t?KlEEVK$+KGDUt-8.>`(pU[nXRgl?TN7WfJ)GP<A/
j.c#IYbS*bSiNS"*s7OJ%\&XN4c/&($[Dm+TD1%l96-+TMAbXeRk<VeGkunH+q&\E.cSTqp/
i>qpat#/,*]AjDP*=92=Rc9-#9#C>)?_1Kg=%mM..jV)&gJ:UR.]AmT[33^lcTrePMa,s`C,<e
i$4h:*qrdh%HbU:Ai1Jn_Jk(40R&DCedoI6g:q0i-!4+$6!Yu\o%k3sE\WWrHhU0@!#PT*d;
a`9GbqGW8r^dPm*fBn\L,D/*rt"2JC@Y,5gQm$lcW:p"A9FT()^79b5+8S%f6jaYd;:Lu:[?
,2Gfp0nj8!G-"hgM#>tT]ALnH4)&V0o]A+<kp5g_eFNGA-@l9R=&+bK7F?'"[mn`_\F7AKRoqC
/iT9Wd1f:/8VC6TkI1X8e?&p\I>T*-0E\]AiNOEEnOD^U8XWR0\^46]A-Nig5%d?\`WTL%jT";
>QDmiS:uaQL3Y'p'mJ?YQ#CBg+7"g/l+e'YGZtMR/_DnF]ABBN`OT2r_qn&lXh(dH9cAeo3=n
rV0G-O3Ql-^`L_YBg.LaH/EDE5HAda5N*?<@)_fSB'0W!:=Q&YkRR;uXDRcg9K9=enC>\eo`
6Xl*,na`LEC&Hu=[JQe`D!@`B$*lF-M"i2SX@kudT*"'RIU[W!M@fS$jp>/]A(OUTP]A9GQ1;I
-k53<P;%hEbIs/YnsT8OU3jPRn$fto+=LOY!M@Qsh_QXc6SY.1V.M=k(q;02[t6>t'u_FI#"
-R(gGDpkP)6m;$S_J*m#QQUciE/A"F^UR!_P')m:aZqpY^%B;bY1tB3QI()$0>7*TNHC_PHD
!TaGX<gh?-7RFD6HZ<7Tk9,m;P_(H@&mT'2I7V#S_L]AhE,jZre#Qe9ho#]A`?&Q<-.6i=.nU*
X7V3>'A4X5,.VQ>2T/SYeH+cC7,(D;^K\.\O*DEX'3##HH9icIVD[>2A23^p@kl<qOX'_7]Ar
JkEoCF\9W;ME2A8KMJUnF4WTf=/ZcO3J@Ck*VR4YgpnQWjBp?Ek[%W\,t7FZP;bUZ<#j^X+(
Qfh;L:*(g46Qm#`tDPHA"i$55$9^r9S`^l($Vj15Q/4%NX.0IGF,4f$Rq]AfS@39YT*n$s3kB
qR^O>:kUY40/"O8NRB,0+4YkL#oDJ[9+#'D96%-'J_8:CpO'RWP++bBiq1am#J:_i.QLESJ.
HM]A_0mggg3\:'=j"?*GA;BeceaI*#I&5K`cY^q;L<T$6(ImOmoFm$jWt+4OolYT-_o[QG>\W
!HB42<@.?kC4f\'C-sA*%*IINB2:re_j824P_UETR<bVF:V_9>),Zk#`=W2Fm),M9X%;3Fm>
-pLfCI,Me'hjgoHYZ3I9h<5An8<0HkV\AD9R_*H*;U;VI=t)S.qNf1mm72h*Gcc-V1CrT\'A
RdK+T]At`&ZNB>*:l)I)sXML$>Lf8!>-TK?fA;m*+M+rHU'Q[bb1JnqkC*mSD/m`d+OOJ8>%o
dl&*?d%fO5&GI:o;FS8=26r\P@$*G_W!\)C.lt(F!+R03/T/^g7o^-dM>0qj>Fe,t_#k]A8p5
X4a(^'S;T)-h5Q._RsKp/q5\fhpf3=9@S+e$//lQ$Teq3$Y(\%I>ql4,9u)i"PZ9C;nJHKC_
0:g)[[?7mG1WiX$L-SBIV2?MIUknBIHorIeI^P'i7CGp27V-q?^k"(J8dlcYr_c?Y=r?kfNA
7#(&6;Wu-b5<EXK!tnQ()9[Yd,u>Z#-InFbq\.<&)4&`C8m%8:o?@CF3W.jM"dGg0g2ugY96
3FI3'EVU;'b/9(K,*r3efHC8SC)iI`$<TJ/1K$0n^=ekKH*7t[f'>m,l%?,B5sbP_W;`3JYQ
%6_,[_H!>ZP)b]A>"2kguoMdq$X/<`Vac[uLD7Aekk1"36#TKY([D?n[kX1sHR+og0b!T+CDc
4Ch>CNJ,.5FYgh&4[_NT?62FtbFE4^;BAfFaJ2^ag%Il#ks7[sBi'gst")&!;@fi!j1%"oAV
Y]APh>U[miJ4pf"$P'Cr.-96U,m5fPsZ=\oD@%7VPn@+6geh<R,`!nVH<GNRoIm!;]APK-k1on
]AAHXFL%g+9"[-13)7$=()QUeqHW+0FbZLE:0!pX1>;?"l_NKtDU5saI)2/=.k:pE4@T93Jc5
ST!;+h,'POVsY7&9Y3AndbX>t"RJYp0C?:.&?hV\'!@m(k0bk3"@)q4h_8+iuS+:\/=J$&Ci
>pp/hZTpPC^RJ5-p7Dugq\iJk^<eepFfrK[lY^uQ206p+&p]A)CAg-^>pb^<-,[]A($p.^ZLCh
WIJSc%_iU5F1MbrHM^Cn<Wjp=.Yke+kj(MLLhbo%+Fb<Te\B?n6l^cat!R]A;RBnKa.d#LAU?
u"m;&B6&&<.%3.841aVHO9G;2U.rGpa9k\;nKdbRr-;nj!kLXFPWht:_doSo0Zq0ZJ;r80K6
\!'4T#(E\J2/P]A*fomd'7!$S%Q:'''J?Tdf[kD1pR)hW=5jA-a82OCO\9QffZMb7;7D,OcV)
7>Z5$TCIBBtY;K*HGdo.F*S[d)QKJK#97VK><7rBt,j=<[aV8>7,e38L1l*03Ndf+12Cd+7q
`"R8S9GSS7#cdRQD2e)8=-Ej_:m`F";uOH<VB0-k$XKHE]AhR@rc7h>_>(lLiqgoj&CO4t83K
3pB%)mmX%C@V>l.[5gm2/X6DqQR\PGp0DR`fD@eHqak^b'td\bD><?Y2C9n9lSR<tAER*^$C
I0"G:(>9b5&g5Q<;ZB/k3.l'^i=$`D(LKL$9B$[r/SK!*m.^`;?#,B@2I.H8_[lFm&d/0*?_
YhaQW2JaaV:58WOLj*Fb8N=f]A#t&]AZT`6I3B;J`l?>h+pGq[FrD#V#@`$e[BjrJra72dSP_1
g"IW3'uB=!K6MIsYK)=E39mi[:AoEm1]A=;ao+l7Mk*mPkBORR]AI$E:b1mR/1,,6HN&EmC0U]A
)goaBOe5b"'>2?@&<E5"*2.tk/kroWSXZ'XO@]AL8.;q7"`9e5[_?6m&EYCu#ecQX@aP[&#[]A
_?jL0WC:+_4U;4^WLIg+25kK9,s@f.!Z,dQ:G+/b`3<E5X7i_h*$'`S#g@D$7u2*g8K/rtas
2kr60,np_XLG;rga+3.l,'lB'?C6km58*qd0PXb&=))Ga1AuY<#XfXK=.RoDb8Pl*p9C/&R6
;a_q=0tHoe)*CaH1!ok3R>C2o6J+-kJ#8>0>UrH@:05dk7goQ)07$e#J""Q2c_n@)Iklp'3X
Y_Vr%^+6E+a-i>r'#7Ct$=iY*numNOQo`!U:/^X"%S0*;9$@urFNou(.;HF-*F8C]AK]A7BaeZ
(XpCUiaIbV/ACR"pChd3,tIhs%#a7S=G@k(MN,:FY<<Y(3itJMR[T[%&_RokUR@gZ@)cpU_.
[Gk]A%WPP[ge/SSEKCh&nQ23k&T/OFk+KHI-bIs8CqUJ\=&Wp\bNiKnSX+-"VkRbF:<5uODZd
I9VgXsqDos!p9=%gbf2I/*-&Pum!-EjI!N*?hs6T^d2ILL/]AmG-:#20.IqA)7`@tnh\k`V`A
bRY2h32L'+Ma;j-`EgbRp-,nma]Ani'BEBo5GhILeiXOZ@T>SBJnj-r:>i,=RH:C/%Xfj-$,]A
(k[<Uapd@l3cqcp@ebjL]AWc%$a+T^]A"U<eQ5S'.aR8=WbO&X5qE!j#:M0Us0YF#lI'X7=?8T
VK1j<((ugAnV@O[:#ikULgpt$F#LTJT*L#sji5ktf2+'r(a:_#EV`AAa&-UM7df-(8"HaXea
$<`W4qRQL.A:iMLtiOYs`^Zgt%KmHh<S_,lDIe&R`l>G^nC0i8'>)^M?8.W&(QbO6&iQ<\>]A
Q>`b#t/QlO08g0'I$9rId#l]A7N@A>jR4buMD&MjCWms4GoW+,r,1,&1m9\5]A_[$)csAj*m,a
/Zi-qZ*7pWVrel#7(e614CJPG5l^bTJpE6o1!X2AdL[7neK[k4.Cf5*8adI?>ZouP&;)m^K1
Ek@jchTdfr$Q'R#7NSX2JhmSMHEXKP&:KWQQn[rQ3%C.P3iNoNi8iO9c`?7>`m:EX0@/V3m_
kuEueUX&RiNik@*MB\c7r8j'<q$$^.B26EcoN)oRJb,b-_;Y"(lg7#)%]AVhTA19b<VX\WbQ-
sT9TnbrFJTV:fE\51Ai-/rr7c/ZlNYCM7=*Y)<8'R!DKQ4.72Kn"e]AoJ<%<;US95P^]AQq"!X
YYSO(ddX.hp\OoR[^"PkO/d"8!^ToW9adKAg^iWB0Wte-%7]AO-Bg\F:[`HhK3q5,C!$:;#2n
W`Zeg13"d%!j0N"/jt@ge:7@nmD(6C%s68AbLIXCr%isfmBjoS9gL%6#hO_jjb6m!LS65CJG
qC3Ya?rqJoG_'UfI&,9&`H3]A9YLnj97:=b-Y'H-"ZKSa>h"]AIRn82>m*L&JG)Cgo0di/+G/o
gDH;<g59*e(Vmme1ZIb>EaB/<:ZBR0CuQVF-(FUgUK+T[a0'kRHhXI,P=VEAjcLPBS&\X6bj
5FiO]A\4$9L8L^2Wi]Ah1=i4Q8lAq"5"Mg<6=\uOJL6F)7c>\^\cf8$"7X&:4ggog%JA#4@RtK
ca%IrFKuKr=D_GJr,IOV>f*U4UQKfB[5S1S%")ddIGoRaW0WGX4J#E#8$YD5^Ibeo2:>OqtE
2#FaApPDNOaJ*OqLNXig*]AK>T&IBEaOKf(=+*f?6FPZ1L,Q$lhu`G^%e/e7HZSlgSO=(Us(m
eK&:u_8`0!f4=lk*5q;Wp#@B[E?UlMR[_$'XXcf5Gbks51Th^<4(k:d!7bj+^\MtJ,&ia7BW
N@%o\Et+4%:-;!(Wm>Z!Fg]AXXDLB;@[&KTA<ea.`rOjAm><IC7Hu>Q^cPke@b^Vk&6GqEhI=
eBTe]A+aj]A(T`6Uo>7?41%rb.ZbeZ2aQOfo?.(^?!dK]APnc->6Ef4>q=d_-k1TrW)k>7=.=8&
IeBA_oRdt"'_TD>CBV5_TF*QUMH3c'5b;3?!6,4ID1hi+L3tS4VCCfaY7$gM*B+De=^LFOKG
dIi^jRMK3DOXESJYPA6??.]Aocbg\91dbZ#Mf.cXGmKPW??/hOW4e6%G7n4S!FG\uFP\""0&-
sRir)if@E(b;/m?%"&JAHi#u--*VMVFOW;;MW9Vb:]AH=h*EQ.0ZubMb:"e&MNHC6u=9>\qKm
YKZZ$Y4EM57J4,RVOZ@ToQQLWe,K<(OI*VjPYff%R4%MaM$,VT!M)8H6"#(7'Jt4?1V)LGik
qD".E:<a.1t;6I=1X>9-]AfE!m1d1X6#N6Bq3SX$3'W6g/J]AB4@C!bM<.B@]A)(ij/i?PRnNKX
,E,3\+Dt*FfC`H\AEG&ieAP4OB1marOmG:#ADnOs%aM$nSTWb1(0!7b0DJ<CES8):6*POTLf
t9gWT6`E2SnP%@/VeQS\>W23CYc!9Lupe^oGr1O1$-@I:nUtc11%;D-e2sofro?!/]A+AWI=,
eZfLt4]A2g#'XB%jmeV?maRT9O(IY),CR_h:-mU?'#aTMKfJ$6'KZ$Hta_dj;IM2\U.7o>hF:
&1R`_b=hp(Hkh)]ASgNX@._R_.s,41!F*Hm8)P,)Is,bief$#rJjs!&YiC#]As]A&Rk;JK%(er7
\o>FT6.]A5f7`eX)674JZnh\(-jIqWN=L3<O,hb&2ju@EbdUY$>rd5N,.E%%^T"SFepikp*Ko
MDcDk%2fMXde#UM:_s0Wo5MRsQWiDt\mAI!*oX[tDN>^BU7rBiR&F>N`Y_h>h+YRe<FY;d-@
eXVip3kH!URPGX8[n?b?:iF@[C.LD,bl#HWCVq/e+PM`0]AeX`4uRnWKJ(ICPVnK6n2F1g"*\
'WqQE6kfVE]A]A7Y8`[hqqi-Yrd</'t0W:9,44Xi*1m=?Q.9%c?+X@h>_IX\u07@CR@"]Ac,l;r
-;;36g\&7"Va#=!AA3^*c;$B_&sH\W;t2_I>X3**UJO`V,plE5+"F7AW6H4gecT3BLUs*Bq0
(4&>STV]ARj0pMm_&9(2;WWTXU"=l8\GV0e-NfG,nt_d3ATFtn"+G]As6Wu=.7T"c]AYS9a[qla
*l&P0_h^e'lp]AWHp$2#\'^;F[iD@BcV#OoINAeVB`$0Tk@B9jb.0$o\i>&1W0C8e-*;3OLS7
Jn1aS.G0]AO=[K\\X0!(#sHci2>;N2i09!sI_o*af^TN&1X8u1\^BSmZlp]AlbHj@"if:FX/g3
Ou"EHaBD)QHuMlh8?'!Aae;:#_9W%,LlQ2?=[''upn3q!]AEAfPJfW8S5nhVBSgO.;ue*I=eQ
FqJ>%GFYn^!sTaufM1Y2+[5l()@RQgA]AW,.0c>cq<r(eUDmeB->BIgm)`&(>cs:1m:&K%jk;
95b_T@1VR02jC`L5d,7fpTtIi]Ac,4,LW[GYhG]Ah,0pd$su3%<VAGqmQGeRA')J"9*h5WGPCH
5BAt=d>F>C1bQDG@5g#]A]A1u==XqU!,<m3*%:Dt^W^GaiMmiPog#B,LpOjlQ;Decu/=2f36^4
s8Rsm+9n\-j%[f1)HE2@8;DN.fkklcGbe,28.-"\$1$RXGl5Pm:aXHhRVA/5o)%rd_A0Bp\C
(3[a;q*4c..M4#*lmH3kmE`.PsUJ=OqNTYR;Igt!V7[iJu)a<k0(jq;WVAA.AF;XlX'ktRmh
L>G1nV)_NQ_8EUqX1Ze,Jd&nSHi/_/lJJO_L1?EPMKQUI9?O$eT@cc5B>!>o;Nue9U_:ITJs
-f9QX;uNU*?`t`9/,VOn4iWao3$N6&qq(7O__6<jR9)2,`6nPNQ5j,<c81U]Ae.:2omJm2BEq
9#ma<2=?dBHW"fciT17IIaAjjPV1MY3"#lD\XX,b1+t]A_!K42OdMh5#Js%^1*7`d:rlV3lRE
TCT)1*dm^X7!:Pl"`IRqE/fK<M"78a!9F9>UTP=h2^2+@'7p$l4ptlg_MJCb"+IpEq1FccLj
-]A7k*YdEFujBra0]Ac,qg]A>d6!kO=lE]A.#"\^W]ANsTkl0?khr(XW?)!t2Gb,M_2JT`6m'lj94
1E%"/ji%3c%)ZC]A*]AfU3Hos;:::+Dn1$74RWJiQ.g]A?XA^RA!hG7+A0\==q?0/R?`RJc%HoM
pNPTehsRXDP+;^J!Ih:,>H%oN[fl*#<CSF+YjHAHZiGS;1MEk:`E7/!Y+cQ!fXXF[p;n0/8l
#C7UiO+!>>kV<5i32#2/@.4=:3BVlP@hjh'/8uod653'_*-%CM'Zg_'38#c1UX>VeS[s!tk0
cK2e"=tlP$nGl/]AC83rcKrLl\#k",KA]AXQZFg@*@./>M\,-HB"E5l(nWr>L-IqN')he-67e<
qA^F+0E5Jq\l23h9cS6+S\$MgfE6bg394@/dSX"d'GR1f&V?mU]A3Hf:[I14/.;X=5eq'^0,I
Os>hc_b#tqJ%Mkm>sk:7oj;iCdV_&Cden?E]A%h(_E6L.8WGX'CGHBrf;kQ1MGD3Z#`U;t#_2
#"cI.2c;VAZ+4Yu=@JX)BR\nosAC,Th4VQQ,d]AGX=145"bJ\R)rC'bFg'4MSYm;/BJO^bE#@
)"afOebGFSDW_9\b[PIdTJ^JAU&0%Co":HpYr;3MZi0)p*$p\5"jPBSh)-599G+(^pVpZY[Z
#h_X#UY;ha?f9u[7$Xn_]AA6o<-E25^L^k"<%JpcWB:\/UKH%cm8P'=q"(VgMs$@NWj9gD`L"
MZ`.5sg=lbR5*dqtfl"%YP@HiGZb>ZJ`'Mha.PI*i(Ki25DC!4X<084oC,ec#%*`na2FXSNL
.'$+O:ipQ+lA't;3GYYHP,]AdZ">/]AF[?*um['e5#R0_e,2l>F'pRJM`lMP;k6V0"`!crV8rk
s741BsaE`&.6UcCt*j)A%YSB[?*7A&6CP#&eV&Uopc.mZ2QLq7F%-bS-69'l1^$EFC9\4&hR
\WBVc`.lkS5?Xmh?!!h%k72]A=TKeTc^mQ(rgBr\a&,tA>Vo3-372!b9JcXNG$)=4a,8p_8S8
&*g4EpZ$o>77#@d3pa%B_:/`B3n>03ViSHhfm)2;-[dkT:?W?CV>8+PZe<3W#dj$$O42I;r@
?[G5=d?b\d,Rpqe79\@D-4R7F[cUES.E+9^M&4_@oqfuUf4>E6?21lG^,YbSVlpSJ]A8*mU9(
#gEr+<d[k\6*f/)U/]AW878k4=V:)EZ&a5:Q*]AD2t0ZCYQT-Nn@/pCoOM:,!QGhWk",IZl:RU
(t6ldsK"*D`G3i^%(JXBtR/e^YU@A4dtH/$V?t(n\0Umj]ArLon\Aro!N9-Y_Sm,O0`Z>kCT@
V";2=ShUE-ochrYuboQpXMW$WDG$sR;>?E3HWHh'?-a6,40I$EJ$V+?6iRf<bQ:GV=qEQk5M
n+P712E(A-Z#.2rbcAdM\=`rPA>K`@C5mb04o*OD0fOS`EkZNO&ZZ8d1p$3Ei38Gkmm1q9'p
\ID%#^#UZ:)S(LIgX.F,ke]AcE5u[m+HKXkNa85bN.Y<Vf<?<.B'-N$"e=@@NC"%aGcnDQURl
K+%SN;ZZ9U)4$:nrE[9P=6'F6g6%R39H@bX'C<-bBD:p9LcB?gSEmtNcspAagg0`D!;h=ok4
<ChlJ(:I"$Zg^O.RIFq1f@o-T7r=4<Z%G738k.cS.GPQg#la9NS>T&glM9)0UjS_M5;5ffJc
dU#E;XD#Xp_T8HiC>_L4=qU/i1=H=f`i$,rP`"iM84oLZtZFRr!i=(G_*8%F+lff,>=8"6f*
e\YmVS9;L7aN0Nm&(tJ,Y7CKV:2fAWQ*F/<**".]A`i3#IiT;7njS8a:2QCM_d`KG8Y@6.;AR
!*?eQp-7`*7"r+hLpIWm0ZBhBd:'UBd0_h?m9Gp/W"J`DU8NL)^=Y*[Ei)5_^75#[PcR(oIp
eBhuM)I(e;doG@eX1srLBVt=c3jbC&6i!0eGS\#W<cs8YH[Ql:)mJ'H,##"\i?u'Z'+'*:T5
/$qEEItTCD\=i?):EX.H(RSmY2e)ornE??;sJT_OB/>GQ20DQ9i(gW+ee'=p#iCAi6IR$,jk
QG8@W0>4uXD=.m4iSXNfe`G>bpN,q`k7'h50-[E$Z.<ISQ"7@ItdaHi*fMj-ZP[2eB]A!p)+%
=,Vp\t(#J_X`Q.6dPXE/jW99:Moe.:3"V#60I:=FEd"SShdnH\JHc=O8,,`CVroE\K+Du),9
-*1q&q1#mQ+A2YP(ic7'css5b0_LdbaBXlkP23j:mm`K!g&O4%b=T[@Zq/K&ED[!,9XR:X;)
`rj&P?c>&h"WFBpjeFkKbf3;IODYr&bCKj5Kh.D^V@ZJ%#2pFc!nTc07o[)CF\>iZGJtlP2*
.#Er`Yu/<c5;=Lr4@*#Z&9UiMEeM96YKFgb"%S!gq^8EB6*4jMEAHLu)bo:;1neaj>q^dM2:
j5hdPnCCY$j+iPY1a>q)sLt!/4!1tScCf1Kuj#IhPk9KkGLSmGC!BbEu1Fpfc>71D^!,N>>9
qdRcU2V<8>O/&1<)e&_Z3U%?s#N]ACHGf)h>*Xb:XsN6V222H5pT<\o:R#]A1,u1R?h)7$$B6R
p,a$up?nA@rAFuLqiL9%!g/aU!SE;4ZcY7":&:>tss5Vr0MCUlgFq#"+HVm]AO=`\qudN$%j!
_7&o[kNZq3^sVGjid2Q%33I\f.;=\/AInsO%X]A$-@/%g.bcA/IB]Al`;_)LWKUD3emr#/+`U^
4AHJ$AS%8<%kPCt,2f1sk6dFsZ&&d-?S?X1I/,F>*J%"i<B*pSX<<69bg*;+n;AlSN[r6+U+
(3-r?7lK$kP9q_LJa,1U93QT&[:mtC+ir\n&/1==F7:k.Gc6+]AtK]A\>jYoh8kY3t(p!1gi7W
>Cd3fU/=,2$%7s,p3J_.A[AFrW[5aV!c3dlhG?6669Y9c]AeFo[>/="k37H>h?)\GPia(_Oe6
3:/_#rcL^%@TKqfb-%,C=MVsBcM-;7FR?g?p[D,JLKM_:jQgoZIXQOq%s^B1M!10BoB>r]Abb
9WR;lELb)"?#/(#k<D<ulIk<g162lIT,%d>=8R'br9^&Ia;<866H+C*6oY+fh#R&U*D9@T@g
I>\-?ZGf_"l`/qVDZFLkMe,gcVj,Km_g>j8IY.bp30U::3BFmp/A`S^"*iU%#eS[_)PeMTp6
Sq,0&rr>r?g#AVJD9#*CLksucjNW^m4j/$_G@4qaN?5$fH5Q)Ll-R#L6qPj_p3kn#$2J2k/g
qT%;8`-1je=)g7"O)=s^87=>o-m13-NPUW9-BIVB$oIDRSA=Mn/CpYanb@#mY&8sL-MY3%"C
qk?%*:RX^G8kYuQ3Z=MkZ$]A[$Z`l<'tOj-:K36X,ASl`-;%_k0*hPK,79.PK=q@."[q-@jlT
6$adNO^5&OYk>$#`Yi=k*CB1^X]A8W:pP`p-C3q<_K7BW,53jO@>cLI*ED%kbRGA*%:F^hR)K
9Cim:o#LS'C$8PhrBaF!tFc8VXN`naiMBh<4bI\7g1<rUNnV&Ve$Y.(ioCY,!E>BNF/l`F'A
FG37!HlFDH]Aq'u\-@5?'"/^6.44@2r'"]Ao"%d!\_*0jBmuN0(mGe?_n%75n3feZ\5JBA2l9W
Z`qA^':celA!lip0t(()C.`c4rUe^=;LNj:Yo(K$*Kb'?#^;&A,Z+"_cA$(.iNdPfRAWo+j!
I1Y('c[FIT*Ql'dGCHmcJi<qSjG=>.61$)F&'(C`Kp\P]A6l;pN]A*]A?dI?kT)9qLm"4#+/N=P
q6oclG3K8-f_G2<l$qI&H`knF_!Dhk?iof#,m0Q7=,0nSH^OM=-]A,>V28lWkZFnA$s,uH0#K
Ro4TpqHuT(_R&J;m^-U2`9X$9FqQI]A5%ujOQq$BrE9\m=DSBJf>V[4l>I3HZ/dCm9uI9I*4l
QA'LWJq$XnN-j7T9nJ?eLE92oR58!K4*>'LsdBXLdOZ1c'Pt^Rd*!;kOMXQ>S79a%o8`m\XS
DqtXr@.fUoW77e2_hi;2llqTSVl`BSTiqfh7*+::JWp2l[/V/&4*G+2FJnI[>/ec:!l=&kR>
;s/1FDs/8(H.=0WmuE*TI3StNr<+NSrbYW\Dr>P*&ZFli,PdE2(HU6cB\C,c"]A1p31Y1YRc]A
3J^:l<Ofr>C<bjiL<tUZ,A*S4K2,YN/X?bJ67VHi6\O<H8L&++HKeXNA?2\W*+tT[Xii&Aq&
`l596X)=VM-*SV*;=OLjVC7=L=+]ATUI("p;jG^6uY8C5BDTa!F&,6H(@QRe_AJ0E(:jST>W8
I&0Ra@#C!VN$QiR^BnI#AVY^+HlAb+TQIoN/)Whn1hl/Om<XjS<cC9H]AWkEU#l#/85LnoIPZ
DHB5D#M_t-e6I<Z9AYT:+TtS1g(3hYQc/./Ol^[`2k8m(u9<pLnNkRIaKt0mD*QDcK0Lm*@G
UBDbXu.8.&jF<B7%I$HaTk`.2!GiTY;`"]AD6F!Z=9W8>[I4m_k0ApZqP>BLY+4DN?j=\:R/$
W#FPcYZ-$0\P&6/G=rV[E!qXD+>85aIOGe]Ad,bj)a1\fI85`4q&Sg7bQDn5>\$<N]AR/WQ58=
]AO2=Dt*^J#[dfpL_hi9Y+lW",m#ukK4B#7Q.qtLI)oBjmr3-ifH)r_f<54>;o:E$=,Qr#0ok
IQMZruTtj&.RN.ugRcieJ:T,JDqm55in&@i(Tqi?X^@l'>-[?=trf0pjXmb_b7!5k8q>Tdjp
H%=0jLu*?qGIi+d)ZC0h)J<q:o3RKI.Qc#Z)h%mMPnIGZW:PW;(g5d+Jh+"CLn!@9\7'ai(@
p<Lm4^98%!IiF9k%=(>oOgq(YmM9$J!]AR"dHG*uCYb%FsYW]AY@Omb9__>[&C323"]Ark6,doU
B7eE!.nhsQ!sl(K7rD?B$d2k"6Q;EYft/\'>k.]AMk7"hBH7E8T]AKkk/$2)6h`]AIAkkl%YrjD
ef&dM&(2IXKFa?<AWCD?eSW_;c?FK2"J>bm*'1;I,>Dks5,[?h<IKe^m#P'EcsM!hS'TE[8A
1:o0h2Rj8/#e>;mG]AhQf?W!LM@8=;/[TCWSA0g1u[heaH]A5r7_n,[tdRO-O,@k0e8a<60Fte
W/,pN:dW`ekMd^am75dWpZ@P3LB[.]A<'OGa:m;9Od3_cS<.!o0Ar&sWatk>+]A2>O5Z)7dAk0
5Z-f]Al(9p-<SSNEL+h<scp?ft]ASVV>`FSN#9j,eO%D6q*&5>$cH8qNC;)lYU-6J#>GhBBPMl
YHb/aEMfZhPW7O!jR]AEpnk`n]A\W3Mf'13/BoW@&j?WiJ$/]A74PJ=;",Lu/LnM08ZgHeDM9"u
h="$g9N$rlFYLF^=l[C]A$!8*t#,-3s$o5Q2W<OQN$fd\[Il?j.]AXnBD4<#"[7k!d9W=Gp-UE
0WDM#c+/fC0)B0rsPT/Q)7';9<j4K4H]Au]A)"StA!@YRs*K3V;1:=ZrK/p0<cuCAm\@jY*Al/
I-n"H\dXBr_i4$.qj=3KF=DQTC[<c#ic=j,14LkD)Bj<Jq%itJf6@nM+OM"FrD=feUT_W$ZJ
?=-a+%c9N!qnIOE#JoXYN05$+n9+qq_kZRo_,0#dC!&<lsqF>:mXJo(?c:B?VO(IPUm#oS>3
9i_1,:&rU82I.%UL)cnZE.b4U]Aq)(%\7oQ\9u1jNVL[J]Ai>"ct_[cU,a`8]A_aK'"dQGH?5!D
gCSHKBqM*'"C6f14Zq_44SB6:RuWe-@;@rW_.9*cau4ebE:j$U6T?NDMhMP.]A$kfm\-L9a/$
]A:_FF]ASR<)=mYHWZ)+'t[F^K'N8d8oHXsJ4r:-U[nB)V[qM/PUT[hUVYr4k>!jbgqfqL!XiZ
CFqf,j"XB\91qKnHX@e&b)5YdjJBQV@]A2d;j)Tdi+VgW(4PD:SF&WUQ9g@UT%j6S\Du0UL<<
IloHt*F*ae>a,3Okj2h.>+nf:Y5;+,=Ub'p^jH-O<`-t8I`VOMQQ4UZ_:E%DYE+Ntd:]A*3+:
72ac"UI2[c)t(p+pYL1LX=U,X57:@cO]A@l@QqOB!&I-Sbo\F&Wr8k%k"'"AYRJbeo_4:$qn$
A*Fq;7/,q9T#]A[i(e\PC_&V#B2VKP9NigDE@),7n$\A1L(BAW1JUq0+8V\7L"n17@l9+F5X8
@+*tV8GK2#ZEF)S*r/pplj8]AP56'o/C<T0jgEqb7ug&2fuE=12MKBClnQ=,-bgVd%++qNWq?
22r[++LmJU!`[7b"JfFSEd@&8qtPOEjL*2I-26X)^a\<i`0`&TH;pP$Cc*B,0eF:gWSR>!<S
PmiRMi0"Oqj%6!WNU"![h]Ah6!OIIa^p:<po2!H-Q5`RkU4G^DpK0eNjbeir+3&pe%[QNkCT-
5Un6GW()=eq!^j37h^J%QouB1jJgso;!Elums-JHi]A2?]A6f`0\r(/:@oXf6;G4rFAMOAnl:O
^^]Ae/2tPPfW_[_';X;<D?u25<7R14I#MSC8@hiRV%Y9Yb,he@tWM=SkSCOVS%UrWFCn[[CFM
fT,U<B56=G-/G]A02"/[Yka;FtdDQPrWYD$cfPBFESh/.0[o#Ecj;0dA*UUj8$'(bf1WoLuAk
o1l,a$kL3l#GZG\[t=iV!fJDF8)`%fsj0#2XK>fTW+6D(Jmo;'%O!fJH7Vt@Cj;_#mi^P`(,
dpFO]A`>7TpB)@WKt^"b]Aqd/_7Sn4`1"P*Dk@3="X_k+ZIt!U3?tgKI7ab_(\<cKF@gA?JPa`
.FA\8,SAXk4><;/jWX'u@4oMO$8p%)Xr*sc->?dX"&;:,.H<9[p+?>1`-U;[Rm]Afe#&3,7:/
1dflOg#<Z\p`^q]A.L4p2)l_Im4$aXc?J"d<R]A&,grbG.+IlQJ#`ecHg1+M\@_E07'U&RV]AJ4
%l_gE-MB2S+l>t!UkI+u@LO(Ir:H&S<8:03OdTZ-kbLnB'-IQ'%0,Ztp4/bl2LH^lM"$WouY
:iZ%YotC(hs69r*cVSo;;ECs7hc=o(=ZfL@H[Nu3%ITKPMJlc@TUgA5'o(Nj2Ad&"D!g<nek
!XmY<^Bea4:Rr0^$6@BL9/aQiAYV.5:L^MPcmqKo[GSVFbkP26GJThS#[ORf#"&1nZhL7Wct
*._gHSCT1;/6&s!3dh<]ARafeGZG#cRUb03&9OR*6mo=aZ/4&8]AiN,1?qSC(UUu7[9I]A-4lQ1
=@YrL?QB;["B0O1fGC>!SSC.\1ta>JmBG)E/GLe"2rD=A<B;E[#HN)+qIi1*t)hP<Z4fhn`t
X8b@S.it5:95!gqW1@n4[HDb>`W;)!&lKB6/&IsnR-<71lM3DmlM-9*W?St:;(4%X&`Ene'@
qs<+;k"'D:2GI@DHFT#?/T?dc<*SsRug/5'rY_o>]A!r$k1hFR8$Ap2\MJm0r9B67C!HHSg@,
>3O1Q[_4`a*_?BB8m7_c0HJ7p^L?;WE*5%1`*^T*&DBIblF*b1K,&IDW9X'O&/\e*c?i(lru
1C$fN<5lcW/f@8npm]A(5K5&%oEiC5[n*dCP"R6AM,AuD:_^t3<IWLXm-n*60<]AWQII"E<K5c
n=)QCgWTBRS4Qf?XbQFEqkiVSB3ijSOp!]A(SLeiMWm@]Atj7L!VGq<aH`QL^]AoY]A?s&Xt.s@m
HZgW,%<`assa[9BJLSbLF+.gr7h'j6Iq:ci+2Y!kn?*j:i-SNBNPL&%pH3u!+)=>[W9SYpqH
h,b#$k<$Eqb-5Ib_?--EYZ7'32u?#6&J<pFfT"$aG+P]A3ST]A6j!@hXj[2_,3_L1YdN0O;LW/
^hUksg5)gcq$gH'_eP;([8Jm8,:8[ho*0Z$uMCb$P%lE,`7c[b>1(Q,o9m6e*_.=63`/U]Ac&
YNo/OH.-Y/?)C5F1Zo+00c,G`iS\j2V#E-[MG?k8%E<%)MVM#=PO>U1;Y\n21re><_Pa)jlr
*cJH-+.(YRPl'84t\DGE$C%/XK5\i\Q"^N55,+Q>-NJjD@Sj,(pUcPhG6Yq'*LF'Nesk60-c
&mu9bHX+=hZScs/7E]Au=dKZV1umr"W`2Lq;nQ,#n[?-.Jq.-:c6qGs"%_l_'<UtdpN5WF?j]A
P]A=i<3nkp]A;P>u^rJ]Ar7I"mZ<EFD:E'uEKV>T'.dG"f9p/4k014h144KJ1.SQ61eRs!Fr+46
>40coO7KCVk"Y^8b?;-9D5pS)(dcb0-qIj(lr\VuPthIp`O&u>Oe4nLEQ([-m6]A$i9f?lj$t
cWIQ:TGG`#SU<ep*^[&%:.1b$)s1nWSI).LddBTt4F3b4E4fo0%B.6;rZUCdm&7JY)!qq\G.
[>-"u!2ED4!-*;TL'O%5=t!fFn!k+$b6A3E!6RRQP&dhnom:k$Kl0*4at>8&!G&p0`l"okGf
p;lQ\WElcuVhaZ@N0rBWK]ASf?bj3YJHmA:l&DY5S(aM?e?i[J</]Al\B$P/MnJki=6En"m,q;
iXPFRc1[&\NJf?2dNF62LtTG11(T('\+p`M!=cW@D-^qY[I%oT`;[1^?SX.`/=kNSbDe>I!K
b4f`R]AMcJgHCg-;=.gc&^JG1Y4:UCs&5V^_)<kLHh&V7OO_jGo]AcMNe["IKlJl';7ss3Y@k7
rplqWfDF7n[Gq/]A,M!7Q$+1RifN8R.ilLE6$&TB"85W;P+/bn&ZY3#*BYO%U<.@n9Tl[N9p0
lq\j\bZ?D&Ft9*?JfcR*i+IBjHRj_r'f1;PLmVZV>_9jtFHAZt$MG(3*;m>^Vbg5_TY1\/cG
D_TYJ`iga]A7&=c5,SXM\3ibS?),EN?IWb#f<EJcZh?st1YDt8/:H[7"VX4DH9(tb(49<elZ<
fuF(jIYaRQ.\#5daJD6(c.4:NnE45K!*"3+L:t5'aCh#!2W8=i.,4Ijh1AcZhh_jlXXI]A#0S
))Bkag_]AjQhW0iP?q$gao%iu&u+h$S6P#U?U*PF<a>SIYBDkSB%Z[A&`Ne'(O(CQXC5k8f#r
1LL"1U\u!so>b2kmFcE(?>EB7\G;`X-IO=.Gh.b-'sZn<'28mh8j;%1$1h2X*!O<d0'hc8'#
p=rXX.7T3)bT\1mRmOF&PC1.PJmbD\KmE"2`KLG?Usb48'5c^$JoZ)kgrr[c6TcI[2[g_[E4
.53r&?ic'"[ZKZf$_T_C_qrs.fbU$M^&IEYIE8Ag"f^gP\kq)E9YA]ATFl"TKmp24ePF%=j"X
d&n/%&A:&auYiej:RjK^q\bXDHdnPDa01u3TG'@Pmfi$s4>*Rg8#aZH%U,l>;Ds4*V`)Ao+c
!]A\_gV16\>;$Ssm2r0`"'Kl=L,dD#Rnr8pXi);528cc-!0]A_t\ehc'E!4,HK/Tci(4[LMZ9m
Jcouh_r^jq0$J(Q(]AFO9qe\K5cg59iY*P(1C)]A1>5NPO20!>.s@-&%4HYshP^K'cOJXX#o/*
Ma!.iLnd[lka<Kl4Rq8iZ/*+!"54Gq>[0PmiI"U"VYRY8&Qg[Og3Lbb3jq[!FZ^#p/Di8;Fg
Kp2%Mkifh#j1nd`D`+</;Jlu7LNQSkCD&`&ONS_SCfNVLl:6r-]AU+<8O8*J`Wc>85<8Ns<Kc
)*lIC>7NXY;3@-ZsU0$:%4_.L(V*2N=%#)Qd-b5Vu`10eD[i4''!esF*&-.`$]Ab5IXe@fhWF
!ZhE&(D?YS^r="A?Be58$;qG7I6$K<<PU2Srh:X4=I&H1lS2fA/9F=t<K)1Gt$:ok3c0]A1!#
>=uRY:`p@!-!Bo\i\]A7#?WbNWY5c<Yi,HCnHeGHBpdDk%OAV^!:[.]AR:h:K,;cpHZa#AB\_q
gT^_Pg@9oX,>L1P]APqMg"2qrOBh4$j>3kYOBEm(@)>ZO+GZS5f@,02I9>F&cNQp97$rhN>#O
\_J:lIj8HV6l(PD(_=uj.?fj/k#ibX$B('F]A-O%SOY&OnY-<gAXq2%n$r,.8r]AB$S&qX?.6f
[SMd:OeRZ6lMmrais0:%bFCQ>0W0-)_8M4!/0%YPsa%(pHb5Pc;6R7=%s!m]Al6mZ+`tK3KCn
?k^T:?'ba;m^:PGs2pHe%"Z@T"8Gd]A'PL8dqtSU?o13KSW8=[73&8dph>4AaDaBlN4jZALD@
VS5Ga@8O2;L6Xc-TN$<P>GW3cmVS8]A&bA=P`q%(Ak-:Zj[cptPV40BldU!Bdhi8U8RMs.[^9
\X`5=.B#F^F^+*sMpQ*?O87Y-uXcVN^h%DK99MhaBL>"<(O7M<Ucn+p4B`IqfS90"Cn&b=O0
)*g*.o7DT+Ohd+["/rsVJi<k4i&JCR)Y)t8UoXP/&+`6;)\"Su>`9a>?b@%+c6KY0k"hf(]Am
KA)[c#a#L8`!/P]AF/bFOs<-HB\S)&gk'(`A`9n@?T"Na0m?E(%nJ\(Z254hb".+ggLp`/@/o
KQ8YPeSha[+JEn#UAeZa:QRb7@AZBp^fYI0D9gpL==4FQ&'aOR_oHX!@W$A;Fk,D<TcNM(ks
2J?9;*mQkHYT$A[%JZ/%EAG&X':(\-F/eB/%\Fa0dTc7TILJXkk9TH:4e]A)ZaN]Au=KO*K[kB
=k\I&Ofb7'\D293JZY!f;rkR_U0LHN`->Nj2J9N'q@.DE+U3Fd[?bA:4BJk8>C#f_2uLDpmn
%K9Pu9:Ke*;nt3q:3Fsl/k$9/%K$M!VPb/i[oi>tJ>n4&+/&br?>8"_9VA+n@<?8tp]A7R,-L
qF7Opt@W8]Af0!ab4f$*DI-W,"ld/U<3uEgr''rmk`:r2CsF1U&97_YdfXhU"7H6I9=u19nYf
J[&8TE'mi?"V-I(r\;T!^P&#`oc#-+7[DMP^Q<Q4g%$*Q<LEr6GX`<%:t)+#leVEfG+n@Z*N
eNEn1NdMJK9agVDWp:mNL]Abn8-UnMK3WIND3B<Sd?JY4cH$dUjh!`0.Dt;G&P5AWog2,NobH
`]A[L\Ytj;+*l0)r.aF,UlP4N82mu,+W$\n$IqE:Xo>$8YSpq:ldAr]ADOXTS&7=u[FCc@Na5O
X)mXFGAb6eVGAnA@n##6&hB9LoJk6OVo6&C!i[+R+'Q*df+P)6NHQu>GbIFu:Bf3l_.PnDTR
Z;\'`_?)HfDm<W8022AD_5Ki0pa#X:2ureXHAL2MO!+dVA-)Kcc*)?,CPdbg'4VFI1FqL>g!
rtPZ[He:U%oW%/O>^eMsq%bXYZK:C*a;I#=>rd("A8&@lqcZ>sVM05`^Vk6-l"M8b?91RR)*
*iW]A1,OI9?7FJ\qHYh&p$hq-n4s;qt^\cH>k&Kel&%J"'UFW[nWQ6N/nh\ZbL&O&iZjG*BXM
dOr87Y]A!"#5,3`FBacnY_qQ$2:bE4tbW)p,gec^^f>1$a`lXahJC'FPZK.B.I/1%[6`o5;]AB
e?R6'HpAL$R`P6<`IF^:!_nj'f>!o-cXF[OlNc4$mnuR(KOF6ZiZT[gn7m:n(Z.O)s.:d_%O
so1:_]A;gPJFV+W0$:UbHH2^F6H1m[L8?i//)`&7c#Y9,M6-BN'0*s>d4N\J50,(\UTM:[gV$
8f]A)O#Hf-5(EifZP!:5rR[dKSL$Zg*\K6,te%0:m$d1,%uuam>[e98e&dmGD(gNP:Y(B6mKU
eYDBjH(Qa?)#L&#E9>*Hkp:SmiiNDl;qFQAhUZqII*7]A#hX:NQ^"118b&,-`C>C=\e+_A^m#
&\>UDWT.!ESSo8H+:0?g<%7R/Hhjpal2X9uk&RpRSPMm>Bod07&Hrf@50/-oRbHG<%/&q#Y5
a5BgO6=PK@C-"bs%=sO/5pla;KN6Q[J.OlFq5?[#Aieul)OF2?=UUml(aIYPq2l)uM;!*r5d
#\aMr$8kNK\;aI7QFu2A,B5::L:^]A=i(GG/f/i3B4N/`Eld:Q@RoSUCT:sD:I$fEPNC*>g\8
asD!rjhG>8/X5)-Qun\(YTk;]AHA$7jP^On?KHSqh.@2PTFEcFjcmWF=GuD3)^'UiQt#)m^0+
ATABtTp$7Fam@.An7m")2CsedH67&-2c&O6q't*2OZF.ua8mTXKY(-#UV\s5f#4sq<?b0TkS
Nqsr[rDpWIC_q*P<DaZa_l[rFPD5nADf!pR@t"jMT!<3pR/T0Bg13o:RL9eb[bH%%-Hn^<Qg
I==EV%,iQSX&rCR*.:\M6,uDCt[-#6MhWr'W6IoGBN0T]A>h=T`VJTc;@:":RGHeR*c2t<j^f
)-HnDek!t2r,G='nc".X79-AZrN^!O);P-Jj)6?9JVlhm$aa@8%MHggA"''/fHLmTdN"RQ*d
!%h5T9]A4jXgk;L^5jI\f`S8FB0//1g[i>$!-?aY/jb*Kl<RXoND)^IbZQl&"'<[hhb4NG?)W
&ij8k;%V@ZbkSt=CHmXJd=AtGTT2[>6D`RH1_KZ>q+*r;Fc$Em5:P`m_%Gtt9OaK[;$&-ip^
HeZ&o$Q6$'mo=+,.FM+]AT>"/7\i(m8U,j&gJTlmsWpsn)%!6*;L>ib(JIEo_6Z;]A-G8$5RS)
;J;*6*'"Kdi[dg>5\mJlSSMreP^%"[(1%Jls-K3o*2ft**ZIaK^%Ki9?>]AJuBSX1EYI3k(s9
ab,sl.(C^rk:84OkpQaQ]Au:H'8&nWZfbf.P1]A6!UcuVZ.";'V_I>[<VQ5KqnFN8D5l[KU^gU
/cZ,;\]An1"/-bucFE0#t<2Z@":gDIu,LWq2u&+S_bM(UtSj4?7-RWNM/t^p:0d]AKki]AS)o"n
JO)0G,*`-hVK$/FY1,="<5k1_PCP4s^ID(EbAM/\RT:?t;T6q%9(GXL6i#9`P3cOB_U?^k8C
(Hjldu&A-AjKo_Mj)k3==A6;U;%]A<0;NB?ml[_?YklapV/E?kK_[p*$9G$X<9hnB/guDiIm&
^rQbuu9ESPZ/h-;BX27Mhb4H!;_QO;l_e8[]Al7ae\jrFs]Ab&<'H%&)Aq*#-N;Rd@Z>T*!.us
%5`pYe6!Ad<%WOTL:;FYVlo"Z]A3%gAn`,ci$Vc6Q]A/IM'dAau]ANoa04Z?kl(t@(I$/bi8(d.
#c[2N3&/6s$,=)+EJlHKgpnk@iT`i(QhE)C>pOr%6NXU'WE?[F6Q,B;^<^/n<?i5su)%kTHu
')<.0c,8H*ZJ;,)`3?1ZJ.,s&)g$1Xp[`l'(_FM/]A*?Un:YK1JBNZoXC1D`J:c+%gG8B*KT4
0&'\J$/(jAo/3VQgat0kgru4IVF.Q]AFBu%B;BnF+,BIq7dD.:,bDF5=QS;1JUJVrf#-GiM2Z
PP^!WqkN*13LLkSr[<LM53^T2&11]AVA-^sQ_9hq->3gZpRr@pSA-(,.H?F_'K^Aa6NHZI&[q
Eck&dj>F%U!=cIEnDm=")0%u*[+*@%3^Dd@ZHHq'Zo#5F3;G;f(QGkn6K>`r2s5@Y-J(HCUp
V[[1ZK"A26Ng<rtS"FtLg(AH+G^'ABUp^fNd3BA/$REKWPjKj*7%!c[1%9Be(ni+98OW^JI8
?gI9![)(/@blSP!?Q+"%5gt;(lCO#,9BD!-,,I'\e`aU;iRE'FNB`_\lk9PgVoM]Ak@K/bG%:
C5W)/C?D(nJ%C9s%iiKfV1=h1rDu3#ajMjter#7lslr$Sc341FqD8X(17XMsacp!*9#g8#X1
BJ;k`@[<q2^!]A-jt]A4EIoFpD_%Z_HFG9!cQJfFK:;_@pY]A/XcSY^`CVo>_+R?ecJ543Ca7M"
nkp^6!rBc[r?+c^+O:!-.Q07c`M=5%1M[g4#A&iB_*9>^V:e-CV5a_C>g!9FK+rcd$*VqiZ<
u`89b#%:5RoFEES\k>&M4P*^h.8,]A^KJS45**SuQYX.9kX_%B7[K^pL7OPjJBV1Nl9[.h^g8
jFm%h;995PL[^$X[Jjb:B!m*VZ\?6^Z^qHEn)3G,U^Rm+l:UJaJK/?Mnjk%8_.\E'MG?`W2p
9g9`brf`<NDXs0faT6fG@41jhrK[^g0(7R\iK"dpc\>1Emc662L%%7q0anP54rP(>VPk?VqR
2Ku<Z;2;Z,)qA,922,Z9>ScO5<CT1On8G$"r^Nj$@7$p-0qSC2q/MRV(Vq@:Z$MSkhh5JcGL
E=IXOg__6LtVXUBr4Y>e*Z?8I^\.M(K9Uf_OlLUNj;5`'?@=tImC-b9J/l`d2Y4AlQIfq2.=
86lbH1W2=_dB"h.Lg8Y3YqaDntp9X$Yj/3=WB-^mkprh"YFq/[bsT"g\RFM[<CMDWn-"L\!D
OG#"%M2Y),8g3GH$Up9fo0sBKT-PtWf`Q;brS"N1@^JgW5&VeZfDBunrJ$fFCSqV^$<2p<s2
[CMo+'eshMn(>oXq4;_>O_AQsMr2bO@o/f9e9V#;TJO^gdX-FS?gZp:"Li0Dl0^WGjE#5@f4
SolBhKgj`GVD:*K5X5;0<S!T)3.M_!ukWQ*I&Z2W%fCqu&NZ.O66uH:NSD(%s)YOg=.4J>:_
jcQEZ/@`>HTNaa"oH]Ap:I-iVj0,LqpC-`+5GoZ!"T;j=S&*XC$Vi>M3C=d!PqQVmW?;u\<\+
$ELr5Ri..g;&<6Nt>Vg"c"!5>A`SJaN8Ej[Z+>,?ZF3Xe[Uhs3s9^#Am#DEio-g8"2Pd[n,>
+Z`.IQ0`tGJXaW3i)S93\l/GTZS<1Z]A_^:pFM<96Fl;X=A@eT4Zc_iIVnk;.LgYdk7JiA0AX
&\@%MZ+g87_M7*=R9E%#X7cX=s3#"pQ*f]A'u,cUK\*(Q(qQ_i3_@UI5mLso=!W$j-.V=T_f0
tX_0RScV]A28N+d<OY$Na<'*+Tpki3F[He)T%pu)bH'(a2H5cR3TT4D\,KCX/<gbjd0q=Q_-<
cuI4!%6JjecZd!)q-e6f5:6O%+90D9*%YI`jEs8;M3mg2F7:(`r(%^THOg$.?K$-i7lRV#<'
0+AJG-@@L"kUQ<!S`7GlIGZ0!o\(7*/1F4EmQIt,59.)paHB<`]AFUsQS'060K5f)6,U+f=@;
bMM+h6<1#f&BgF<T^G8Sb%?`VQU.YcgX5J[UQ+s_P6(_Ap<]A]ADVE^C;<^@)$YE<<E#d\ol$M
EL8dn'ASNnPF0q$-sjB1Z(1oGt*XBUShFqptFUje7hm4p44Or`#X:f0@\X\1nF1P8A!q7!Z9
\?f$9%1FodP.aKf&CTV$OL@$JLDL+fmc0aWgYKXd3V-aGp%W6CVe?6#n*7'ZFE?N-o_VYg0I
>GYS:s(e<j#bmkA,0)fOX0Ng-[TOppbPZjKkS'bL:j4rQ:nl%r;jGVFi83o<MSSYb0)`3LKn
nUS'INLnBQ!$L[utKWf5'3h;NKD^R#e7T%ju-)#pF83,K:g'2Q:ajVF,^?(tf-2t>+p9q_+X
K%\?&B([d,'_GO&Lap@3AA;]A]An7_.n?Ln#7g=(XIQ]AC@&P"-+IS!3YTm38tTU[5N/:XT.n7(
YB.o!uW3W=h\U>.PI>l]AE!`U<=2-j0N/jD%_8Ye%1f!T^rL%GcfKMdbI7.A0[>>d]A`o+=SuF
N6HJW]A$d'P(`tG6%`82JK9DdZbko)h!qJ7*O@'d92^,ViTf]A.<,;V[@OeCg'8.Y;9j-\/.o\
WMl0JGG`m`AEVEqI&pX&&bm:Id`:10`V*oql&r#')8$LOSl6D<C7-(Kf[XVg^>=Hh]A'd2j@<
i$6,3F,rL>f<9P(9ITDms0mpbMR'*Qq=U"$3((%U1XZ!dt6JKHW+^Q77DgsPn']A/GZ0'2?4Q
90)),\'d89%h6\=:G+Ys-RKX6rT=IpN-h"8X;!\?kj_:AJY$hZ5'tt<8iZ^o?RainAoA'ngV
aK/86O#<EY'l*[<-M\+?I4`>9-p:;:slP<o*ep,*imeZ[7nt%AUg$B>Gue6)0s;hkRZ&&ml$
LLXOQik72iirsQoSN#nWfS0HJAg*D)B<`aWcffXL"l:dqHYtHibDMdk3XZBOQ2$_@!haUi89
;FN,Nm+1mJ<7Q+#]ABoW\$4Y!n<M\S),-6!9Rm8?fN,1(-muVGF.WV[+fpj"(0]AU5D"kd8aid
sA<b7KW:B;?0N\ag&ecEKt$]A5iNGu?_mQQ4S:B!hMC@hG6!r#R+._W:U8FQX@7Go+a7oXTnD
]A=7^R6<o"7Z%K'i_Oq'ERYiLo+0a#:$`YQakk\PbWeQ4-[1m*H1ODe8$5dpr:[R0]A;tD<>H!
:I0#lR[+O+?]Ab/S)hpPXYI/XIn/7S<DIX6gBf,(@&#_ni:g(^keO4#*uUWhB.!gJbeMtb-Tb
d<sPulaVF*Y5P7,Z?nZgF+<,I(I1oT&-Ks]AX*ul1&ge0_m$+aG_Xtq]AH:(A4Sne`)Vp^-25h
&=oWdF7USoltdt!dJPVoa`-Q&+74m-ek6FZYCBHhieD$@,4,8[rIg!rh6j9jHuZXp"kbpO(3
uT]A`^XAq<QY4YEs`P3O0,%U\,BsVK#:b$UmcRE]ABb?"LYmI:po:-f!!)-R<Wf!JnaU/5]A7#W
Qg<7PjNft/K'=R-h"u8_`qoHugQ<0or5Zi%<OI3J/c*^L"i'9"c(m%UrrbKJpf-p%7+>Jslt
6`L,3_"LlqJW824R/:hp]AVE"a)>D!U?#fJ$;P_n>]A+"7%0POB%?a67s88ie3s'IMKiNEQ;4b
0190dgQJ%bq5>k]AZNLab^,P4QI[T.b#!HcGbHMgt"^or,l$JNVM-o`tH%lk'!Wde3:>5T]AQT
>Wd-5=Ub0H)GBBX)mFa,T#n9Qlpq>`7B@#D'X#-n5pgIPPEoU:QfWlJDo&M=g6s3?j`t"8kM
F34quEYcXZURUAi4N3(4rY@bbR6h,>%s@Rgta!<tG"E=(Pmoq2s2="OI&+M>NGgkp@HWVK>,
ZPG%b*U?2acg6usc_5-B'DD6J8qgZ`oK>QXNcTN%NOV(RUZd)lbYFnRp/D<-Z*&9_J_kU!:0
o0oiCTV:V7#SGD?;^S-gmR!aSF?9+._&?AO$6Z[qqf"%7fDEmJue6dJpY0<ZYY*TYLNO!=+(
^&7[]AI62>`QkJ*"Q3aE"HURbrlLc8rS5TJ/1\F?Q%k_QF%18(L5Par7DMiKXHakmW!pu,(,m
m^=;jD/,b[?T*8'r9PiqX+]AtrJGO'c&1H`H,=qa$R[EiIbjgO\NE;s[ab@<GCQ9KYBeCo*D2
RVek1cRG*Ng2"[C6!Nm;#=+X@k"oX5BUK^&((SY_+Upch"rrsS"pcqTc3:6m.YAe6:Nfr,7P
+EBXh3?sg-Ok-:de?diG+8?qZ8)dB9rc4=3&9:%KX,]As9kJ!aF_*k<bm/UrQ6BGRoSGE-8*^
QON]AOF!I"oVA$*tpSF3fmT?5cT+?C/Bth[BQ(hY+5.f*G/+Y%cL=ur9abmC%7\G4h5Q6&:Bt
=M"8PIWUj32W`f6@C:ri-83Ta.T#+>$M!!d/qJRE+gPQq_?%L)7^LCWU"o@QknYi)dk1Q'B@
[i^u^Nr-7pmdn9IVPTJ)pZ;u')K=U%4e:n]A"TV@j19a9J]AG+c?lJsf3%*V<JU[FRO9b4?*3-
j_rLZ7O%J%r3T5_&mqGB,s`007;ZUdMefTWG:gVM2:`k^]A]AJ%^JN\#?p?]A(N-o0UDa[c'eX]A
jpm$rrqF/-R20E!<u'D.7n'iqJ/*9-@+e.<#1+\o9%gX]AfqqH'//uFZ]AH_BRBAJO$hcW2(a0
4sVrJmuTLL&6`3Fu2gOU&sSX<ho$[iL:J"1Y)G]A<qoF3&o1Sg.eLeo;i_D3q_IlcH(bOF/;E
-"KplVl$]A0<4i9_s'<.G2mh8dqbaB%*;S;_1P%&uoP^=k9\aSR)O<rs>\>-,B`@2R@Y+?e;`
pc./12^'PfbkM..4gT#G>nZB.[(IC"PO']An&4sg9<l5`!F*<STN2SNIrbLHgWI8)oaS[_3S_
.A5^tF<4724'0:<H9/BU\ZHu>0uGlUq<]AQ57aN-9oY,-)jJos['W;0S8417HT$-!2".'WT3:
bii:QE)bnC'n1ru<OXL`9-Yq.YJH1Kb=(Iq$b`R,RFcbf-n(3PDH$TfN.'%f`?QICm$![p:_
MAfom5@KA"!6)W5t[)I1,o*s1c6_rNWCQhhIL0,=J:R-?Rs_g&%9?9*u!AGX98m6SQ=n7073
YU/;52/KtrBRU2[qTU!gp2P&%%9N+.m^\G4/^t,sf17'e0c4$0:`W)[8[J+!C4musS!n*[.Z
<)'eAg5"I#Frj/I@p7ZT%AS%A&7F[Xp+2\oP/"gH8Vh;dGBSViQ@h`G#dCgqq!so5c_629S^
iW;<1>s->17!?%,SM7F4SH4E^Q)V[kdIX_Ep:,sC'gbLB?V)9%YWnT;d"$o592@TTTaaP<Yj
cEuT"?C??;]AHjC;=Lle1<*Q&TWj%mlk!dO0&N!0!7=[G=M(#q2i@K#:C!3\O^kQUigLL[m"K
eZ1=EW(goZB%JL)o?%oC\e!b4^&hR,Z`q)3n&CV%KM^gnMi#NI5)[MCYHL3[4k^%56mGoXO3
7p\I/K9kRY>>FQjQ'Zqi_qP!;]Ak,n"YfR=T!VaL0rPS-3%Qj8tQ^nT'(4^h]AUmBL;eQ(U'qL
a)+4BTK^Y-P009asaaiJbE1G(P(d$Xok`,[L%3GGN=<jB&:5`s7X8pj6N/H\+\YK,U]ACXUlb
kpXV((ZPXWSZdot*;@uo=1=p-F^lB-0XHF&o*cY.lJ0#?NIZg4lSHE'uKc[?m8K<.W_qm"2p
I36&oOXDi(I'q*c4d7ag@A`E.5?!\[+-p:Hg>iTPO4akr&5o;uVRp$S,Zd,`70k>D@A-D=D6
X4]A>&c--;\3.57m@hIY--HaZ*^CVDP\s-RM?Q\\-Q9d(<]AoHqf<29AG&:lbYQ,m9+Q*kC5Xn
8C!n3/nHZTE=OhI9I&?#j.,<ADn8\Nr=Y6J4X.hF<]AQ!ft6kmh%il2#A*_RA\T&[kC<-A-n)
<3$5D4T]A71Cc[n9FM'2\q9q69,eJM@GO:SAG8ZGb(*,MRoS03$=*IFIpZkgIr`eD@0caISB0
U^Xk>0$[!_P144@qt'L.67!=UdO&5u#Obc!>!/_1n+ro*q!)84'k7&oO4TDl/K[)I<N+&*IR
6r[:eP_`$e0C4Z0;Jc$$cErHY8t0[=*C&8L2OSEmEBqgVg,tk4_kH'N7?mURbd;2Xm:=a)rA
c'p9g<(#?"d?Eg/!q62qm#'<e#8flrCc4Zr5f'"7'k\<V=m=Bt7r.?6,]Atjh+$*qI;.d?n=(
3U/56KR8LWVo)#hOrg:19lHV;@Qm7N:Ajj)K\\Mc:aML%>:*0u$$\ssPX\s9p!Z?-C!V\\WC
n?lr7-@\uUKA!]APqlD$^,?!D!]AR;GV?.-)6ohK_]Ar_BQ#?F#0\;Z77^h%A';L+JkCK]AfbbP'
D%`*:M.>,=!rpZoM8FQaC8dZ0j7\X'=G3-]A^T'\oh`60=,b!X!ua/ltFVne8qV1kpb=o_;\g
:;+'hd:ol^;-#s#VW[Bu164"f>eS8arNRECl<E<\@ST<,VG61s$T4W_,/DCHnCSppQ'EjB$f
5W3P<ia<<^<h1c6=,0i:U)n.O(O.<>HH`=(RS6"5"=#;$u/l]AQO$<oj`Woc\cscN=N'FTK=W
g;7H<#o5L3M]ACGKI'N\ZHZ:J\?m4e[->_sh3A5.h!]AX?o>)<Kt=,93pTjI.-]A_t4B.@9IGgd
hrlI=e*4%TH3.]A1#LZ1%5Q*lp31:XQ0%jP0=7B$(8sTD<V@&4s!Sdrc5PjpUV_e#OHGJG]A3:
_=l08MSX91"Sh"dc*VSG(\mRuA*ou3ank;f`QGA?#3mI[%%9Mcb8O.T:ehY7OaY!YCjej%e*
e(L&SCWT7CK&0H23OdH-.a-F-rPIF^e58b+Bh9(h?OPC"Ehc%T)i-%WTLHk8MlN]A`$A7]A%.4
*(;V2TJ3m=UQkPVZdVSVJ]A<aXF?Kic7LQho_@QK,2QW!oU06>4;^rRnkio0fQLhh4X;D,+f%
DWOdl6.XMPRe_RFjApBCm@b@0]AYLP*SOAR6[a?n8tEt'lhb(WjH]A7"p^S28dZl]A=c>3i\8,B
9\TW\Fqp9=l^0S4k=_rDQ]AO1>%8ZF-IbjSlqO*fSJg:B//0+Fps(@lRqib$"`KO.de\ij[Dk
2`c=\r9XgT:`[dm0n?RW^:KpT0qD[c%-3b6dD`rShaX.9VAB/%kX7VJ"E,PJKmdM^/t+"a<D
X1CCuRE*[9F!4f6R$2!1Q'PBS+_T#:f(KDr'B_[ri0'`l$nq>Tp+DtcIdNmkI8]A"KMg75Pdq
3YQT5"6_dj!7d2L:(5/K-lFZ.TmC/ZH7>pn\,+c1lKOg\_PR-+6S;+52W7>ILS4!NYU(jlM$
rW)Od+-&iS.KMp8M0K0>O=gG@C7$O'Sq&HHB`B6(O,GQYpfs0e3J2c.&ZX_Htc/Xqdkc]A\GD
2;.[<>9;.A]A4fW);AZ1mU:1<%Tj'C0!sOfEZh,DV8XpRHr!dMasug#qrors/HoSU/t[9-S3A
X6%4gf``EV)8?]A3Ic<Ef:q#G5ebKm8kS`Y4^V@%LG6F8!".*G#8PW1s-Wj2nl&X0V@a4:QV;
J?7/t/8]A\c/'=Im8bTZOBjf0PDC[:)Xf;T>;(3`Y#_J;g='JCK%.(5$XckT=5cl<Dg2psHZ$
A6CM`jm(Q!Las2?RgmM/C5fP?$LIro_5_5;Hn7XNG1p*X8]AAo8koY)RG(F4tB6(8&>!o!EK1
P\aRGijBTL_W1un>3DX>,FcTNmnS66#kn1P!(8\&"C"5-;=E+0@i+aW+=IW!L;(Q%=CQFlE$
=[X%4,V\_5S`DTZr<*]AN5B^5!3WN4(;(-ec+kNM&3I+b.dMPlT8p%dc0F_71YVVT'kt<fccR
jL."ADF[%p-6KG;$45AEb=.VZ9ImSZ/%`K/B-2sR_L=CfDko8km3>%j+V78Jb>eX>L(Dj0SW
kDoTd7APle.@t,pF0Pn`lU+"qQoYRWA;m*G6Ag@0R:DX$-(&0P<a0Dgo(KK<('A6T78?.l.^
&Sm0`u1=*[fl?60j(`(%:BEj6qESjH3O8SJb`1Lq$Rq60:L`/CdVI>H=Q&&79;25qZ]A1Pot-
"ln):H6!@e;5D+$Z8?bp&><RF)?65Ka/:-)UX6jZ<RYMZlRInoK,GcYn"aeHtAFS/b)J#P!C
=&5ABTk4bMH&<^ca41l#,llbS",'gc9A]A%`k.SkdJ\^sHbV2jl-Zor9PnsC2.flP->2Bt4_Y
n/Yqt\1L[T%LYETh,Wuj#+\8'3JEbQ+BFJ^W'd.0(tVDH)*X4d-JE0P,J(h@r@J5oh5Xd.Gf
8K*<Ka1H^E&Z)nWN^`*\QE5M=2.g]AG3nItOodqrt/2h9*Q_pN2%/TGj\pbG*=6g(+Y>Olk8S
Ia*MhF+1II.:dUprk^h'f%scaH5lHc>LF+D"M`N>/>QOVsuY7e;-1/h!K6?VB*`Cld6e9Wj?
>f,f!k*`khi^6WGpYs"\A1Te*he_9&/#2DI7V/7rqb"9"3ns.dXH+0ic$a'3W<M(DE>2J%ko
f!cHDK.*@r9=8rNCS#4[f'0&#O/BLpS&^#B3[sX5J!qY=nR<,&oJd<CZH<)W-P&SAm.4LP.=
WS++l"+B3.`W>:,";!`rlm$'RKj%0R96BcC:dQ'"oH\8:O71G*I-;m:H7B5!RBX_:f,h6([$
[Frg*p"@9u1C$P`fSELh)9)?X"LOSh2?WC#S9.5jB1\R$f*3ksIBDN(Tk8P>Bq[s2Qh5Nl%%
u-SAB7'^-)FMJ(p4?n-M_es>s"tJOaR]ApMkBMJEX(<%">K,%VrWjRk?8*q">I:*(::g(:=9p
2J_%9M*WIns2Zp,XDA^`4^g1bF3u2&.H`rq2aOU(2*K=M1_EVca(>=/*kP-4'T7\<N%:`DW`
;qY(n46Pg,X>?D$Sf[>GD<5Ke<uW#1BJ^Gk1an3nY>":d3;TP9WNo]A3>)\YB3`efhFpQKWGH
3?";Xj<D0';m=_X"Sb.u_S<AsfhB7<T?nZJ^3oZV^K[aLiKIZ*roe5q%ki4;Y"1r-:)0XH;L
*2gQ<Nq?hDF#D#gE!'Lib(j7E^j/sD2LUf]A)4C)O7&gl6,7/]A)T[bNo-_eDVL[D@d,4g47""
q_53K&hJE\;=;H.IFg@HF7cg&Tp"")]A=eXSlIA7Q\6EBCl"]A54CbmQ1f#5FREQ4IL@oJoqQe
JKubIYVO+pgnZsd+TFmO_PSb=Gl02C4bio4i+2"I@c<uO?(0<`m^5mT19?aec"[k!R</E?$c
F'rHG"EHu?gBuCD0j?0lZ]AbZ$Abd41=3HsMi:ZE$f;`4$a&-CmWAD#7E`>qhq:A4UN;2_4%\
NSm;l!_<ETns_c^N[VK\/a;+b_*m\/m.0!8U4(3R]AI`oROV5Mn6iR)Q&MjQ/mG(-S%#6TS]A\
g1+E@SArlCA?K2<^s\JYQSuGN2C<K^W4;AhNk52j1+K?5(9Hq6/$A[iLn24k]AQn3P>!(r_cf
2WjB<Ru#4]AHasio/;d,behG/P5Z'm;)STaQ686Y\NA@=%0r1$fVLpAM7K"odhk(qiE'2E@nm
S=l]An#p;(EBB-8>o>#o3[V8[,uq*pH%H6sNOW+JH>.)I*.6&Q0K>,\`t"Mg0dFqrSj;[J!/.
<+Z\\(?XI0V:"jgihS1#Q8jL]AQa04PIH"hbahQ/diFu+B)$NJB!&8J>\'PlOGOkS#\6CRlnN
F@l.t&#SSO98+q&&0)s:XJH>D;3LTFh2j2\Z3#-t*n`n$NUUD/iEW^DM(Xo7)EC5F^'<E[ot
ZV'Oej),(T`HEi8]ATuj3<OW]A-p926dq=-cN*>\,DI-6Mh2ONdA8$hO/'T7@2/I*mg(S[k'e8
lcWSWV4(jDO?%:MHnlff"&G`FIBW<>,!P'N#-D+JCn8`DS7+VPUPtbjC%3=sdn#g"*?U=JZJ
-T@hJtY3Pk@lTj4KJ=EWn/9#Ad]A?TR([i<6&KDrJ5hY[)LZcN4?+^5-IhlrpcZ3.5@=f[qq3
/^HIA<n$#k#r6uY)4,*ApC=Cf%K'tXHZ$5H-"c'5h8+c'dXkbRX'EsOHDh0*'\*XaP56+,)W
bH8Yq,u$^K9F[hWgcDUlLFp/']Aj\o-E),F)&s5@!'@Qj@BPgJM!g'p42eNLcl-L:pS8PKZg1
igs2m6e8:)$mVTfY!jdLDREJF5AmXk9ZXUPbsIHao$rdKVRYXk[)WPND*),J!!:<f\pe#P(h
EC2e[ET"D=W$*rNp<$QC@K+h0/`qKDt`thDKWBNi]AkY_H:Nab`;7e4[;T;E8sGJITZ(Y=%Dq
A<0b8<SSd5KplHMMZ`UV!<JZmE_qS]AJ8l`+:>ft,#)Wg63BTHGW/Cm#!g'0mD#G`'>a9r:/X
P,9E^q,ibr:@[03Zd*@keF%T%H(C(kP:n=^1`&.$OA1'ns6;Nj9\MPAAMJ\FojH#XUBFgpO.
Ye(^VVr<`DV(pO/2SHV?FZc#]AZ4I%(*NfOM\ma[p+*^a48'P<ilE<*'(#[-9;:UQ[PjT`kI4
gJul?X:Dc)GO7=^Xluq)ZWk(Qm<%T+j^&&Ah)">$>7rKm5CoeZCXl((TL0d`k<c3,XY&]A9QF
=hsOK,=6<1X:3'iP"iB=Q\D[)I.K'DAmr@,4NB_!26*7bT&A2H^*)d/u>]ADZ97b^>5f=[TEn
P:HV:!b`,Wk\N!W=;;Kn,MsP*1UInjW]A)&B[KiIj2VL^36j)^G^cmF[G>Z9'Hb@Q[c->VnFH
(8T"9d[j\,bq643m+Lt(lO>i17;j%[@K4K[B4IrGk:LrqV;<@<P0hG/%(k7XDF7E.rQ3^jfC
Tl?mYD]A7I4f8E;9q'+\Pa]A27GaB;F\0)/)"N\CjJFZIdf%X.ViS;W(#@jG&uDJ<crKW[CP[E
RfYOJZmgO7pY,9f(6@'b/*)c1HVa,.Ge&39]A_qON""\G^b?l5cgcdab0oqnLHX#&>F5m6bc4
pVa-s)1okHPcnXP,""p6_"?Cn>dbjh'4LX;n_^,G`bK"g4u;^$5BOk5WKrHd*!eKDt>SGh:'
D0t4K!V6?8$qj]ARrL5Q-J\/K&:^(tq#R*LN'V4\9[WnP2<7B7'ANrn$\d3=>cA.Dib[.(Enf
D6Mie0Bb!O%)YXct:'Ns4gO2d\\_M([nB<KrO%RV2=JI#0_FHcm"HKFYiEDZEqfFB4q079Qk
8<Fo:ap"(B42Qh5C?%o6i6HeU/Uqcmk.'.Ri0Lo:J9cSC3=ru'POV0;8#k52d6-]A4*6`Oj.Y
o#^bm4EJHbb/_XDB9-&"G1Dl[(X*!%W%(D==q/!PAp@Hm&\&m`\>u1=bUBUAU:<O0r%JnsX6
j`X%(HeO.2eDr[aVYIHgUUeJ(rZMAAKT/DZr6ReMPhOcIn&sNt!L]AiJeot6N\bQ&G3sQ:?UH
7`A@rOZB/'e9kP/CaEiaa`"b8d`a6q=6l)lH,']AI/n^_#npu,QV1[>Dq\TfY$?,!u=L<fRrj
giLs>BAip(8=1APYiI0qU'Mq3JXIZ[FL<B=?W2e;]A7NO*mV/V!%^u:q+kiTB91kR]A0'Br`U\
-LX%UpNYJ%ScgC8f7n"k9JHV_tbBQb?f3t0cUA&,P+JhbKWq)W%9CP9+AA-Ua7B92.ZgJMQd
&))1HW\2@1H*pr=X`5#hdn757*H+RNgT!JGV2bMGg@3KUs*HD*nZL$HCte:PnS6=mY$[e?Nu
g61g.Gs\]AVHqCeja,O`O-4W=WXQB[`/ap5Ei!4?=L$VY?g$pB%]A\$e+%jEXa8NX&;0uV>.ii
(m.L>nh`0MnPieJ*kE8HnLnC&Qe=Pn_bcIePa>>CS.kRm5nSZ(M`QT_B6NcprDn<Z"\M_%A*
r.S+J%OI:heh-,hZ!;i63$g3?L_(8ZO3L^^CK.;,>_,-]A@-cRSmF5P`f^@JVceGtJEphPaI<
V-T!:eabs1g4!U:&i:#GB_!Xk"AG4YSQ$rEQP@"3@!?%:RYoI9D/:JGDKA>'`&A::h.#MVCJ
^LMP(rOR]AfiL:5Je&m1?"3]A+Y4rDO5R/d3e!(fUS7'8jaJc~
]]></IM>
</FineImage>
</Background>
</HighlightAction>
</Highlight>
<Highlight class="com.fr.report.cell.cellattr.highlight.DefaultHighlight">
<Name>
<![CDATA[>3]]></Name>
<Condition class="com.fr.data.condition.FormulaCondition">
<Formula>
<![CDATA[$$$ > 3]]></Formula>
</Condition>
<HighlightAction class="com.fr.report.cell.cellattr.highlight.BackgroundHighlightAction">
<Background name="ImageBackground" layout="4">
<FineImage fm="png">
<IM>
<![CDATA[!QtU&qh\-E7h#eD$31&+%7s)Y;?-[s(]AXO9(^L<G!!(r$4no!W"Hl>E5u`*!Q'HW2'P/-$T0
G0P(_\dS(o#$;BJ`S\odnsc85qu>b3jZ72qn^/5VVjh*hYh^&4KJ'=q:`N%,O=oG-@=ig"l(
QL^/eU`EQ<kWprE'^2LSaK*<WJo?O_thtt]A;T%O1?*E+m:K!t>.&M!O[hM5AX@NRAgqIfYKq
D80KkU_c<TGMe9Dq5CsU%46/H*.(!.Ls9I/k13ei8'$pPp[_SqRHqBeH'IK**iE$n/p>uKjF
Hd.eaG,nh%J*cR*c2:,]A3VQ[U<D$P^?cs,-Ium/2XCF74.jH<pjVHh4[,G_;1M5O<m([#Q6$
$==IR"Y0NaiU7AkJHLd+K3>.S"-j`__YL&`%9aZl'`VY@9&MW$D[?92i/cRed.83%?@k>-,<
X)*6"\\6AlkZVF$OSmI\<Bs3f8'O$X8BLJ&9oUHtsbNJ3=BuZ\Jj:KCq!1H518"bD5DN25I(
USMe9*SiR4JLHWCD=FnhXd35dt<3h8O$K3X'V4Zk"V]Aeu3+]AA3TA@]A-o`Uig,drYLEj&tJ%Z
+j<1S9(YQ6>/SlY7\F9rH\*Jm#OM[4fjG;B;&ZLSS,S,$c1Rklr;r%Wb7UO88t!T_5_.5mH5
S+:>ebVl'5*%1[Mddh@a`*#jXd4jF#%Eid`43/,hs#<Ydh7kW/Z/e[*E[NFuDaSFo#qlB(8l
X=(RG;V#:ZQDo3;^'hfk*R_J2KPrRUYj/bQloA-TV-1^-ZYLLBMtBs7NtL$^D''toIeLBVG7
]A3Z/E]A(NfeiIB.X@n(2-BE4CE;(V2sqp_<PhfN8C--JWou=37;<FN%rfTPp,cEd&q0q91Rg6
B1=6;D(oH?&fupccBDak"H</]A8=nJ6S4fe2f"'47[%[t`83KWZGY`^pXI]AWWTM5`TJEPOtj#
<g)5*8t%#4g/Pg/5ck(c^sUYEc.V;D?LV/&YsK1B]AhXs6*1F4Qm+P8KupYC]A/<&J]Ak:449X%
(D8*E**8&_grbi6Xk&<(hMMCNKai:UVe?\Ap`:nXS2+Da5,+3Zi[ShkXMT$rah4<)W74@83J
c^&p+e['5,+Q=R$6%JnhUIE*K^^?]Ah=abYmDmRS]AkJf#Hm$.6tag4MkiiOjfGo#gQhm;?i[[
\48c^&(WMI4Yg-UGa)J;gr[(d/NVH:7/48AESFDp-beWq1%9BC\aB:,i,XA$Tr3*B]AYo`**b
/?c%dU,]AGk6ln#M5S"X:c\>m&Oj#:^$3L3l&o^bc&3mX+=Mt&?R4_q9e:u$:&+5iuWd>8,;S
<%(=*,^3d!n!2T#*)3O\*qWB-Ra0Yj49T1RCJ^?qOU,4BQR@]AM_QM5J_0)%MO]A7KFf03"#mc
3F7=/LYdJp6RpIK0a_j'kr?^?#a!I>4cZksf=EZ2-NfT/C-m8:+*qhu#g*;Y<aQ?Ae,B.H$r
pRE)H6"ff#R6s`$eNXh#a>*Vj6(".oA,"pS7sAQ``p[lFA.sRR;\A;5L'XEm4$+?(mkCMH(Z
9cDmTi8"_N]A9uz8OZBBY!QNJ~
]]></IM>
</FineImage>
</Background>
</HighlightAction>
</Highlight>
</HighlightList>
<Expand dir="0"/>
</C>
<C c="0" r="3" s="6">
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="1" r="3" s="6">
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="2" r="3" s="6">
<PrivilegeControl/>
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
<Style horizontal_alignment="0" imageLayout="1" paddingLeft="0" paddingRight="0">
<FRFont name="微软雅黑" style="0" size="72"/>
<Background name="ColorBackground" color="-1248776"/>
<Border/>
</Style>
<Style horizontal_alignment="0" imageLayout="1" paddingLeft="0" paddingRight="0">
<FRFont name="微软雅黑" style="0" size="80"/>
<Background name="ColorBackground" color="-1248776"/>
<Border/>
</Style>
<Style horizontal_alignment="0" imageLayout="1" paddingLeft="0" paddingRight="0">
<FRFont name="Arial" style="0" size="72"/>
<Background name="NullBackground"/>
<Border>
<Bottom style="1" color="-1644826"/>
</Border>
</Style>
<Style horizontal_alignment="0" imageLayout="1" paddingLeft="0" paddingRight="0">
<Format class="com.fr.base.CoreDecimalFormat" roundingMode="6">
<![CDATA[#,##0.00]]></Format>
<FRFont name="Arial" style="0" size="72"/>
<Background name="NullBackground"/>
<Border>
<Bottom style="1" color="-1644826"/>
</Border>
</Style>
<Style horizontal_alignment="4" imageLayout="1" paddingLeft="0" paddingRight="0">
<Format class="com.fr.base.CoreDecimalFormat" roundingMode="6">
<![CDATA[#,##0.00]]></Format>
<FRFont name="Arial" style="0" size="72"/>
<Background name="NullBackground"/>
<Border>
<Bottom style="1" color="-1644826"/>
</Border>
</Style>
<Style horizontal_alignment="0" imageLayout="1" paddingLeft="0" paddingRight="0">
<FRFont name="微软雅黑" style="0" size="72" foreground="-1"/>
<Background name="NullBackground"/>
<Border/>
</Style>
<Style imageLayout="1">
<FRFont name="SimSun" style="0" size="72"/>
<Background name="NullBackground"/>
<Border>
<Bottom style="1" color="-1644826"/>
</Border>
</Style>
</StyleList>
<heightRestrict heightrestrict="false"/>
<heightPercent heightpercent="0.75"/>
<IM>
<![CDATA[m9P'@)cbUq7>dsBgf96cQL*=$ld@Aa@dO=ieo__`e7+OlY!>nP<iiufOqn>69I[um@N4-P2S
DCUUm)C(=t-7<Oo]A;j>;!2"P#<n7%5<GH-4n6DR:PHL\BfW9\eYe5_lg$LJ'?@hS]Anb0SG2u
q^\;bDrqtcEfXht211natES'g.r@WQ=N*.;[B&$^4a"7(NcUM5dFN07tj7C$4.O"-A;!1c&T
:3(sRQ\E3jnb87\`MkAP;PjQ<)2T=Tl1<Sb3c>*C[W/>opct*.ct?VHLfUTpO:$7&U[[UWV;
m*D7r.h+RHu!KUn-]AQS)QgL\80Je7Ya3]A7]AZM>e5"`*S,lkNP,7gBTLCPVbk?/"QZCiLQn%d
ZMci#nQt6Sj3Zib:S/G/l"Xg21KAGYgWas(cWdf)a0pPZYGsc%55j(D>#oX'c6Y3f9=[f903
Q&-*r<N/$6#(!f\^bVmt9/VU%m>oHVMnW"K8%n@4;,qs8;cMHT1&aK\p.NrTGH+eT6TbEIH0
.HlkIO<mD00nDle1Vn.7N#)B>W?7Ar-5INACA:<M6m00CFpA3`o[,mo%jnn!6l/me`pY&Y)m
rr<(f=Xl#pPr[Tj'\qR.T[+>YfLn..YioANpi\ANbgARM<pjqG;0O]ANOo$s-++8)+i6/.d8%
aTWX^R2HKRoU&=^eaO5l@&eVio,=2?Bm(KGA/8^>A_hH!YFBh"R^A!XrXRMW*K*'T)D(Rl^c
.Y"7\[n8O9E?.K;@l/LC1NT(T*B"hn@t(PXK!NDj#fE6t=J6s/1sF;Z:@5AI@L(Ie[DimTkj
s%;?Vt*&<H7US]AG82[gW?UuDoKJ/6g!bND^IMe47qb'c[B`BJaG>QT9hI:l:%ME=npULaT]A)
j;",(8YSQq]A^m/imB<*c-1rU.C(IMr-`%okJGt`?O'W+6>2Wb8?@LLT<[7\uS_'0rmFAX\8/
MS.>=Stcqd;REl(3)Ac5N[s+,D\Ws&.PfsW3EEXoK-1N.]AipT=B/gW6LS3<n%,4Q$m[d[Y<\
c_#Pmq0M>(Xi<$eWU47;H37hS.L_UTTkKY2tq4i@eU4Sm!7*a`8RLY@6_"m&VK/pagt$k(F^
mHVB)_^5#7=-SYqP-<a&b-q]AmW;-r&G"?%AHr[%>36mC'2X`l(?>]A]A8PGRS^]AjXc/U"J^7)n
-o'd-Y4Z(YN*AGI1Fc.Lhs(<4#8r<X&7>IW%CT.8C@s3b$:Y(Y)Mde_<l,JrMM_QX9(&k7@T
4=;n*kOV5B<\;X`dM^2S*L6\"@b9+Z,*E?S?;#JA2p`@'2Sk>\aX/]A@Vb_!1CY/@V9ge4I\>
?jMBZ/&Z1Yk0k!G6EC.-64.a/fVd4("Hlnp(jmWDT.<Ah7,:IO<6E/C-6++"+Sm$_#/me8ZV
>1ZHF]A54dkIdd^&mQBN,;7FsPbU=_cH:@VG(7PRJ<YW%]APX4+_p!&S.bK631ihK2#ef:TidV
?6,5L!j<)C;$#N+1=o1"T[lI=(3I3BdW=NGB,Pl?R#?Ggcr4LB(>rQ1.b))5\qJ@Q:!GDge>
KX/d,`ZXF@-pH<)0":ggPaB0icBY7EirXP6a1q8j`eer!t^B_*u=RGcC.)fKWIaX[VnKY@4?
q0iu*0iqLlF)u*__X^5-/s50R*MKV3BYC:N-K;oQSN@ksFUp?&nN0KerDo6p_S\P2CQi=H_c
GnAGNkUNnhbr/OYD+eRb\T$>2g6ut+"M1b)t'9Tfr7RJ2$/+=S`boS]A.VI:dobLL3pmCGjb_
rR^:;H.E]Afu9RUgO4Kt4jMD'"/gVBSte/:H>r-=LW'l1OA#3d'><\fV;=]AL%O&I`m-8,3`3(
Hs.OO$/X,I`K<lp*V^uq"+G:crV#W@f)<M!8J%N.YdYX:?Ko\'"S/I1&m+?3S9ac=),.H+"I
)6g*2Dj?f=6[t.YlhM-uYg]Ap(kP$%n\jb4B$%F&4+ZVBLKpVG!sE.,EQ1SUIJoU0nPPQGu,0
</2apIP"$9qc86YQO"'#ZA+1aBK\>@3d+NH\l%k(]A6<4BV2)2eq4fQ8!A6ork=-28`n?@MMo
eba\*pFJ;VL#22d!+W$,_kIJ;6b_b.FNlocQYp2PN5a??Usm9/2_6E60tpkF(]A+K4Y23jlYi
_2H^uifYCJ0H,*I>PGAR.W=6,0JNs`aqJtB)\S9QqJ1J6*NirZF)@T\+6]A>QVAp`*YHdBQ5?
iD:_t?NhF-#`36=Mp*#P$fZAm*P$?G@Ba26*Xq`>d?FMZS"onDJr$7>;qi:%b.nBT-_?F]A.H
*e7HE5*HHZj5723m&jp;XqjpI'AqG1o+63YdmRSoP1:0`gM_B)c!OH8hquNcF/1pd'K;HHZ@
PN0hql.1ske73r]A3jU+qAa+W`*'e@hf(>qKjL6Wt3NU@a#C%g<+mE2ulK8@a!F^cA2%<CRLl
M4__6O[WRPo:QLH<N:i-VpE0?<4=&=%g0$.W#>HkA??E_1>2hP_TJ5+gOF_=QX3WNQpV?P*M
"*s&"7PgHKXZ$$VK3ok.m<+@m:Je':g7E'&A*Q.n9TQB\;%987%3UD6biZ8K^E\T3/;I1\1M
+NL09mBic2Ek-C>0Fh6_i=Xm<j):Gs2?/Y`;1:,^U.epBO-<96V0DS$SLi(^@bf]AVq/BEd8]A
^HrH]Am*Jk1D@PH=HffdS"B\W`PJFZ7;<>eV16VA^lcFhk.jqpPdZ3I>GPeG9s^LE?A7g--Uh
qdrFgA,^#6oRVPbj$iA]A$n!;of4knJ'aedMV8+nhA^2s&tP$[5eD1=ZZ^m;;+.;7Oo6PGNqK
cY2!MX?/r^X^bBF\4sf=>2!`-P<g>m>LFI#cL#]Ad`/_ga8&-h;@]AV<B1P@Bgh7"@FD"0KB<i
e\5?*/o0=r_cN+tdP8)SYeEju80P,i%D+pWkF(Ml0s+Js/.p]Am^5@e<g@5OMEpg/Q.\<Da=4
OM%O_SdRj$b_4p('=8`\7IK%DEBK*L_T!uZWBiTuN!O^`E(H(r_d'Hu-fuB+X'`9qNYtd4[:
FG'jOqF@qMEo&<32C&.lD)/5WMp&SiS#]AURf&aHB&hl[t:h6G^<]AP13HT@Hr$X<;F#5Acn^o
'@jP3ZTioQ6Tf"SnhqT?q)65A;l7p\k\jM?=9DLpeg,I"]A.D-DhiV4J7jB@W82enK.bGl5Y4
jJffM8"LmC'j"AkVjd72!75'?Ra9U12:cMd+fZhjfnM5osi_U*QpcoY*UB?9C4>(@r<LFMi4
Z;5*>B5(@nfmaGG%6OF=3JM>[H$K-'6gY0ePbRZlo*6naRE'\.*L*igduH3u%ghmXTa/FIGS
XjT2q4JLhG5,(r'SB00$Rih+e3*3.hOWJ9pol@CaEM4P0kERrPg/a)(Cc>$3bD)dm-5M,TJh
W<!$b;fVFY5G&]Ai.CTiCa'p$'44KOl[,V0iSL56Ach5LP/e#:4XlJ0=COD;-hB-7m)s+n`rV
$o8m#XWp+Y6*tX1(a/S)g05Wh0.iIW>K`g@)ks>$]An#nYq>YBK'-%(XCE^s"qJ;el"A2>kho
,Jd,3<"0BI-r[qb2MjYd>lM7)d2?m3H%aFU@UgQ2^B*LJG1#WOQJ1#e^3!2(T]A6t%8Q'*?QD
3HQ9>-SP\+d@4,*Vi^5WS*FrtiYUT>N]ANGLuXV?l!tqbFb51OF6FOK5!,.c=>$]ASu3`N*97=
k5X)u_%4SkU2S!%k19/XX;=#`fe_#><_*7H>?`/s)#GAi/BODFor9^+O=,Jh5262u$9?l?Om
\f*\CGIQ6=/P$%W0(?Q+/9F["WdI&aX6FA9a^35BKUXT!-#rd@8I#,V(.!7$5*iS9F(1@i\e
UG*N_0hHcY+;Cm.2[C-nC_mOR@D)lu,,ucY:k4Gi-NcaWLnOPjuaKhgTC@p2te]A`UOQVHP8Z
&=g.rJTW/h<UM6A1+f`2HuV;8jfmff<e4:[C1:=l3lOq6$2G2;]A>sigooa&EF[IdFj_*#*O)
/:-*]Ae*@noA.:QZQ`2^pb7MZu[arB4I8hjQiXW7:#GN_u>1YFeHerc2[>_ZN$midS_hCo4dX
$#H\n%e'd=!Jra3@V`[0Ed(Ehat'%K,qKdM\L["._h,Gi\EqD*Qa9#i"1G:i>:_r#.FLWC]A8
.cLHBjj5mBoR7;\g:KQG/-gU91BObgF$7IOUS.hp%dmjN7ppbA3@O8S+<QiHo)M@_^d(Iu/]A
eY"3gOi\hWb8CCpq\YViJ<G;Bq`RIuZ.)nsr=5-KFVM3*n:?X<+&JqMnhK<OC_iH8bE<>-b>
bOE!;07h]AgI*#+H!&jWh8H&eC<\QsV%>ME.OJt2+,%Zc?#Er$PutL#V23^Uq.9Bg:P^=>Q"o
R]A;T`5&QGn<#;l%7'(Z`F2nMu?H^)ZIBpl@^8%pu,f;heZfBd0aMT-_:r%+igaZ.Djkk&Kk(
hqjk3AX:u?:CakAYm9BG=^L9&rG1JZG3q9*cR+=4l+.RK010<TL:se7Wn)TE/c.8r'eU3p:G
u#i*oFkfIF$X0d[d>jiYk>s:UXnD3u^(9(H!VD;WK?+\F?O*&8ci('(=FT+0#ilE0?J!SkM8
Dg-#?j,pOj*=?-d!j"[#!$7:4A&;&'saP)I^.e1a8N1g?$\8Q@16HnXt!i&>SWE"?J116jR%
%IEPm7^f6WoTZtM2;seF1EuMGeoh@??f!6U%5o,m@trOY65Na@WfPU\fu8;)p^3age2%V!_/
JaBLfZEcfr7lEb?7':L0rNBYq;u/B"]A5>T]A6EbEXH;>Im:"D&#@V*P+GPV3iKk':@^b(MF)l
J'k`aJ#CeZH^;4UjCB@8Fc?=!Tq*jNc!IW/jm>uFh<3:jgj207="8/L/Y&mncW'ufih2<HRb
&PqVDfr%LaU6$l<6'q@q]A4VHUiBRRT[TII2orGWRpK-na=.I81]Ak[FG9C?nND<He/cVoMrB=
?6Z-U9`,$L"PJpc[[D$6&$bFWHDGeP?djCT)Cs_lZjE9`A\8%/TWn(t98gPKW3?%YC,n\mR$
"mSb(@o>MGWL0,T%Of3Sg6\+IRZN9Bu9-.&_:I6iQ:LH#;opJM=pE3Q@RF&p/9"OWD;j7.Ic
nm%Vb1\AP@\`?=6]Ak\Hk2DOEm68pIJoOb>,*0h9=13Ys-?Q*G-_mFjeP3\JTKYVXiFqh1$Mg
KT9=XN)EHI<9O^sr<LYPj*&A@@s/Gil6g"1Bc07efNS*f^Y,?s;Qoh\?@h@FU:0@.DH%b$5#
A^n3QF\TmtG*l+$J`qP^`%<Se03$,"#,$R7j"\pP=EuP!u?9alR/>K,Okm$!ES5W*4N*Cj!Q
CRpE@8<KjILDH@#]A4k0]AGjd.'jh?$LHm%V(QD5*(R*U4Jh""H[\K#dY0G#riK%I)&fCCp5T3
S2'FlE(QP9_OAdb1D\]A`fWd8f:g+unh2Nm;J,$LrpaE:bgRNOm?J?ZQ0q*<]A]APF`-0OO/88$
J0ocIKmikEa89j+mSelj^bDh.^DI*lNd^4jqmR#r-3j^(f'`&@rRN?ZD@iM.UrLK=rP'<@r+
&Au;J*#Ui^=Cbs7oNi#6`V\YS/5,pJ=4R[Tc$2`?cVF&cH`j<DQHr8S;JO^[J8>\$,6bFYPH
_p!r%^0VEF0uEi$;*nJ'QHa4[B`^A@+-J[CH:Wpffis;!Z!E-<,mJH=%;2X"SH0oE\o5/PhP
O//p7^dMuYm..(cP#"bC^4)Lg4M"gB0]AomQKdVdA3Y%fa]AS'*`Ea*3LBV7WWQ;1ZsCW;)%Fc
]ATlZP%8E:WfV>-lR&-TN06$.1AJD_loW\??@`f"8kVp>>>L&)CR54^-kNTZEXDaLWh#d>ASf
GOX-hM7NqHGZ[9<7<4UF$6;>02n(gVO6+I+@=^Z`1V7;?Q"#tl7E@R\F5WAcV[/+!rlbJV>7
<KXD%[/6B+cCjo2;gh7%dV;``$H5eqkpL;L!W-$@n6oq:@k7FGI#foT>op7d1b&2@JQIW:>l
n]Al&n"__.e#R=;EaoZQ<YFCrK5`Dl5X"mq@#hI*1Jt5S!dn396+ZkaUX4q[?[u6C.NGIeOME
`Y&'+qjHUEM/QfpnqH#"r1#I(i%XUDE?Z.S*G3[,iB'F[hHW]A6M.F.kc)9:o!lrrrj4\"W3$
7nHWgKUAUZpH>$CP7s#<[K$CaS9UifR@?]AF?i[QRuPOZY[m\.!Wt'`c?sIkme;oIholNjLY&
7A+mid#nS?7,Q@O,oKd@&`^8Ju9SBPClO)T)I]AO=+4f<3=ZL_,5IGe@Am773eklbaO"bq:dB
9Vr"_$poqW,bL4/EK\/hX>fFqe8d9=*7GraA=t;(D-3Y.3b";7I^:n`Aq:hH@*c=hMt(m06d
U_'I2WtM`%88;e)>>gOJpKG!k@!KQ`CQI6./#-IhM?Mf_%Kp./Rk-eV(0CQ1k<r-M'$)QBJP
Z'<W()lEjpl`qSOg8AKu>DgTnq7^E?OHMb[Uft0(L^ZOGY,qlQ.Vd>[$Nsl>i7Ro.i7h_<A^
=io]AUXT05NuH;gRk%RD6a0'.$H'"U[*UQ,V4]A&Jkt0kgF#!$p>f@sPj3#PY'CLZ]A^<N03g<P
bA5c8FHnh6AV;;$:Jm@oYKBBMu[I\^>.ZE_?3r9W$NMi86N(9:VLo,L;L/fLGedeB+R<lHuE
JTF9T:)DW,k1A9nr%@;,,iuc<Y5Sr!H[1ee;NL4HJeKBp5J!?)TmB0f*"l+F.-7s6?gF\TAu
RW0[['&nXhtr^isVuG#(^PP$/U$>87=R'`s:.NmC,eZ:RBJh/5d'5(XN([^u&t>,-PWqo1!m
%4_bmm1e3;AlphTnDGZ>:\CuI3T)*=FHRr?5nibX"q;iE@irPEKG&7=Ge(f,=Rb#p:9MZH+f
qh4s.n[Qc`hY^T-+rACYK0GdQm4@gR+h)9h)s]AHB!_t4h$rhPO]AM`@cg0V]A#!OZ%WD?:/rE%
EB0ft@Ma7m)'*"$<OPTu]Al&`o@Kq6fQ^#",FiH'[71ro7Ofcs0D1QG&mD`$8*tk]AL^PPom0_
XKmn4'2KN9W`.e[m4$X^i`]AV>r8TCe3N2Y*TB50ZhWtLH*faFN0+rJ$pTt2q><.cI9CroThM
AV;^.*m/]AZE/'6?En(hKH<`5)H8bR("i2pa34>SBM*gLoq]A2FHg7g8QUe04<LQ`9@6>U28-d
;H-/2TL[lV-#BTtBB58\8RY4u8g3^3Z4#s'Ur=;uDB?qX#s-8D%QhLPERkH?b>HD@_G(+aM6
.2Ld>d#ZH=h5Va.aTCD-/Ha2%Q4@p+`Qb>N<$XPjs@h)5YD8Hg1)obI6agB>Y5\_8Idu\TO/
cgd`7qB9ISZE\2&$V5NJU-hpCReV#D4lV`DnchZ%h6>+Q?J*??^l"Kmf3pY4N,NHFq6#]A0>%
0,@f6&&!Yu^S>R78U!6Pa*tT:#__DgCD28m-,$,::Xc@-54^GS#QD]A0Y^R>>pbJF9$^cD$r/
%EMhf@1]AT%a(&.I$_`Pj-OHC9H$h$>:k=,V1K?IqWn'_YRho7MH`'*5;%VciOLF$.mTi::h+
1F*5GY6W`G6>BDO$fNqJIk(!:9gDrktpYMo&TC^Yme<RupIERbf=%/+Mr^ftQ+&p.\.N-(=_
/SF>E;I<?C"qi=Y;Vp*bmdojRU3NF<X%EP['-rEVt=>Jo)2O@]AOSNS=Sr6!*bmb)l)4Uuoi>
Xh9UTst\DD2sV&-ns4F+YnauX]A]A]A%MR%J2I$q^s7FXp(W>X0=+%gSEtU)G5>4kkNL_ph?W6=
T#6LHM?(s\#fKgAMYXsU3ON8DF%cS)Q3/Ade:M_S\Xg:=BDOX5:X%&eF$._`;ekp-Ndlu&D]A
"5'?h-_Le!2O)nSM&FQETpeCIn`mg%HYZRHg%4a_k'<"d<4d#Q:^NT?c5;qY/R.laf$GE/b^
\!67=,Fkulmr1-'%pE-'m/7*RC[$H(BQ$FDTV?)MHJJBX*[2G^GiHi3EfSf^HQ;,^`k@hfi"
oX4EcsC+K@#X@:?Jl@TrIOm]A/s&<\U\,JP416;-ph+!R'Qc(:);EWa.XjEl6;1qi-BFK(1j?
[BYnO:?7DO!cOd)Y!am6`4YT/,>?3+kG1440<<7oLegP]A^Z<@kH,o>ls:i/G]Ar3d2W!0t:dp
p1uF<*-3/61>_qPo/OQCq"*t'V$_Te6<9D9HsmK)nUqNW-U%E>24HscPb\\W+8@bN*)L3uie
XY-)i0UEP^olWjRfJprI3>LNB;Y.IuED#D8lgpVL_BJ,R\$opJ6:!eB\X&m,7oa%d\ep<^R:
7jic2=Pg`N0>EtPUOU\JsLB6)5h;#eU?tI8$&Kq=``hJmqJsrb\V2!uNrX>1;j3!Y\\PnUf"
Z_p%"4n76jat:NlmI"TL+iK:%#\]As;]AA`uk66<@n/oLTZCJf^IWH,]AIC;Ap?,=eI.dpb>WU=
,]A"q3P`#W_Bqn=5/UFeH=Ajp</%[''1*/V\"JqZC^PJOKsqL+D]AB*h0\^9Z-ajE\c*n$loWR
MWF%%2,ca7m5%Y]AqFH,+DRrdjeCU>1KD)c&<(%H^"Tr,pg]A)/(<pr#u%3-_hq_f?fV,L1YMQ
bQL?4.">RXK8Kj+%102m%C%9QRhpEl%,HqQ#s`"?F.Ps1dLTs*jtI,L$]A:cm?KL31jPn.a"I
<4E+)E>1400%.G]AKc4<\dr_*(gVbm#$W\NDphS^Y=2M2hE3h'lYr0]Af7j1hEGJ]Ag&,eJ?DG!
Ll.OF??.]A1as:DY=Aj,?\BYIg<7r>o5]ANLI.3[oIM1Qd!WE_jKI"GJhfG1Ie\KR%2=IB5%Kc
q>rk]A%87Zsh\33/AP&V]A!h782k;q7;M`;la+@46L9uDc'n-pFp/"o11-Qhq-a@pW%5J_0=ug
WOD*Wqjpl:g/Ieaot^$'gi3)L2a0ss(O3m5J"sS`bEA\TDLD#Xb)rWVO$EEQ@Vr@Y*M3opMF
4jhiCHg%d<RNBCgRnl?Lr8?bK>+tEJV[fe(eas.\$/eD"$CGRa4'!1(3`qP+0\cWNu*3RF/]A
&q;nNeA,4)Gk3SS]Ag^bj.]Af9&1[#>qM.#Mk;=T9LU5.]A?LN($CuUmirC&fRjCM(SK_RrH?l%
lnl@]AIJ%+@?-44Ydl\YKPR]A,CMsS"/SK%6-?D,Ti70d8ho_L#CM()sS(<##-3IqOr3-b2WeX
W.TA0f2=sa2acW.m\OD@*Z]A@rA[gL\8(d+_b3le4d0-6IIV"k'f%:=&I!-Z1fL!uB;E[c1!%
F2T-qSRu8m0^ZUYk@=?W</$%qe4.0c$e(_RS$P[j/:=a$V72M2\)#7SCsD-Vk@e?HoQUu1Jd
8n]AT_]A&b8BAXZ-Fe2objr7Z3]AUS5^mi;L'h/;ALVQ0Z(abtd"-8EAiK>EA4PK+$JHF]AXYlKu
2F>MAGmnSiObdoL1^mgIjCCeeG0*phAjUWT1bj-Ac*4!]AZ^isGojW/XG(7^G"(D2X*0[rRMg
=:")J?>9^$g`cI08[TL=:r8hn+;3]A)4'2#8F&/f:ON4TeVQ:_qMWXWTK!.&53ZFmJJ<eo>I$
LZ'dBA=oPSX%o*l&:L/;j594^RQ"8=NNS,E9N-6fH%))Y;&YN4bnVg\nmfHl!D57LY+?J@9-
m9PIV>[h)05?h;9hXd%!7fEhGUWOhgc9V_#!,R"JW0"0\q+c;'Q9LsMo_kJqoP@:X<'l4$.]A
75t"#(Fnh,T.bgVIdR:<8=0]AYfXnD;/"/HBVSjmI?J!c26>ps1.q+S3N:+?P#=-o<tjIffQm
q#c,F^YsG^*".o_>&<)@ug(qr0@sFY\Fu?M\P[UNm1_SI3X>K7Q9'lcdVX+HKd(OY/95<#Y!
B/s:U`ZT=V'nPO]A`T%t2;X@58EY"MofFN%GjtPu\);X-^PJDIE%OippZkd>Ds%hIHsTPEL0>
<\%_cETG20l,#5R7"M$$cADh*Q`HsRrMrFK7c-#8kTj(D6*o0Zj`=(MAA&QO$SaL+L1qib^A
&NB)sdn_DFJ7XDCSk8U%k'X'cJ0LPVqX]A$^=908><eG.]AI8==4-7B\-LdF]A<*'JAqi=`NZ:'
_$2D]A01opr1u2nsqNij45umpn%ZQqjW,P5V;:d?LoG0392!g68f6u]A.,A-X'#iEmt+%hH&&@
\60"kIP.;J70]Ab,77oeG,gs;!7<O^n69YZDEfPt-(N]AaD)OcE,O8mjaec,&k_'6,2,5#C::#
*.H@51QtF3!8WM$k='1-VF[R=]AjsW<:<>crP8-iHDUuiXbMPF"U_3<Xp(MLdu?QBQ*5b<]A7J
#X[IMhL$2>`qIocaa23mfX<_+#"^9,Yq\M;ntCV*(9;QYh_RkfQWp2jq_&ZC1D@gh3R6C1!u
Og0J&^u[c%Qk9%9)Ds=^LsAEH8BOa+rP[UNqX]A-;5;i`T*,[\LeqmmX@HP8=*Bak52p"psAo
5g_YR&(7cbR2bW7W5#Qi.@-OMar2:`rg$5W/O_TUuYjjN.Bgg1+i=idc4GFchFpdOs/^102H
&Q\HL+1k>^BBFY9-ld7k$-_=3lJV!%ppP8YFE;t\(pMh(b!4Y5DZa&82\Jq<bJZilui!jcXN
dKuAm/c,uN'?*8@+J3b5QdU$5N#H)O1TKFoHeHqYFFQl8K$04qq1<MEXf8MDhlDb`0If>,iE
V.rHG[Ck,[EdnCCp#2Y/rl<-m*uP`'_6:*s(@:;KbP%kWIUGJMo<Qr&0+i=sKI1*<uJk17KP
UR;0ImK2k"1!@0<fLoAcYN-T`0U0[!VfMUhr\f6j(>K7!:oN"_Zk#,J\$i2r,O@9A:BC.UQc
DhtP-Eej)_ah2h;NA<m_fn=>Z*[?8`ZfEIZ"0cWp!;'^tdZ[DKDngFnme4(I2-iKseCPojCA
$dMd+R/r-_RYB^o)Qkc,()ufKt_O:"Gb`99?[`9jX%nmjGH&"EJ[Nof)n;$H&\:r4(r@$SoJ
KJ0jmr2f4+l1J5.8U.6,Z2.W%bs7LZZ?IdH5'b(pS#4LUusLXjbsZTC,8/FqFuZdR1K\]A@o1
MOH3h$qLNbi74a]A=h;Y)qgp(P/^$RY`Kf)>(/nb?(34:XYe#W<uXcVXfgXrVWjE-Dk1iu4kG
!36V5%f7F@IKo'4fb#ofDrO$qTOpj;qe^+iXPf>XG[FP%IlZ*`<fR7E3WJ$p_<9^lpVZIX@s
U:=X=J]A+cCPM`olaFGhG3N.'jX[FP+>P)FK8tD*/jLkDr=L@j?J,$)*Qm]AU..M:7=cKs:osS
l`g6s\l<6$@RYMsmr)iI;hp(Icp%3oC'OYYD3-]A/`26nW`9jfr"ZQ'4]A*GeT/:L4:-"h*LB`
$5$8gNmbjR\%:+mhY6WRptB\YcaNA*1K9M+)UqO#?.k-_"SfEZ@>^k$FoJq.V-4a%SgT-5^%
t4DO@WN>jlL#ap*T)Q4<VKrEjF.RXMmjr=k93;".Y3h]AKG3,Mfq]AZ`2F2b<,EZ%BZb+JO+jJ
;&,Le<?Hl_IIbT;l@J95lJk78mN",9[Od"hAAoT`T)FT?V.4XpZPLQ=^j>AVGMfrlYlt<507
#d!(P,7g)]Ak-fT^5pPISsRPf#N)8#/-NqPoG8J:NBGAcDXt;E"?=g&K3G>9WIiZ0E\'IQn^1
[_2X^q1ba2<Q:&:eC`D@=S>,3ukVpe<<#%*hTE^J3/>tT=GiKhq!5:ON*XEE5&O22<4HW*'+
#^pu_^=]ADLrI.LVl4$*>^-\\1deM1R3ml]AIjLB;m3r%+<nOZ?(U!H"!LR7(X;Zb4Nl3do^2l
]AP$Wk:Bj8\?dBfcs5`+#HlU(1\KIS>rmK@f99m[aN.O:_2E2rrMfF)+_K"995I3')e)h#*I(
joE_3pqVFP#h6Xm;WW`8auT^[06?4qVEA1>9"MWI+YYhog(6XUqHF.N=9f9ZUJ1?NJ'K#Xrl
j?nA.F#n1fc,bU,M=g:BO%1JR-K-p8XsPF.hr[aUDUiEU^;)PbC,8+<#<Q8C,T^)fY"kI5!9
Il4AS,19qT&$n\)DfKeD@15WIc&9QC*%i>l?>i93\GjK]A9I.gV-+7Pcr^W"\sHt!A8qPR`dZ
EUsoX26+l4$NT\K[Fb.jUE/s25M=J.UF5H=dmkGF+=kG\'NE_aJ%Gm2tXMg9GR1rm39maAfp
>5E^1TgM$H.(Omi:V%e9QM^dJOqBZD6VF4!3j#q#RSJu;%*ri0q>:?R<ZY71=o5(p?jk2#m4
LU?9P*tY.Th9?IVbL\83$%DeqBhbUB9c!Ak/Un*H&jD8$)#+>)\GZ*5pOaeB=O:5u.T1"c!$
"(fpG8I*dsf[':FV4P/qBo5PNnce$Sd-LiUe,1Cd)`X3/i7%<N_FG"lPfc&Ec<E%Ag#^PJCD
['FKRuZDtqFCu>c/CXiH.Z*AkqB*A'O":k$-`N&"+.>7gm"%%-]AG:=?5SoYD0^Cti6e7e&$B
Pc)nF>,Dp*t7p#L-Mu&TkI%45p%s+fY8W2_BkUKCG,7\H>j%$[f2aoIVj;&WHN9C*;mj*)@G
dCq%ndG".o;48spu^^Pt>`)D!k>%s7BYg?2@GOgArE1nhZHphqSlC1%RKG3tcNe'EW?SHCaX
OD.cg=F5g9ebr6i/9"TCOQYH))uTFp@cb,UJmo8qhEg*h=RHcFnQ[t+r:rYZip:P6@JsZ>C'
2)dQK^U]AE$?srFV%4VH1@MV/qils>fa:J?^:L*!eC>l;1/6Bn7K.K?gd?&:=%p6ms'IQ5BH6
tl5Vj&]A;594E8<.,2%u+Tl7'q?)`nd!:Ul/K.BjaoE?4/O&dja';8=SHF+93/6I#fOX.l9ln
K0.<:CmH?-O/jXhMl?\#/"/jG-QlZZLcU\mrUj\Pio=Z,0;:$.LV.&0iCm--hDn"a-"gl9.2
A'=C=FFP#+s31YmaeJobl<LTL8?$T7^3It-tf_hmUS5s&HCYGLa,W;qI;Cg*;1QE$]AP$gSR,
A0,\+SHi0!h,=l_6'Yj$B@pUrJk5PS:KkUf51%R&GgJ2nFI]Au/pPl31L!QFlSpt@smnWe(rU
0[h~
]]></IM>
<ElementCaseMobileAttrProvider horizontal="1" vertical="1" zoom="true" refresh="false" isUseHTML="false" isMobileCanvasSize="false" appearRefresh="false" allowFullScreen="false" allowDoubleClickOrZoom="true" functionalWhenUnactivated="false"/>
<MobileFormCollapsedStyle class="com.fr.form.ui.mobile.MobileFormCollapsedStyle">
<collapseButton showButton="true" color="-6710887" foldedHint="" unfoldedHint="" defaultState="0"/>
<collapsedWork value="false"/>
<lineAttr number="1"/>
</MobileFormCollapsedStyle>
</body>
</InnerWidget>
<BoundsAttr x="599" y="535" width="525" height="292"/>
</Widget>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.container.WTitleLayout">
<WidgetName name="chart1"/>
<WidgetAttr aspectRatioLocked="false" aspectRatioBackup="-1.0" description="">
<MobileBookMark useBookMark="false" bookMarkName="chart1" frozen="false"/>
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
<WidgetName name="chart1"/>
<WidgetID widgetID="e08ba70d-6b7b-4265-84d1-82a6410364ba"/>
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
<FRFont name="微软雅黑" style="0" size="128" foreground="-13421773"/>
</Attr>
</TextAttr>
<TitleVisible value="false" position="0"/>
</Title>
<Attr4VanChart useHtml="false" floating="false" x="0.0" y="0.0" limitSize="false" maxHeight="15.0"/>
</Title4VanChart>
<Plot class="com.fr.plugin.chart.PiePlot4VanChart">
<VanChartPlotVersion version="20170715"/>
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
<Attr class="com.fr.chart.base.AttrBorder">
<AttrBorder>
<Attr lineStyle="1" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-1" autoColor="false" predefinedStyle="false"/>
</AttrBorder>
</Attr>
<Attr class="com.fr.plugin.chart.base.AttrLabel">
<AttrLabel>
<labelAttr enable="true"/>
<labelDetail class="com.fr.plugin.chart.base.AttrLabelDetail">
<AttrBorderWithShape>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="2"/>
<newColor borderColor="-16777216" autoColor="true" predefinedStyle="false"/>
<shapeAttr isAutoColor="true" shapeType="RectangularMarker"/>
</AttrBorderWithShape>
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
<Attr alpha="0.8"/>
</AttrAlpha>
</GI>
<Attr showLine="true" isHorizontal="true" autoAdjust="false" position="6" align="9" isCustom="false"/>
<TextAttr>
<Attr alignText="0" predefinedStyle="false">
<FRFont name="微软雅黑" style="0" size="72"/>
</Attr>
</TextAttr>
<AttrToolTipContent>
<TextAttr>
<Attr alignText="0" predefinedStyle="false">
<FRFont name="微软雅黑" style="0" size="72"/>
</Attr>
</TextAttr>
<richText class="com.fr.plugin.chart.base.AttrTooltipRichText">
<AttrTooltipRichText>
<Attr content="&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img data-id=&quot;${VALUE}&quot;/&gt;&lt;br&gt;&lt;/p&gt;" isAuto="true" initParamsContent="${VALUE}"/>
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
<Attr isCommon="true" isCustom="false" isRichText="false" richTextAlign="center" showAllSeries="false"/>
<value class="com.fr.plugin.chart.base.format.AttrTooltipValueFormat">
<AttrTooltipValueFormat>
<Attr enable="false"/>
</AttrTooltipValueFormat>
</value>
<percent class="com.fr.plugin.chart.base.format.AttrTooltipPercentFormat">
<AttrTooltipPercentFormat>
<Attr enable="true"/>
<Format class="com.fr.base.CoreDecimalFormat" roundingMode="6">
<![CDATA[#.##%]]></Format>
</AttrTooltipPercentFormat>
</percent>
<category class="com.fr.plugin.chart.base.format.AttrTooltipCategoryFormat">
<AttrToolTipCategoryFormat>
<Attr enable="false"/>
</AttrToolTipCategoryFormat>
</category>
<series class="com.fr.plugin.chart.base.format.AttrTooltipSeriesFormat">
<AttrTooltipSeriesFormat>
<Attr enable="false"/>
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
</labelDetail>
<gaugeValueLabel class="com.fr.plugin.chart.base.AttrLabelDetail">
<AttrBorderWithShape>
<Attr lineStyle="0" isRoundBorder="false" roundRadius="2"/>
<newColor borderColor="-16777216" autoColor="true" predefinedStyle="false"/>
<shapeAttr isAutoColor="true" shapeType="RectangularMarker"/>
</AttrBorderWithShape>
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
<Attr alpha="0.8"/>
</AttrAlpha>
</GI>
<Attr showLine="false" isHorizontal="true" autoAdjust="false" position="3" align="9" isCustom="true"/>
<TextAttr>
<Attr alignText="0" predefinedStyle="false">
<FRFont name="Verdana" style="0" size="80" foreground="-13421773"/>
</Attr>
</TextAttr>
<PieCategoryLabelContent>
<AttrToolTipContent>
<TextAttr>
<Attr alignText="0" predefinedStyle="false">
<FRFont name="Verdana" style="0" size="80" foreground="-13421773"/>
</Attr>
</TextAttr>
<richText class="com.fr.plugin.chart.base.AttrTooltipRichText">
<AttrTooltipRichText>
<Attr content="&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img data-id=&quot;${CATEGORY}&quot;/&gt;&lt;br&gt;&lt;/p&gt;" isAuto="true" initParamsContent="${CATEGORY}"/>
</AttrTooltipRichText>
</richText>
<richTextSummaryValue class="com.fr.plugin.chart.base.format.AttrTooltipSummaryValueFormat">
<AttrTooltipSummaryValueFormat>
<Attr enable="false"/>
</AttrTooltipSummaryValueFormat>
</richTextSummaryValue>
<richTextCategory class="com.fr.plugin.chart.base.format.AttrTooltipCategoryFormat">
<AttrToolTipCategoryFormat>
<Attr enable="true"/>
</AttrToolTipCategoryFormat>
</richTextCategory>
<TableFieldCollection/>
<Attr isCommon="true" isCustom="true" isRichText="false" richTextAlign="center" showAllSeries="false"/>
<summaryValue class="com.fr.plugin.chart.base.format.AttrTooltipSummaryValueFormat">
<AttrTooltipSummaryValueFormat>
<Attr enable="false"/>
</AttrTooltipSummaryValueFormat>
</summaryValue>
<category class="com.fr.plugin.chart.base.format.AttrTooltipCategoryFormat">
<AttrToolTipCategoryFormat>
<Attr enable="false"/>
</AttrToolTipCategoryFormat>
</category>
<HtmlLabel customText="" useHtml="false" isCustomWidth="false" isCustomHeight="false" width="50" height="50"/>
</AttrToolTipContent>
</PieCategoryLabelContent>
</gaugeValueLabel>
</AttrLabel>
</Attr>
<Attr class="com.fr.plugin.chart.base.AttrTooltip">
<AttrTooltip>
<Attr enable="true" duration="4" followMouse="false" showMutiSeries="false" isCustom="false"/>
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
<Attr content="&lt;p style=&quot;text-align: left;&quot;&gt;&lt;img data-id=&quot;${SERIES}&quot;/&gt;&lt;br&gt;&lt;img data-id=&quot;${VALUE}&quot;/&gt;&lt;br&gt;&lt;/p&gt;" isAuto="true" initParamsContent="${SERIES}${VALUE}"/>
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
<Attr enable="true"/>
<Format class="com.fr.base.CoreDecimalFormat" roundingMode="6">
<![CDATA[#.##%]]></Format>
</AttrTooltipPercentFormat>
</percent>
<category class="com.fr.plugin.chart.base.format.AttrTooltipCategoryFormat">
<AttrToolTipCategoryFormat>
<Attr enable="false"/>
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
</DataSheet>
<NameJavaScriptGroup>
<NameJavaScript name="当前表单对象1">
<JavaScript class="com.fr.form.main.FormHyperlink">
<JavaScript class="com.fr.form.main.FormHyperlink">
<Parameters>
<Parameter>
<Attributes name="jssj"/>
<O t="XMLable" class="com.fr.base.Formula">
<Attributes>
<![CDATA[=$jssj]]></Attributes>
</O>
</Parameter>
<Parameter>
<Attributes name="shoplx"/>
<O t="XMLable" class="com.fr.base.Formula">
<Attributes>
<![CDATA[=SERIES]]></Attributes>
</O>
</Parameter>
</Parameters>
<TargetFrame>
<![CDATA[_blank]]></TargetFrame>
<Features/>
<realateName realateValue="report3" animateType="none"/>
<linkType type="1"/>
</JavaScript>
</JavaScript>
</NameJavaScript>
</NameJavaScriptGroup>
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
<Attr gradientType="normal" startColor="-12146441" endColor="-9378161"/>
</GradientStyle>
<PieAttr4VanChart roseType="normal" startAngle="0.0" endAngle="360.0" innerRadius="70.0" supportRotation="false"/>
<VanChartRadius radiusType="auto" radius="100"/>
</Plot>
<ChartDefinition>
<OneValueCDDefinition seriesName="Shop_lx" valueName="TotalCost" function="com.fr.data.util.function.SumFunction">
<Top topCate="-1" topValue="-1" isDiscardOtherCate="false" isDiscardOtherSeries="false" isDiscardNullCate="false" isDiscardNullSeries="false"/>
<TableData class="com.fr.data.impl.NameTableData">
<Name>
<![CDATA[类型分布]]></Name>
</TableData>
<CategoryName value="无"/>
</OneValueCDDefinition>
</ChartDefinition>
</Chart>
<UUID uuid="e67ebe57-b4af-4884-b30f-c7a422230fa6"/>
<tools hidden="true" sort="false" export="false" fullScreen="false"/>
<VanChartZoom>
<zoomAttr zoomVisible="false" zoomGesture="true" zoomResize="true" zoomType="xy" controlType="zoom" categoryNum="8" scaling="0.3"/>
<from>
<![CDATA[]]></from>
<to>
<![CDATA[]]></to>
</VanChartZoom>
<refreshMoreLabel>
<attr moreLabel="false" autoTooltip="true"/>
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
<BoundsAttr x="0" y="0" width="950" height="394"/>
</Widget>
<ShowBookmarks showBookmarks="false"/>
<body class="com.fr.form.ui.ChartEditor">
<WidgetName name="chart1"/>
<WidgetID widgetID="e08ba70d-6b7b-4265-84d1-82a6410364ba"/>
<WidgetAttr aspectRatioLocked="false" aspectRatioBackup="-1.0" description="">
<MobileBookMark useBookMark="false" bookMarkName="" frozen="false"/>
<PrivilegeControl/>
</WidgetAttr>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="0" color="-723724" borderRadius="0" type="1" borderStyle="0"/>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="SimSun" style="0" size="72"/>
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
<Plot class="com.fr.plugin.chart.PiePlot4VanChart">
<VanChartPlotVersion version="20170715"/>
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
<Attr enable="false"/>
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
<Attr class="com.fr.chart.base.AttrBorder">
<AttrBorder>
<Attr lineStyle="1" isRoundBorder="false" roundRadius="0"/>
<newColor borderColor="-1" autoColor="false" predefinedStyle="false"/>
</AttrBorder>
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
<PieAttr4VanChart roseType="normal" startAngle="0.0" endAngle="360.0" innerRadius="0.0" supportRotation="false"/>
<VanChartRadius radiusType="auto" radius="100"/>
</Plot>
</Chart>
<UUID uuid="a1c7ea96-06c7-42a4-b649-3bf6a3ecd4d6"/>
<tools hidden="true" sort="true" export="true" fullScreen="true"/>
<VanChartZoom>
<zoomAttr zoomVisible="false" zoomGesture="true" zoomResize="true" zoomType="xy" controlType="zoom" categoryNum="8" scaling="0.3"/>
<from>
<![CDATA[]]></from>
<to>
<![CDATA[]]></to>
</VanChartZoom>
<refreshMoreLabel>
<attr moreLabel="false" autoTooltip="true"/>
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
<BoundsAttr x="12" y="536" width="414" height="291"/>
</Widget>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.container.WTitleLayout">
<WidgetName name="report2"/>
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
<WidgetName name="report2"/>
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
<![CDATA[类型分布]]></O>
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
<![CDATA[m@7rgP?/[CENH$A[q+6rFcf=?(E%0(k_R@m+_du/-.\k'9;qud(ZhBQ((^b^:">P5Bi%'./!
tKG)(uQk6Fc(Xb6!ZS]AL>5]AJHSYQO9eE#KTI/AL.XsK%3Kc.adc$g,WY$Pk<.pQro\LrIQ/_
4,=]A?@_T!Bs>[1ToHtRZ1Mp!"\(RN\Bc`_Kho'q'ET=MJMP9P4cYqNS6EgZf5$5MGYD>tG+c
O(`=,'VT1fs[[RGA!_#[86DM-hl-b0e[Hjq+I>UcYVBXiq,au`2pA]AEqZ?9M-p4`lQ,:@DuU
W^qH%*7muXW1W<7_ZBYqYB2_6d?6^l'5L/";$8ka=B9<@K5bOGo#RCFN>9ngCg7M]AiEI*6"2
)6UL/eg\i#4o<)aoD6kCC,ZQ]A0s=C;a@A<UE/8F&:Af*J\pa*QpL8J5.<r+G1c&ntJWTM-@F
,\$J!bDdUUcZ/;:4%V1rf1JhRs)NmIMA6"\!Xj\l>T!k^@-L]Al![5f(GsZ:76(lTSY&5;)9e
eUl(rAVD%Ru:[Ju02tlcD7UE2fUtIQ=7[2U4q;TX32R>p]AdA@CPkXrHYM.lc[,g+N^bKV2Td
nm6m%:TaF]AM&mT?8/V:7f,L;gA[\u`>]AWVYt`dB3$>/4imULWT?COpUB>:"m"^q.4Z<.m-Z8
hQCiXdO1M<Y(W7?8j5($;-OR0I*qdte1*?-/IE$HX#8E')r*6!XLV,Etsm2J5$alYO&qp1=3
bkGKQ?]Ak)EVfP'6&O]A6>@MP1uO/OB5RF]Af=\T(<T6A9#Y;!0*7ot6!7)CJ&Q?PSX($-I,8`F
h_hOSUq8,K/)@L9l4#Z5XYIl1PS]ACN9#AZC:&T6A!SUYB[toM,c->AQ-.=+=Tu!'VhJbl$&f
<B7C6Voujt]A6OYE*?*aXVKWk,+QUgDl"Rq0]AckKitE3br;iC%Qi+]AK.%O=a$Q.,(nZf+Jlj+
'hC)DjF-<0,'D%lcb^RlW.l/Ner?S#a\24[l^RBhU/8>$f(J.8hSgjQ\UTf)h,mkD^`Zd(db
`=DJboDQa>+l#roi82oZ(8Nh<5UdR0-,GH,L\1OI\s^-*kqHZGcXL9jVZGp-X7$;GQo2neI;
;3uQ'WNs+$Z`aUg[mF^q<FM5aQ.s8MW`X]AF9!.1p*:/N*/O!76h\d*Rcs*<\jC3E'KXL^)HK
9soH7hY;4Sk=)mKStkgs"dHTig`I/_ms7Q=/ZWd8@eb@;:BPM7.;.A*(ZJS)Dsu'\e&4,,C&
_4FbtNCOFrdVui07NkZocH$[&`D8Xs:Q*c[\?hk%`Tpu!`U>EKN4t/DGe?TuE@++o$)1rg)b
MhARB_Fmf@VoVZK7;r=Ka`*W=8)`%#a]A6@X;3%iUla@YU(3J:Q/%WBW]AHZ[12jtSHne#KYtJ
CnV7Fod"G[BT[b!mdC\$hqSCaB@a3*W?DO`Z^?KiIpU/fT6%19EmB;'*Wesg9B>>NL\F(\3,
P.K!]AJUNmX?l(.#)8jSKAgq<M>bS`8RM;U+inl<RG.ubM=b;<qTQjIMam2V<CAi[Z5E<#!p%
=*9'.H767:'qb-ok5rLBn3V\G_;FEf7cB)uGbST<-8kQeb:bdt>dkT=;#e;M^\FS>dSL4=8*
`S$a#6Fmf%gQ>3cW8"/'U\8Fh\d=7tq<X/s's$C1O61HK^N$ObFrP$HhFf/?uQ)$^\MUkn=e
QP&93\`CKEm09kCcZZ<TI"Y2GD3!n[N'k@'2SY+e^B_91W\Jl3++!rOP]Ahf[FmYDiEE![W<7
-]AfD&;p??sT[;Xi@NX1d2e3shD5+kGW+dFe7Th8>W=7`LsE`iW@`eBuqeNOIYjHM?A$K>07F
P[B#VRe/m[F]A\@u<'5)2:/45Q6q)UiI!&^&MfJm/]A%i$A4CcG(7q;<fq\Us%KPX<$R>*I?40
KU#@^?:7*Xu%YLGQ#A/R]Ao[1J^*)lg3EV3h1%$NBGiS'Yle>CI-qO.]AH"nR`qIG)OSRP@:?E
lhIG6.i]A%%aDr/R"^Fue7%H:P1YY=Xa;Xm`0K3ZM7#2Y,*O4a%S3rI403PpR%h\KXYC!is$q
tcI16Eq7q8d'Ef_pVQ,V*3Or,fY6YO/T^j3<oMn<F2U'!p,\_eHh>J*GDNkDMfEP>#/UBaG?
_4=Qh2sblr"qC)AscKM>j[2,P6bIPP%%`b.C0Ba,1/4Zh#um'^NmO3\^+VP/Z%+Ir*=PpSZ0
qWR-0YA;qgd/0[l.,eP8eWALi+TQYMG*<k:RiJ@WXO4$X6[6P(.dR%MCZcg$Im5?1mE]AYI%r
oQE<U>90&JD[UOD/bpfeG^6*cessT]Am9B)'e#\88j0&]AGUKG9PfDriQi[Ae@ondc_d:#enff
'_-o0_.@r_GMnP4b?U55]A.X+e7[m+!Ycog[h[*_2S\LL,&T.GoH*Y_tHZ.gLcCZN>VISf/$p
AR$=,K-%_JT&mYc\6!nh[FtLOg!XO\_<;!-flII,&P\2?uNrFUTqL+[rBamF&+F@D^#D1#]AC
q!.,"VN]Ag"(tOX5<NS5@M?Z79Xl@K+!)RW.l/&H#hs#%seB-P.=>;=;pq7^XSU/U_ZPa,<Y!
W)Wd'o5oCBqVBt"E!;tK5d\;1kY\L@DPm51W^UJ^)2tIFjUdNMI\HeeJ#`>\qqW_Mg''mjJE
U<NeY?Af8s;pG)Kc:'H2rGr:f35"DtEGt1paY(Zuid-:>h0J.QS!"%?M%s!K[cg!K[aa"cs0
]A!80U?O:=SXfg#\%%7C3L5Qm/X6ibm?ft\[0ft\[0ft^Pefg#\%%7C3L5Qm/X6ibn*"HX'\!
80U?O:@9\quMlgquMlg9EgLe6ibn*"HX'\!80X0N$''2n)QlRqKg\!Sl[$Kk%c3Hh[a'uT,%
-^IDIm4C8aqHEg,<!HGAjH9.bGtd+nRfa\0fN/q^t8YMMp]A92q7@1R<s4]AZ;&doZ\,2@5#GC
*m;N+Xo97;eBJ`(B/ub+>tN/5)Q;pa9:djBn)pdV#ZkE^ri_D)me$$pAG1j2\:e9D-rkhoXi
QST`5ndm3As(NLOu^_6./eG80W*HdV4^9!E%8U-&7)J!DJ-A!DJ-A!DJ-A!DJ-A!DG_QgESl
Zoqf^S<;?3!c.ZL;oZ4&tMLG/uJf?.c?#'t^3*q_c&U2j@R<\'_~
]]></IM>
<ElementCaseMobileAttrProvider horizontal="1" vertical="1" zoom="true" refresh="false" isUseHTML="false" isMobileCanvasSize="false" appearRefresh="false" allowFullScreen="false" allowDoubleClickOrZoom="true" functionalWhenUnactivated="false"/>
<MobileFormCollapsedStyle class="com.fr.form.ui.mobile.MobileFormCollapsedStyle">
<collapseButton showButton="true" color="-6710887" foldedHint="" unfoldedHint="" defaultState="0"/>
<collapsedWork value="false"/>
<lineAttr number="1"/>
</MobileFormCollapsedStyle>
</InnerWidget>
<BoundsAttr x="0" y="0" width="950" height="21"/>
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
<BoundsAttr x="0" y="505" width="1138" height="25"/>
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
<FRFont name="微软雅黑" style="1" size="96"/>
<Background name="NullBackground"/>
<Border/>
</Style>
</StyleList>
<heightRestrict heightrestrict="false"/>
<heightPercent heightpercent="0.75"/>
<IM>
<![CDATA[m@8T(de=g'4h'7U]A@LQJ\Td/`\3%^4:6XR0f,U`.>:ZT<C=]Au'I%[pl=t0oS7![F"Aa;XK)6
Cn]Aa,2aOY%8e,YTD%[W1d'4O:t#N6kR6W&&7#@[C4@PpXfDSm<gql_8G`dn+6$sIpQL]Aq0oa
rKeiV[Q_+]Ap$_*a[p00&b_Z#K%$_*=Tbgauen#m#s-nL<8/a9CVmhQlb0_2sb50_Ug,A1%*G
HX1%Os/rEF*<$a^i#0[rQVe^-%D.`\V9h@=1Msfs8BaW+'q#t4LF=k/"c!RH5>?/2sItXBa`
Z7Oq-9kHZeHg]AI88Ll[L_&=*1T9Zg1*eM)k,p'AZo2/^hS+rUhbI?B2Ik86IDl640ef%Dg.#
q`?_aQ-C1rG1?>DB^U$WM77]A`aq=*m@LSRP3]A>K1\MuI4`!O+b11HE1Eu+=\j)9#E6=4fR?L
,<fIbieiQ)D((oK.p;^IrY():?COjTA&m#`URm:.6JJZO;,<:KU5Z9lQ.a<UW;bnM\o5\JE*
M?,C4iXJ8,Y`k_j@O)58lRB;D>$*N`p?kVa]AgoePc]A\m)dn7S_O,F(0mkO&Re'hgN+2\f:38
2r^/l]A$B(nG)P@PSV$lp>A#;A42C5V(,b@0[ULaDla>9TW@"]A/$VCPRPgT#^5]AfV+-=1%XRm
I&LqbsT\m<Y;T$JLG#Ii=S7^`'BI/V/><fH@o[0`#_Lr@^%rJA_:_1<T3o!ng?-W=e=S<3DR
BWUpXWl!&2'l;OPFJ#Ze1@[F:n7;]AQml-SSN*Et]AJZQsCY/V:2(quhCiGG:8!0qGQ]Ah<!K\l
D^<77S`b'sFh&k`>/BA"]AlSc'[G[>B8-H7H6>`r)5#6A)h95`.rJfo@T)@On7OAqPG=fX6.n
=ii$.2qf=<9SO-d1YRNJQOT"oM(<]APH\p([A8eblT^IQU%I4)78/N6VYJ&Yfi6=pM8[M#*sV
Ek6g>",imkH*83,.k)\-=GFJ_(H.GN#oeF5[8ZIfdEC\D]A6n5WWg87&=QUMk,H%S2%:EcFgN
^H`pi*;M[X-Z)d7($5LDAq0M+7tOgn=fRS1fQGO(+%\H8<=ED-'1/0A>D?_'IjW!#lgo5^Ss
W[*Vq:L9\5Mb4HXYn"IqF"rQX`mf7kn8e10#:Yo'e+!&)cT/:tMu3cW8U$IU=@"UiM+B)t(H
t11K"$OG\W0LdcSoPiX/1FoQckLijmu;\ZRqeo<G7KL+E)D"O']A-'j%[E;r,'-SSJpP,l_l'
AVfJDaK!6jbn>.O>TMt`OnBd2sAM$qf)qKMJ)<p?.Ra3ETKhD)R[&;d(bg<:>A]Ap@]A`'5s^*
=N^HSPubqq-[@M)nIj,`9E_F)LI9866X3jaqf%*:WXp9hp_Gu?*Q`$U;:qTWm$cEim"^)poh
H[nl:CJVr)Bb<ijPd2'mE^%A-(sA_,"VZM^02f]A;>GYF<$qid&'gcX%nbY4NihDtqnO]ALjid
-]A.#c:d8;hlQ9qblJa<G>>0iC7W.4+eGkW:@?4)"YX0`Xj]Ai4,8uqECc=GOM7_DPW7,+cARa
c#6WWlQ=mgKmL((T`"Ps6VA8a$Y^V,s<p.F7L+%W?SV/^Wg'A^ATIV!"e1D%:'ECDSmJhqSf
`ZG>h[Q(KqHNuG7C.>JG.J_j]A%boG0QB@b!]A_E'&J+5s/2doo-c0IGgbCiWR)?RjpPG9%G(e
5Dj/<ogc`qC_RAEU+=alO[3a6ZD$-G)Js)8rqcKQGXO7Y7P9/R[6d]AG0.>[daM=D&/8Da<+g
KjUTKr12>_]Apf2T]AGi.#_h]A/Lb&SjKjt['3SG5l*1)qc!9u0@F)hleWS#._$36E$%\0o*3Jt
/,@De/@2]ANp[cl(r8*XV]AM0Wr"j0VoFRuucD,tRt_bbL9T^QT@_<"f^#0SBpBs8_/-Ye`(WR
8"rL=$t)':r`$W?4khBI0@0`=#SYal;l6I<1YdMq$fHGnFPu=%[Dp3s/J3dBfm-@UA!hNR/Y
+.Wt=6Z*c/A1('d^^%:;Z`s\<r*>PB;jQ[G$0Y98R:TLWte_KO1J[4c%dUp7@@sLDbb=\@2>
8]A#1;M=>j'N$/hchD[*23"d)g]A:uk2,^"=V-:1.-ACg$V0]A;=LqRgk3:TJ`,8MX<*$o/S#TI
`"E%YO2LqJ!Nq.S)hH@/CAccP[u[G8SjW@jGU]ATVE7j59+S`=a$/9Ri",-V@m%:QJ`.\"FGT
$n+.8J5n&dn"t(>[TfbE.RXs-/BG$%oJMu$EV0(VN3-1WmnIZqal=K$dCL_DhoJXX<QHRKka
%<_.S(1u?%X28btagdUDc-3AnI.[)hVc4lIuB>cE%k&3HfA>5\:XTRt;)u&t1fsaQN0Q2M[Q
rrg)p]AS9B"PEtuOK#U_A[H+&:#ch+6,Vsg]A9CmQ@5)OA+cE\PcqG$\I=L<%SJ_H%g0Mk.SCZ
KIsk`htML#ViW3iAg\IT\GTa+U<`U-b?b7R.mn?_.u1>h5gleKm:L3*o7u=N%FA`]AQs;67i'
*s-*;%KH`,<?C0:L5O_K/f#1qM[?PfP@Dl]Aon-oj`?GHK?EH"'RO,cJ+Gfd9N'0Zs,$7;YDb
'JJ$VID`%dLrS_c"rqR&_f65:39I-u1CGdPS.r`(F`AR.CqfDo))\nFf3X(87J98@i)8(-?>
P34HIK<BiX$^,Yjdq:ZV#%X>nke?[&1CJ^t/BgNk)Qf'cPD]AXk!!6A!@WcZt<']ACJ9W622sM
;M71F2T0Y`WQ<*n:gY$m6n!\=BkY5>3VVKD&SF/9kH>0!d=sk1SV<*8CL_$Q^K;-UAK@A?'*
1*$d)@C='ns<Xf77VS%kVAF'%gf1;Chl`KOk$Xj'^d'iEtMX<&UEr0oo&U7fZkG$2WJsJ*kH
oVN6&X]AcGuBi0A&K`d$+CB&9j(,3(A:Bbc>"?h>\oUPN'tJ$#+JcIi@"t2Ee3aLahnqZFqmV
gGcUk-p6"\Tq*t@IVU,A=$"!([SQZE1N$[.T3mtUggP3jIq7V)=D9\:L@TB0qhT9eRP.>!Ha
W&2'@kCJi>ued2]AG)j>67f.+&2[bQmI>@`a6l!MfSa,&&WD+5kG28W[LHRr.tu^\SeB*&P.t
db`Lb!G'V#eQQNP"kW87fAM((cd1[Y.Vlb?nl`rQAG'S[$Ao.kD`ue9&Vm*i36*F)G'nt[%M
?AHJi/^+$kQ4"-5W8*:5W8*:5W1;25W0/SA-3E/2@on"!tddV&-6;D&O85c!Fu:C"+L;]A"+L
;]A"&f52!tddV&-6;D&O85c!Fu9E5W0/SA-3E/2F'1i#=(3:#=(1$'gOYg!Fu9E5W0/SA3ZJ+
R.%PsE8OS%_kp]A2UJf=cL]AusSea:j;h>QBo^Lf'YGk>*k?]ARuRNL!ZnlP]AdoiB2SA_Qi(&<U
0C5ab!0"Gldg;;*Uc/[eWfB/coK/!CnA1DYR4j/&dPijY.apL#Z`APLSpu+[\_>#tQM0P&f*
j9j7r^V+%SYeEroC:Nf?1c<ka2\g+7\UTp$Nc9]ApNm$-l,&%?>&gT9M,i8e*`d'P/^-%K]A[C
!\\eC!\\eC!\\eC!\\eks*C:FH2+Sll+E:LLpFXrHR#A"g7Q,prRjm?4J7K%gtO`QDV;prT:
\^rrW~
]]></IM>
<ElementCaseMobileAttrProvider horizontal="1" vertical="1" zoom="true" refresh="false" isUseHTML="false" isMobileCanvasSize="false" appearRefresh="false" allowFullScreen="false" allowDoubleClickOrZoom="true" functionalWhenUnactivated="false"/>
<MobileFormCollapsedStyle class="com.fr.form.ui.mobile.MobileFormCollapsedStyle">
<collapseButton showButton="true" color="-6710887" foldedHint="" unfoldedHint="" defaultState="0"/>
<collapsedWork value="false"/>
<lineAttr number="1"/>
</MobileFormCollapsedStyle>
</InnerWidget>
<BoundsAttr x="0" y="0" width="950" height="21"/>
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
<BoundsAttr x="0" y="150" width="1138" height="25"/>
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
<![CDATA[1066800,1143000,723900,723900,723900,723900,723900,723900,723900,723900,723900]]></RowHeight>
<ColumnWidth defaultValue="2743200">
<![CDATA[2448000,4032000,1296000,2448000,4032000,1296000,2448000,4032000,1296000,2448000,4032000,1296000,2448000,4032000,1296000,2448000,4032000,1296000,2743200]]></ColumnWidth>
<CellElementList>
<C c="0" r="0" cs="3" s="0">
<O>
<![CDATA[拼多多食品]]></O>
<PrivilegeControl/>
<NameJavaScriptGroup>
<NameJavaScript name="拼多多食品-总费用">
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
</Parameters>
<TargetFrame>
<![CDATA[_blank_fs]]></TargetFrame>
<Features width="600" height="400"/>
<ReportletName showPI="true">
<![CDATA[/二级平台页面/拼多多食品-总费用-日.frm]]></ReportletName>
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
<C c="3" r="0" cs="3" s="0">
<O>
<![CDATA[拼多多生鲜]]></O>
<PrivilegeControl/>
<NameJavaScriptGroup>
<NameJavaScript name="拼多多生鲜-总费用">
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
</Parameters>
<TargetFrame>
<![CDATA[_blank_fs]]></TargetFrame>
<Features width="600" height="400"/>
<ReportletName showPI="true">
<![CDATA[/二级平台页面/拼多多生鲜-总费用-日.frm]]></ReportletName>
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
<C c="6" r="0" cs="3" s="0">
<O>
<![CDATA[淘系]]></O>
<PrivilegeControl/>
<NameJavaScriptGroup>
<NameJavaScript name="淘系-总费用">
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
</Parameters>
<TargetFrame>
<![CDATA[_blank_fs]]></TargetFrame>
<Features width="600" height="400"/>
<ReportletName showPI="true">
<![CDATA[/二级平台页面/淘系-总费用-日.frm]]></ReportletName>
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
<C c="9" r="0" cs="3" s="0">
<O>
<![CDATA[京东]]></O>
<PrivilegeControl/>
<NameJavaScriptGroup>
<NameJavaScript name="京东-总费用">
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
</Parameters>
<TargetFrame>
<![CDATA[_blank_fs]]></TargetFrame>
<Features width="600" height="400"/>
<ReportletName showPI="true">
<![CDATA[/二级平台页面/京东-总费用-日.frm]]></ReportletName>
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
<C c="12" r="0" cs="3" s="0">
<O>
<![CDATA[社区团购]]></O>
<PrivilegeControl/>
<NameJavaScriptGroup>
<NameJavaScript name="社区团购-总费用">
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
</Parameters>
<TargetFrame>
<![CDATA[_blank_fs]]></TargetFrame>
<Features width="600" height="400"/>
<ReportletName showPI="true">
<![CDATA[/二级平台页面/社区团购-总费用-日.frm]]></ReportletName>
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
<C c="15" r="0" cs="3" s="0">
<O>
<![CDATA[新媒体]]></O>
<PrivilegeControl/>
<NameJavaScriptGroup>
<NameJavaScript name="新媒体-总费用">
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
</Parameters>
<TargetFrame>
<![CDATA[_blank_fs]]></TargetFrame>
<Features width="600" height="400"/>
<ReportletName showPI="true">
<![CDATA[/二级平台页面/新媒体-总费用-日.frm]]></ReportletName>
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
<C c="0" r="1" cs="3" s="1">
<O t="DSColumn">
<Attributes dsName="指标1-拼多多食品" columnName="dqsj"/>
<Condition class="com.fr.data.condition.ListCondition"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Result>
<![CDATA[$$$]]></Result>
<Parameters/>
</O>
<PrivilegeControl/>
<NameJavaScriptGroup>
<NameJavaScript name="拼多多食品-总费用">
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
</Parameters>
<TargetFrame>
<![CDATA[_blank_fs]]></TargetFrame>
<Features width="600" height="400"/>
<ReportletName showPI="true">
<![CDATA[/二级平台页面/拼多多食品-总费用-日.frm]]></ReportletName>
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
<C c="3" r="1" cs="3" s="1">
<O t="DSColumn">
<Attributes dsName="指标2-拼多多生鲜" columnName="dqsj"/>
<Condition class="com.fr.data.condition.ListCondition"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Result>
<![CDATA[$$$]]></Result>
<Parameters/>
</O>
<PrivilegeControl/>
<NameJavaScriptGroup>
<NameJavaScript name="拼多多生鲜-总费用">
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
</Parameters>
<TargetFrame>
<![CDATA[_blank_fs]]></TargetFrame>
<Features width="600" height="400"/>
<ReportletName showPI="true">
<![CDATA[/二级平台页面/拼多多生鲜-总费用-日.frm]]></ReportletName>
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
<C c="6" r="1" cs="3" s="1">
<O t="DSColumn">
<Attributes dsName="指标3-淘系" columnName="dqsj"/>
<Condition class="com.fr.data.condition.ListCondition"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Result>
<![CDATA[$$$]]></Result>
<Parameters/>
</O>
<PrivilegeControl/>
<NameJavaScriptGroup>
<NameJavaScript name="淘系-总费用">
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
</Parameters>
<TargetFrame>
<![CDATA[_blank_fs]]></TargetFrame>
<Features width="600" height="400"/>
<ReportletName showPI="true">
<![CDATA[/二级平台页面/淘系-总费用-日.frm]]></ReportletName>
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
<C c="9" r="1" cs="3" s="1">
<O t="DSColumn">
<Attributes dsName="指标4-京东" columnName="dqsj"/>
<Condition class="com.fr.data.condition.ListCondition"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Result>
<![CDATA[$$$]]></Result>
<Parameters/>
</O>
<PrivilegeControl/>
<NameJavaScriptGroup>
<NameJavaScript name="京东-总费用">
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
</Parameters>
<TargetFrame>
<![CDATA[_blank_fs]]></TargetFrame>
<Features width="600" height="400"/>
<ReportletName showPI="true">
<![CDATA[/二级平台页面/京东-总费用-日.frm]]></ReportletName>
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
<C c="12" r="1" cs="3" s="1">
<O t="DSColumn">
<Attributes dsName="指标5-社区团购" columnName="dqsj"/>
<Condition class="com.fr.data.condition.ListCondition"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Result>
<![CDATA[$$$]]></Result>
<Parameters/>
</O>
<PrivilegeControl/>
<NameJavaScriptGroup>
<NameJavaScript name="社区团购-总费用">
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
</Parameters>
<TargetFrame>
<![CDATA[_blank_fs]]></TargetFrame>
<Features width="600" height="400"/>
<ReportletName showPI="true">
<![CDATA[/二级平台页面/社区团购-总费用-日.frm]]></ReportletName>
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
<C c="15" r="1" cs="3" s="1">
<O t="DSColumn">
<Attributes dsName="指标6-新媒体" columnName="dqsj"/>
<Condition class="com.fr.data.condition.ListCondition"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Result>
<![CDATA[$$$]]></Result>
<Parameters/>
</O>
<PrivilegeControl/>
<NameJavaScriptGroup>
<NameJavaScript name="新媒体-总费用">
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
</Parameters>
<TargetFrame>
<![CDATA[_blank_fs]]></TargetFrame>
<Features width="600" height="400"/>
<ReportletName showPI="true">
<![CDATA[/二级平台页面/新媒体-总费用-日.frm]]></ReportletName>
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
<C c="0" r="2" s="2">
<O>
<![CDATA[较上1日]]></O>
<PrivilegeControl/>
<NameJavaScriptGroup>
<NameJavaScript name="拼多多食品-总费用">
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
</Parameters>
<TargetFrame>
<![CDATA[_blank_fs]]></TargetFrame>
<Features width="600" height="400"/>
<ReportletName showPI="true">
<![CDATA[/二级平台页面/拼多多食品-总费用-日.frm]]></ReportletName>
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
<C c="1" r="2" s="3">
<O t="DSColumn">
<Attributes dsName="指标1-拼多多食品" columnName="zzl"/>
<Condition class="com.fr.data.condition.ListCondition"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Result>
<![CDATA[$$$]]></Result>
<Parameters/>
</O>
<PrivilegeControl/>
<NameJavaScriptGroup>
<NameJavaScript name="拼多多食品-总费用">
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
</Parameters>
<TargetFrame>
<![CDATA[_blank_fs]]></TargetFrame>
<Features width="600" height="400"/>
<ReportletName showPI="true">
<![CDATA[/二级平台页面/拼多多食品-总费用-日.frm]]></ReportletName>
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
<C c="2" r="2" s="4">
<O t="DSColumn">
<Attributes dsName="指标1-拼多多食品" columnName="zzl"/>
<Condition class="com.fr.data.condition.ListCondition"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Result>
<![CDATA[$$$]]></Result>
<Parameters/>
</O>
<PrivilegeControl/>
<NameJavaScriptGroup>
<NameJavaScript name="拼多多食品-总费用">
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
</Parameters>
<TargetFrame>
<![CDATA[_blank_fs]]></TargetFrame>
<Features width="600" height="400"/>
<ReportletName showPI="true">
<![CDATA[/二级平台页面/拼多多食品-总费用-日.frm]]></ReportletName>
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
<C c="3" r="2" s="2">
<O>
<![CDATA[较上1日]]></O>
<PrivilegeControl/>
<NameJavaScriptGroup>
<NameJavaScript name="拼多多生鲜-总费用">
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
</Parameters>
<TargetFrame>
<![CDATA[_blank_fs]]></TargetFrame>
<Features width="600" height="400"/>
<ReportletName showPI="true">
<![CDATA[/二级平台页面/拼多多生鲜-总费用-日.frm]]></ReportletName>
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
<C c="4" r="2" s="3">
<O t="DSColumn">
<Attributes dsName="指标2-拼多多生鲜" columnName="zzl"/>
<Condition class="com.fr.data.condition.ListCondition"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Result>
<![CDATA[$$$]]></Result>
<Parameters/>
</O>
<PrivilegeControl/>
<NameJavaScriptGroup>
<NameJavaScript name="拼多多生鲜-总费用">
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
</Parameters>
<TargetFrame>
<![CDATA[_blank_fs]]></TargetFrame>
<Features width="600" height="400"/>
<ReportletName showPI="true">
<![CDATA[/二级平台页面/拼多多生鲜-总费用-日.frm]]></ReportletName>
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
<C c="5" r="2" s="4">
<O t="DSColumn">
<Attributes dsName="指标2-拼多多生鲜" columnName="zzl"/>
<Condition class="com.fr.data.condition.ListCondition"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Result>
<![CDATA[$$$]]></Result>
<Parameters/>
</O>
<PrivilegeControl/>
<NameJavaScriptGroup>
<NameJavaScript name="拼多多生鲜-总费用">
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
</Parameters>
<TargetFrame>
<![CDATA[_blank_fs]]></TargetFrame>
<Features width="600" height="400"/>
<ReportletName showPI="true">
<![CDATA[/二级平台页面/拼多多生鲜-总费用-日.frm]]></ReportletName>
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
<C c="6" r="2" s="2">
<O>
<![CDATA[较上1日]]></O>
<PrivilegeControl/>
<NameJavaScriptGroup>
<NameJavaScript name="淘系-总费用">
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
</Parameters>
<TargetFrame>
<![CDATA[_blank_fs]]></TargetFrame>
<Features width="600" height="400"/>
<ReportletName showPI="true">
<![CDATA[/二级平台页面/淘系-总费用-日.frm]]></ReportletName>
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
<C c="7" r="2" s="3">
<O t="DSColumn">
<Attributes dsName="指标3-淘系" columnName="zzl"/>
<Condition class="com.fr.data.condition.ListCondition"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Result>
<![CDATA[$$$]]></Result>
<Parameters/>
</O>
<PrivilegeControl/>
<NameJavaScriptGroup>
<NameJavaScript name="淘系-总费用">
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
</Parameters>
<TargetFrame>
<![CDATA[_blank_fs]]></TargetFrame>
<Features width="600" height="400"/>
<ReportletName showPI="true">
<![CDATA[/二级平台页面/淘系-总费用-日.frm]]></ReportletName>
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
<C c="8" r="2" s="4">
<O t="DSColumn">
<Attributes dsName="指标3-淘系" columnName="zzl"/>
<Condition class="com.fr.data.condition.ListCondition"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Result>
<![CDATA[$$$]]></Result>
<Parameters/>
</O>
<PrivilegeControl/>
<NameJavaScriptGroup>
<NameJavaScript name="淘系-总费用">
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
</Parameters>
<TargetFrame>
<![CDATA[_blank_fs]]></TargetFrame>
<Features width="600" height="400"/>
<ReportletName showPI="true">
<![CDATA[/二级平台页面/淘系-总费用-日.frm]]></ReportletName>
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
<C c="9" r="2" s="2">
<O>
<![CDATA[较上1日]]></O>
<PrivilegeControl/>
<NameJavaScriptGroup>
<NameJavaScript name="京东-总费用">
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
</Parameters>
<TargetFrame>
<![CDATA[_blank_fs]]></TargetFrame>
<Features width="600" height="400"/>
<ReportletName showPI="true">
<![CDATA[/二级平台页面/京东-总费用-日.frm]]></ReportletName>
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
<C c="10" r="2" s="3">
<O t="DSColumn">
<Attributes dsName="指标4-京东" columnName="zzl"/>
<Condition class="com.fr.data.condition.ListCondition"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Result>
<![CDATA[$$$]]></Result>
<Parameters/>
</O>
<PrivilegeControl/>
<NameJavaScriptGroup>
<NameJavaScript name="京东-总费用">
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
</Parameters>
<TargetFrame>
<![CDATA[_blank_fs]]></TargetFrame>
<Features width="600" height="400"/>
<ReportletName showPI="true">
<![CDATA[/二级平台页面/京东-总费用-日.frm]]></ReportletName>
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
<C c="11" r="2" s="4">
<O t="DSColumn">
<Attributes dsName="指标4-京东" columnName="zzl"/>
<Condition class="com.fr.data.condition.ListCondition"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Result>
<![CDATA[$$$]]></Result>
<Parameters/>
</O>
<PrivilegeControl/>
<NameJavaScriptGroup>
<NameJavaScript name="京东-总费用">
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
</Parameters>
<TargetFrame>
<![CDATA[_blank_fs]]></TargetFrame>
<Features width="600" height="400"/>
<ReportletName showPI="true">
<![CDATA[/二级平台页面/京东-总费用-日.frm]]></ReportletName>
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
<C c="12" r="2" s="2">
<O>
<![CDATA[较上1日]]></O>
<PrivilegeControl/>
<NameJavaScriptGroup>
<NameJavaScript name="社区团购-总费用">
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
</Parameters>
<TargetFrame>
<![CDATA[_blank_fs]]></TargetFrame>
<Features width="600" height="400"/>
<ReportletName showPI="true">
<![CDATA[/二级平台页面/社区团购-总费用-日.frm]]></ReportletName>
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
<C c="13" r="2" s="3">
<O t="DSColumn">
<Attributes dsName="指标5-社区团购" columnName="zzl"/>
<Condition class="com.fr.data.condition.ListCondition"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Result>
<![CDATA[$$$]]></Result>
<Parameters/>
</O>
<PrivilegeControl/>
<NameJavaScriptGroup>
<NameJavaScript name="社区团购-总费用">
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
</Parameters>
<TargetFrame>
<![CDATA[_blank_fs]]></TargetFrame>
<Features width="600" height="400"/>
<ReportletName showPI="true">
<![CDATA[/二级平台页面/社区团购-总费用-日.frm]]></ReportletName>
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
<C c="14" r="2" s="4">
<O t="DSColumn">
<Attributes dsName="指标5-社区团购" columnName="zzl"/>
<Condition class="com.fr.data.condition.ListCondition"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Result>
<![CDATA[$$$]]></Result>
<Parameters/>
</O>
<PrivilegeControl/>
<NameJavaScriptGroup>
<NameJavaScript name="社区团购-总费用">
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
</Parameters>
<TargetFrame>
<![CDATA[_blank_fs]]></TargetFrame>
<Features width="600" height="400"/>
<ReportletName showPI="true">
<![CDATA[/二级平台页面/社区团购-总费用-日.frm]]></ReportletName>
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
<C c="15" r="2" s="2">
<O>
<![CDATA[较上1日]]></O>
<PrivilegeControl/>
<NameJavaScriptGroup>
<NameJavaScript name="新媒体-总费用">
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
</Parameters>
<TargetFrame>
<![CDATA[_blank_fs]]></TargetFrame>
<Features width="600" height="400"/>
<ReportletName showPI="true">
<![CDATA[/二级平台页面/新媒体-总费用-日.frm]]></ReportletName>
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
<C c="16" r="2" s="3">
<O t="DSColumn">
<Attributes dsName="指标6-新媒体" columnName="zzl"/>
<Condition class="com.fr.data.condition.ListCondition"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Result>
<![CDATA[$$$]]></Result>
<Parameters/>
</O>
<PrivilegeControl/>
<NameJavaScriptGroup>
<NameJavaScript name="新媒体-总费用">
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
</Parameters>
<TargetFrame>
<![CDATA[_blank_fs]]></TargetFrame>
<Features width="600" height="400"/>
<ReportletName showPI="true">
<![CDATA[/二级平台页面/新媒体-总费用-日.frm]]></ReportletName>
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
<C c="17" r="2" s="4">
<O t="DSColumn">
<Attributes dsName="指标6-新媒体" columnName="zzl"/>
<Condition class="com.fr.data.condition.ListCondition"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Result>
<![CDATA[$$$]]></Result>
<Parameters/>
</O>
<PrivilegeControl/>
<NameJavaScriptGroup>
<NameJavaScript name="新媒体-总费用">
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
</Parameters>
<TargetFrame>
<![CDATA[_blank_fs]]></TargetFrame>
<Features width="600" height="400"/>
<ReportletName showPI="true">
<![CDATA[/二级平台页面/新媒体-总费用-日.frm]]></ReportletName>
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
<FRFont name="微软雅黑" style="1" size="120"/>
<Background name="NullBackground"/>
<Border>
<Top style="1" color="-5197648"/>
<Right style="1" color="-5197648"/>
</Border>
</Style>
<Style horizontal_alignment="0" imageLayout="1">
<Format class="com.fr.base.CoreDecimalFormat" roundingMode="6">
<![CDATA[#,##0.00]]></Format>
<FRFont name="微软雅黑" style="1" size="104"/>
<Background name="NullBackground"/>
<Border>
<Right style="1" color="-5197648"/>
</Border>
</Style>
<Style horizontal_alignment="4" imageLayout="1">
<FRFont name="微软雅黑" style="0" size="72"/>
<Background name="NullBackground"/>
<Border>
<Bottom style="1" color="-5197648"/>
</Border>
</Style>
<Style horizontal_alignment="4" imageLayout="1">
<Format class="com.fr.base.CoreDecimalFormat" roundingMode="6">
<![CDATA[#0.00%]]></Format>
<FRFont name="微软雅黑" style="0" size="72"/>
<Background name="NullBackground"/>
<Border>
<Bottom style="1" color="-5197648"/>
</Border>
</Style>
<Style horizontal_alignment="2" imageLayout="1">
<FRFont name="微软雅黑" style="0" size="72"/>
<Background name="NullBackground"/>
<Border>
<Bottom style="1" color="-5197648"/>
<Right style="1" color="-5197648"/>
</Border>
</Style>
</StyleList>
<heightRestrict heightrestrict="false"/>
<heightPercent heightpercent="0.75"/>
<IM>
<![CDATA[XLraRdr"hCW$7mVV0<Ld:oY_16q-$"\tF.3OX?XG#sh!F\cPd*KT66#dL"?uL8"eV2$a43+k
2/jA:r4?^NmT+ZbP1afftY1-b7^o;m,FIkBmnXA>%2k^rLEVbSb#`Ii^d;F+tHTjp[6o"Zko
nO(U*_T/e\;d<Tuo1cT,(Q[)3]AQc4g,K?G]A[]A:'6_"!5+"I7'g?p`b[m)KS3L#ir\3^>"Rdq
.U?VlI&;^.QD*J1+p9ZkJ3e5Tm;Ppe!T1QS#3HqW@8'"kBdOB"$KQU*`:2)b+/nADS':G!lu
+6WiE(-5YRbBi+a$PAFo"d-1pW%#8]Ad7Zi.Qf*$O^l:hnQpf%]A<KT!d<>@bDsOYsad'YIs!m
PBgQ99t:$Ri4g$X_%jhZnIc?MfBgHU`tSIpG>&e16RJJEXc+(n$a$Rb`j@CVShp7ia$H#lGJ
5JMc]Ad/9(YCD/1L>Lt,ARYL;4J/'2Ckdd2oC3iZsZTX(p_/)'./chCa<dbEHA.+\U#>:7MH7
DqfEpo+8O*.Z9/7T%L]AB0ke*]ACJ5_uT3[=4:L?fd8QF!V>''pr(b4P>4ErDR=4GJ@jLl^l*-
&*M>]A>28o;1Vq-#ECFI!L'qdq9r+[4MQRc>1#4OJo#j&6FVEA)FEg=b:P,&E-O&Aaq>87]AH:
PaLCdi7$ZL.dr^"AG*4+?aL:qZohM>nS!_=JcF<2`jqh-1b]A(j3;-!t`s]ABf/"Um,HH)X$R^
A'2d^U#JQ2\t3'TmDe6)Z`fZ"1!/^9;aIId5_'Mii1^@OF>K;;lbiGO*K/pc`V[,^DpPfs/-
#EIFRk35#/nV,Kr<Wqk-Am+qVKSi+@ec@F^<aa$$so+gX((2)5UUA6Ojq@Cga:o\b2T4Do.8
pc(QQ3#-r"bUf0c7GFrOYYjZtq0S,0[S3CXYQa/Y'1QNADPG#R@T6qG>#Rh0K6g(G($!k>L^
+7mUoHj&M74cu<I4HtA:Y^iSrm]A=mPsk-%2=SZp7`T!<TsQ=@HC*SXO>]AC8[Rlk!gN^XG,$/
TQg?oL!KuBb#A75hLJ)12R@'/K\R/C\&HNZsT5/jPmJ9eU,WL"!O3*D%]AmhWhI*Tn.VQa^:b
$sSVKL6oRIXKZTrm0QJ'b*dgt&!kOg/lQWIIG_MYDQiP(2'stm]A/"\*%DNajJAO5DH*pl)0j
t>5DqS(+#V-cpEQcKp3-N7Z/Rm@j]Ah_XF4sjV,G5V&B:)c)&>Yk6T!$@YNQ.5d0$gS7ZHK(S
8LY8L@iKK!F(mh&ocLXE/PulF,?a_gTN,Q"7fKh9/In[KQ<c)_^4H,*;PZn>TK!q/3"DA#qr
7$h0)qH880_Jq,QeI&J8M(4F[iJ.G2;F`dlrj1&&g\2W(^,jPDnR\?Z]AZJ8#ZOM<Q(#6tDuu
(A7n23NmEu3L'K#qEV)K6TE['Q(?<LV@EcN&C<lAIJRCKH'Dr?Wk+t,d[>*A1jU)+;H-5f<?
f'0qg8R(5;;_FP@"3I1XnrCUM"^kgRi1[9-KbGQY^*%4".I;ab\]APkogdg?HQ,-[iXh4F6S#
?m>j1Wst);AY>E'('qp!eC[ZL2+RX$KtWPS6YIgbu"F<^.'`^SI]A<gOB(`bJHK%bfg/,"$)E
^4OEuuG\-'39St$=F\)$S9qY(^e^X;[[P0`%YUS2\i^a%377F3G&;T92hSiW;YbHJta%;Y.q
lfNDM0Kf4`>=c-q)\`tP;0B+)7WUfE'CO%^<&#mVf@5eg=kU[agJ*WL<s-+Ddf>h5)&)aG5E
e^)2JC7bF(5,i'0Fj;=`dNAtfD0VsGok\%\T[J:H!YDKQTV"oUsGY:&'#CLFn[P.H!fqfNs\
?!HRkk)MP14:ZDC^&,Fo9ffY;N\E*';U)/SmgoGgb;`<LB?c61!N`q+9@Rqa[\";PigQ.h7G
sMAY_EN;!%3bWQAXfhT4'bp3%SEoNc%;;`>Ai_157/-Wi26*jM2.PTuE[bZ6)]A1TF2dZTkJ(
sj5Y]Ag(Y#p<j'_3?G>`dmS;k[,qDVJ]Aa,b_mDB$Jf939IWOViZ*d,RrTn]AV6thV!o-`dh0G_
BMS8r$s/8^8,_QfS[5c%RhngF-Cb+TE1Q?:gaXtZ?A%-B3!uM^Kis[:V92U]ACERpQT&)R]A$,
,fO9a/Hoq&,"Gl'D.M:/i6LN<hTFm:VnYUc-o)s-T)a(ruB?8r,-jd7Z'X"+"LkQO+5F[GQ>
2^`TY@@q+J?ujnblSkN^"Vl^6d@V>!H(<dhWHcORP>q.?8ht4DSQiKsXsK[/p^jp"Tbs#q96
V3E-8S7:nH]AnbD*+Ifl0U\8PZp"]A2n8tpKs8\n?A`Ung%E:'7c[*=N,JOKN,Hc@F't?*s#CR
#^9>\$INTjadd\SJnD)lJ?M)+M]AsW;-f``1Tm@A5m.8a/TUc9c_;+SaWmUD_58WQZPRH8e]A/
"PeQ;Q%G74RWm<0F^q8_@t7[cH-+RdtTHeEDjYqGsC]AL/"[]AVr=&KYPa;$fhGeFk7q@0tI#2
a\8_3BQdnQ`:EG2qC0F0dg(MH_p4<q&oU.)`/l3A!8&5jO-6ap,WR</XVI5K$2Fq=J%Pdq)p
07laeJ]AUAELd+$_rO<kh!VtKWDt27hMa!i=9j#We<dsOJ/]AY/O+S,Ue%[F3D`kc:RYq12q$?
;HjBd(qu8XXLo=h8N'H[`diA_^AMR?Rl'%mrR+Y50%g-?SecWPHH)b2WlCYJ!I(LmLpU?CJ;
]A>AoR]AT56_PhMA[UkoHk<R_[R!q+UE6Z,Cl+[DnKU1esU9[riM'LA&0\fC!L0NqtQ7kQZHjN
,/ePHV1KLDFsT,/W7O/O]A\H>khQk\%g&rE4KQ%X3mL$U2nY>*>OeeRmm2%1D0ZTPEMEp0k`g
rr`&3Q`i^;=b,mQ3R1YE:fP#A)P4GPWD@AI[$eW'B'>t5H-rDlL)9%NB.!J&V\7M.Q&K/7j;
I2g.e\GTSj@sH^J'3(s2#>pFa9]A<b2*<ssPgN+4[Dj$^jetA3<Zb>bi$8PtE-J4)anq6a)F_
37TQh6@gO2pO9?m0$KggiW?Psmd!m!ZQ[%j0^GAsQ9i-<6H]A6@?LrPr(RI7[Rm7?"UY5p[T1
rio]AH+]A[jV4UBpkppRA]AFAa=85pD507j]A[9iW&Z<+LbrC'o=Q:)-Zo'Ol`&U=pYCX/=hA4N&
hL8FMUl505$H5)5)K6n(U2687`>o^4[)60Xe7?pNe*/Vd6oh2.Dt9ZCnHWpB?.Qs.eZl[L63
\?G-<F&'4%aHNP.Q]AHD`BCZW!o`an&7F#4j4ps5i#IEtOs0d8@i2p+EM\<t>PE@RRMrXJDM2
ZCL8+lrt*$)-W_b%q,a[FbLps+A3V?QThp3M*_9E]A$rg.=IY#B'%#'s)#>;/[O*]Aj7-"&%g*
cfhr#oO+l6tn:SPEgT:fV70KQY/t3K'pA#EA:LG1?D*VoqSdJ!KsKk#qV$GDqbq7(/^K-qBo
Y)O,5Il+SYj:n+Ze@ZHdn+`;bQK9au[,<7kGT><e9L\k:B<HufMjj#:Z(")k2BT+O.H^3p6B
A"VY=rZ'PBVtq`F8!CE[4sGg',b;H&G\lK%\;SI7TAHZWu+Q;J'Dk]A0.N:BIh#L8D;,I7Lk?
]Ad,m:\f/7%:S;t_f!J#*o!&KTnXIabi+_Btss;B42f@83a8M(d8DXYqkOcc6^=G2W4-=\./>
*lNF,KXYHgC100oBs7P,I-aI4cQ3+0+[]A>KSo4(0VN1R3`R-uY=@N"FeJiJ>%m8-+n6m^`mF
"c/UHFY.S0RRsi%*7I_n$t+D7f.,CA]AJ4hY!%=%PT23B@Po*Ne/i54`GUoqiK[[ps_pJWTD`
>4ZC]AikUPb4_urUt7i8I-+u="I\\9\\B1@V8lo[X<.<s+s2aY*G\%E]A1&TXi6[+*`R^ELGWb
]A"5_!t67NI:&IEn&A+LdEb6Co*gHGXmrh]AhRQF9K/oZ?as[JJL;lVR[90U33&ZLGp1A'J(lc
:'4V`M&D\QYcVTd1%%W:R>pgA,p!,3emp;&kZ2R:a;4P]AO64r$!l^c\If3]A+QPS[asH*k(^e
2Z[(I)/YbIrlA!NP`6WLqAfEs`R$T`KGp(oM4I"uGD$D3*X?K0+P\$L2TsSRE)DrZXBInB.L
Fp(raE1%OO6hW*=R8]A8PPWoEk'ip%\mC,_BU&klLf,_Qo'94:4KAl]A"I"`UncHE.YKR\+Do$
)%egKWX+p?tnY5;-TpOBtb4p;pZHY>`XM"cse4&cmO,)`1p5lE+-E(l=5I19h%5*1m`8OQnE
O6%F/onEh!--A^_>sd[V[*NAG^=cd3-nbB9;XZB@Qho=_9E9eaBrFA8l)s8(>p@Ehcr@V=$D
2p^QB=3H]AuT:3^6MfVDR6i(]A,.$=.a@hXtsbU6)53\`k`!V2QL;G2SkaUUVAm>Lt`?Ehj2pi
Rbfa-N#O@37<1kQPRK&6Cs;`OkQ?)@T<u*8TaCm]A?gO)WqD[CcgpU:&^F^XVV;AsW(ghZg/O
\6oo!Uc$4r3DifF`m:I+3VEb\(aW=tR#Hh>foGEkTjD1eU.&nmJC3CVE'tEJqQ>DsU^D:o5/
u&ic*&S.GG6PZJtt3qKDp)m(=,9<e;i=b)RHoM"&IE)1OIHV7b)_1S;d]A9[is()m7W>1uo4G
j[J!QkT,K]A%oH^^.i,\6Y\;\MJ,>P>X.\VQi-<oh3Wj_0=O*DdAS-K:b?>;:.((%mPbkAN!o
l^,kt?h$7"_9eTSYK75]A?$]AZI4A>i0"&O+T;"`kO:g?.q3A`SJWB:?-:l-nE&D,mJ>K4\pjB
1[fs<Yk8a9[tr>bS7[/$^G!3@T-nj`d\r9[07@\*mfS07/@"'c5*41NV#-b-fn[=Bd>2rHn"
(\s9%J(e-e48i_%Cm.%[W'nh!$XROCF(*HSoMni>gsm`2`4oUU_VT:Ai%o2ioka\UlFfoJ9h
:eZR@?roJ)g6YPrEHd.Y6^c</?i"=p`Fj..UoSfn,Q)0h(8sKRS?YUD8S,?:k\34m8eh4s>*
&E#'O!jE/,BYd!W2:223YKDdWcA*Ke:\#,>['X(4K!\3W@W(g,qr48N1U?aQ_6'M8+T-;Bs;
?>[n#S(#Lm`ke$?\&O,a`;;h?%,$gF93B`;S=9Ad:18"7tSpC8#,pD.h'Ta>'Y2h,-4rfY(&
'tY5$gtu`QEEe8?4+'1A2`G<;DpgNCKJ`QB`g&h=/DS$tLbE&bWpB%X)LrbKp.YBo#,neXAW
PRd_\fts:_<RK\U)AaWT_"WKA.'shiVk;V*kB8GdeX(P<)ltf:$ie]A1rb+\V3=s-P"n3qrFE
aNT;"*dl"h[F(kCTQ:ihaLKctgTE[RM;Wc81j"e<[$?7ce7@@'!7p9._6oW*VkBL99WeOW]AO
+;J&`7n4:\_jJB6XRq\C+l&3"NWJGWJO5^d&2mBMis-iS<;89jW?i,&(a<?Xu/Q_KYid`F\;
1,%lKu6q099AZM=DnLbr-XaPjL!40rAfLg"$Hg0*Yl0(<?QK-nkdpR8Oa9c\/>Y#\p]A]AjeGf
dsCnGBQ!894BjGqTb,C4i8oLTpLIZI/_X/Sjf?qbAqD,u(^g:B#!H#&W;!bq:X"lnjQ?ted:
1MiAo@"=C[#8,3dJphl8I,+0jZE_Ye0PuD:_b*nqtB(K+>_lF+mhTnZZ$5d5uGeWlrQV45Up
*.n'9fc]A=@-TZ<u`2OP!pE*tc-LT4i6I'lj#5".5(A:=u+`_#9dpXkt'H[EG?<YoE8o07uG?
ftQfK0qO%6SOjb`1\DoifB@"ap+E3#t%-#YFeL,3Q8hW$BVp/<_Ic]AWbg:A\W//p+-We$g+f
gfPKIZ:8_jFS_;_,mVC04>-0i6\YU9YtRPDC4VUEiTQoGIlGDJR3^?N:=!eN[0;2C!I0@;pr
XKU>;U?N"]A>V.kl6YQMX!lf`q<l73aU]A8U,CQ@gUKc!j^n43q/q$fci:W5p6?+H2[lFL#m2A
?d;1Np3VPpHIn"ar:UG>=S1Qo-cjNV6!rDf?B]AK6a8g<&UTj^"_J"W5rVsgPr\"%L%e_HBbt
L^[fc`r6M]A\2#Td3$orm-0hNpb\(lf2)$t&"L`[jpfQ`r@Ddt*RjChUu"'n+a/P!N6DRcpPe
Eui!Mhh2i_uCK?bbciD/_H8I@N7UF\eGf48A>$&O7I090C<8mZ9>kN6HRh+_,>2G80h+[@9l
&t^\&^L-Dl?QBC(CO$0/:Gb%aBriIS*t\GZNp\YL.s0b&F7XmPltL#>:\'?,U;>MC(d]AIJY7
'.^T]AC3iUX2Ng]A!iIMsa>qXeM5abAD2I]AI4"Pho)T_!KI*fL6"ah5sr:nur,`1!`__5n^_4`
*;sB0s40)q&6[UK#ANJ#![RKM3ffh)[L3B]A;_O,KS`]Ab4:?aYq7t"*eoT;ok_I*KZCoNqurW
FDf>`VDiFZAYs3OGpMAsT4lXr(j3odaD5!>ZguLT]A0pS-hq5nS>Q<NkdZ+R`:3.]A#@n*qTB?
+E20r*J:55J/pQFYp1QX1'0cr.d9i<JK0\^G\'M%n0KWTMo`>"6UMZU)1+,Ig?NW+!QC-F[/
GM4b"tL^&i!5^$*"Y(A#,M8=:H^C70/?;7VbL7^"67+=)CiLJ>I?D@U,[d7*VFF'gR5M'-g=
WW#G%l+GhMTIAfjNRMk'aZAO=9hG_BHes8G%uehQag$\T;KrqD7k\JJ?+,eW3Ilo27&5SgG'
:qQM4ncu'10Oqaa+3q0$qVa?m'90,W.5k]A?-N[2LGm)LK<_UNRoVj&p>S(+OC8Y9[!ko&W"X
-UkJ(s?9A$td0="fYNtoYI8MNIM(/oN&AWcDcjLdi`cho@6m39enJ@CP)##D7I^*`UC7u\^`
N)#,RYIF$[ga>s7p(k>`tZ,!=kVfMO4;2HP(^q`mZ7?GXK'<R.Gn3.Y\^Md2#3`m.dS\THh2
H;<r<3iDf&GXVtWR:]A9/D/<\i]A&V%=Z]AY+"RYLsPiCRCc'RPL?*`f5LF8q+qG^.JrP_VRr3N
=8JG?(p[n$\Bj4)2j8rjHf#:pQa\H3%+!?#-&JgdC3gGNgl7mXY_&Z;oe[O*qlA.k?%D8mQu
"&QPI!&kTuq('*V:aiGfXBu'H_EA]AM6)i9Qi33^FJ4jl_aDe$leE"]A^(gH`<cYSK[sAO$^g9
;/^&UWihfe&)r6fXeqSn?_LDhSP0\-_hLgWQ7a,s'B<V6mY-).R_`#$'CD.cPaprW`(odfX>
*G<fhtk4=.N6e@hYTu'<oJ>;oNXiiGCCVR3S_9YEJ]A&ub,@W:@MH+hDO5tb5A*;Xj7_/GP^)
f.ci`6SNO67f8p(N5_f>\hLh8949=3ud_k4?Qj?a*;:gJ1%?sCn>hA-o_G3Agn<rUXLmqt;Z
%gWX1H6$/7$1t@Q]Aqe]AE5:DH>%j[a4SFW7[A^g$@WOTtr^uV(1UKM5)lCOriLa=PJ"5`lg%V
3Y$d#+s8.]AUb8T-R6YRG\18m(;\LC>OS%\Ue#fH'rl*!`WmPNc9i\/SB*XiA+FZH*7V@'n:"
N3f`^?lJ/o7$?;0M89s\8ksL@.FQ".kYqmpje$]AbW4;5OgAMdVueX#">(6kQ4>.]AITIS3dYg
[!QVQ/JZJIf.OrD#OBJ!4g?n\lDnN))^&@$0\GbPhnfshu*Pm";u3X_8?V8&=u[6qh7LRE5:
\57^=DjV;AWO,_b1uDs&q[q61h`%_;rV9qr;A$&,[`gKhh_"jMg11r_j:;_IT[0]A@qB@kG>:
cH,U]A%ct($aa5,kW5PM=Z?BEr;6`RWq\PL!AHkr0CAH/VNOXJZAXq.-WmKpe6:)XZ9)Vs>Ui
4,jWkMl-'smPInfdSF-i_&Va-nUEPg\NFo55mIs&$qR*bLcp\@-m3DPAKA+cQP(AG\/^61lD
LJ52Ee:s!p'@NNb"GZlo9?Kj8`6<344JeZIB_Db-8AZh0am3=[(Ucit!GF]AJpp'aM-\43>"&
iY"]AmX#"Qj`i`l.?I[&bBA(d"%I<=\)`oo%n%aOY"Nq6P7b`l=!<l:6?O8tD!r1`<D%P)LYp
s)(CtTlW62+4,8j%gq+1?nIThG\go(HL,-7/EIcppdYgcM`Pu)DqqntrU_JQu4]A^iO=H^V1#
-)I;,LTM@hmKYDOoIE=2UU,5u`rh>h7FG]A0JJO%g=U[ks'D5pHR!qKumZ'0LVH@6.a6gB$_1
G"e::[j0)()YdB^.XnJZ1ZHVU<6_6aW2OfBmCo[dK.Ae:FsQ@d1F>V&kVo!hO,D8LXB,L^7<
`V$#(`#C;"lle:Y>$(&Pq7.pJm,oiPdnZ[ac@,Ot2=3p5GT8]A@`W?73/+!0nI6'Z,9WE^MET
ST6oI&_&KbHF(c>mLe"@l7*+0Gn_=%qUUkG;:kE(S3``j/;gc"g\+9GA$#^dr.suO@CglM!G
^l=7"9'q1tB)=e'SNG<akS6_nSMRQ]AH1nIFOIilh.:`&m%L\L2VLBQFO$;h'9r@G;Xe+*B(F
4&>jr6,R+39&-Ed7(%Y6f1WbH#b/Z>dQDh6nEVlb!5`Y1O5.Yb<:.Q\-KtuJ"8dr.Z1UJuVf
`T)\!3oun[:l[d[ij+S;^A]A*P&qO=-^;FUU0krmQ^\UbFjm9Yn[EqFPMjl"%kq1R'65[:lf_
c7^fnoL,pr#3erS6pt[p^U3QBjIAhG&"E_'7SKartj.$(F6/XKu=3[Du<V/ojo6M3@*k`Z29
He#IVKbf-12UZgi92U)GtFCVN(qC[@deVk`&jQ'^NM9`h?(0%7&hL,atE(q?ZJf0"Gk(6%V]A
IQV!t-JO.kQ/BojmH5VtH_/"YBq/=5j1?m<Ol(2JX\WTtC4PK\as:'1P@o23Kl9SJu12<g[F
o.?tDC!Pa@jTdR3WXPrK7spNCnV#[>*GYn&Xi;0@!QStAS</ptSIQR[L[O/pk^G.W=Q.;?L3
4;_1MZ(&"15*=T6a(&4H,Cq1AJ#ASqSUHj9A_j\t.;e!E>`lrCJ=5plD.\AM_1I+bgI+M`XX
&$N(a8QX''@[@;GE*&FPtlPD\UC?L!eC<]A0^1&$#+gP,[Na!Pao)(0LorHrP8S5Ea5X%qpH\
lo2Wa./DI]AYUu(@71rV1aR.?01P4dg4%e'4=N`^S/n:,)lo1s-Pj@PB]A5A.%/2&^W:E_XYE(
8kag:F#E(5^>@"5-sj[C..c;pab*,_HXh2/oFVu'A=eUEXE!qM?0(Q8N!F9h2bO/4+03dc;7
8]AgT%0b32069,03.cXQhMhB:Q8+g-G#"G^DWUMT<?P:]AYleg=n?2-oY?BBX]ASc>=VVkJq.4a
IR"cUEpgKdm2[s'tU!DT?HZ]A`(Ir^ZdD7Mo9oQ3t=d8F'`2l+7-bZ)nb"WI,jsNhthDt2TM+
NU*V9!p7Ui-J^E_D8^r`L`'OF:LkDfdb!;^Hm1(Z"*3La\gn[+NrVs56%9,AULZV:)\kMuPQ
,m!O0\\2_+DlY4OU/A.Tt.GT$'WKZg!F)%bfE-Rmr*dL..%V_&R.'Kg-&<q8;(8(n-#AWf9b
nt^i=uL318c^au;kkp^E'_m,8/VhB>h_;EXPuIu)%M-@+<7O:Qm1iBdq"'a>_>59`Tfp/Zs*
`;P=+BRN-5enq=9Lau9qC6qd0kZBRLj6lAbDfrqc<)@C#9OttW:H89koGCuNhg#;<Idej*eV
nU=cee-PpP()[O$qSKI5<`!#3lFX(N_+tYE+M*U3=H0,2K^-o,N)gIa9T:f&*)!')"BR??WR
T8`!aA!IDfCi$g5[3D=NFU0A-4+G7Jm@<J0?HB?1p<Hrs>=>^!6^<d0ThWcfGFdcALV6Y>L;
\!YMOCTNO>L2PleR-H-TLq\2<pRk5V"NRI53[gbps0cuNaPM@]AfiR]Aohq12AlY0L57gG]A%"5
Xt!Ad^2W`oc/gSc>*9uaJsSK+37-bIiIMp5(a9#.'B8(?G):<t%T$@4*%172q\@uA(&6Nh7d
P0%a&4\50VfA2RJIbf+f&-DMY8C)c\IcUPJ9&T;A,[r%DWtq>77Ve9u]A-AhZ]AA/84CAiGt']A
d\p:!N^s>G`Z;QRd'[/(f42VF)0m11cf\<X(?.(IL'X237(PY"L<i.]A=0n&P25!YS1$uW0m3
Y;W=_`e('J,NjkUGj-P\Epq;HKPCZPHVOZZQ-tT.=f#kel%6GQ@-fS^rUEL7YO!<BeFR2_XL
d`%nT\`d92llgNPUES.8R$22R4)/&I&$.NAQ`TM\6CGJaKRk@<2S]A&'+;869bJ_W*0q<),f@
=*_2eWDV'p4HmR`n:mC^Jq5RN0'P2)-`fC2ES<08l@aC4c6)d\qOg9s2WZ.-W:A\%hS^F<i"
71A"\O"EAE?+R@;.=:?k0s_eEjrj7[@i"I+9OgC]ABHlgR_LC.O-p"XJ?_-j/PQKuI"?igUI^
d6sSpFiZ2'4XAR@g)Q=1mS5!?!RmP8jhG$Q3c#!,H;f?T:0Zbk^`1LQFjmd.$!fA=c#ZFKNO
G73bI[Q4[%Oq%+ig!#"F0>DVt=h?\ms([Fn,\*V%W,?Y'B2VedUEihQWIWU0ad,j-h^2=9lh
F6t.S5B'!):j3:NtQiAXfJYqp+J35\[Qg"A#D=V.!.$l?PrqeXIe5arjf!HC,FFIZ=`hU:$,
-qpL6/Yn<JKM_I8WbF^BaU,-t?UBa8\ed*fA#BFFH%TjAn]AEdTp%QNH`jjb@tPP6g3?FABl]A
%9-<`W1mr`44D?J^'cZi9-XCDTD_8OegYR21Mo-P$bNh@\Di))@`p0dde6%;(haqX`_=*:)!
@FhG,cE@otRkAiC%u+SoeshbcAEIOhKM&9$DA%c6.P;(ZNG&7+*BHYceLV@#([6`j,X"ZV?Z
6[u""LP[:FoqnZlT7a=IVG4<_5al7AklPCd5I_S`?C%!@X9-BRA\OLj5VcDoA06q6%E6JoLn
',YT2nEMQEP%r:8n`.bm?K6($?,>g.S[(clJ4oV(l*D&BF2<FiDLMb(u]A4N/?*_u:5IB/L3k
OQVId(<ejWj@p%7d9S'EkqASPu4+g4f[IeBDRlG$'^0>nHiEI#b5D$heP4NDH_TNU/9<j>&]A
B6eb,*m:mbm*)iRr6JBPBA>#ZQEFZ4QhoG8[M^l;hED&lp&@:hfH[DEAA=LqeAOK%Bg:u,']A
oP"3b@@V9NiQ&,TS:O#fhiSM]AW9/r%sFY%mTUK59$P2c:qNRIh4q>A4!b2,0E^TYV"n]A=1\O
i^Yu)S+`^-\-P8gH6;[L@R51dC;NPa5:7uS$rYW)@EBYGsppM6C]A#1F#>7GuA]AA-$pT%@@UW
04O(`"-D&5EI7:]A-s8rS`#pJ!&)I/6N;:1Yk<.]Ak.]A2t]Al7HkHnlKm&Ma(UL''eBi*jPHiNj
msgdFH3"5qPXce15FrE_t#Z"gC\r9CSk7ur8n8.IrOZ!,qB$sDY^ctR53D]A!'C!iargMhe^b
,F>aWPo$#s:FF=BY8)Y8O%49L!2Z"1&t"Q*h&_Hu/SAZ7j2oWb>?h"e4Q-L:MK\0%]A^`GS2a
ii]A(Qc.fP1r(c_QHe-MC\em;GdKqZLt'G?osXURn*;r*DZ*NW+ll^1M#DR;;tF9`PJZ_/`X(
r;S31\qVs(UgbDY4X4s_(G.#XoB7#&EYiE7g]AX8JLRp#\%=)fb"=COFW`mk7!K,?U&k+bK-!
W2[/_Gep!f/_IOH)ml`XSm;OgUdS(YF2uSQ#Nj2<_8jWilpN-XF)n*G8m]AA`[>HN[3dfULMk
V&j`m.oel9%'Z%aQ[<L6N35-5uaeSs[;@<dkbb@ibk^^H-G'",SD8MS$%;>7[Sdb@)c:.jZ/
+8ndX1$DP#g#=1Cjddk:+YM5!Le\68/A8h/aBY+%6"g#+PcT"H?-M-.rB<*1b?^R.GuAHUnZ
hs!'fUur`4_<e<I2HcCR?cEU0'l/[MAldH5=.J_.C=fmTo0jX?Z%H,K".QZU"d1]AB/VYl1JD
'%jR@0\fO5]AoH!&I15MNCHe6Xu4M8e]AEj)fD[pD37;oQ2rL<64iq1'%S$<[VOX#;nsB#09oW
GS(8am]A(l)ZmJ`M=<:-fSKA6n[qY4kBslu8*m3?M4'bh9EQ+0aDe<YD)1U`EI,G=i&P=E6Mo
=@n'65Ln0Sidbs;0E^Tf85Z2Z^s`591U0WW"<OoL9q=]A*-j(Ki-%oX:;c`eDIno@1_TSl$u0
R[bTS8HMu0FrJG=)P<8HQ%/f&=D(A:-<h41>$o##fmN1![sV%`%mkqX<S%#0Vt\oaFn+:aDs
HoQj["1p/#0:bbmH45#]AJ-!"YUM9au[_.k0_]A2]AeUPW3Us4t^<US)^AFXU:hI/+#O;T:VDss
>1Pm'\g]AGlC'G!,'4cn/r]AnfuW5_:E3<Gd54!Y\?!5*s_:K_)8>dgQ/3%`$K)DigQQZAc4d_
2HNuGlZY&AY0EP^K@`WjECT86S?ZK2n7E`%=T`.=h@[u6s037d4N(n'kblGF*f2H<Vet-okb
R05"11$Ndd%gdXqd3/gHWcK!<VZ-Ud;f,[tI:nG7l]A*(3A,:M>(fb;.Ih-/%L[!FK27<rL+'
5R6C(EV9'ICIDd,%F%L_WWXG"^@*4q&S?UI_[\XNOstcc"uLII+T(r">7Tl_L_69IRSJ/\j_
I!LM^>>t"?rC455\]A[<,7&4;CqS0d@GRAE9B]A<Q?'p6.sBm2#ZfidU/%uMYG)Kc7V;`mltUi
-eI+jF++7Fu.5I=c<;G<Ta.OEaE$d-+A*!UNhWS9'S)ZV#6Y98;.]A/EL(rqWST!d.RCJ&+]A[
<fDOK:Ol[Z!aPp'7gMV[Fr>C,fqgAU-j46ChY-/=rgaq!O5'LB`aJ:h.=u8\.5[e]AFVim%6r
b.F$&QrajA#*kbEn]AI[,Dm3PZk2mJQV,rk'd2W+Gi'I)_91c&_%TF/QD3_"%%[Xn7m)3Xi%l
ao(fa/$qkDHMbYm\.^kdPfHp=ZL@H!q%1+Q)e:uOBV;Y;]ATAX)'f.(rg>LL`lS/[L%00;Pk#
m2R[@9?.[a!M#@5YW3TVRV#DYM;^^p&s*-h4FjW[+'\*Xr?dN^)M_JIRM8D6no8b:C/P,!"#
NK*bQSr1D4E^ro2/IEX?^W7u<+"("W><.VoiralLsYY'pZp;gfpCr"3,r-aj^ZdeAZR7Cjep
jBHjnG9>P0+_Fpoq^j:6L?1S^&aiSlO5@7"4,c?f"Jq1bSGY,;:Tu4l,Kd[-qUFM"#thmba=
.FknGt/(Df^BC.E>2$V.-6X"A)n</WhqJ:UR8p!;*fd@nsTk&YAXaI?[rk^YCS8+Eh'94i`]A
:+12,nYZI`$@=)3cNsOEnS2AM%D3@@F-<ZBKXb!K4]A(fUgfrk9e*3Ib3i,QVM7Kt(Q(_DF`<
H7;*<4.7ob&WkOS:+@_oG_s+m?q(K?#R9*%j>B%ka1d'Y0!Y2sr,h>95Wfln?$'Vp3:kb#nN
nR/_<n)';uP9#4P4C=Q/;;t[`W<t6IMee($:;be`?`)le4+):GG>9T\jS\b.-g>Ifa-Li!6A
aD[DJUVZ72*#*:^UYa/"'UUWC[gc[ngWS_?1eo4otlarAi+`9_QOXACDa[.9V3ZaB7h)9^+s
o"!q\9h/c$U?lq&"c!4g"@76S+E\I,>P:jc0+JVHtYqb34>@\^N.3729Eh79e`\Y%L%RhVH9
q&&8;p,j$=b7"9$]Ae136dmdbHqtf1,*`5.j"mPV-g3fh`a>]AW<iD;$nHrtY">1*"ah75$:=1
WYt;#7Q7DN/IN+*q>tpPT!&DaBf1p.Z*I2sNE%:W(h;58Ei\OOdsN:1`[7UQQh[d2*i&<!As
o^@P)$$<Ncmpi_M!D^rgti)&F!:H,?4+'0G/O/8l"%*upP+WJhU\']AO9h5*F9)Tmr0+hjq14
R#2(8&\7EqnknkVp!r@s+o"4XmU,.6h+^NRFkl&2Bm9Z4>+.e-=i_>YQnUt;$YJ]AnYsR>8[<
Zj)X/QldmogF8oS"+$7ED'I&ojgcG1;[Y_XWk<i%EMB^.n+KMXm4o;?b\`ps,$!uiVF*(F%t
:j$4nqLb<h<QgNd68)A+^t*ZEOI/A3S1@N(MqU[&3C7Jj;r=P:h7AnRaUn-Rf[oQ;:PJ8<2s
;:7N]AaU!IjW9KHIHA6KG%sLQ;LLDI2;,ZUase7ELn*V#q@l)8lNZ[WB1aLWqKb6<a7ST!V5V
c*Qd,op.>juki&Z0@%;gBe%=5^$3[5J0S%[M84h/Q$qPCGnV%>fdpD[i*ZHf'iRK5MIRk)$"
]A^8PNjs.E-r&=6c643QrNEMqSbD76Zgl96QIsrH;qD@_kUablCS2`iLit/.R2;#(=+`fh=5E
%\aUdUP#GT[L*I)3\Rh7f=pRJCPqL>]A2Km`:5I\:.DH75o+_!`(Ig1.Y0W""6g\`*<kl&=aB
;JFMh0?)9_hD+%cM1V_9np0tGf%%_8AY?KK0ZU"4bbqbZAhahTd+%P=MdBt)2gNSIg[Sa#/@
ILudIFJuJg^-2;@?L,e16"AX,&$o7:;Z\m/[=Oa_m_uL7MHDS*MYnf#04CLirhD_e%cq(TUU
@QTidjkX2/f'TW.!qFiO0K:b_KQ6*u%I9&>)9$;i%l"Y-PniJTH=muRb=Lp-L?dclqWr<3;f
/Ym^NIHWOH-g<c^`s,UlH0jH[[UmD',-@sH0OI"3n2)ed@5`$]A45*Pbl+PUg]Ao8`lh1i8>h[
<g92A<?f9Xk>^*)b6BGq_cIC+sJC,N>mC"Ib1,ek_pcH9m%*r1Sal$f,8Ki4dM=P-@1aKe1X
N>S3!1MR1OdFUJ5$fqUB::p.U).W>OSSk/5E@fM`#e(s0Jsn.?,*X3k]A2!Z0fUO>,6G`4u!(
BhomX@d-IWf$&78B=f`hfgCdCcL6@/g7R[08VoLa;&1;#foH>@Gt^AV*q2^LuE'%!6U>.[C\
C>^+F*I`3U;gB!t8@oqm2+'Nn6;<VFB<[mCA>KJ6QWjV(r]A5MU!OK%=;?Gc*Ie"IEr/4u\2p
F`W@XV%NB/&At-BA?VJ!$[dGgpdIQ#p828"5HHZOXXg74o5:+iVqJhl>.F<9]A6RYA0m%@27C
,MA^j9GWZ=t)kXl`R4Zkapn<UL=@9FaHG:WQrpds8n/rB!i>FA@fS"t=W?R`XB>#C<(k/Nhk
mAnKs'p#>%X9".:Du(WuYm#$9RsA";YYjO--")\8$YihhH9l/'6LId.NfE`.rDCDZ)Y>R6^e
J`_m4B;3cbg5O6`t[h0d-kmSKrV=Ih:1+eYo..p0]AfApPimG?iQ!m$^+i,R)PbZQO[M,YZqa
g2TnHT5?'tN>M&'lT-3'_KHi+t_Y3EKXiB9_)&ho[8$LA"D0!B.N:b2@LJL?J,U>3sB=40uN
,C6AKrUCDbF0TH@@p8!?>+m_\tE6o*]A_#ehsM_\="*idr6lY]AI!u?8[&>@DRhF6RZ*@:\V2X
X0WHSGhKm,p$]AW7'S/dCH<\aCNALLl12L5B>s"[&dTGs\<eCEG=7+3G#VVOb)!itjKgkWD&q
DKA3)XeWA:%2!_+TVP]AK@ua1USdM5q53P3ITN))L[4.4^qJa'B&$@K<]Aj7nhPudD3A)fSROR
LgjZV+)R*lIa:lIX"$c!0Njd2#>IbU@)sNJt8$lsG&9[4WQ6'd&@<fVcgU1PB(j\.BroSP[B
JEdXr=ED%cnFF!>kVHC'A40MCYaP,N^iC8Mon$!_QjBYT[#/LNq&K?-6'/FP:KLWT'Sm*pAQ
q"]ApYc83Rrp2:kXG=WO2E*8YGl%8qMaPWi'tms0X3.)sR,0`Yn,*QKLWuVT>Ypt27P$?C3Dg
B7pV^J5[B?.QLMK%Yo.G_dOnG9OahdATp/mmIjqY1AhYctg:bC4no<V9r9k0RcCe3`Y%onID
$]Ar&]AYAHSQ:'KWXKgf!A]AEGdV,YhlrN,mQPI%tMc!F9*"LF]AIH"BB6jAc6>VI<bSo4oZ:Qm6
;V'Y<h4T!k/:i2)dFAo`D6"U;i)i_q#2[Ak!,cDl1VkE*Ln]AGWj1^iWN&C#]AOY<]A/GKY#MZ4
MI\8[;$C\0!6;;XpC_OM]AQu`<*>?tCC"F?iVQ5\fZKtG*3au6o4#]A,TDQjQbi.caZpY/1on&
FI"g]A@:1(.PPRi<H`<ATO#K#<:gR#Flo&A^n-g09f:@'V@!ELls&ebGG^XgP9ZsmXV&usF#e
4O;5Xj[AI?996<[-+E1DYXU*o)[.5Dn]A$sU/OOT)!;3:PJFr7..s7&;I?<_9Fjj15i2KQ7!j
;V2M,q^L^d7H:Y$p>4H"C4.HQP"El1'NI3sAUgaR)Bu*TH7h!aJir>3SZ60Zdmi!?f1Zm9"l
;3f`'OnD(T<2S(=>,W_L#+%jM_FQ01-fC:(M8ih:8LoouL^d>@['3+>sWmf9#s65V/Y+#8%[
plF"`X2%9=f$>Nu$7'#<e@5fFMG_hH(6@>H%fK$MgqibgS;X!?;lVYMLejKRC!p2<5@Cf-J1
OCRKj`eU_Uf5mXh"\!d[*+p(APTe/)$Rf%\4gis)*%FKg'5(+^j83TC+.p"hBJX'OG9')a&&
iKgRSJ_HcA'<pa=I-P0g,>^&2g.Q0l'@K?qeZg'F_W5$obZg';j;+%.UWI7h6>muiW-?9,5X
MbF)FXM/_C8[-qrf>m!ASSq`o4Un[m96ftu9t?a2ZWh8_pHI\3/\bb)=a^)9_g>ol^N^`71m
phJK*F#%`6rWnqcl9;fI.Zk13%PU.JWET>be&E$6\G>`Vj)M/iEBWTNR7nNpu,=(9aSEZo5C
`K6gf]A3V^#OlY9d9&'DKb5<T9l3u#)kphRt)gXMkq?=kh0j#C(V2%!P$hs)b*_k)dQ:,%LQA
d[kq7A]A`Y^D9D]AG/.I?dh-;;3P]Aj5_LG-5!Sh<uFJn.Od0=cG']A^M0b<5bQO/`'nri[%UNRP
$Ph?\O<mA;7u\Hf!@1Tpfo9bq>!M8Q1[7dtgdOSRkOj_0Uq&?fI7$J8U<j1.Z`htt;IBoChT
H40s8K"ARgI0#ZNY'aHjIOXo"im*d";Z'hGBeT4KWQRFq]AA3gtB9-O=23cq09/W:RZIV<"H6
.C/mLHn1hUb^s<<=s4Pi41*_EROdE%@A"aa.rGF+&2`JaW^5qK1'ud@V7foAa<GL]AhffRrop
kN*hnM\sH^`VFH5TTiA'c:KoDtMhN1f:J^t6`7fW)()ldBKN6U,8d@*_`FY"/c+,J:2+V+P_
1$J%lL-'IFWtsdAl8t&AahNVZMUM[%KkN8N<dd0au!G!_cXLrNl(&6,7U&f"A/IO\p)-4='O
FuT*gOChlEo:9eu3WHkRLd?90G=']A"M!"7f@%<eYdPkaiP+d=@q`K=jhT26*>s.a=q1_KL9o
S<JB&@3jUWaF`4r)3D2()s-?sn(I))BmE'R8e$,Ddhlghka\_X82*7F3iNO&5!-F'r]ASc[+a
E!Hg@@#XCO)[8+)C(g4.H1sS^3fk_h<,bCCSr1-O6H*$:SY4q`/S[HMk*pp"KE32D%oU96pr
`J)A"aVqkoBqi9FFD>XIZf!f3o)(9)=@DHMBj+Md]AhcXCc"]A+-=dodGoAX0X\2)K[2[Pm'jd
2IUa]Ag0=K!B[NMJG'lkeY@UreBbbcT^EIn^K8!HedU&tA?)s<j]A$l@+[5uSk+qFW]A$;O>_d:
i:!gf4q1Pj"SEQlZBl^.rSk,qq@<!DH&E]A941I6+\2d;h`B3i?!)iZ0>5#8hX7b0GX%d0k>1
G##J*G.j]AUm_ZuFc*jO9Q[qMPTir%Kg4P)ZPqh_/""3FU9%u2FdLZpP6biF3JD5W6U$6bbp)
pH&KjON"Mu@q,4YHAZ"5LHQWD)3g)CYGL<m6#"h;..+1l_#[[Kq)YfbNjh7NWpG;F1[<.@gX
``A63j?DD8>lUht*q@sn=P`5M8G?Z\XEDC9Dj2m"l`;hMua02cI-abZ^9c*Zd=jo71\L/!D1
tUtL<Z#-#$-i6IdR=U,+,<Clr)+6^IpDns5p'RV-WPs1fS7d2Zd4;27A\02?>V+"&?lZT)\4
"WlDt<lAMChLFA*[C8/&6PWV%0?igpTdcZE.A1^hC(3K$8Tn:uErQrF=@eG2_.UL3*Plm\(a
p2[,Gr8"-6D2)O?;]A.ci3K$`=m#Pm4Ucr=;B*@*pAK6BXrbgc/^1nQjP1kQ@5Nkq"USH)fPX
U&<9Co'[_68YhC(>8GnrCZbZHk8@Q>ZKKj*:[`B0Qi5ohModBc$@T_I#rY&LL"Qk6eY8@[^5
,L9L69q:^Hj*&LKnhO",20b)_R4MWM#Q"32t?dch(E0kP6d[:YV@iX.=!,K*ZC4-+5QYVi]Ap
fstr8+BCBgQp4qcpe!KndUT^%sbZt*V$@JZtVi$5Djc"U>'oP3Bd0uO*;UY.TicYX>ll5hP<
5]A8,Z8:&)(c1Ns>iO;j<]AmY)>d-;$H;7Si0hU38ZDaEc[#"dc0n(_.W3%mi@.l1PR9lWIjrn
8%L8!"5G,_%bc'Z,!3:(W<G"T!aLO#p_!m9^WA<@GUB?2rc)UH%_A-*S[$s]AkRo7(PKSJ([<
FqY'.*3/A;YPC[-F5t/1^#b8PWfo]A$Rd-S*F>+iaE^%Z0PV,cOP+I4BHRgHJ,h"]Ag)Ggma;u
BP&3NXaa;'P^(-rO(/-mK<i47]Ak,!,TdJ^Tndj&V6VDZrK;>I>*D$pDOTpFfJlmn"qVj0blQ
72CY)8:AX/"M=*+1]AhHqW7Uo3;27p="aL7!b0n5-gKjA$J"(ejRhr79X&>Ue(=?P\c.(/O<"
.!H^)'1,%O]A.iXYU7k;.<DrW0':L;W2W=`H^O`ZpT/41%/,!hkY^kFQ=JTfI%-Etm=4jDZrt
4)j>q^4QZ+hdoMRFkP6\d-W.gSC=s6W1Uf=5SkN(n6a"CB`4!eo_U2/A&$^*0&!k?bqR<m_A
#B&VCKc4:h9M%_uQngcQCK_=tFpmM4^jur6<E4D8Ng^Bt$N\WDc@ir\bqcQ&mM&:YpRK797X
>:5Zs4V_DAb'Ru6\ko/13Q:0]A=mD[lL?"qM$SrmJe5p@ZedU\6^T8c>+npY.N$:GV9[%GLKE
K,u#19"a5WkQL_266(]ANO2asV+eFm$\ni(NhDOHm,+7dc&O^@nND?<D/nPi)`@Z)hXp2qqG]A
HCpS:F@ASF:^`#WGX,+Z&/d9$KX5\g(H?*nP\2C+Thg5*[n\L'f*jLnQ/DCC>/.W!VDX$53c
=bB`5!D^?dff!U0L=pgKhpk>HLu(pr^#f)b[2eRJNSopB#`EA'l0EJ+%h:;o4#[_kVcYAQ'G
E6'P>Ss]AA&]A[1Cj;`8j\XIOO*HSFHnJgVa'2DHRK9]A6%`4XG:3NJ<$gLeUk!'V&E+*S,eSs@
2$hd]A]A(Wr@?9s2(h9Z[]AB\:a=bW**R%<EV&?n[7\Xbco;H&+eBc!0>-&OkfK)Zn$bN1DB>6'
dPF]ADG-<t<=6K[Zh6"coNbW`>EsUH,h_A`]AMk;h4B3d)`9VDKjR2[XY!&\lLBf#F"o-^]A@9`
rUfJlc1ZJNTk$PAI<DU.=Ci3FTQgR,=PK,qV11@^T#3uRXkDmneI50H-*.p4*sf)rL+.Y\dV
X^j>K&op,*^+q@SQ[h+j?d%RucZN?t;BoHDm2_.D$r<Yka&a!GK/dY>.F-u`f4]AreRm6co+?
I!l=N3(aX*VgZo;b'GD"mX'^9c(bLE3D.9k2=W;Q##\bhi9NO@[-V`bZjRb.O")!;YtsBE\'
*]A@:mJS$G&$"-sZBDj$(g&W]A4Fc3B`uB<-C!)8VrUb(8ch5R7jmELQ^`GHtE]AV$[tO2]A,J:m
BN,+@bQLK1p!".X84C8]A*=WmGO!JjK-(4X[-]A^M\G$fDkbMWN'0HXtl?=2EG=B+jes=9=A+i
JSd:+\:qEjaU-D[>1F4,?&pP_m;&"oi,eMj01A*6V-06.*.#I!=na/$4;"CUeoci(Vg\:@gc
Si'=DgI:b"bn+C+';%,+e!6[7%IpIS&jSL@D+^<)\(?GVq2mE+Q5VY6m#=%<&+<n*8As8$#d
9Rq^aX%CV7j@UfVWl*s67UU(",iG7/46BOtao[IqL-2UAq[8In8YM'F9VLc79EEMhLBhq&'`
]Ahk^.E<G`@p9J$&?D$5O'6b9Y[o%P6ec^GToo:Z]AZ"IVFk_;G61p&i_PZ>QiG2g)dB$q=fs?
aE/tMhBmaf::"`>5TDm2'm6)0VtK3K"A:21B(Y;nT9n517!f@BtmY:I\q3R2L#plS^1T[?FV
-(+9_QD'mnCs^XOR<_AL2E).PYAbp*(S'p^0k!4X-[O8p^qfDq#Z@;s]A5IM$=P]A?^9dd'7%8
`u6Q*?dCrkqr"YCnAUKcSbr1&*CAqP`Z=<PrGe2J"e*3!nn6]AfDQfkUOJP2\]A%sRj[6[:B2>
e*W<r&K1Pc;$$P<c>)7N?HC*JsT\9OIC<lr0S&2aGMW\G,uZQk3f+""Qe_M0ZuFX0@(%6:Nr
/V+$%EbKSl?CC(0sWY]A+!_@_rd0`aW-!B`;,ZR`VW$^7nniYH=eTOd]AN_bcR%X89R,'C$C9q
me:\n-K$UU^5tG[&]ATa.#.4te:l*.-I2ji4FnSLe-hjPfb69ACFPm#W>+P`/Wp>\hh7l+-WL
Vu[$+s9:Oct@GH$*4T`&stA4SI;]Agd#G@U8:Shb$.o;\0_H_)ROhHXDe3T7rlJ-fm/SCqS^<
U%8\[>fGGE%aE0Bb;HDgAj^Kdg@8Mj]A-.N;fH8S>3!n957%i/'k3LEeZodt-p$F_n*;hPok"
-5g#EDSApd$]A#aVAMj(^,d1oX10pc*lkYX@&=`!'-U;U!!C\]AO)!o3/]AU$7YJD:m)KD,rRb6
?9;]AL2@GM"+lnZh$=63Ks-/:Go6[ZYadlDueJ:Qkmld4+1*(U18F@Iu_6;K6gp(F-]A\+8I;L
+'YEVG"=d?AER"]AJIGE_bMlI8*t?.:1SmJKHqfkK$;!AIg\[@Xd`;kc$NsnNr7XSg?J&7g0M
S^lXJXY[>%9L'F&!]Af1rCCem!mo'T,1"0\:%.9)Jads1)fAYi+e\hnJaTnok":j^Gd!on5Oe
'Mh',9dp43.PnP0lhU+enH6]AiMd0]Aer6&#<e\JFCmZ%[+2F\O@?WcF:']A\c"?MU_E@&*r'4&
9mVBRAe@C57rQ<"BGp/YTY-5Z``H]AXsr!eU/iSgA$eT)*"5B2L$[n>6b:`ai>.+=%bkTb%jL
6\Mfbdousrn_tJg"gJ:QL)]AOMB/*d`S^3tUKfo"k[rD,rcRZA,\)goflAB83)c@kCIl'>&fL
H'MQE]AP#[(QR_\"/2O>iM\Prb`mee$CRV*mVOb_<6^#0TqhX4H:dhh.3>"Km%`@>jhYZL,Kt
8LX+m[rq/V\S']AALnbh&VhK!CcoXX)rKm&*As'E-S@Iqt_Rf0=rH!G2WOT,2QkDA.6F.5LaR
@_TtWplM$VHIag!:u'c5LCrLMcuMT;Bgl-Z,*XAq-OEG)(p/4u3]AM7CR1,;R\h*<!`&`T\SN
7c>>$oW8(HSi8D`0P,mpL5tD/>Ft>3sh\9-P'4BBg2GSr']A>Dn]A6HJ$a:ZiG>E-+$\4TBm"(
o`Fu78Jm-$YTsj/!7C?$1BiH$E's6,T&eWq7XismNC.X\2W`jc!&eq;W9@26*94LUG'bR`BE
%mi(HKOUAY4n!$Y3X;S4oXGe5#7?F?_7/o554OF4buS.6K?-5`Ac1c3A*emJst@R;;<2$rm]A
XR.h4ar+GW_[M,uoH$6Z>7+6m-nn._+MIDhTg+W/f0b)[GH8M<k_\Jq6%Zo)d8X4VHrq767g
=fF;pmg3]ADSBg!LXa(HSlNLQ)3$-b2Mqr6c:-2R&B.S;sWoa#=BMkX"Y,"cHOj%BA`#>o0-<
@?pNDl/=&JIP*H5%Tdbl6Xe.$`f@K4ShH(\bM(YGWp2o)$#eKV,99*>M#lK4CGlet6EnM@dg
`B*J9X]A#!,>Rb8&D^A']Al9/6lJGMV5PHmQ(pB]AF>Q$AUDl<2qo1X6h5FmJ=q#8$2U"6tmAr-
c-m2/3YCl*&`,3bT[rF`/J&Md]Ai_8@^0/',0cJG<O5&<oAHuS:S)J8l#d"^`7E2+CsN4OYRd
B)&XM5]A/)igO(345Rc^D3oXW8%QYl!_X"jMep%erJQ)]AJTrUQO]A+^M<.XJF6(iJreUW<-S>!
HE+/16g"WcE#>'?@/&anX>T=S;Kd9W+>&U:0Z6sb>A4N0Y=?=A\P&_LbP:2Y?BcmW"#RCY.q
+"920;4_p):S3Hq"Op[nM#!JI!-O_4e?^&%fK8VFP5mj8?THo%je'l7Ij(&\dM&=j%Jb(kh"
[8p/?<d6*QNB0qVer[qM-\BC+IS'h#AgBN[XnmhF$G48WU@<&Gr_fti-DuT7^c5KPpcji2Gh
5X1p/Mu[Gl`kdhY#O)3Y;c8\XWV(R,+YVeB&e"%%4k"?^/RF2M9[]A%n&Z.K/UYHX`nb8>o!l
?k(s(WHauT40\)-c(dtE#XC!M^A5CeqIUL^g=ZKp^$'usCWV^[ECW5!gkd/>\BAVm,To-uA5
T:#B((B(XA441$#@Bj]AH\N\pBn2nqeE&YWgdF-GeE`j]AA80fDq'-a2kA#hf"jb8T!\UbZr"I
`0Z((gS\gn-<7I.fZqU:%>Qfh/cgki`cH/SRlEJsXI#*7?j>0)YMCYknsl+aBi,DkOq?>3^;
m-g:KRmaI66@CI$s20OD<GrM/6dC#/u?lrs96W's,BII[iKY67=gEjk0I=eng1!$]AF5'c;T!
,H2pmN@8?-p;/gb3O/O9S:'>M.GsJ=QYr5$1\E@5,aoO-!pVc0Of^=q',*WfCs0dD[>H;8"A
tAffcKtQ:!M-M@dsN$L?-sa5NeF>]Aqdt:jD/Q=j?"7]AXZs^hWH0iU,/Z_3Eu%uT=E%!;@4-,
T#J0_Kt#4-?2]AUr8.nB[=0>hh6&ejB2D4X7nVtQYngCtd>3:uZCp186ll);lYa(q1\$pdg/Z
!>uMo:1Hh$!PmE)SN5SoI.PjB]ARJ-H+`4euMh=aB^2^nESG&@s/mXjIlM+;)+mf_RE;Gr@#^
Pa1?/qF+"/PVJ@O4+k/Q1-3@jt99Ch&0q,^kc3SCPZLS[Hj]A?D:NM$_&i7Co3B$E9H0\fIU.
%*b75OIN^%8:o68jQbMGmE&/F8=21b)bZcNd_WuhqDGtaq,T#kA=RsWkFN;mP8`PX13WS$,]A
k4s!L4_DRVE3+8TohIhbioKIsjTD`"`OMD*g9F=\_-8GZK`@ro-Jk;JTT>U\)5S*\tP?9]AX2
GM!qlhN\$2W4KJhH86@I?P0T4.8.[MU[/'L*K.jPX5W,_mG,Z$K9bJX4>H]AU%V*B=H,JN"DD
fS?Qr1;`*IjTDSAnF*h\p[*fKLVE;mjNfRQO_(05RB4^tjE@!9`E,J%6ts.WY'^OnGcaS?)O
C!BCP:%JkL*MnZA:UR<Qm(O//)4dO+;!;`K@Oh>b^_/6C&)d=B[G`DaN[C8J"Rn'f$7eJ.\m
h]A&#fOiNOf:'Bl5n=Hj?BI%gk;<&%6s6>D_sd5b:I,?L#'%D(/"IHOarKe)SO+*ppfOK*a/)
NjkF'd467T/TCbr)9>8*(u.H,CR6.G<2=C-q/PYQ*I/Y[(K<puDkU0g[k+h@t-_E'T\oW$<P
T-^1(o!OeWOje19XAS73.R*N'U[oK4MIZ25ZOM$JOZX&58:J\\rArdtiK*DAIot^r/$J0-T_
-=VqJc%FUSd7`n:Dd&/@8+N!4#bo8n6l!lRbUfPFD*8F\V`_WMZ_5RsMuH8[^\;NM3HBH@A,
US>^%!o;`Uj>,\4ePW)et\SZNG_Ct$T/I#EYp^ql*cQ6-!:3<W2SB!o:p23[[&Ki"glbhsiG
*+SuYL7hfLLnH*_a3qE/5X&>F@54\bDuLp,c_1A;U!3ZWc]AEJ%PFd:a-&U#h$6038`sA$guK
>+LlD/@j13)BSRA2VB\0(;(6a?A0P`b!(fm0WEUh"HSR:&d[7O[Q;<k4_fbpLmDtY*js"28?
TT`mXdd*f/-bb:\;P74J<.$I8NdXh@A_3N"s%#c9d#"'T=I1p_Z=1Q!U8p/u[d6&C_@ui$Nt
A49"K:&9itpl9;KD^+('NeB]AlsjLiXFGJc<0qB4hsW75Z2luU6'O#rM?`j$0h"_I+,SonD@+
3=95=a2jk0gSAn*VOR*8CdW?,:j_=Sgb=$Z4Jrp>>`-a&Cf]AJZc,0I03rA8BHKe##kd1l7Cr
$(g@r7^rg_sUu=58$<-\NGjH+Epi:Npg\J2YSjs;a9>r\<fTj,*/K:7-@;]A#L&KPoU>VLO^l
7TMeBbt+F8Zg'e9L,^;jB\gMW>fNaJMo5$HU4?p2X(c/_'NRHc"P^'\/i'c=D)HS!=d9q<qT
B$<CiJg_0h3lH_BQk#'Y4oZ?<cT5<I\7Igc4Dn+*&U'QkD>2mSEs\jQ(mioqR[p(:T\q[rD;
`.YOlYS8q.YPS+o*2rFZ+OY&/N*RCsY[@h!fpcL,E%ReS%T<%*D3OJVUN5:5k74ofnDTn#4d
')WsmXr0FD%_t?V7%6^5,d`;PHSkaMgX%Z[arTFr)3:?qCH*'m.fbgYbkLl"8dilm$T,VQPf
lmHMATT-qNDGUk=-D3JnS_E;LoBiE]A4t]AAPqJb<Kj5DShPZn9KWB1+6`9+`^qO!ESdZVDMHu
&rK*g+ToQ4a=1#naufl168KDXKbgo<NV"6=kN)so;Ml_S05YU)XC8B+'t=QjM>qE5bj:0Sa0
\^p.q-ue_A;^nib$d8V*1<0]A%VI$2+gSeW)XK0u2W!#7h&N#bj[=ZLpK*QKMjV_VDp_pf>2u
*A-^ClWp;a7.,X=rtC;!%rA8RAr,^g'o.9p38c=@-t8AY-TQK+]Ac@(>;p);#22g4j%\#nk&C
XY3M3Z#7W>NI,HZT6U$fh#qDCPT,<J87UI3$*=82ug;:I<Z5?l!//j3.%D9&gN[uES(TASHV
\PKrY/_CJ4g6?f<UX]AX+8;W=/_K\R$'>ENc_oTVoN_@hO'AHQ9d@d*pI.O-**G=q-h1r`M4o
Pljc@6G+Us@r:#*>LCe)1_[8"I@p3oRVGK%Wn7[d+WLM7Ef,DtHn*3D_lk6)Hl;fI\ARBZ+;
f"=Tm_D!a2gKo`2$V8Gk)Y8NV!gC&UNB.L_o>mQe)6tOPRFN!"X^'rf)i]A/47B\7^(b2)CNB
A8N;pJYaCB*!JiQ0F/^jF-(4^Ub0K;"q#'HO@9_Wr9$U/S5hgA&gThhaJ-5>7dB>o2!<T@Se
,-@%#3)a)(jNe`X+%(kgG`9[nO-'e4Hq!N*<^/JH53SE8gdC;b>SElO80Pt`ZX2XtJ?5.D*,
ib$%HdIV=Vm6Q2jLoj\!RILrc&C2Fb`<t[]ALhmfeGElK>e7qg%8*+mg*28$RRTJo%'K>s/RD
GJ5u8M5?Bbn"W.u#rjt@GU(NJ3"iN\XO1;OKgceMTSi7qKIClk7?J%_eg+/R2-H=83<D9X"`
kkGGDQiihK2FZ;A.c6VmX%M2t0%f#-Jf`GAg_f_#-KH)8)P<jcl;6$ObZuR5nhRi5He:cfql
3q3<l(#O.coIZc1/.-,,uSWZs^hJCP#^S)B3kq(l_b/n^>Tf*A/q11q10,Ked5N]A#)aR>'5V
8Ndp64''1q#q[u[B6;S/GGa.s)Kb:l,clSat?6=qJD\lV79@60i4).E;4jS;#g!<$m`Uc:$K
mbpl.[/m[j=!*9Yb"H3Nn9'SoZla`F\R@P[b9O?PLkJ=i@bY<3q&?a3H2b2.bW66qH;K1.Gq
(X0NSouKLoFSr7G3%`hB>I,>pnMH2@3J)(9Z>`9l;/Egt4*&jn]AC*_'h,k,`0pNRh6'DS%`'
f[O7l193>"Pt8TlSnb?QZW-\lS(.*uk;#V')_9o;@R$qQgKkf(oli.EFQ_5r53c;ZO8BGod0
eb%\Ndp;X7-<XV3%_==:WhrSiC&t.K<cOg(s^c<$/c.f^I'!hj#hP2K?EY43W^"a#r_1_(;a
E_b7>;V]AOa%^O*$nd?4CmQYVjT?*#0EG"j/K^l(""=O4]At4D?I*Sk_$jZbV$,?hnnEaS>-d&
#89uU.d/tQOAAP;os3pG$f''hs8M"SA2G>""j@/9j5b-qo(o.Uh#XT'?f$`UuplMia+il>K5
BPh]A8"A.nf#imi/raI:UIU"KQc[4b&;dGjm2dH$PC_GrXXYVXcAe$fF'-$/"0^7TQQd7(ol6
<5sTn&0YFZF_oZQ>SgllD\S(GoYY/5Bof\mPY(+^S)OXb)JQL_Beg%s0kh'N=?jo5aL>fBqc
oCbK0J>h5(]AW[`sOel*<YoIk%Jn%,rM\K'Gd^;H(1KK:+d"c\j=Q&(R)2)^5I2I>4PDt#id6
/[Q26eLVe6.cQ7XB$.C.g(2P5fbn)je$5RpCg/)V,[%\7Y=7dZlLAL3MVfta=DZVA)drs]A6#
=oB;cq_j-C<BOHE#7XSXQkM+Z3T\ZI(.ksPbaUjnm6\AFD]AID$r6h)$sciK.RI)<IB$K(&_5
6a/32^?F(\Yh@1(@Z'3I)ojdctf;SYH5\Z$G;HQ?tp4e";'7_YP#B>$X/GqJLjGPE8;A^=t5
_o/)'PK`$+B%V68:5-PCq_+;cDU)-]A[p8UCeG>[B>)Y;@mjB=T;'SGA-Z0Qll,roGe/p/dPN
`V]AqMMMAZ);u/1`W(0J,T!=V=#/:I(#MmZi"1nB-)=G/'0Y[9V@bk"30gC^WCA<@_rfoLDJ<
6$L2NGeFY&&Aj8i)L_1ebru,o%#4P^'=tD;"G5.,.?^c.:MYqJEIC,#R2T5MH0DY(cljV(Ad
C::'6_\>qq3-1EJi!:t#;KM=5QDAb?S"HhXh=\;j`_O2p/<\1CM#/-..,e1m2.StAJR9W/WY
)>aPbnj`k_bB1"=hT*"l:HVjRK*/cIHt`G'T@h?q"fMD)a*^J??s/e:/ka9r_*S='?HPC+9p
*DL%uHjY-a!"eX,.KGeiS?r1#[5\+6?.,*iiVH'@+;!R`!$L2q'X1<Sq"A?9mn*8$(:TX8'l
!Rs%)b+J!!rAk"LtWU>4UA#,@i;:adBD0I*2O%j+%+Pi(k%p6A-e:[eAoL)Q@,sPoD-U8J'p
4!$L2q'Hh`6Zh:Z4B:;%naXeKrlG9"MJ/ALo!!.S@!:i_DBp$`m*pNkZ)Ro@EQ5s<5@N5pZ"
T4)XmR6)!.rgGgGbRq>VQU?cET#Ch&-)i`>C.J`!s*mC!J6TpkoPu>4e#^ucXG/Qibj'X\]AE
$1h.jT>/LA[qCk"A0CqN^(eo84j85?O;iYZ$aNr.RL5I3T6%#l8PS/hLF=10H)!KUK;e'B]AU
'L^C[b1f*fN:90]A!!M4e%V19%2Z396YO+g*$.)>s_j_F-<6opuB4&kB9ruC6"m1Q0Z*20qBM
8C-n1P$0)8%Pn_Rq+oM8`X0B(,3NjI_t;!oAS.B<JJL`.OrI)?C,Z^E-KE;u6-O8%0t1ak[:
e&'kd:*-qAar"#AI"="FB!<2XV@-.IqbWITN!!HmT3'dNG1Cl#]A!.gOC+96t\#9X"tR0Oi7J
XH`c!.gOC+96t\#9X"tR0Oi7JXH`c!.gOC+96t\#9Y_l^rullR!ITm!=6n3E.S&mAfb&D!!4
qe5QCjA%mU*r1Cl_N!]A(?P!!4qe5QCjA%mU*r1Cl_N!]A(?P!!4qe5QLe5R!CurqPTa2>M28r
rVl-^Ip/[[X5sd??SAj*`%UGXrG?7\D>NgZduAhW~
]]></IM>
<ElementCaseMobileAttrProvider horizontal="1" vertical="1" zoom="true" refresh="false" isUseHTML="false" isMobileCanvasSize="false" appearRefresh="false" allowFullScreen="false" allowDoubleClickOrZoom="true" functionalWhenUnactivated="false"/>
<MobileFormCollapsedStyle class="com.fr.form.ui.mobile.MobileFormCollapsedStyle">
<collapseButton showButton="true" color="-6710887" foldedHint="" unfoldedHint="" defaultState="0"/>
<collapsedWork value="false"/>
<lineAttr number="1"/>
</MobileFormCollapsedStyle>
</InnerWidget>
<BoundsAttr x="0" y="0" width="950" height="45"/>
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
<BoundsAttr x="0" y="59" width="1140" height="89"/>
</Widget>
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
<Background name="ColorBackground" color="-1"/>
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
<OColor colvalue="-486008"/>
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
<ChartSummaryColumn name="拼多多食品" function="com.fr.data.util.function.SumFunction" customName="拼多多食品"/>
<ChartSummaryColumn name="拼多多生鲜" function="com.fr.data.util.function.SumFunction" customName="拼多多生鲜"/>
<ChartSummaryColumn name="淘系" function="com.fr.data.util.function.SumFunction" customName="淘系"/>
<ChartSummaryColumn name="京东" function="com.fr.data.util.function.SumFunction" customName="京东"/>
<ChartSummaryColumn name="社区团购" function="com.fr.data.util.function.SumFunction" customName="社区团购"/>
<ChartSummaryColumn name="新媒体" function="com.fr.data.util.function.SumFunction" customName="新媒体"/>
</MoreNameCDDefinition>
</DefinitionMap>
</DefinitionMapList>
</CustomDefinition>
</ChartDefinition>
</Chart>
<UUID uuid="be438e95-3dfd-4a78-ae5b-c6ed6376d2e6"/>
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
<BoundsAttr x="0" y="0" width="950" height="227"/>
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
<UUID uuid="188e3a23-b848-469a-9a20-0d90fb0c0787"/>
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
<BoundsAttr x="0" y="175" width="1138" height="321"/>
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
<O>
<![CDATA[平台-总费用]]></O>
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
<NameJavaScript name="网络报表1">
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
</Parameters>
<TargetFrame>
<![CDATA[_self]]></TargetFrame>
<Features width="600" height="400"/>
<ReportletName showPI="true">
<![CDATA[/二级页面/总费用-周.frm]]></ReportletName>
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
<NameJavaScript name="网络报表1">
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
</Parameters>
<TargetFrame>
<![CDATA[_self]]></TargetFrame>
<Features width="600" height="400"/>
<ReportletName showPI="true">
<![CDATA[/二级页面/总费用-月.frm]]></ReportletName>
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
<![CDATA[m94j9;g4hRg5=IT9\5\1/!?<(7_2Q4f+'528Ze%%[SiGmA9ao-8sMmLKFm^aY#ZRD-5NP=#"
TcAZpfhoRugl^(hnYZ#Q[8J&<[<MKHqg%2`J9k"1i.=S<;L240q(+cK,S^+lD09pNM,En*g.
!*0,H[RH!htCG1!ZH22:3YkHtf]ANtm9nsZ%)J"Ghe*?QrkkN0,7p;XM@5KPQ!="QCCUjoDfq
UO<K^\I*WF.ZgRqmgu*SBr<>\0L516f5S"Gk2L@Xk.dp@c".=YC,U$p&criR=FnjSY.XNR=G
+Rr7=uai--p>pWou<j6KhiDd&M&ERn;8;[^#O4P)H8TdZh^?.qaBJb29]AaZ^>rI^c<rZC`+Y
l%h[0l(>1$XP)qr\fNTt90Wq3gbg,`Pr*6tF5K4'`?ILH;8#!?8Kk=9g<T:\c:>-,6$o]ApoS
D_o&qQkrrRu-dm%]AI&5g`'IRa0%p>OLf6`^0W9F=b:eWA"G2l1GXD4`SfB1G`D1YPs(jK3^t
6c^V6.n\%t_3P`16b-DPTZRLJ:B,:K0>8Uu+dnoQ=F+98'`&=U(@7ZM);o/W2hl$!(PD9DrR
/m;:gqpVf2XNREiT`MkQgACgWc$Z$LK^!ECJ<kp92pu'=1()g^.O\AQ>DIZMco)ZZ('^I#LM
WCZTXN"E+il<DnuD0jtCOY8H2Bt"0m#;R%Q.=SkF"L?qJ-n(R^F25(#5P6IM]Al>#7:J,f+SE
YosGNbaN!OWY*bF9Nb-;.[p$0bXNnb)ig(e6aU0dCO+Fn7\P_$3jH!.EQrO#.#%j4GZ30U@c
Pu:9d''jWn+>EK-dA`<hZAmm<OukVN8E3H-u9K`>l$?hnG%UA"p=2cshQO0j%q1gMr#9dYgU
q-4ZgmFJ4/?qlV<2n1l6hI.pAtU`+]AY_'-3X8arcgO(RuIdDA#qaXoUn-\WU(X__@$in5"4R
<^[*WjCF*)m,*B/7]A]AfPA;C68c9u?)nie_%/ntMVD@9k0JR3tShMEidG.''Jngo#$=5)9!Lb
<La"e^rD@3;W4]A,-Rk304)mF#@2(.dChP%gmE?^d16=@+_M[Fb'iO$0($"_#GbV#ZM8bDQU-
j4f!M]Ah>$bilKO=7;+=0^`OEh9jEDUqj&WO"ijJ>/!+\[>0/XMs7Fd^8^s6"-U]A[s3S;0F0p
P@1X&F[]A/ur0-p4cKc=mD=BDp+NfVRUA=_:rl_mMuY%$N=6.DMp'fBIPl6,#N\86=DOj'a.K
r&<5D:-NCR>(eI3d;4DV0bm6W="Vj,@9@^<FM9Y4.1Je"p9Fng-fuU'.GKVnAWLI$\e4t.Fg
;]AFJ6k<%p$SCT7Fl*IIh68@_\9OFBT,<X=CKJ*b^tZ/*qc+:E(k77fQYe,a6oDPT70[($]AK<
O_*4IVR*,IXpdO77)gGF9!</s]ApB1ec@NK^?8`b'S_nc2#gUZQelo:u2S*gk$E,Ap9fm#j^#
d9t<6$ui:c+pbYfC1iE2[AkA$FtO0Ro[+=?8AG.eMDfH;NEX4To@r@5kY$,9d`bfQFb!>Z.(
O*e@pSh%b_jo:k&__NH?"jiJqj)@$VN_a$O7m$bcOKV]A6+AD>[j:UVqQbGgq;W;2O(e'AG\Q
Fh*+j_R)@:QTJ9ukA`"M+AUfl!SS`&&?md.CKq8egar@,XH=n#&0K!-fSYWMI$[^C!N%?u1d
(31'4Y;.4.>e""j`G%bWm&nGR#$B/m&t-Q8%Qes7sTSFrC-G(d.t/ul(e.:^$,I:CndX9Z?1
RhUg1!`P7X=;+L7$`TsTYC.*Z<+X@s(i@85!AhHm3>NAPe'Qece#eIO0*bC>g;iJ?o#[/0,B
DL&`-[:V[5PtjUuNbhiEWI3DVi=30G7IIP2alRgHH[m$a^*\k,MC,0(5Ab-8L[E90(5'bOZ)
5FlV-W=k6GDiiXc/^1Ei(8#'N4Ds#8r*6EV3B]A,^UmsobbM-;k6#l\Q`]A0NO?!6&*Y3Ur2M<
9`CB_[^Sr'tA0.Zdq(3/Xn#.).S@L&8>TfD=*jGe9pJdW4>Tk6A<GIW'/sF^a55T4`F0CgeR
S,8ADG:5SXsH`n6=`>WU*X2<P^Rm[ltJ?J+?%4kZ2s0n_4!:O55!<@\71Cm/mpcC!mFY2j1+
[T]AS%P`QR\rak``.2G!C<qBen@V5U$8XKn&(D8s(hS1,Q9jZt2#E!+6>[#isa>92IfPF2U)9
</,5LSe?%_qkT%^i7>16F%le*T*:js?`#^b1%KBg0c<c<R=HXF'Q`=PWf\dE0-AM]A"mF.ETi
q\#LetP!dOjP42KA,Vf#sh]AJ`%.A?-#t_Lcg#V4nsAL#;lbci-i#H8UrXK\Z_cIAp+bNYn"/
F>d6WkY`+Hk9*9TTT1"A!9>!TZg5#3QilZCe%,!cIrf4m#(t/3KP(<hm#QP(J-#86r3Du8h;
Za%+<BO$I2(d7pO<[,N*5Eajg\P'r`4j-\YX#AraE.gee)+&e#3GAWF3L;FR@$nm$',d/nE5
C5q/=?!jIRsV_UDnPH"I1b_Q7enjc/bJKe8T49tpdl7IkDG.?m-@e"''!@:op(?qVG0K0PS,
d4lfu<(6kC^C2_bMCTpZbBkqQ.Z=d$]A^R.[P&/2`XlW9RKLd*#E=pS!RqKG6]A#GgSK="5B&r
2<%Gr@L7dMAU"]Ap;ijFkaMuc*:5pRPi'ohqj]AWR4VL)KD'Va$+9)Y%_+9Ig/fEY>'Z=U;F[d
$)788aBG*.:&2)EfMfulsl%$+<!DT5mOi^,"hK3J@1PjGfX$iIr9hWOF-[64^[UbjdqKaOm^
p##aBdR743:@k>Y=I]A>'$ifFG?T&MU[sP9Ga!s`6kD^"]A/a+h#c"c\)JE2bT&*p.1V!^V@P2
BtK"/u2F(T8Q^1N=(*1:=(qgp4NT-Rc4m:C8Lgd5>`K8L3iJ>CQJV0jGu7gC?8Ou?MHaK\'r
9ORPH#icIA;0E66Lpos-3]Ar%t4S9>#3`q.geH[h18V0g[@1dJ1bUq>2d0ED)dImh-W4G1Q04
m-#gj+C\*P^K5>g!u+j;Pa7)L*6(5&:Ufk"'W@^e+a20c@cO<OL$rnt2g&lV#EOT/#<:D%fl
98l)>*hNe?l+jCH/gEdAA\mDD-?Z;-"LG_4Mp#7;TS1;[&^0H^>e[V^a9i)L=]Ae2/F!;0S1n
C]A[lUpo>:h!d(*+Ya;6l5f\>%P9ldh02O>-#qk##>@'\m5ED79LR4pZP-$2ZeM&i-aA%NA<!
$<BLZSD+&'\#.;qf59$f/LM6]A8EQ0sm]AX%(D;lpkgsc>RP^3$tcu/^U(P0YkR!<0l3o<G>R5
Bn_@E=H]A'-(<l/&"aHEb%c6Qi0<=G[`Q2f&D.8oC.Q,?[:X2F<4m3BL2p%G4,&*:hh!oVI&K
m^G.UP@CaX(X[G[Jo((R%@<m0d:*60.DH[7Op-mPG2k=_-%[T(l:ZBSW7s[8I:!cI]A1G!em)
1r#:PRQ44u11+Ce;`i[e+6uT^en<E_?s0TgO1a8$i:Za$_-`'ponF593>[-JsNkKprh-hmtF
'L<5eW%I@JuO`]AWM9[A[7<e2Zf)6k"PO)a2NY3>PdZic!2SEOb9<#%c,jpoR0!2O=7^&VgR?
<ZCr]A6OHDJ0:S<*h[r3<1D"3lV\do(n"9[CV#"\b'A.b;hd:ZgHi5MPj5nuIiNQYH-J_AU=u
"S#=,8$YY>)df9L$o!M+T:L-)F3fom3ZW\71rEjLH&fGc:WTf=!qlid,Wgb@2GgYn)b@CAOW
g&lDs[0GQDi@3L-._fZF*:S:=$VMiiu"o[YY,EXoYeKS<iA6]A;B@La&KI>MNZD'4\*%Y450B
3X.i0gYXBY>f4"Lu1=6j?hpN\LDK%*p.F'MW4ZL.j7,20UJSH#9BA-lOBn0]A-("g\J%g9'q8
(j$P!As*P&!_f]AgXnUbp:nEq>^kb572uYd^PqaX"$)1E*7Uc@:a7e9Os^e:\[m4A`NE6LRs9
^lLYMO59.+E&>)`ToW(iDfP:`&3Auu@F'P]A``6g;j&i;r(YVLP8tcd_(tQ.I(hURYiZ8C:B_
gO=Z*f(06&N:o(<('iLOKY=.3To:m\B,iWWSK*3QAF_G5]Arri$_$Uc;^j(1MJF4=4Bo7,0lc
>7O*L5J$rKs+A=6q\?'AWcZ]AQ=^BfKs:VFI=ite.a^n_atbbc9lMlBDAMQc!n4N5HXZj0a4]A
Q3T_Vepr>?#h/*Md2f#@AfN4T1#E3iF!E]A6M7ei`.J>6>SPr@jp33ApD9=pVE%]ARkM,+YB0)
+^]AKQ.Ddd&4D^QS7qu2&!nnhS13fB?g%Mb;WlN?l[.,Di<qV_Q@rZ0+=)McUlM<r4KCV`W/7
Pb8OD6,cE>r\WW^Z&e(OHR9T[^djpc$L1fK_5LAK0J?a*dOc]Aqe.4<nM'Nfkdi_q4Rs(Rt'9
3mHI?-3-Dh!6amA[kL*IU/C2#1MoJ^Q=?pnip*QgY8U+-bsZo\T2p*`B`qrA(&P+tr+cZaUJ
HZmQt)F4-(',IC5&.13p[InPFoJV-_@""rNC*5*peJ@9#&:Yq3kh4?X%fWO_)BVcPTYh@3J?
c[S\WEaIj\`[g&-D>3JTD0nc\P6h*e<G)(jM>._Ct0+df'SH'%3"m_X\qB=nY&g>;##IG2P'
?02oY#Yk>Hb.`IrN7Vbr.$t>/'n8d/,?3T9]A4!JPKHPf++:QE+54;REhVb3,)pm&@ZHX+D>g
&sEsiQc,9K)?VsY@sjNPF*JTmN`(bcC_)!3ijqjTq.@Ll23ELY_5_=3!^)W8!L2^`7I"Tk?P
?C2_:[uDHR;-7#2f1S$W?+<lh5%ph.Rp<jaOX2@?q<kgV.Z/CNeH5os[ON_Cg(_j=^XMJ3<I
?MWfl__HNK%gnq[UN\C]A@TRrV968j%WTXTjH_l%7OhAnm^3<19)Lm[k*Gqpn=2rK0J50QL$H
,!u,;=\^t9#[Ls,I@L66F//t:OZND8`g$Vqo#Nl@4?ZsoH!LGYRR@<Q_j!I9#GCo"YOYqUu8
3Wqpo1Yo$.7bnF/_O8aFYpP?7c6J^hJ&RlO[?AP<-K@DkFGg>cn@:^UUM2EK$2Gd]A(_k5VSn
<WFqle_dh\]A@.U!]A[EI?E)JS!B:Md*!4X+9\pmDi_"\R-dST^?f^k:,q]AVkV,>3Jn:3^2%hI
^[gl/<&A9h-A#/46JXNd;?8gYM90?V7_2"3;NFgK>N`jF&8CXpR$Ks\cpE4D6mR;DFRoh9c"
$;u!qiC"r4/gJY[g([V<,8?-Y5WCEFRU/&`"0uH*NepT/1"d6We#eYQ(DY:XZ^R$.S,4;hCl
'_smI_!-DL$9b=D.bPu81Ic8Vpn@T2f;J>?Q/5D%.TK4`&WL+_=Wl@8t'm(nj0i$J^#lK4LZ
h),`IRn9=8TV:`;_V_9+clW]A,tYCZ76l0:]A+K*9X(k`;`+eS;Oi_=!L&MPg4h<L:"@@u*EXf
XHg#'nkCDHe%V2=KEG8kq9Xo2*C_Hq5.]AOWZp9ng#Pi.sXDeET]A@JPUtKG!QPm1M;rhZE,uO
o<0f8a6#B+!eit4Ou1H*G_^>VgIBn-hB\1BMmQKrKqS=1G711gB)/9ZG8Vh]APMX^Xnpu43"e
7XS\c;YF+NY8&J*^gDd?Bk?]Ak?XU:B)F2!H]A(5!!'p,1KU%S!;Sf.b5]ABCT9b4e4ZW5==kW=
rGA!0n:J^:^(&coE!D+C-#fppN.uk,<DBLH"mhqh*OuAq2heJO*TB;m)_:/DBd]AVXH5<ms(]A
tG^5[6S$dHaBkPU[.^0dTep%ml/M/L_i`D^u[)?PdWrB'*1VOZD?l!IoeZ5:]A#W8C[KgG0@L
C"=ULEukfmERoeXQ@QQKZ4S)OjJp@k'Mje[hnVAnIID2Eb8YOgWY?EJ*N8u*!W)#DRAQ9a+_
h#I[TZGWF>VKP\ISTm7@e(B7^kW__o5I_5\Vu=#;kt;-Abl$dc>oU_l=42A8h[3k'P82-bJ!
MqH#f)E"g^(]AT!8IjqN<%`>^l8?L#f)E"g^(]AT!8IjqN<%`>^l8=66ZF=Na&(Os^bHN^!cSR
eN;sqcE?bJ(:tu>l0bcPJE"'^F!$"@G,65b\g^(\M'K6)4%)n2+*(+]Aj!6<I$2@Tg6o$UlPm
59+\Um:*_HMI?_a6RJa'pEE_^#ldsVWW*Wj/fDO6EV;SF-!_'jn4gjb`'U5J/)WEG1fckI+6
%]Aq*`]AEn+uT<D^p(]A7?>L1Js_Pq(aC)J#"$AkYqqX&U#E&p&L"]A:k'2S<d)$p>hgTouYl+&H
ZFi7d/O%C>mUp+kTk>Oe.Y$di;L+CUJ9s$JAja:%f.NMu2f-jY)QFn.`la_.Q$O\K^9._P4U
[rllXLI@;)%PfClgkb,&(=LU^d0J>[s@+&l8#`URC"tapZ)i"*j$4#RMt&o7"ZaQo6Fu?9Pi
.Y`WA=4E1#T1fk!49HX#Qk_CsX`O51@*dSSgNl]A8<^Ee=ANB1-%O3l+[g\LKP&(4ZEdNIe22
OlK,jBklXDdSN[SqYNCrL5T4hk]AX7X@4;r,dNFD1C%-MI'[$5D&5>)MpBWGr_6p2#,qn>4UW
E2b[YWGUm)[IkR#@-6;*VEpCdj(4G6@O4G6@O4G6@O4G6@O4S7)qG6_TH)%@+?*Xf^bPUFt2
kOebb@tbQj\5YThkJhY6f2dCjftm[k~
]]></IM>
<ElementCaseMobileAttrProvider horizontal="1" vertical="1" zoom="true" refresh="false" isUseHTML="false" isMobileCanvasSize="false" appearRefresh="false" allowFullScreen="false" allowDoubleClickOrZoom="true" functionalWhenUnactivated="false"/>
<MobileFormCollapsedStyle class="com.fr.form.ui.mobile.MobileFormCollapsedStyle">
<collapseButton showButton="true" color="-6710887" foldedHint="" unfoldedHint="" defaultState="0"/>
<collapsedWork value="false"/>
<lineAttr number="1"/>
</MobileFormCollapsedStyle>
</InnerWidget>
<BoundsAttr x="0" y="0" width="950" height="302"/>
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
<BoundsAttr x="0" y="0" width="1140" height="59"/>
</Widget>
<ShowBookmarks showBookmarks="true"/>
<Sorted sorted="true"/>
<MobileWidgetList>
<Widget widgetName="report00"/>
<Widget widgetName="report0"/>
<Widget widgetName="chart0"/>
<Widget widgetName="report1"/>
<Widget widgetName="chart1"/>
<Widget widgetName="report2"/>
<Widget widgetName="report3"/>
</MobileWidgetList>
<FrozenWidgets/>
<MobileBookMarkStyle class="com.fr.form.ui.mobile.impl.DefaultMobileBookMarkStyle"/>
<WidgetScalingAttr compState="0"/>
<DesignResolution absoluteResolutionScaleW="1920" absoluteResolutionScaleH="1080"/>
<AppRelayout appRelayout="true"/>
</InnerWidget>
<BoundsAttr x="0" y="0" width="950" height="696"/>
</Widget>
<ShowBookmarks showBookmarks="true"/>
<Sorted sorted="false"/>
<MobileWidgetList/>
<FrozenWidgets/>
<MobileBookMarkStyle class="com.fr.form.ui.mobile.impl.DefaultMobileBookMarkStyle"/>
<WidgetZoomAttr compState="0"/>
<AppRelayout appRelayout="true"/>
<Size width="950" height="696"/>
<ResolutionScalingAttr percent="1.2"/>
<BodyLayoutType type="1"/>
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
