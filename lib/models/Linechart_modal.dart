import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';


class Linechart_Sc extends StatefulWidget {
  const Linechart_Sc({super.key});

  @override
  State<Linechart_Sc> createState() => _Linechart_ScState();
}

class _Linechart_ScState extends State<Linechart_Sc> {
  List<FlSpot> chartData = [
    FlSpot(0, 1),
    FlSpot(1, 7),
    FlSpot(2, 10),
    FlSpot(3, 7),
    FlSpot(4, 12),
    FlSpot(5, 13),
    FlSpot(6, 17),
    FlSpot(7, 15),
    FlSpot(8, 20),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          // color: Colors.black,
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.blue.shade100
          ),
            padding: EdgeInsets.all(20),
            child: LineChart(
              duration: Duration(seconds: 2),
                LineChartData(
                    borderData: FlBorderData(show: false),lineBarsData: [
                  LineChartBarData(
                    color: Colors.blue.shade900,
                    spots: chartData ,
                    isCurved: true,
                    dotData: FlDotData(show: false),
                    belowBarData: BarAreaData(show: false),
                  ),
                ] ,
                    titlesData: FlTitlesData(
                      rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                      topTitles : AxisTitles(sideTitles: SideTitles(showTitles: false)),
                    )
                )
            )
        ),
      ),
    );
  }
}
