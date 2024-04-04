import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hello_world/counter.dart';
import 'package:hello_world/counter_root_state.dart';
import 'package:hello_world/hello.dart';
import 'package:hello_world/say_hello.dart';
import 'package:hello_world/toggle.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    //return const SafeArea(child: Column(children: [ Hello(name: "Fred")]));

    return  MaterialApp(
      title: "HelloApp",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true
      ),    
      
      home: Scaffold(
        appBar:  AppBar(
          title: const Text("Hello App"),
          backgroundColor: Theme.of(context).colorScheme.primary),
        body: const Column(children: [ 
          Hello(name: "Fred"),
          Toggle(),
          SayHello(),
          Counter(),
          Text("CounterRootState"),
          CounterRootState()
          ])
        )

    );
  }
}

