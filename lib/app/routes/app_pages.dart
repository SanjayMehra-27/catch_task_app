import 'package:catch_task_app/app/modules/create_task/bindings/create_task_binding.dart';
import 'package:catch_task_app/app/modules/create_task/views/create_task_view.dart';
import 'package:catch_task_app/app/routes/app_routes.dart';
import 'package:get/get.dart';
class AppPages {
  static const INITIAL = AppRoutes.CREATE_TASK;

  static final routes = [
    GetPage(
      name: AppRoutes.CREATE_TASK,
      page: () => CreateTaskPage(),
      binding: CreateTaskBinding(),
    ),
  ];
}
