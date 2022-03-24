import 'package:catch_task_app/app/modules/create_task/widgets/create-task-stepper/create-task-stepper.dart';
import 'package:catch_task_app/app/widgets/values/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateTaskPage extends StatelessWidget {
  const CreateTaskPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: AppColors.appBarTextColor,
        elevation: 0,
        title:
            Text('Create Task', style: Theme.of(context).textTheme.headline6),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back,
              color: Theme.of(context).textTheme.headline6?.color),
          onPressed: () => Get.back(),
        ),
      ),
      body: SafeArea(
        maintainBottomViewPadding: true,
        child: CreateTaskStepper(),
      ),
    );
  }
}
