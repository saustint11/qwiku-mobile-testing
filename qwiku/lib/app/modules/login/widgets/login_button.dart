import 'package:flutter/material.dart';

class LoginButtonStyles {
  static final ButtonStyle greenRounded = ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF11A70C)),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0),
              side: BorderSide(color: Color(0xFF11A70C)))));

  static final ButtonStyle imageRounded = ButtonStyle(
      backgroundColor: MaterialStateProperty.all(Color(0xFF11A70C)),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0),
              side: BorderSide(color: Color(0xFF11A70C), width: 1))));
}
