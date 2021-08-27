import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:qwiku/app/core/theme/constants.dart';
import 'package:qwiku/app/data/services/auth/auth_service.dart';
import 'package:qwiku/app/data/services/user/user_service.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController

  final userService = UserService();
  final authService = AuthService();

  final loginFormKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool obscureText = true;

  /// Constants
  var textFieldDecoration = kTextFieldDecoration;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  String validator(String value) {
    if (value.isEmpty) {
      return 'This field must be completed';
    }
    return '';
  }

  login(String email, String password) {
    authService.authenticateUser(email, password);
  }

  // API Simulation ---------------------------------------
  Future<bool> checkUser(String email, String password) {
    if (email == 'test@email.com' && password == '123456') {
      return Future.value(true);
    }
    return Future.value(false);
  }

  void fakeLogin() {
    if (loginFormKey.currentState!.validate()) {
      checkUser(emailController.text, passwordController.text).then((auth) {
        if (auth) {
          Get.snackbar('Login', 'Login Successfully!');
        } else {
          Get.snackbar('Login', 'Invalid email or password');
        }
        passwordController.clear();
      });
    }
  }
  // --------------------------------------------------------

  // Toggles the password show status
  void toggle() {
    obscureText ? obscureText = true : obscureText = false;
    update();
  }

  /// Widget Builders

  // Login Button
  Widget buildLoginButton() {
    return Container(
      child: ElevatedButton(
        onPressed: () {
          print('email: ${emailController.text}');
          print('password: ${passwordController.text}');
          login(emailController.text, passwordController.text);
          Get.toNamed('/home');
        },
        child: Text('LOGIN'),
      ),
    );
  }

  // Email Text Field
  Widget buildEmailTextFieldWithPadding() {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: TextFormField(
        textAlign: TextAlign.center,
        decoration: kTextFieldDecoration.copyWith(
          hintText: 'Enter your email',
          labelText: 'Email',
          labelStyle: TextStyle(
            color: Colors.lightGreen,
          ),
        ),
        autovalidateMode: AutovalidateMode.onUserInteraction,
        onChanged: (_email) {
          // do something with user input
          emailController.text = _email;
        },
      ),
    );
  }

  // Password Text Field
  Widget buildPasswordTextFieldWithPadding() {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: TextFormField(
        textAlign: TextAlign.center,
        decoration: kTextFieldDecoration.copyWith(
          hintText: 'Enter your password',
          labelText: 'Password',
          labelStyle: TextStyle(
            color: Colors.lightGreen,
          ),
        ),
        onChanged: (_password) {
          passwordController.text = _password;
        },
        validator: (_password) =>
            _password!.length < 6 ? 'Password too short.' : null,
        onSaved: (_password) => passwordController.text = _password!,
        obscureText: obscureText,
      ),
    );
  }

  // Show/Hide Password Button
  Widget buildShowHidePasswordButton() {
    return TextButton(
      onPressed: () {
        toggle();
      },
      child: Text(obscureText ? 'show password' : 'hide password'),
    );
  }

  // Forgot Password Button
  Widget buildForgotPasswordButton() {
    return TextButton(
      onPressed: () {
        // should initiate the 'forgot password' flow
        print('forgot password button pressed!');
      },
      child: Text('forgot password?'),
    );
  }
}
