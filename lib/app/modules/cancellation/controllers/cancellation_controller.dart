import 'package:catch_task_app/app/data/task/task-data.dart';
import 'package:catch_task_app/app/modules/browse_task/model/task/task.model.dart';
import 'package:get/get.dart';

class CancellationController extends GetxController {
  //TODO: Implement CancellationController

  final count = 0.obs;
  final List<TaskModel> tasks = allTasks.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
