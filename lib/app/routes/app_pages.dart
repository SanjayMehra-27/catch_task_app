import 'package:catch_task_app/app/modules/browse_task/bindings/browse_task_binding.dart';
import 'package:catch_task_app/app/modules/browse_task/views/browse_task_view.dart';
import 'package:catch_task_app/app/modules/cancellation/bindings/cancellation_binding.dart';
import 'package:catch_task_app/app/modules/cancellation/views/cancellation_view.dart';
import 'package:catch_task_app/app/modules/create_task/bindings/create_task_binding.dart';
import 'package:catch_task_app/app/modules/create_task/views/create_task_view.dart';
import 'package:catch_task_app/app/modules/my_task/bindings/my_task_binding.dart';
import 'package:catch_task_app/app/modules/my_task/views/my_task_view.dart';
import 'package:catch_task_app/app/modules/support/bindings/support_binding.dart';
import 'package:catch_task_app/app/modules/support/views/support_view.dart';
import 'package:catch_task_app/app/modules/task-submission/views/task_submission_view.dart';
import 'package:catch_task_app/app/modules/task_details/bindings/task_details_binding.dart';
import 'package:catch_task_app/app/routes/app_routes.dart';
import 'package:get/get.dart';
class AppPages {
  static const INITIAL = AppRoutes.TASK_SUBMISSION;

  static final routes = [
    GetPage(
      name: AppRoutes.CREATE_TASK,
      page: () => CreateTaskPage(),
      binding: CreateTaskBinding(),
    ),
    GetPage(
      name: AppRoutes.BROWSE_TASK,
      page: () => BrowseTaskPage(),
      binding: BrowseTaskBinding(),
    ),
    GetPage(
      name: AppRoutes.MY_TASK,
      page: () => MyTaskPage(),
      binding: MyTaskBinding(),
    ),
    GetPage(
      name: AppRoutes.SUPPORTS,
      page: () => SupportPage(),
      binding: SupportBinding(),
    ),
    GetPage(
      name: AppRoutes.CANCELLATION,
      page: () => CancellationView(),
      binding: CancellationBinding(),
    ),
    GetPage(
      name: AppRoutes.TASK_SUBMISSION,
      page: () => TaskSubmissionView(),
      binding: TaskDetailsBinding(),
    ),
  ];
}
