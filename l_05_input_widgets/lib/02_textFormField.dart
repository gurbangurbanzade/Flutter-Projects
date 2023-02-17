import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class TextFormFieldExample extends StatefulWidget {
  const TextFormFieldExample({super.key});

  @override
  State<TextFormFieldExample> createState() => _TextFormFieldExampleState();
}

class _TextFormFieldExampleState extends State<TextFormFieldExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Form"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            autovalidateMode: AutovalidateMode.always,
            child: Column(
              children: [
                TextFormField(
                  // initialValue: "gurbangurbanzada",
                  decoration: InputDecoration(
                      labelText: "name",
                      hintText: "name",
                      border: OutlineInputBorder()),
                  validator: (value) {
                    if (value!.length < 4) {
                      return "xarakter sayi azdir";
                    } else
                      return null;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  // initialValue: "gurban@mail.com",
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      labelText: "email",
                      hintText: "email",
                      border: OutlineInputBorder()),
                  validator: (value) {
                    if (!EmailValidator.validate(value!)) {
                      return "mail duz deyil";
                    } else
                      return null;
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
