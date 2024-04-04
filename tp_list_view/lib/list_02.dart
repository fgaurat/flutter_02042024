import 'package:flutter/material.dart';

class List02 extends StatelessWidget {
  const List02({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> entries = List.generate(100, (index) => "Item $index");
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: entries.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(entries[index]),
          trailing: const Icon(Icons.delete,color: Colors.red,),
          );
      },);
  }
}


