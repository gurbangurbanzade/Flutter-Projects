import 'package:flutter/material.dart';
import 'local_json.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Api")),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.green),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const LocalJson()));
              },
              child: const Text('Local Json')),
          // ElevatedButton(
          //     style: ElevatedButton.styleFrom(primary: Colors.orange),
          //     onPressed: () {
          //       Navigator.of(context).push(MaterialPageRoute(
          //           builder: (context) => const RemoteApi()));
          //     },
          //     child: const Text('Remote Api')),
        ]),
      ),
    );
  }
}
