import 'package:flutter/material.dart';

class ButtonExample extends StatelessWidget {
  const ButtonExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
            onPressed: () {
              func();
            },
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return Colors.teal;
              }
            })),
            child: Text("Text Button")),
        TextButton.icon(
          onPressed: () {
            debugPrint("this is text button with Icon");
          },
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.red)),
          icon: Icon(Icons.add),
          label: Text("Text button with Icon"),
        ),
        ElevatedButton(onPressed: () {}, child: Text("Elevated Button")),
        OutlinedButton(onPressed: () {}, child: Text("Outlined Button"))
      ],
    );
  }

  void func() {
    debugPrint("hellasdasd");
  }
}
