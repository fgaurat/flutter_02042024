import 'package:flutter/material.dart';
import 'package:tp_list_view/list_01.dart';
import 'package:tp_list_view/list_02.dart';
import 'package:tp_list_view/list_03.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ),
      body: const List03()
    );
  }
}
