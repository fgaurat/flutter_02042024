import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  static String route = "/second/:name";

  final String name;
  const SecondPage({super.key,required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SecondPage'),
      ),
      body: Column(
        children: [Text("Bonjour $name")],
      ),
    );
  }
}
