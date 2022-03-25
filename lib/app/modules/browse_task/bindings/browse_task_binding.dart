import 'package:catch_task_app/app/modules/browse_task/controllers/browse_task_controller.dart';
import 'package:catch_task_app/app/modules/task_details/controllers/task_details_controller.dart';
import 'package:get/get.dart';
class BrowseTaskBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BrowseTaskController>(
      () => BrowseTaskController(),
    );
     Get.lazyPut<TaskDetailsController>(
      () => TaskDetailsController(),
    );
  }
}
