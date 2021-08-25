import 'package:get/get.dart';

import '../controllers/splash_controller.dart';
import 'package:qwiku/app/data/services/user/user_service.dart';

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
