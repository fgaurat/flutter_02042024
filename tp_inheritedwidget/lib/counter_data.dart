import 'package:flutter/material.dart';

class CounterData extends InheritedWidget {
  const CounterData({
    super.key,
    required this.value,
    required super.child,
  });


  final int value;

  static CounterData of(BuildContext context) {
    final CounterData? result = maybeOf(context);
    assert(result != null, 'No CounterData found in context');
    return result!;
  }
  
  static CounterData? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<CounterData>();
  }
  @override
  bool updateShouldNotify(CounterData oldWidget) {
    return value != oldWidget.value;
  }
}
