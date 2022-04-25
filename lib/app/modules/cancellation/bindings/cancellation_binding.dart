import 'package:get/get.dart';

import '../controllers/cancellation_controller.dart';

class CancellationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CancellationController>(
      () => CancellationController(),
    );
  }
}
