import 'package:flutter/material.dart';


class CounterUpdateValue extends StatelessWidget {

final Function inc;
final Function dec;

const CounterUpdateValue({ super.key, required this.inc,required  this.dec });

  @override
  Widget build(BuildContext context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ElevatedButton(onPressed:()=>inc(), child: const Text("+")),
        ElevatedButton(onPressed:()=>dec(), child: const Text("-"))
      ],
    );
  }
}