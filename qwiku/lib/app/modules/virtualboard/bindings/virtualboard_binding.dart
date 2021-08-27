import 'package:get/get.dart';

import '../controllers/virtualboard_controller.dart';

class VirtualboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VirtualboardController>(
      () => VirtualboardController(),
    );
  }
}
