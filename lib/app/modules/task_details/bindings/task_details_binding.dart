import 'package:catch_task_app/app/modules/task_details/controllers/task_details_controller.dart';
import 'package:get/get.dart';
class TaskDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TaskDetailsController>(
      () => TaskDetailsController(),
    );
  }
}
