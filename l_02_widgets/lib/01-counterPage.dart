import 'package:flutter/material.dart';

class MyCounter extends StatefulWidget {
  const MyCounter({super.key});

  @override
  State<MyCounter> createState() => _MyCounterState();
}

class _MyCounterState extends State<MyCounter> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("My Counter AppBar"),
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              "Button Clicked Count",
              style: TextStyle(
                  fontSize: 32,
                  backgroundColor: Colors.yellow,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              _count.toString(),
              style: Theme.of(context).textTheme.headlineLarge,
            )
          ]),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            addCount();
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }

  void addCount() {
    setState(() {});
    _count++;
  }
}
