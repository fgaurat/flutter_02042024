import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tp_gorouter/screens/first_page/first_page.dart';

class HomePage extends StatelessWidget {
  static String route = "/";

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
              onPressed: ()=>context.push(FirstPage.route), child: const Text("Go to FirstPage"))
              // onPressed: ()=>GoRouter.of(context).push(FirstPage.route), child: const Text("Go to FirstPage"))

        ],
      ),
    );
  }
}
