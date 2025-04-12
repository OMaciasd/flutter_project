import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class ChartWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        lineBarsData: [
          LineChartBarData(
            spots: [
              FlSpot(0, 1),
              FlSpot(1, 3),
              FlSpot(2, 2),
              FlSpot(3, 5),
              FlSpot(4, 3),
              FlSpot(5, 4),
            ],
            isCurved: true,
            colors: [Colors.indigo],
            dotData: FlDotData(show: true),
          ),
        ],
        borderData: FlBorderData(show: false),
        titlesData: FlTitlesData(show: true),
      ),
    );
  }
}
