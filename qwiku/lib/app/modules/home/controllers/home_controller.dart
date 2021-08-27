import 'package:flutter/material.dart';

import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final logo = new Image.asset('assets/images/qwiku_logo.png',
      width: 125.0, height: 125.0);

  final count = 0.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
