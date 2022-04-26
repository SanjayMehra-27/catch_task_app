import 'package:get/get.dart';

import '../controllers/task_submission_controller.dart';

class TaskSubmissionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TaskSubmissionController>(
      () => TaskSubmissionController(),
    );
  }
}
