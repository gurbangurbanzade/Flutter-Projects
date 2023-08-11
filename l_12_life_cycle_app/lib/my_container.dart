import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  final Color? reng;
  final Widget? child;
  MyContainer({this.reng = Colors.red, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      margin: EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: reng,
      ),
    );
  }
}
