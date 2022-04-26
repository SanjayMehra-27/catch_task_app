import 'package:catch_task_app/app/modules/create_task/widgets/task_date_time/enter_task_date_time_widget.dart';
import 'package:catch_task_app/app/widgets/buttons/rounded/primary_rounded_btn.dart';
import 'package:catch_task_app/app/widgets/ct_info_card/ct_info_card.dart';
import 'package:catch_task_app/app/widgets/due_date%20card/due_date_card.dart';
import 'package:catch_task_app/app/widgets/user_task_info_card/user_task_info_card.dart';
import 'package:catch_task_app/app/widgets/values/app_colors.dart';
import 'package:catch_task_app/app/widgets/values/text_styles.dart';
import 'package:catch_task_app/app/widgets/widget/CheckBox/checkbox_widget.dart';
import 'package:catch_task_app/app/widgets/widget/ct_text_field.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/task_submission_controller.dart';

class TaskSubmissionView extends GetView<TaskSubmissionController> {
  final controller =
      Get.put<TaskSubmissionController>(TaskSubmissionController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Get.back(),
        ),
        centerTitle: false,
        title: Text('Task Submission'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey.withOpacity(0.25)),
              ),
              child: UserTaskInfoCard(task: controller.task.value)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DueDateCard(
                cardHeight: 110,
                cardWidth: Get.width * 0.4,
                decoration: BoxDecoration(
                  color: AppColors.lightGreyColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                dueDate: controller.task.value.dateTime,
                dayPeriod: dayPeriods[3],
              ),
              CTInfoCard(
                  height: 110,
                  width: Get.width * 0.45,
                  decoration: BoxDecoration(
                    color: AppColors.lightGreyColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  primaryIcon: Icon(Icons.local_offer),
                  primaryText: 'Amount Offered',
                  subtitleText1: Text('\$ 649',
                      style: cardSubtitleStyle.copyWith(
                          color: AppColors.textColorPrimary, fontSize: 14)),
                  subtitleText2: RichText(
                    text: TextSpan(
                      text: 'secure with ',
                      style: cardSubtitleStyle.copyWith(
                          color: AppColors.appDarkGrey, fontSize: 12),
                      children: [
                        TextSpan(
                          text: 'Catchtask Pay',
                          style: cardSubtitleStyle.copyWith(
                              color: AppColors.appPrimaryColor, fontSize: 12),
                        ),
                      ],
                    ),
                  )),
            ],
          ),
          SizedBox(height: 20),
          CTInputField(
            hint: 'Please provide more details',
            maxLines: 6,
          ),
          SizedBox(height: 20),
          Obx ( () => CustomCheckbox(
              isChecked: controller.checkBoxController.value.isChecked.value,
              onChecked: (value) {
                controller.checkBoxController.value.isChecked(!value);
              },
              labelName:
                  'I have completed the task as per requested \nrequirements'),),
          SizedBox(height: 20),
          PrimaryButton(
            child: Text('Submit Task & Request Payment'),
          )
        ]),
      ),
    );
  }
}
