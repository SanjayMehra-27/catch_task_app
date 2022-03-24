import 'package:catch_task_app/app/modules/create_task/widgets/create-task-stepper/controller/create_task_stepper.controller.dart';
import 'package:catch_task_app/app/modules/create_task/widgets/task_date_time/controller/enter_task_date_time_conrollert.dart';
import 'package:catch_task_app/app/modules/create_task/widgets/task_details/controller/enter_task_detail_conrollert.dart';
import 'package:get/get.dart';

import '../controllers/create_task_controller.dart';

class CreateTaskBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CreateTaskController>(
      () => CreateTaskController(),
    );
    Get.lazyPut<CreateTaskStepperController>(
      () => CreateTaskStepperController(),
    );
    Get.lazyPut<EnterTaskDateTimeController>(
      () => EnterTaskDateTimeController(),
    );
    Get.lazyPut<EnterTaskDetailController>(
      () => EnterTaskDetailController(),
    );
  }
}
