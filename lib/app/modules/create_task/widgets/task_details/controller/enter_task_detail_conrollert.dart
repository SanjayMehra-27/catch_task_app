import 'package:catch_task_app/app/widgets/widget/CheckBox/controller/custom_checkbox.conroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EnterTaskDetailController extends GetxController {
  var taskTitleController = TextEditingController().obs;
  var taskDescriptionController = TextEditingController().obs;
  final isTaskRemotely = false.obs;

  @override
  void onInit() {
    super.onInit();
  }
}
