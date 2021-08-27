import 'dart:async';

import 'package:get/get.dart';

import 'package:qwiku/app/data/classes/user_model.dart';
import 'package:qwiku/app/data/services/user/user_service.dart';

class SplashController extends GetxController with StateMixin<User> {
  final isAuthenticated = RxBool(false).obs;
  final userService = UserService();

  @override
  void onInit() {
    super.onInit();
    checkToken();
  }

  Future<String?> checkToken() async {
    try {
      var token = await userService.getToken();

      if (token != null) {
        Get.toNamed('/home');
        return token;
      }
    } catch (e) {
      print('Error checking token -> checkToken() in splash_controller');
      print(e);
    }
    Get.toNamed('/login');
    return null;
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
