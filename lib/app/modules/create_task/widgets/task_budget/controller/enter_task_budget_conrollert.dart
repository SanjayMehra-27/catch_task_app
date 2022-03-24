import 'package:catch_task_app/app/widgets/widget/CheckBox/controller/custom_checkbox.conroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EnterTaskBudgetController extends GetxController {
  var taskBudgetController = TextEditingController().obs;
  var hoursRateController = TextEditingController().obs;
  var pricePerHourController = TextEditingController().obs;
  @override
  void onInit() {
    super.onInit();
  }
}
