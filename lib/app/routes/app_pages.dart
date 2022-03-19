import 'package:catch_task_app/app/modules/home/views/home_view.dart';
import 'package:catch_task_app/app/routes/app_routes.dart';
import 'package:get/get.dart';
class AppPages {
  static const INITIAL = AppRoutes.HOME;

  static final routes = [
    GetPage(
      name: AppRoutes.HOME,
      page: () => HomePage(),
    ),
  ];
}
