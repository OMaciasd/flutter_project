import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

void main() {
  runApp(MyDashboardApp());
}

class MyDashboardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Dashboard',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: DashboardPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dashboard con Gráficos')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text('Gráfico de Líneas', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 300, child: LineChartWidget()),
              SizedBox(height: 32),
              Text('Gráfico de Barras', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 300, child: BarChartWidget()),
            ],
          ),
        ),
      ),
    );
  }
}

class LineChartWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        lineBarsData: [
          LineChartBarData(
            isCurved: true,
            spots: [
              FlSpot(0, 1),
              FlSpot(1, 3),
              FlSpot(2, 2),
              FlSpot(3, 5),
              FlSpot(4, 3.1),
              FlSpot(5, 4),
              FlSpot(6, 3),
            ],
            color: Colors.blue,
            barWidth: 4,
            belowBarData: BarAreaData(
              show: true,
              color: Colors.blue.withOpacity(0.3),
            ),
          ),
        ],
        titlesData: FlTitlesData(
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: (value, meta) => Text('${value.toInt()}'),
            ),
          ),
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: (value, meta) => Text('Día ${value.toInt()}'),
            ),
          ),
        ),
        borderData: FlBorderData(show: true),
        gridData: FlGridData(show: true),
      ),
    );
  }
}

class BarChartWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        titlesData: FlTitlesData(
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: (value, meta) => Text('Item ${value.toInt()}'),
            ),
          ),
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: (value, meta) => Text('${value.toInt()}'),
            ),
          ),
        ),
        borderData: FlBorderData(show: true),
        barGroups: [
          BarChartGroupData(
            x: 0,
            barRods: [
              BarChartRodData(
                toY: 8,
                color: Colors.orange,
                width: 16,
              ),
            ],
          ),
          BarChartGroupData(
            x: 1,
            barRods: [
              BarChartRodData(
                toY: 10,
                color: Colors.orange,
                width: 16,
              ),
            ],
          ),
          BarChartGroupData(
            x: 2,
            barRods: [
              BarChartRodData(
                toY: 6,
                color: Colors.orange,
                width: 16,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
