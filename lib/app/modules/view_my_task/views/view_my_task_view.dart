import 'package:catch_task_app/app/modules/task_details/widgets/body/task_details_body_widget.dart';
import 'package:catch_task_app/app/modules/task_details/widgets/header/task_details_header.dart';
import 'package:catch_task_app/app/modules/view_my_task/widgets/body/view_my_task_body_widget.dart';
import 'package:catch_task_app/app/modules/view_my_task/widgets/header/view_task_header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:catch_task_app/app/modules/browse_task/model/task/task.model.dart';
import 'package:catch_task_app/app/modules/task_details/controllers/task_details_controller.dart';
import 'package:catch_task_app/app/widgets/values/app_colors.dart';

class ViewMyTaskPage extends StatelessWidget {
  final TaskModel task;
  ViewMyTaskPage({
    Key? key,
    required this.task,
  }) : super(key: key);

  final TaskDetailsController taskDetailsController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: AppColors.appPrimaryColor,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: AppColors.appWhite01),
          onPressed: () => Get.back(),
        ),
      ),
      body: SafeArea(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //! Header
            Expanded(flex: 3, child: ViewMyTaskHeaderWidget(task: task)),

            // ! Body
            Expanded(flex: 8, child: ViewMyTasKBodyWidget(task: task)),
          ],
        ),
      ),
    );
  }
}
