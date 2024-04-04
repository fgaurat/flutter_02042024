import 'package:flutter/material.dart';
import 'package:tp_routing/screens/second_page/second_page.dart';
import "dart:developer" as developer;

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Page'),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("Go to Home")),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: (context) => const SecondPage(),
                  ),
                  (route) => route.isFirst,
                );
              },
              child: const Text("Go to SecondPage pushAndRemoveUntil")),
        ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                                 MaterialPageRoute(
                    builder: (context) => const SecondPage(),
                  ),   
                ).then((value){
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('$value'),
                  ));

                });
              },
              child: const Text("Go to SecondPage push")),              
        ],
      ),
    );
  }
}
