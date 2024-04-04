import 'package:flutter/material.dart';
import 'package:tp_routing/screens/first_page/first_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const FirstPage(),
                  ),
                );
              },
              child: const Text("Go to FirstPage"))
        ],
      ),
    );
  }
}
