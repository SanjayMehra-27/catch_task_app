import 'package:catch_task_app/app/modules/browse_task/controllers/browse_task_controller.dart';
import 'package:catch_task_app/app/modules/my_task/controllers/my_task_controller.dart';
import 'package:catch_task_app/app/modules/my_task/widgets/sort_by/controller/sort_by_controller.dart';
import 'package:catch_task_app/app/modules/task_details/controllers/task_details_controller.dart';
import 'package:get/get.dart';
class MyTaskBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BrowseTaskController>(
      () => BrowseTaskController(),
    );
    Get.lazyPut<MyTaskController>(
      () => MyTaskController(),
    );
     Get.lazyPut<SortByController>(
      () => SortByController(),
    );
     Get.lazyPut<TaskDetailsController>(
      () => TaskDetailsController(),
    );
  }
}
