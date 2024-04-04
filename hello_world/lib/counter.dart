import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _cpt = 0;
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
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ElevatedButton(onPressed: _inc, child: const Text("+")),
        Text("value $_cpt"),
        ElevatedButton(onPressed: _dec, child: const Text("-"))
      ],
    );
  }
}
