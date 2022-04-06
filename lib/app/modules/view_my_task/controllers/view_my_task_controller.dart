import 'package:catch_task_app/app/routes/app_routes.dart';
import 'package:catch_task_app/app/widgets/buttons/rounded/primary_rounded_btn.dart';
import 'package:catch_task_app/app/widgets/values/app_colors.dart';
import 'package:catch_task_app/app/widgets/values/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ViewMyTaskController extends GetxController {
  void confirmOfferDialog(int bidPrice) {
    Get.dialog(
      AlertDialog(
        title: Image.asset(
          'assets/images/tasker_budget@test.png',
          fit: BoxFit.contain,
        ),
        content: Wrap(
          alignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            Text('Do you want to confirm this budget ?'),
            SizedBox(height: Get.height * 0.03),
            Text('₹ $bidPrice',
                style: bigTitleWhiteStyle.copyWith(
                    color: AppColors.appPrimaryColor)),
          ],
        ),
        actionsPadding: EdgeInsets.only(
          top: Get.height * 0.02,
          bottom: Get.height * 0.02,
        ),
        contentPadding: EdgeInsets.all(15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        actionsAlignment: MainAxisAlignment.spaceBetween,
        actionsOverflowButtonSpacing: 10,
        actions: [
          PrimaryButton(
              width: Get.width * 0.35,
              height: Get.height * 0.05,
              labelText: 'Cancel',
              textColor: AppColors.textColorPrimary,
              color: AppColors.appWhite02,
              onTap: () {
                Get.back();
              }),
          PrimaryButton(
              width: Get.width * 0.35,
              height: Get.height * 0.05,
              labelText: 'Confirm',
              color: AppColors.appPrimaryColor,
              onTap: () {
                Get.back();
                offerSubmittedDialog();
                Future.delayed(Duration(seconds: 2), () {
                  Get.offAllNamed(AppRoutes.BROWSE_TASK);
                });
              }),
        ],
      ),
      barrierDismissible: false,
    );
  }

  void offerSubmittedDialog() {
    Get.dialog(
      AlertDialog(
        title: Icon(
          Icons.check_circle,
          color: AppColors.appGreen,
          size: Get.height * 0.08,
        ),
        content: Wrap(
          alignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            Text('Your offer has been submitted.',
                style: bigTitleWhiteStyle.copyWith(
                    color: AppColors.appGreen,
                    fontSize: 20,
                    fontWeight: FontWeight.w500)),
            SizedBox(height: Get.height * 0.03),
            Text(
                'Et occaecati voluptas dolorem dolore libero qui. dolorem dolore libero qu',
                
                textAlign: TextAlign.center,
                textWidthBasis: TextWidthBasis.parent,
                style: cardTagStyle.copyWith(fontSize: 14)),
          ],
        ),
        contentPadding: EdgeInsets.all(30),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      transitionDuration: Duration(seconds: 1),
    );
  }
}
