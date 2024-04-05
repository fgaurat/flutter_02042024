import 'package:flutter/material.dart';
import 'package:tp_inheritedwidget/counter_data.dart';
import 'package:tp_inheritedwidget/show_counter.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: CounterData(
          value:12,
          child: Center(
            child: ShowCounter(),
          ),
        ),
      ),
    );
  }
}
