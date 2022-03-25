import 'package:catch_task_app/app/modules/browse_task/bindings/browse_task_binding.dart';
import 'package:catch_task_app/app/modules/browse_task/views/browse_task_view.dart';
import 'package:catch_task_app/app/modules/create_task/bindings/create_task_binding.dart';
import 'package:catch_task_app/app/modules/create_task/views/create_task_view.dart';
import 'package:catch_task_app/app/modules/task_details/bindings/task_details_binding.dart';
import 'package:catch_task_app/app/modules/task_details/views/task_details_view.dart';
import 'package:catch_task_app/app/routes/app_routes.dart';
import 'package:get/get.dart';
class AppPages {
  static const INITIAL = AppRoutes.BROWSE_TASK;

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
      name: AppRoutes.TASK_DETAILS,
      page: () => TaskDetailsPage(),
      binding: TaskDetailsBinding(),
    ),
  ];
}
