import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("Go to FirstPage")),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop(["Un résultat de la SecondPage"]);
              },
              child: const Text("Go to FirstPage with params"))
        ],
      ),
    );
  }
}
