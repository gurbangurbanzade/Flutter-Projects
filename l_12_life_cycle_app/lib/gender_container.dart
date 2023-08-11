import 'package:flutter/material.dart';

class GenderContainer extends StatelessWidget {
  final String? gender;
  final IconData? fontIcon;
  GenderContainer({this.gender, this.fontIcon});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          fontIcon,
          size: 50,
          color: Colors.black54,
        ),
        SizedBox(height: 10),
        Text(
          '$gender',
          style: TextStyle(
              color: Colors.black54, fontSize: 20, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
