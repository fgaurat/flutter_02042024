import 'package:flutter/material.dart';
import 'dart:developer' as developer;

class Toggle extends StatefulWidget {
  const Toggle({super.key});

  @override
  State<Toggle> createState() => _ToggleState();
}

class _ToggleState extends State<Toggle> {
  bool show = true;
  String label = "Hide";

  toggleShow() {
    setState((){
      show = !show;
      label = show?"Hide":"Show";
      developer.log("toggleShow");
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Column(
      children: [
        TextButton(onPressed: toggleShow, child: Text("Click $label")),
        // if (show) const Text("Le texte OK ") else const Text("Le texte KO "),
        if (show) const Text("Le texte OK "),
        show?const Text("Le texte OK "):const Text("Le texte KO ")
        ],
    );
  }
}
