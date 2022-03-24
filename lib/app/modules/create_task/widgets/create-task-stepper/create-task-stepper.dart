import 'package:catch_task_app/app/modules/create_task/widgets/create-task-stepper/controller/create_task_stepper.controller.dart';
import 'package:catch_task_app/app/modules/create_task/widgets/task_budget/controller/enter_task_budget_conrollert.dart';
import 'package:catch_task_app/app/modules/create_task/widgets/task_budget/enter_task_budget_widget.dart';
import 'package:catch_task_app/app/modules/create_task/widgets/task_date_time/enter_task_date_time_widget.dart';
import 'package:catch_task_app/app/modules/create_task/widgets/task_details/enter_task_details_widget.dart';
import 'package:catch_task_app/app/widgets/buttons/rounded/primary_rounded_btn.dart';
import 'package:catch_task_app/app/widgets/values/app_colors.dart';
import 'package:catch_task_app/app/widgets/values/app_values.dart';
import 'package:catch_task_app/app/widgets/values/text_styles.dart';
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
                  return details.currentStep == 2
                      ? Container(
                          alignment: Alignment.bottomCenter,
                          width: Get.width,
                          padding: EdgeInsets.symmetric(
                            vertical: AppValues.padding_20,
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.lightGreyColor,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('Estimated Budget', style: cardTitleStyle),
                              Text('₹ 120', style: cardTitleStyle),
                              SizedBox(height: 20),
                              PrimaryRoundedBtn(
                                labelText: 'Post Task',
                                fontSize: 18,
                                height: 50,
                                width: Get.width / 1.5,
                                onTap: () {
                                  Get.dialog(
                                    AlertDialog(
                                      buttonPadding: EdgeInsets.all(20),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      title: Text('Do you want to continue ?'),
                                      alignment: Alignment.center,
                                      content: Text(
                                          '₹ ${Get.find<EnterTaskBudgetController>().taskBudgetController.value.text}',
                                          textAlign: TextAlign.center,
                                          style: inputFieldLabelStyle.copyWith(
                                              color: AppColors.textColorPrimary.withOpacity(0.6),
                                              fontSize: 30)),
                                              actionsAlignment:MainAxisAlignment.spaceBetween,
                                      actions: [
                                        ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            primary: AppColors.disabledButtonBgColor,
                                            padding: EdgeInsets.symmetric(horizontal: 40,)                                          ),
                                          onPressed: () {
                                            Get.back();
                                          },
                                          child: Text('Cancel'),
                                        ),
                                        ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            padding: EdgeInsets.symmetric(horizontal: 40,)),  
                                          onPressed: () {
                                            Get.back();
                                          },
                                          child: Text('Confirm'),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                              SizedBox(height: 20),
                            ],
                          ))
                      : PrimaryRoundedBtn(
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
                    content: EnterTaskBudgetWidget(),
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
