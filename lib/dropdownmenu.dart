import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Dropdownmenu extends StatefulWidget {
  const Dropdownmenu({super.key});

  @override
  State<Dropdownmenu> createState() => _DropdownmenuState();
}

class _DropdownmenuState extends State<Dropdownmenu> {
  String? hintvalue;
  String predefinedvalue = 'Red';
  Color? bgColor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor == null ? Colors.red : bgColor,
      body: Center(
        child: Container(
          width: 100,
          height: 50,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: DropdownButton(
                style: TextStyle(color: Colors.white),
                dropdownColor: bgColor == null ? Colors.red : bgColor,
                isDense: true,
                isExpanded: true,
                icon: Icon(
                  Icons.colorize_outlined,
                  color: bgColor == null ? Colors.red : bgColor,
                ),
                hint: Center(
                  child: Text(
                    hintvalue != null ? hintvalue! : predefinedvalue,
                    style: TextStyle(
                      backgroundColor: Colors.white,
                      color: bgColor == null ? Colors.red : bgColor,
                    ),
                  ),
                ),
                items: ['Red', 'Blue', 'Green', 'Orange'].map((String value) {
                  return DropdownMenuItem(value: value, child: Text(value));
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    if (value == 'Red') {
                      bgColor = Colors.red;
                    } else if (value == 'Blue') {
                      bgColor = Colors.blue;
                    } else if (value == 'Green') {
                      bgColor = Colors.green;
                    } else if (value == 'Orange') {
                      bgColor = Colors.orange;
                    } else {
                      bgColor = Colors.black;
                    }
                    hintvalue = value;
                  });
                }),
          ),
        ),
      ),
    );
  }
}
