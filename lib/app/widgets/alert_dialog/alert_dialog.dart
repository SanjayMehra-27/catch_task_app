import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:catch_task_app/app/widgets/values/app_colors.dart';
import 'package:catch_task_app/app/widgets/values/text_styles.dart';

class CtAlertDialog extends StatelessWidget {
  const CtAlertDialog({
    Key? key,
    required this.title,
    this.titleStyle,
    this.spacing,
    required this.message,
    this.messageStyle,
    this.headerImage,
    this.actions,
    this.contentPadding,
    this.actionPadding,
    this.actionMainAxisAlignment,
  }) : super(key: key);
  final String title;
  final TextStyle? titleStyle;
  final double? spacing;
  final String message;
  final TextStyle? messageStyle;
  final String? headerImage;
  final List<Widget>? actions;
  final EdgeInsets? contentPadding;
  final EdgeInsets? actionPadding;
  final MainAxisAlignment? actionMainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: headerImage != null ? Image.asset(
        headerImage!,
        fit: BoxFit.contain,
      ) : null,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style:titleStyle ?? boldTitleStyle.copyWith(color: AppColors.textColorPrimary)),
          SizedBox(height:spacing ?? Get.height * 0.01),
          Text('$message',
              style: messageStyle ??  cardSubtitleStyle),
        ],
      ),
      actionsPadding: actionPadding ?? EdgeInsets.symmetric(horizontal: Get.width * 0.05, vertical: Get.height * 0.02),
      contentPadding: contentPadding ?? EdgeInsets.symmetric(horizontal: Get.width * 0.06, vertical: Get.height * 0.02),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      actionsAlignment: actionMainAxisAlignment ?? MainAxisAlignment.spaceBetween,
      actionsOverflowButtonSpacing: 10,
      actions: actions

    );
  }
}
