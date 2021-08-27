import 'package:flutter/material.dart';

Widget buildLogoContainer() {
  return Center(
    child: Container(
      height: 150.0,
      width: 190.0,
      padding: EdgeInsets.only(top: 40),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(200),
      ),
      child: Center(
        child: Image.asset('assets/images/qwiku_logo.png'),
      ),
    ),
  );
}
