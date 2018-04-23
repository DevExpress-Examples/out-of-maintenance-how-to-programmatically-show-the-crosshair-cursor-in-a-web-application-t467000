function OnChartObjectSelectionChanged(s, e) {
    var x = e.absoluteX - e.htmlElement.offsetLeft;
    var y = e.absoluteY - e.htmlElement.offsetTop;
    var xyDiagram = s.GetChart().diagram;
    xyDiagram.ShowCrosshair(x, y);
    e.processOnServer = false;
}