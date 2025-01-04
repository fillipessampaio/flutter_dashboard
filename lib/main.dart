import 'package:flutter/material.dart';
import 'presentation/views/dashboard_page.dart';

void main() {
  runApp(const MetricsDashboardApp());
}

class MetricsDashboardApp extends StatelessWidget {
  const MetricsDashboardApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Metrics Dashboard',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const DashboardPage(),
    );
  }
}
