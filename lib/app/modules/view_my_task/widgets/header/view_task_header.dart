import 'package:catch_task_app/app/layout/header_layout/header_layout.dart';
import 'package:catch_task_app/app/modules/browse_task/model/task/task.model.dart';
import 'package:catch_task_app/app/modules/task_details/controllers/task_details_controller.dart';
import 'package:catch_task_app/app/modules/task_details/widgets/make-offer-dialog/make_offer_dialog.dart';
import 'package:catch_task_app/app/widgets/buttons/rounded/primary_rounded_btn.dart';
import 'package:catch_task_app/app/widgets/values/app_colors.dart';
import 'package:catch_task_app/app/widgets/values/text_styles.dart';
import 'package:catch_task_app/app/widgets/widget/labels/label_value_pair/label_value_pair_widget.dart';
import 'package:catch_task_app/app/widgets/widget/labels/widget-key-value-pair/label_value_pair_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class ViewMyTaskHeaderWidget extends StatelessWidget {
  const ViewMyTaskHeaderWidget({
    Key? key,
    required this.task,
  }) : super(key: key);

  final TaskModel task;

  TaskDetailsController get taskDetailsController => Get.find<TaskDetailsController>();

  @override
  Widget build(BuildContext context) {
    return HeaderLayout(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // todo: Bottom Rounded Container [task details]
          Text('${task.title.capitalizeFirst}',textAlign: TextAlign.start,style: boldTitleWhiteStyle.copyWith(fontSize: 30)),
              Text('Electrician',
                  textAlign: TextAlign.start,style: boldTitleWhiteStyle.copyWith(fontSize: 16, fontWeight: FontWeight.w300)),
          SizedBox(height: Get.height * 0.03),
          // LabelValuePairWidget2(
          //   label: LabelValuePairWidget(
          //     spacing: 0,
          //     mainAxisAlignment: MainAxisAlignment.spaceAround,
          //     labelType: LabelType.INLINE,
          //     label: 
          //     value: '${task.user.name}',
          //   ),
          //   value: 
         
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                        backgroundImage: NetworkImage(task.imageUrl ?? ''),
                        backgroundColor: AppColors.appPrimaryColor,
                        maxRadius: 25,
                      ),
                  SizedBox(width: Get.width * 0.02),
                  Text("${task.user.name}",style: boldTitleWhiteStyle.copyWith(fontSize: 16, fontWeight: FontWeight.w500)),
                ],
              ),
          PrimaryButton(
            child: LabelValuePairWidget(
              spacing: 0,
              crossAxisAlignment : CrossAxisAlignment.center,
              labelType: LabelType.TOP_DOWN,
              label: Text("Pay ₹ ${task.budget}".toUpperCase(),style: boldTitleWhiteStyle.copyWith(fontSize: 18, fontWeight: FontWeight.bold, color: AppColors.textColorPrimary),),
              value: 'Release Payment',
              valueStyle: boldTitleWhiteStyle.copyWith(fontSize: 16, fontWeight: FontWeight.w500, color: AppColors.appGreen),
            ),
            height: Get.height * 0.07,
            width: Get.width * 0.45,
            color: AppColors.white,
            shape: ButtonShape.RECTANGLE,
            ),
            ],
          ),
        ],
      ),
    );
  }
}
