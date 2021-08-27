import 'package:flutter/material.dart';

class LoginButtonStyles {
  static final ButtonStyle greenRounded = ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0),
              side: BorderSide(color: Color(0xFF11a70c)))));

  static final ButtonStyle imageRounded = ButtonStyle(
      backgroundColor: MaterialStateProperty.all(Colors.green),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0),
              side: BorderSide(color: Colors.green, width: 1))));
}
