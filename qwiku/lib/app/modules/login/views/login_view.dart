import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';
import 'package:email_validator/email_validator.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              /// Logo should go here
              Placeholder(
                fallbackHeight: 300.0,
                fallbackWidth: 300.0,
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: 'Enter your email',
                    labelText: 'Email',
                    labelStyle: TextStyle(
                      color: Colors.lightGreen,
                    ),
                  ),
                  onChanged: (value) {
                    /// do something with email input
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: TextField(
                  textAlign: TextAlign.center,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Enter your password',
                    labelText: 'Password',
                    labelStyle: TextStyle(
                      color: Colors.lightGreen,
                    ),
                  ),
                  onChanged: (value) {
                    /// do something with password input
                  },
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              ElevatedButton(
                style: ButtonStyle(),
                onPressed: () {},
                child: Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
