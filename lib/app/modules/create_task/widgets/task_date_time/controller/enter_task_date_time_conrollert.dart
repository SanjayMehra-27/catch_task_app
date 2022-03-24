import 'package:catch_task_app/app/widgets/widget/CheckBox/controller/custom_checkbox.conroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EnterTaskDateTimeController extends GetxController {
  var taskDateController = TextEditingController().obs;
  final certainTimeCheckBoxController = CustomCheckBoxController().obs;
  final selectedPeriodIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
  }
}
