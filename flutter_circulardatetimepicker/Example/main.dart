

import 'package:flutter/material.dart';
import 'package:fluttercirculardatetimepicker/fluttercirculardatetimepicker.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.deepOrange,
      ),
      title: "CircularDateTimePicker Demo",
      home: DateTimePicker(),
    );
  }
}

class DateTimePicker extends StatefulWidget {
  @override
  _DateTimePickerState createState() => _DateTimePickerState();
}

class _DateTimePickerState extends State<DateTimePicker> {

  dynamic _dateTime = 'DOB: DD-YY-MM';

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: CircularDateTimePicker(
          height: 50,
          date: _dateTime,
          textcolor: Colors.grey,
          bordercolor: Colors.grey,
          onPressed: () {
            showDatePicker(
              context: context,
              initialDate: DateTime(1999),
              firstDate: DateTime(2000),
              lastDate: DateTime(2019),
            ).then((date) {
              setState(() {
                _dateTime = date != null
                    ? '${date.day} - ${date.month} - ${date.year}'
                    : _dateTime;
              });
            });
          },
        ),
      ),
    );
  }
}


