import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: [
          const Center(child: Text('Hello', style: TextStyle(fontSize: 25))),
          SizedBox(
            height: 200 ,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ElevatedButton(onPressed: () {}, child: const Text('Btn 01')),
                ElevatedButton(onPressed: () {}, child: const Text('Btn 02'))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
