import 'package:catch_task_app/app/modules/browse_task/bindings/browse_task_binding.dart';
import 'package:catch_task_app/app/modules/browse_task/views/browse_task_view.dart';
import 'package:catch_task_app/app/modules/create_task/bindings/create_task_binding.dart';
import 'package:catch_task_app/app/modules/create_task/views/create_task_view.dart';
import 'package:catch_task_app/app/modules/my_task/bindings/my_task_binding.dart';
import 'package:catch_task_app/app/modules/my_task/views/my_task_view.dart';
import 'package:catch_task_app/app/routes/app_routes.dart';
import 'package:get/get.dart';
class AppPages {
  static const INITIAL = AppRoutes.MY_TASK;

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
  ];
}
