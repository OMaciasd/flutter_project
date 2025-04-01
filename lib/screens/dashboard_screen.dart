import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dashboard")),
      body: Center(
        child: LineChart(
          LineChartData(
            lineBarsData: [
              LineChartBarData(
                spots: [FlSpot(0, 1), FlSpot(1, 3), FlSpot(2, 2)], // Datos de prueba
                isCurved: true,
                colors: [Colors.blue],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
