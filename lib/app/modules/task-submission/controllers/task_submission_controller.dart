import 'package:catch_task_app/app/modules/browse_task/model/task/task.model.dart';
import 'package:catch_task_app/app/widgets/widget/CheckBox/controller/custom_checkbox.conroller.dart';
import 'package:get/get.dart';

import '../../../data/task/task-data.dart';

class TaskSubmissionController extends GetxController {
  final Rx<TaskModel> task = allTasks.first.obs;
  final checkBoxController = CustomCheckBoxController().obs;

  final count = 0.obs;
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
