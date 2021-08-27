import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:qwiku/app/core/global_widgets/images/logo_container.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Form(
            key: controller.loginFormKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                // Logo Container
                buildLogoContainer(),
                // Email Text Field
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: controller.buildEmailTextFieldWithPadding(),
                ),
                // Password Text Field
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: controller.buildPasswordTextFieldWithPadding(),
                ),
                // Show/Hide Password button
                controller.buildShowHidePasswordButton(),

                /// Login Button (Elevated Button)
                controller.buildLoginButton(),

                /// Forgot Password Button
                controller.buildForgotPasswordButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
