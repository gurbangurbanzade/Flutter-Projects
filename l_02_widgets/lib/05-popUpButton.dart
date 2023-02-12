import 'package:flutter/material.dart';

class PopUpButton extends StatefulWidget {
  const PopUpButton({super.key});

  @override
  State<PopUpButton> createState() => _PopUpButtonState();
}

class _PopUpButtonState extends State<PopUpButton> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: PopupMenuButton(
        itemBuilder: (BuildContext context) {
          return <PopupMenuEntry<String>>[
            PopupMenuItem(
              child: Text("Baku"),
              value: "Baku",
            ),
            PopupMenuItem(
              child: Text("Beylagan"),
              value: "Beylagan",
            ),
            PopupMenuItem(
              child: Text("Goycay"),
              value: "Goycay",
            ),
          ];
        },
      ),
    );
  }
}
