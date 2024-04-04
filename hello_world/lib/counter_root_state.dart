import 'package:flutter/material.dart';
import 'package:hello_world/counter_show_value.dart';
import 'package:hello_world/counter_update_value.dart';

class CounterRootState extends StatefulWidget {
  const CounterRootState({ super.key });

  @override
  State<CounterRootState> createState() => _CounterRootStateState();
}

class _CounterRootStateState extends State<CounterRootState> {
  int _cpt=0;

  _inc() {
    setState(() {
      _cpt++;
    });
  }

  _dec() {
    setState(() {
      _cpt--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CounterShowValue(value: _cpt),
        CounterUpdateValue(inc: _inc, dec: _dec)

      ],
    );
  }
}