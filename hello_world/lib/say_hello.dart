import 'package:flutter/material.dart';
import 'dart:developer' as developer;

class SayHello extends StatefulWidget {
  const SayHello({super.key});

  @override
  State<SayHello> createState() => _SayHelloState();
}

class _SayHelloState extends State<SayHello> {

  String _name="";

  _setName(value){
    developer.log("value : $value");
    setState(() {
    _name = value;
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        TextField(
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Enter your name',
          ),
          onSubmitted: _setName,
          onChanged: _setName ,
        ),if(_name.isNotEmpty) Text("Hello $_name" )
      ],
    );
  }
}
