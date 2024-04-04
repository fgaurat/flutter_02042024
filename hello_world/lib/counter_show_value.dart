import 'package:flutter/material.dart';


class CounterShowValue extends StatelessWidget {

final int value;

const CounterShowValue({ super.key,required this.value });

  @override
  Widget build(BuildContext context){
    return Text("value : $value");
  }
}