import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: controller.obx(
        (state) => Text('Loading..'),
        onLoading: Center(
          child: CircularProgressIndicator(),
        ),
        onEmpty: Text('No data found'),
        onError: (error) => Text('error message'),
      ),
    );
  }
}
