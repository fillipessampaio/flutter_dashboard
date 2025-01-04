import 'package:flutter/material.dart';
import 'package:flutter_dashboard/presentation/widgets/bar_chart.dart';
import 'package:flutter_dashboard/presentation/widgets/line_chart.dart';
import 'package:flutter_dashboard/presentation/widgets/metric_card.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Metrics Dashboard')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Row of Metric Cards
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                MetricCard(title: 'Total Sales', value: '250K', color: Colors.blue),
                MetricCard(title: 'New Users', value: '1.2K', color: Colors.green),
                MetricCard(title: 'Revenue', value: '\$500K', color: Colors.orange),
              ],
            ),
            const SizedBox(height: 20),
            // Line Chart
            const Text(
              'Sales Trend',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const LineChartWidget(),
            const SizedBox(height: 20),
            // Bar Chart
            const Text(
              'Monthly Sales',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const BarChartWidget(),
          ],
        ),
      ),
    );
  }
}