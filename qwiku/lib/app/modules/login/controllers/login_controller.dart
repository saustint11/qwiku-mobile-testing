import 'package:get/get.dart';
import 'package:qwiku/app/data/services/user/user_service.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController

  final userService = UserService();

  final count = 0.obs;

  get loginProcess => null;

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

  login({required String email, required String password}) {
    //todo: implement login functionality
  }
}
