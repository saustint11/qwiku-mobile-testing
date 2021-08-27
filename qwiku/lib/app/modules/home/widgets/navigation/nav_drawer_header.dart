import 'package:flutter/material.dart';

Widget createDrawerHeader() {
  return DrawerHeader(
    margin: EdgeInsets.zero,
    padding: EdgeInsets.zero,
    decoration: BoxDecoration(
      // ********* Make this Decoration image the profile image of the user that is logged in. ******************
      image: DecorationImage(
        fit: BoxFit.none,
        image: AssetImage('assets/images/qwiku_logo.png'),
      ),
    ),
    //***********************************************************************************************************
    child: Stack(
      children: <Widget>[
        Positioned(
          bottom: 12.0,
          left: 16.0,
          child: Text(
            "Welcome!",
            style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.w800),
          ),
        ),
      ],
    ),
  );
}
