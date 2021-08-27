import 'package:get/get.dart';

import '../controllers/daybuilder_controller.dart';

class DaybuilderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DaybuilderController>(
      () => DaybuilderController(),
    );
  }
}
