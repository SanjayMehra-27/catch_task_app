import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateTaskStepperController extends GetxController {
  int _currentStep = 0;
  StepperType stepperType = StepperType.horizontal;

  var titleController = TextEditingController().obs;
  var descriptionController = TextEditingController().obs;
  final isTaskRemotely = false.obs;

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
