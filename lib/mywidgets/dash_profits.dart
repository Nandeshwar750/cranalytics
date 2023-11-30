import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ProfitsDash extends StatefulWidget {
  const ProfitsDash({super.key});

  @override
  State<ProfitsDash> createState() => _ProfitsDashState();
}

class _ProfitsDashState extends State<ProfitsDash> {
  late List<NewVisitors> _chartData;

  void initState() {
    _chartData = getChartData();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(8),
        color: Colors.teal[100],
        //linechart
        child: SfCartesianChart(
          primaryXAxis: CategoryAxis(),
          title: ChartTitle(text: "Website Visitors"),
          //legend: Legend(isVisible: true),
          tooltipBehavior: TooltipBehavior(enable: true),
          series: <ChartSeries<NewVisitors, String>>[
            LineSeries<NewVisitors, String>(
                dataSource: _chartData,
                xValueMapper: (NewVisitors data1, _) => data1._month,
                yValueMapper: (NewVisitors data1, _) => data1._visitors,
                animationDelay: 1000,
                animationDuration: 5000,
                xAxisName: 'Month',
                yAxisName: 'New Visitor'),
          ],
        ));
  }

   List<NewVisitors> getChartData() {
    final List<NewVisitors> chartData = [
      NewVisitors('Jan', 15),
      NewVisitors('Feb', 20),
      NewVisitors('March', 24),
      NewVisitors('April', 18),
      NewVisitors('May', 28),
      NewVisitors('June', 12)
    ];
    return chartData;
  }
}

class NewVisitors {
  NewVisitors(this._month, this._visitors);
  final String _month;
  final double _visitors;
}
