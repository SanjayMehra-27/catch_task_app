import 'package:catch_task_app/app/modules/task_details/controllers/task_details_controller.dart';
import 'package:catch_task_app/app/modules/view_my_task/controllers/view_my_task_controller.dart';
import 'package:get/get.dart';
class ViewMyTaskBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TaskDetailsController>(
      () => TaskDetailsController(),
    );
    Get.lazyPut<ViewMyTaskController>(
      () => ViewMyTaskController(),
    );
  }
}
