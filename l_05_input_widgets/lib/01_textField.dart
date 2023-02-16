import 'package:flutter/material.dart';

class TextFieldExample extends StatelessWidget {
  const TextFieldExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("input"),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.next,
                autofocus: true,
                // maxLines: 5,
                maxLength: 6,
                cursorColor: Colors.pink,
                decoration: InputDecoration(
                    labelText: "label input",
                    hintText: "email",
                    icon: Icon(Icons.add),
                    prefixIcon: Icon(Icons.email),
                    suffixIcon: Icon(Icons.access_alarm),
                    border: OutlineInputBorder()),
                onChanged: (String value) {
                  print("onchange $value");
                },
                onSubmitted: (value) {
                  print("onsubmitted $value");
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.next,
              ),
            ),
            Text("")
          ],
        ));
  }
}
