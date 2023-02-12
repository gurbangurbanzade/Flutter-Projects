import 'package:flutter/material.dart';

class DropDownButton extends StatefulWidget {
  const DropDownButton({super.key});

  @override
  State<DropDownButton> createState() => _DropDownButtonState();
}

class _DropDownButtonState extends State<DropDownButton> {
  String? valueS = null;
  List<String> cities = ["Baku", "Beylagan", "Goycay", "Sumagit"];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton<String>(
        onChanged: (String? newValue) {
          setState(() {
            valueS = newValue;
          });
        },
        hint: Text("Select City"),
        items: cities
            .map((String city) => DropdownMenuItem(
                  child: Text(city),
                  value: city,
                ))
            .toList()
        //  [
        //   // DropdownMenuItem(
        //   //   child: Text("Baku"),
        //   //   value: "baku",
        //   // ),
        //   // DropdownMenuItem(
        //   //   child: Text("Beylagan"),
        //   //   value: "beylagan",
        //   // ),
        //   // DropdownMenuItem(
        //   //   child: Text("Goycay"),
        //   //   value: "Goycay",
        //   // ),
        // ]

        ,
        value: valueS,
      ),
    );
  }
}
