import 'package:flutter/material.dart';

class TextFieldExample extends StatefulWidget {
  const TextFieldExample({super.key});

  @override
  State<TextFieldExample> createState() => _TextFieldExampleState();
}

class _TextFieldExampleState extends State<TextFieldExample> {
  late TextEditingController _emailController;

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    _emailController = TextEditingController(text: "gurban@mail.com");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _emailController.dispose();

    super.dispose();
  }

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
                controller: _emailController,
                autofocus: true,
                // maxLines: 5,
                maxLength: 10,
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
            Text(_emailController.text),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _emailController.text = "gurban@gmail.com";
            });
          },
          child: Icon(Icons.edit),
        ));
  }
}
