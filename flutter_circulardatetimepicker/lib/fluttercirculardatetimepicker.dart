import 'package:flutter/material.dart';

class CircularDateTimePicker extends StatefulWidget {
  final String date;
  final double height;
  final Color textcolor;
  final Color bordercolor;
  final VoidCallback onPressed;
  CircularDateTimePicker({
    this.bordercolor,
    @required this.date,
    @required this.textcolor,
    @required this.height,
    @required this.onPressed,
  });
  @override
  _CircularDateTimePickerState createState() => _CircularDateTimePickerState();
}

class _CircularDateTimePickerState extends State<CircularDateTimePicker> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: widget.height,
        margin: EdgeInsets.only(top: 5),
        padding: EdgeInsets.only(left: 20, top: 0, bottom: 0, right: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.horizontal(
            left: Radius.circular(30),
            right: Radius.circular(30),
          ),
          border: Border.all(
            color: widget.bordercolor,
            width: 1,
          ),
        ),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            widget.date.toString(),
            style: TextStyle(
              fontFamily: 'Muli',
              fontSize: 16,
              color: widget.textcolor,
            ),
          ),
        ),
      ),
    );
  }
}
