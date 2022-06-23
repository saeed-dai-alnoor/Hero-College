import 'package:get/get.dart';

import '../controllers/user_kind_controller.dart';

class UserKindBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UserKindController>(
      () => UserKindController(),
    );
  }
}
