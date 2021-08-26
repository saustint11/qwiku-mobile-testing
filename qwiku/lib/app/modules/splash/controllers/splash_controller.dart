import 'dart:async';

import 'package:get/get.dart';

import 'package:qwiku/app/data/classes/user_model.dart';
import 'package:qwiku/app/data/services/user/user_service.dart';

class SplashController extends GetxController with StateMixin<User> {
  final isAuthenticated = RxBool(false).obs;

  UserService _userService = Get.put(UserService());

  @override
  void onInit() {
    super.onInit();
    startTimer();
  }

  void startTimer() {
    Timer(Duration(seconds: 3), () {
      Get.offAndToNamed(
        '/login',
      ); // will navigate the user home after 3 seconds
    });
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  // void increment() => count.value++;
}
