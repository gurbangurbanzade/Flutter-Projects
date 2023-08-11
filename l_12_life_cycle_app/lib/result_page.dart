import 'package:flutter/material.dart';
import 'package:l_12_life_cycle_app/user_data.dart';
import 'user_data.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});
  final UserData? _userData;
  // ResultPage(this._userData)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Nəticə")),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              flex: 8,
              child: Center(child: Text("Təxmin olunan həyat dövrü:"))),
          Expanded(
              flex: 8,
              child: Center(
                  child: Text("Salam"
                      // +_userData.toString()

                      ))),
          Expanded(
              flex: 1,
              child: TextButton(
                style: ElevatedButton.styleFrom(
                  onPrimary: Colors.black87,
                  primary: Colors.grey[300],
                  minimumSize: Size(88, 36),
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(2)),
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Geriyə qayıt"),
              ))
        ],
      ),
    );
  }
}
