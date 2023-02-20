import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class TextFormFieldExample extends StatefulWidget {
  const TextFormFieldExample({super.key});

  @override
  State<TextFormFieldExample> createState() => _TextFormFieldExampleState();
}

class _TextFormFieldExampleState extends State<TextFormFieldExample> {
  String _email = "", _password = "", _name = "";
  final _formKey = GlobalKey<FormState>();
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
            key: _formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
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
                  onSaved: (newValue) {
                    _name = newValue!;
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
                  onSaved: (newValue) {
                    _email = newValue!;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  // initialValue: "gurban@mail.com",
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      labelText: "password",
                      hintText: "password",
                      border: OutlineInputBorder()),
                  validator: (value) {
                    if (value!.length < 5) {
                      return "password duz deyil";
                    } else
                      return null;
                  },
                  onSaved: (newValue) {
                    _password = newValue!;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      bool _validate = _formKey.currentState!.validate();
                      if (_validate) {
                        _formKey.currentState!.save();
                        String result = "name $_name";

                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(result),
                          ),
                        );
                        _formKey.currentState!.reset();
                      }
                    },
                    child: Text("Submit"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
