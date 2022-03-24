import 'package:catch_task_app/app/modules/create_task/widgets/task_budget/controller/enter_task_budget_conrollert.dart';
import 'package:catch_task_app/app/widgets/values/app_colors.dart';
import 'package:catch_task_app/app/widgets/values/app_values.dart';
import 'package:catch_task_app/app/widgets/widget/ct_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EnterTaskBudgetWidget extends StatefulWidget {
  EnterTaskBudgetWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<EnterTaskBudgetWidget> createState() => _EnterTaskDetailsWidgetState();
}

class _EnterTaskDetailsWidgetState extends State<EnterTaskBudgetWidget> {
  final EnterTaskBudgetController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          DefaultTabController(
            length: 2,
            animationDuration: Duration(milliseconds: 300),
            initialIndex: 0,
            child: Wrap(
              children: [
                TabBar(
                  labelColor: AppColors.textColorWhite,
                  unselectedLabelColor: AppColors.textColorPrimary,
                  automaticIndicatorColorAdjustment: true,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: AppColors.appPrimaryColor,
                  ),
                  tabs: [
                    Tab(
                      text: 'Total',
                    ),
                    Tab(
                      text: 'Hourly Rate',
                    ),
                  ],
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.57,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(
                    vertical: AppValues.padding_15,
                  ),
                  child: TabBarView(
                    children: [
                      Expanded(
                        child: Obx(
                          () => CTInputField(
                              controller: controller.taskBudgetController.value,
                              hint: 'Budget',
                              horizontalPadding: AppValues.padding_zero),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Obx(
                              () => CTInputField(
                                  controller:
                                      controller.hoursRateController.value,
                                  hint: 'Hours',
                                  horizontalPadding: AppValues.padding_zero),
                            ),
                            SizedBox(height: 20),
                            Obx(
                              () => CTInputField(
                                  controller:
                                      controller.pricePerHourController.value,
                                  hint: 'Price per hour',
                                  horizontalPadding: AppValues.padding_zero),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
