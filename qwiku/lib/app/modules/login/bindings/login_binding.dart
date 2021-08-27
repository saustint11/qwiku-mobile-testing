import 'package:get/get.dart';

import 'package:qwiku/app/data/services/auth/auth_service.dart';
import 'package:qwiku/app/data/services/user/user_service.dart';

import '../controllers/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(
      () => LoginController(),
    );
    Get.lazyPut<UserService>(
      () => UserService(),
    );
    Get.lazyPut<AuthService>(
      () => AuthService(),
    );
  }
}
