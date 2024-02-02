import 'package:flutter/material.dart';

const kTextFieldDecoration = InputDecoration(
  enabledBorder: UnderlineInputBorder(
    borderSide: BorderSide(
      color: Colors.lightBlueAccent,
      width: 4.0,
    ),
  ),
  focusedBorder: UnderlineInputBorder(
    borderSide: BorderSide(
      color: Colors.lightBlueAccent,
      width: 4.0,
    ),
  ),
);

const kElevatedButtomStyle = ButtonStyle(
  backgroundColor: MaterialStatePropertyAll(Colors.lightBlueAccent),
  shape: MaterialStatePropertyAll(
    ContinuousRectangleBorder(),
  ),
  fixedSize: MaterialStatePropertyAll(Size.infinite),
);
