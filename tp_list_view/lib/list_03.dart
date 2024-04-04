import 'package:flutter/material.dart';
import "dart:developer" as developer;

class List03 extends StatelessWidget {
  const List03({super.key});

  @override
  Widget build(BuildContext context) {
    // final List<String> entries = List.generate(100, (index) => "Item $index");
    final urlEntries = [
      for (var i = 0; i < 20; i++) "https://picsum.photos/250?image=$i"
    ];

    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: urlEntries.length,
      itemBuilder: (context, index) {
        return ListTile(
          onTap: () {
            showImageDialog(context, urlEntries, index);
            developer.log("Image $index ${urlEntries[index]}");
          },
          leading: CircleAvatar(
            backgroundImage: NetworkImage(urlEntries[index]),
          ),
          title: Text("Image $index"),
          trailing: const Icon(
            Icons.delete,
            color: Colors.red,
          ),
        );
      },
    );
  }

  Future<dynamic> showImageDialog(BuildContext context, List<String> urlEntries, int index) {
    return showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                  title: const Text('Show Image'),
                  actions: [
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('close'))
                  ],
                  content: Column(
                    children: [
                      const Text('Show Image'),
                      Image.network(urlEntries[index])
                    ],
                  ));
            },
          );
  }
}
