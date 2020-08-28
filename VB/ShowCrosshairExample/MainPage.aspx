<%@ Page Language="vb" AutoEventWireup="true" CodeBehind="MainPage.aspx.vb" Inherits="ShowCrosshairExample.MainPage" %>

<%@ Register Assembly="DevExpress.XtraCharts.v16.2.Web, Version=16.2.17.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.XtraCharts.Web" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.XtraCharts.v16.2, Version=16.2.17.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.XtraCharts" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ShowCrosshair Example</title>
    <script type="text/javascript" src="MainPageScripts.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <dx:WebChartControl
                ID="chartControl"
                runat="server"
                Height="720px"
                Width="1280px"
                ClientInstanceName="chartControl"
                CrosshairEnabled="False"
                EnableClientSideAPI="true">
                <ClientSideEvents ObjectSelected="OnChartObjectSelectionChanged"/>
                <CrosshairOptions
                    ShowOnlyInFocusedPane="False" />
                <Legend
                    AlignmentHorizontal="Right"
                    Direction="LeftToRight" />
                <Titles>
                    <dx:ChartTitle
                        Text="Weather in London" />
                </Titles>
                <DiagramSerializable>
                    <dx:XYDiagram PaneDistance="4">
                        <AxisX
                            Title-Text="Date"
                            VisibleInPanesSerializable="1"
                            Interlaced="True">
                            <DateTimeScaleOptions
                                MeasureUnit="Hour"
                                GridAlignment="Hour"
                                AutoGrid="False"
                                GridSpacing="6" />
                            <Label
                                Staggered="True"
                                TextPattern="{A:dd/MM HH:mm}" />
                            <CrosshairAxisLabelOptions Pattern="{A:g}" />
                            <GridLines
                                Visible="True" />
                        </AxisX>
                        <AxisY
                            Title-Text="Temperature, &#176;F"
                            Title-Visibility="True"
                            Title-Font="Tahoma, 10pt"
                            VisibleInPanesSerializable="-1">
                            <WholeRange
                                AlwaysShowZeroLevel="False" />
                            <GridLines
                                MinorVisible="True" />
                            <Label
                                TextPattern="{V:G}" />
                        </AxisY>
                        <SecondaryAxesY>
                            <dx:SecondaryAxisY
                                AxisID="0"
                                Alignment="Near"
                                Title-Text="Pressure, mbar"
                                Title-Visibility="True"
                                Title-Font="Tahoma, 10pt"
                                VisibleInPanesSerializable="0"
                                Name="secondaryAxisY1">
                                <VisualRange 
                                    AutoSideMargins="False" 
                                    SideMarginsValue="0"/>
                                <WholeRange 
                                    Auto="False" 
                                    MinValueSerializable="1014" 
                                    MaxValueSerializable="1025" 
                                    AutoSideMargins="False" 
                                    SideMarginsValue="0"/>
                                <GridLines 
                                    Visible="True" 
                                    MinorVisible="True"/>
                                <Label 
                                    TextPattern="{V:G}"/>
                                <NumericScaleOptions 
                                    AutoGrid="False" 
                                    GridSpacing="4" />
                            </dx:SecondaryAxisY>
                            <dx:SecondaryAxisY 
                                AxisID="1" 
                                Alignment="Near" 
                                Title-Text="Humidity, %" 
                                Title-Visibility="True" 
                                Title-Font="Tahoma, 10pt" 
                                VisibleInPanesSerializable="1" 
                                Name="secondaryAxisY2">
                                <ConstantLines>
                                    <dx:ConstantLine 
                                        AxisValueSerializable="100" 
                                        ShowInLegend="False" 
                                        Title-Visible="False" 
                                        Name="ConstantLine1" />
                                </ConstantLines>
                                <VisualRange 
                                    AutoSideMargins="False" 
                                    SideMarginsValue="0"/>
                                <WholeRange 
                                    Auto="False" 
                                    MinValueSerializable="0" 
                                    MaxValueSerializable="120" 
                                    AutoSideMargins="False" 
                                    SideMarginsValue="0"/>
                                <GridLines 
                                    Visible="True" 
                                    MinorVisible="True"/>
                                <Label 
                                    TextPattern="{V:G}"/>
                                <NumericScaleOptions 
                                    AutoGrid="False" 
                                    GridSpacing="50" />
                            </dx:SecondaryAxisY>
                        </SecondaryAxesY>
                        <DefaultPane 
                            Weight="2"/>
                        <Panes>
                            <dx:XYDiagramPane 
                                PaneID="0" 
                                Name="Pane 1"
                                Weight="1"/>
                            <dx:XYDiagramPane 
                                PaneID="1" 
                                Name="Pane 2"
                                Weight="1.5" />
                        </Panes>
                    </dx:XYDiagram>
                </DiagramSerializable>
                <Legends>
                    <dx:Legend 
                        AlignmentHorizontal="Right" 
                        DockTargetName="Pane 2" 
                        Name="humidityLegend"/>
                    <dx:Legend 
                        AlignmentHorizontal="Right" 
                        DockTargetName="Pane 1" 
                        Name="pressureLegend"/>
                </Legends>
                <SeriesSerializable>
                    <dx:Series 
                        Name="Temperature (&#176;F)" 
                        ArgumentScaleType="DateTime" 
                        LabelsVisibility="True">
                        <Points>
                            <dx:SeriesPoint Values="56.48" ArgumentSerializable="06/11/2008 06:00:00.000"></dx:SeriesPoint>
                            <dx:SeriesPoint Values="53.78" ArgumentSerializable="06/11/2008 03:00:00.000"></dx:SeriesPoint>
                            <dx:SeriesPoint Values="57.74" ArgumentSerializable="06/11/2008 00:00:00.000"></dx:SeriesPoint>
                            <dx:SeriesPoint Values="64.4" ArgumentSerializable="06/10/2008 21:00:00.000"></dx:SeriesPoint>
                            <dx:SeriesPoint Values="72.5" ArgumentSerializable="06/10/2008 18:00:00.000"></dx:SeriesPoint>
                            <dx:SeriesPoint Values="72.68" ArgumentSerializable="06/10/2008 15:00:00.000"></dx:SeriesPoint>
                            <dx:SeriesPoint Values="69.62" ArgumentSerializable="06/10/2008 12:00:00.000"></dx:SeriesPoint>
                            <dx:SeriesPoint Values="67.28" ArgumentSerializable="06/10/2008 09:00:00.000"></dx:SeriesPoint>
                            <dx:SeriesPoint Values="62.42" ArgumentSerializable="06/10/2008 06:00:00.000"></dx:SeriesPoint>
                            <dx:SeriesPoint Values="60.62" ArgumentSerializable="06/10/2008 03:00:00.000"></dx:SeriesPoint>
                            <dx:SeriesPoint Values="62.6" ArgumentSerializable="06/10/2008 00:00:00.000"></dx:SeriesPoint>
                            <dx:SeriesPoint Values="71.96" ArgumentSerializable="06/09/2008 21:00:00.000"></dx:SeriesPoint>
                            <dx:SeriesPoint Values="77.9" ArgumentSerializable="06/09/2008 18:00:00.000"></dx:SeriesPoint>
                            <dx:SeriesPoint Values="78.98" ArgumentSerializable="06/09/2008 15:00:00.000"></dx:SeriesPoint>
                            <dx:SeriesPoint Values="76.28" ArgumentSerializable="06/09/2008 12:00:00.000"></dx:SeriesPoint>
                            <dx:SeriesPoint Values="71.06" ArgumentSerializable="06/09/2008 09:00:00.000"></dx:SeriesPoint>
                            <dx:SeriesPoint Values="60.8" ArgumentSerializable="06/09/2008 06:00:00.000"></dx:SeriesPoint>
                        </Points>
                        <ViewSerializable>
                            <dx:LineSeriesView></dx:LineSeriesView>
                        </ViewSerializable>
                        <LabelSerializable>
                            <dx:PointSeriesLabel 
                                Angle="90">
                            </dx:PointSeriesLabel>
                        </LabelSerializable>
                    </dx:Series>
                    <dx:Series 
                        Name="Pressure (mbar)" 
                        ArgumentScaleType="DateTime" 
                        LabelsVisibility="False" 
                        LegendName="pressureLegend">
                        <LabelSerializable>
                            <dx:PointSeriesLabel>
                            </dx:PointSeriesLabel>
                        </LabelSerializable>
                        <Points>
                            <dx:SeriesPoint Values="1023" ArgumentSerializable="06/11/2008 06:00:00.000"></dx:SeriesPoint>
                            <dx:SeriesPoint Values="1021" ArgumentSerializable="06/11/2008 03:00:00.000"></dx:SeriesPoint>
                            <dx:SeriesPoint Values="1023" ArgumentSerializable="06/11/2008 00:00:00.000"></dx:SeriesPoint>
                            <dx:SeriesPoint Values="1021" ArgumentSerializable="06/10/2008 21:00:00.000"></dx:SeriesPoint>
                            <dx:SeriesPoint Values="1020" ArgumentSerializable="06/10/2008 18:00:00.000"></dx:SeriesPoint>
                            <dx:SeriesPoint Values="1021" ArgumentSerializable="06/10/2008 15:00:00.000"></dx:SeriesPoint>
                            <dx:SeriesPoint Values="1023" ArgumentSerializable="06/10/2008 12:00:00.000"></dx:SeriesPoint>
                            <dx:SeriesPoint Values="1023" ArgumentSerializable="06/10/2008 09:00:00.000"></dx:SeriesPoint>
                            <dx:SeriesPoint Values="1023" ArgumentSerializable="06/10/2008 06:00:00.000"></dx:SeriesPoint>
                            <dx:SeriesPoint Values="1021" ArgumentSerializable="06/10/2008 03:00:00.000"></dx:SeriesPoint>
                            <dx:SeriesPoint Values="1023" ArgumentSerializable="06/10/2008 00:00:00.000"></dx:SeriesPoint>
                            <dx:SeriesPoint Values="1023" ArgumentSerializable="06/09/2008 21:00:00.000"></dx:SeriesPoint>
                            <dx:SeriesPoint Values="1021" ArgumentSerializable="06/09/2008 18:00:00.000"></dx:SeriesPoint>
                            <dx:SeriesPoint Values="1023" ArgumentSerializable="06/09/2008 15:00:00.000"></dx:SeriesPoint>
                            <dx:SeriesPoint Values="1024" ArgumentSerializable="06/09/2008 12:00:00.000"></dx:SeriesPoint>
                            <dx:SeriesPoint Values="1024" ArgumentSerializable="06/09/2008 09:00:00.000"></dx:SeriesPoint>
                            <dx:SeriesPoint Values="1024" ArgumentSerializable="06/09/2008 06:00:00.000"></dx:SeriesPoint>
                        </Points>
                        <ViewSerializable>
                            <dx:AreaSeriesView 
                                Transparency="0" 
                                PaneName="Pane 1" 
                                AxisYName="secondaryAxisY1" 
                                MarkerVisibility="False">
                            </dx:AreaSeriesView>
                        </ViewSerializable>
                    </dx:Series>
                    <dx:Series 
                        Name="Relative humidity (%)" 
                        ArgumentScaleType="DateTime" 
                        LabelsVisibility="False" 
                        LegendName="humidityLegend">
                        <LabelSerializable>
                            <dx:SideBySideBarSeriesLabel>
                            </dx:SideBySideBarSeriesLabel>
                        </LabelSerializable>
                        <Points>
                            <dx:SeriesPoint Values="69" ArgumentSerializable="06/11/2008 06:00:00.000"></dx:SeriesPoint>
                            <dx:SeriesPoint Values="76" ArgumentSerializable="06/11/2008 03:00:00.000"></dx:SeriesPoint>
                            <dx:SeriesPoint Values="66" ArgumentSerializable="06/11/2008 00:00:00.000"></dx:SeriesPoint>
                            <dx:SeriesPoint Values="49" ArgumentSerializable="06/10/2008 21:00:00.000"></dx:SeriesPoint>
                            <dx:SeriesPoint Values="45" ArgumentSerializable="06/10/2008 18:00:00.000"></dx:SeriesPoint>
                            <dx:SeriesPoint Values="48" ArgumentSerializable="06/10/2008 15:00:00.000"></dx:SeriesPoint>
                            <dx:SeriesPoint Values="57" ArgumentSerializable="06/10/2008 12:00:00.000"></dx:SeriesPoint>
                            <dx:SeriesPoint Values="66" ArgumentSerializable="06/10/2008 09:00:00.000"></dx:SeriesPoint>
                            <dx:SeriesPoint Values="78" ArgumentSerializable="06/10/2008 06:00:00.000"></dx:SeriesPoint>
                            <dx:SeriesPoint Values="83" ArgumentSerializable="06/10/2008 03:00:00.000"></dx:SeriesPoint>
                            <dx:SeriesPoint Values="72" ArgumentSerializable="06/10/2008 00:00:00.000"></dx:SeriesPoint>
                            <dx:SeriesPoint Values="52" ArgumentSerializable="06/09/2008 21:00:00.000"></dx:SeriesPoint>
                            <dx:SeriesPoint Values="40" ArgumentSerializable="06/09/2008 18:00:00.000"></dx:SeriesPoint>
                            <dx:SeriesPoint Values="41" ArgumentSerializable="06/09/2008 15:00:00.000"></dx:SeriesPoint>
                            <dx:SeriesPoint Values="37" ArgumentSerializable="06/09/2008 12:00:00.000"></dx:SeriesPoint>
                            <dx:SeriesPoint Values="41" ArgumentSerializable="06/09/2008 09:00:00.000"></dx:SeriesPoint>
                            <dx:SeriesPoint Values="68" ArgumentSerializable="06/09/2008 06:00:00.000"></dx:SeriesPoint>
                        </Points>
                        <ViewSerializable>
                            <dx:SideBySideBarSeriesView 
                                BarWidth="1.4" 
                                PaneName="Pane 2" 
                                AxisYName="secondaryAxisY2">
                            </dx:SideBySideBarSeriesView>
                        </ViewSerializable>
                    </dx:Series>
                </SeriesSerializable>
            </dx:WebChartControl>
        </div>


    </form>
</body>
</html>