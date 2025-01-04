import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BarChartWidget extends StatelessWidget {
  const BarChartWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: BarChart(
        BarChartData(
          barGroups: [
            BarChartGroupData(
              x: 0,
              barRods: [BarChartRodData(toY: 8, color: Colors.blue)],
            ),
            BarChartGroupData(
              x: 1,
              barRods: [BarChartRodData(toY: 10, color: Colors.green)],
            ),
            BarChartGroupData(
              x: 2,
              barRods: [BarChartRodData(toY: 14, color: Colors.orange)],
            ),
          ],
          titlesData: FlTitlesData(show: true),
          borderData: FlBorderData(show: false),
        ),
      ),
    );
  }
}
