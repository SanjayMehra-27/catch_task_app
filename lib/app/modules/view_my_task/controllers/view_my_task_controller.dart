import 'package:catch_task_app/app/modules/view_my_task/views/release_payment_view.dart';
import 'package:catch_task_app/app/routes/app_routes.dart';
import 'package:catch_task_app/app/widgets/alert_dialog/alert_dialog.dart';
import 'package:catch_task_app/app/widgets/buttons/rounded/primary_rounded_btn.dart';
import 'package:catch_task_app/app/widgets/values/app_colors.dart';
import 'package:catch_task_app/app/widgets/values/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ViewMyTaskController extends GetxController {

  void releasePaymentDialog() {
    Get.dialog(
      CtAlertDialog(
        title: 'Are you sure you want to release the payment?',
        message: 'lorem enim qui temporibus ex sapiente.',
        actionMainAxisAlignment: MainAxisAlignment.spaceAround,
        actions: [
          PrimaryButton(
              shape: ButtonShape.RECTANGLE,
              width: Get.width * 0.25,
              height: Get.height * 0.05,
              labelText: 'No',
              textColor: AppColors.textColorPrimary,
              color: AppColors.appWhite02,
              onTap: () {
                Get.back();
              }),
          PrimaryButton(
              shape: ButtonShape.RECTANGLE,
              width: Get.width * 0.25,
              height: Get.height * 0.05,
              labelText: 'Yes',
              color: AppColors.appPrimaryColor,
              onTap: () {
               Get.to(ReleasePaymentView(), transition: Transition.rightToLeft, duration: Duration(milliseconds: 500));
              }),
            
        ],
        headerImage: "assets/images/release_payment@test.png",
      ),
    );
  }
}
