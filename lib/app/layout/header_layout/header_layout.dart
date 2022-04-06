import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:catch_task_app/app/widgets/values/app_colors.dart';

class HeaderLayout extends StatelessWidget {
  const HeaderLayout({
    Key? key,
    required this.child,
    this.height,
    this.padding,
  }) : super(key: key);
  final Widget child;
  final double? height;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? EdgeInsets.all(20),
      height: height ?? Get.height * 0.26,
      width: Get.width,
      decoration: BoxDecoration(
        color: AppColors.appPrimaryColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
    );
  }
}
