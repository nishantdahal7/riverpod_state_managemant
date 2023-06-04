import 'package:flutter/material.dart';

import 'view/add_view.dart';
import 'view/counter_view.dart';
import 'view/dashboard_view.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Riverpod state management',
      initialRoute: '/',
      routes: {
        '/': (context) => const DashboardView(),
        '/counter': (context) => const CounterView(),
        '/add': (context) => const AddView(),
      },
    ),
  );
}
