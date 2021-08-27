import 'package:get/get.dart';

import '../controllers/login_controller.dart';
import 'package:qwiku/app/data/services/user/user_service.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(
      () => LoginController(),
    );
    Get.lazyPut<UserService>(
      () => UserService(),
    );
  }
}
