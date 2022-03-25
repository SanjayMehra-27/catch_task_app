import 'package:catch_task_app/app/modules/task_details/controllers/task_details_controller.dart';
import 'package:catch_task_app/app/widgets/values/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TaskDetailsPage extends StatelessWidget {
  TaskDetailsPage({Key? key}) : super(key: key);

  final TaskDetailsController taskDetailsController = Get.find();

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
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
             Center(
               child: Text('Task Details', style: Theme.of(context).textTheme.headline6),
             )
            ],
          ),
        ),
      ),
    );
  }
}
