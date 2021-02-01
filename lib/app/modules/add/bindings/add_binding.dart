import 'package:get/get.dart';

import 'package:generation_1/app/modules/add/controllers/add_controller.dart';

class AddBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddController>(
      () => AddController(),
    );
  }
}
