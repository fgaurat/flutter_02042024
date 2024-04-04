import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tp_gorouter/screens/second_page/second_page.dart';

class FirstPage extends StatelessWidget {
  static String route = "/first";
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FirstPage'),
      ),
      body: Column(
        children: [
          ElevatedButton(
              // /hello/fred
              // /hello/:name
              //onPressed: () => context.go(SecondPage.route.replaceAll(":name", "fred")),
              onPressed: () =>
                  context.goNamed("hello", pathParameters: {"name": "fred"}),
              child: const Text('Hello Fred'))
        ],
      ),
    );
  }
}
