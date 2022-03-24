import 'package:catch_task_app/app/modules/create_task/widgets/create-task-stepper/controller/create_task_stepper.controller.dart';
import 'package:catch_task_app/app/modules/create_task/widgets/task_date_time/enter_task_date_time_widget.dart';
import 'package:catch_task_app/app/modules/create_task/widgets/task_details/enter_task_details_widget.dart';
import 'package:catch_task_app/app/widgets/buttons/rounded/primary_rounded_btn.dart';
import 'package:catch_task_app/app/widgets/values/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

final List<String> categoryItems = [
  'Choose Category',
  'Category 1',
  'Category 2',
  'Category 3',
  'Category 4',
  'Category 5',
  'Category 6',
  'Category 7',
  'Category 8',
  'Category 9',
];

class CreateTaskStepper extends StatefulWidget {
  @override
  _CreateTaskStepperState createState() => _CreateTaskStepperState();
}

class _CreateTaskStepperState extends State<CreateTaskStepper> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        color: AppColors.appWhite02,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Expanded(
            child: GetBuilder<CreateTaskStepperController>(
              initState: (_) =>
                  Get.find<CreateTaskStepperController>().tapped(0),
              builder: (controller) => Stepper(
                controlsBuilder:
                    (BuildContext context, ControlsDetails details) {
                  return PrimaryRoundedBtn(
                    labelText: 'Continue',
                    fontSize: 18,
                    height: 50,
                    onTap: details.onStepContinue,
                  );
                },
                type: controller.stepperType,
                physics: ScrollPhysics(),
                currentStep: controller.currentStep,
                onStepTapped: (step) => controller.tapped(step),
                onStepContinue: controller.continued,
                onStepCancel: controller.cancel,
                elevation: 0,
                steps: <Step>[
                  Step(
                    title: new Text('Details'),
                    content: EnterTaskDetailsWidget(),
                    isActive: controller.currentStep >= 0,
                    state: controller.currentStep >= 0
                        ? StepState.complete
                        : StepState.disabled,
                  ),
                  Step(
                    title: new Text('Date & Time'),
                    content: EnterTaskDateTimeWidget(),
                    isActive: controller.currentStep >= 0,
                    state: controller.currentStep >= 1
                        ? StepState.complete
                        : StepState.disabled,
                  ),
                  Step(
                    title: new Text('Budget'),
                    content: Column(
                      children: <Widget>[
                        TextFormField(
                          decoration:
                              InputDecoration(labelText: 'Mobile Number'),
                        ),
                      ],
                    ),
                    isActive: controller.currentStep >= 0,
                    state: controller.currentStep >= 2
                        ? StepState.complete
                        : StepState.disabled,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
