import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qwiku/app/core/global_widgets/spacing/app_spacing.dart';

import '../controllers/login_controller.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:qwiku/app/core/global_widgets/backgrounds/radial_background.dart';
import 'package:qwiku/app/modules/login/widgets/login_button.dart';
import 'package:qwiku/app/core/global_widgets/forms/form_input_with_label.dart';

class LoginView extends GetView<LoginController> {
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _passController = new TextEditingController();
  bool obscureText = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      GreyRadialBackground(
        color: Colors.grey.shade500,
        position: "topLeft",
      ),
      Padding(
        padding: EdgeInsets.all(20.0),
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // NavigationBack(),
            SizedBox(height: 40),
            Text('Login',
                style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 20.0,
            ),
            LabelledFormInput(
              placeholder: "Email",
              keyboardType: "text",
              obscureText: false,
              controller: _emailController,
              label: "Your Email",
            ),
            AppSpaces.verticalSpace10,
            LabelledFormInput(
              placeholder: "Password",
              keyboardType: "text",
              controller: _passController,
              obscureText: obscureText,
              label: "Your Password",
            ),
            AppSpaces.verticalSpace20,
            Container(
              width: double.infinity,
              height: 60,
              child: ElevatedButton(
                  onPressed: () {},
                  style: LoginButtonStyles.greenRounded,
                  child: Text('Sign In',
                      style:
                          GoogleFonts.lato(fontSize: 20, color: Colors.white))),
            )
          ],
        )),
      )
    ]));
  }
}
