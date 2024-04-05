import 'package:flutter/material.dart';
import 'package:tp_inheritedwidget/counter_data.dart';


class ShowCounter extends StatelessWidget {
const ShowCounter({ super.key });

  @override
  Widget build(BuildContext context){
    int value = CounterData.of(context).value;
    return Column(
      children: [
        Text("Counter value $value")
      ],
    );
  }
}