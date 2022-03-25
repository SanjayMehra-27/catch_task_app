import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:catch_task_app/app/modules/browse_task/model/task/task.model.dart';
import 'package:catch_task_app/app/modules/task_details/controllers/task_details_controller.dart';
import 'package:catch_task_app/app/widgets/buttons/rounded/primary_rounded_btn.dart';
import 'package:catch_task_app/app/widgets/values/app_colors.dart';
import 'package:catch_task_app/app/widgets/values/text_styles.dart';
import 'package:intl/intl.dart';

class TaskDetailsPage extends StatelessWidget {
  final TaskModel task;
  TaskDetailsPage({
    Key? key,
    required this.task,
  }) : super(key: key);

  final TaskDetailsController taskDetailsController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: AppColors.appPrimaryColor,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: AppColors.appWhite01),
          onPressed: () => Get.back(),
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          height: Get.height * 0.26,
          width: Get.width,
          decoration: BoxDecoration(
            color: AppColors.appPrimaryColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // todo: Bottom Rounded Container [task details]
              Text('${task.title.capitalizeFirst}',
                  textAlign: TextAlign.start,
                  style: boldTitleWhiteStyle.copyWith(fontSize: 25)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Task Budget : ₹ ${task.budget}',
                      textAlign: TextAlign.start,
                      style: boldTitleWhiteStyle.copyWith(
                          fontSize: 16, fontWeight: FontWeight.w500)),
                  PrimaryRoundedBtn(
                    labelText: 'Make Offer',
                    color: AppColors.appYellow,
                    width: Get.width * 0.35,
                    height: Get.height * 0.05,
                    fontSize: 16,
                  )
                ],
              ),
              SizedBox(height: Get.height * 0.01),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  LabelValuePairWidget(
                    label: CircleAvatar(
                      backgroundImage: NetworkImage(task.imageUrl ?? ''),
                      backgroundColor: AppColors.appPrimaryColor,
                      maxRadius: 30,
                    ),
                    value: '${task.user.name}',
                  ),
                  LabelValuePairWidget(
                    label: Icon(
                      Icons.calendar_today,
                      size: 40,
                      color: AppColors.appWhite01,
                    ),
                    value: '${DateFormat('EEE, dd MMM').format(task.dateTime)}',
                  ),
                  LabelValuePairWidget(
                    label: Icon(
                      Icons.open_in_browser,
                      size: 40,
                      color: AppColors.appWhite01,
                    ),
                    value: '${task.status.name.capitalizeFirst}',
                  ),
                  LabelValuePairWidget(
                    label: Icon(
                      Icons.card_giftcard,
                      size: 40,
                      color: AppColors.appWhite01,
                    ),
                    value: '${task.offersCount} Offers',
                  ),
                ],
              ),

              // todo: Task Description

              // todo: Covid-19 Warning

              // todo: Offers Received
            ],
          ),
        ),
      ),
    );
  }
}

class LabelValuePairWidget extends StatelessWidget {
  const LabelValuePairWidget({
    Key? key,
    required this.label,
    required this.value,
    this.crossAxisAlignment,
    this.mainAxisAlignment,
  }) : super(key: key);

  final Widget label;
  final String value;
  final CrossAxisAlignment? crossAxisAlignment;
  final MainAxisAlignment? mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.center,
      mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
      children: [
        label,
        SizedBox(height: Get.height * 0.01),
        Text('$value',
            textAlign: TextAlign.start,
            style: boldTitleWhiteStyle.copyWith(
                fontSize: 16, fontWeight: FontWeight.w500)),
      ],
    );
  }
}
