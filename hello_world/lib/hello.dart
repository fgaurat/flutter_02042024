import 'package:flutter/material.dart';

class Hello extends StatelessWidget {
  final String name;

  const Hello({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Text("Hello world $name",
        textDirection: TextDirection.ltr,
        style:  TextStyle(color:Theme.of(context).colorScheme.primary));
  }
}
