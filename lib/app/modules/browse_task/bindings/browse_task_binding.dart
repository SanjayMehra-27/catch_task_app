import 'package:catch_task_app/app/modules/browse_task/controllers/browse_task_controller.dart';
import 'package:catch_task_app/app/modules/browse_task/widgets/all_tasks/controller/all_tasks_controller.dart';
import 'package:catch_task_app/app/modules/browse_task/widgets/my_pins_task/controller/my_pins_task_controller.dart';
import 'package:catch_task_app/app/modules/browse_task/widgets/suggested_task/controller/suggested_task_controller.dart';
import 'package:get/get.dart';
class BrowseTaskBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BrowseTaskController>(
      () => BrowseTaskController(),
    );
    Get.lazyPut<AllTasksController>(
      () => AllTasksController(),
    );
    Get.lazyPut<MyPinsTaskController>(
      () => MyPinsTaskController(),
    );
    Get.lazyPut<SuggestedTaskController>(
      () => SuggestedTaskController(),
    );
  }
}
