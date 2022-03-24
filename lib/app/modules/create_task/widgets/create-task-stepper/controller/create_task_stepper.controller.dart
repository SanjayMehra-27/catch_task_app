import 'package:catch_task_app/app/widgets/widget/CheckBox/controller/custom_checkbox.conroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateTaskStepperController extends GetxController {
  int _currentStep = 0;
  StepperType stepperType = StepperType.horizontal;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  int get currentStep => _currentStep;

  void tapped(int step) {
    _currentStep = step;
    update();
  }

  void continued() {
    _currentStep < 2 ? _currentStep++ : null;
    update();
  }

  void cancel() {
    _currentStep--;
    update();
  }
}
