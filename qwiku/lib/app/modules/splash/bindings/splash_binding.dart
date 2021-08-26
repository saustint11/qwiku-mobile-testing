import 'package:get/get.dart';

import 'package:qwiku/app/data/services/user/user_service.dart';

import '../controllers/splash_controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(
      () => SplashController(),
    );
    Get.lazyPut<UserService>(
      () => UserService(),
    );
  }
}
