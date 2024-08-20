import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Datepicker extends StatefulWidget {
  const Datepicker({super.key});

  @override
  State<Datepicker> createState() => _DatepickerState();
}

class _DatepickerState extends State<Datepicker> {
  TextEditingController datecontroller = TextEditingController();
  @override
  void initState() {
    datecontroller.text = "YYY-MM-dd";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: TextField(
        readOnly: true,
        controller: datecontroller,
        onTap: () async {
          DateTime? datepick = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(2002),
              lastDate: DateTime(2050));
          if (datepick != null) {
            String formatedate = DateFormat("MM-dd-yyyy").format(datepick);
            setState(() {
              datecontroller.text = formatedate.toString();
            });
          }
        },
      ),
    ));
  }
}
