import 'package:catch_task_app/app/modules/browse_task/widgets/all_tasks/all_tasks_widget.dart';
import 'package:catch_task_app/app/modules/browse_task/widgets/my_pins_task/my_pins_tasks_widget.dart';
import 'package:catch_task_app/app/modules/browse_task/widgets/suggested_task/suggested_task_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum TaskTab {
  ALL_TASKS,
  MY_PINS,
  SUGGESTED,
}

class BrowseTaskController extends GetxController {
  final selectedTab = TaskTab.ALL_TASKS.obs;

  void setSelectedTabIndex(int index) {
    selectedTab.value = TaskTab.values[index];
  }

 Widget getSelectedTabView() {
    switch (selectedTab.value) {
      case TaskTab.ALL_TASKS:
        return AllTasksWidget();
      case TaskTab.MY_PINS:
        return MyPinsTasksWidget();
      case TaskTab.SUGGESTED:
        return SuggestedTasksWidget();
      default:
        return AllTasksWidget();
    }
  }
}
