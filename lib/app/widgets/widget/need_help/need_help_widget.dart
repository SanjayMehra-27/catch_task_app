import 'package:catch_task_app/app/widgets/buttons/rounded/primary_rounded_btn.dart';
import 'package:catch_task_app/app/widgets/values/app_colors.dart';
import 'package:catch_task_app/app/widgets/values/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NeedHelpWidget extends StatelessWidget {
  const NeedHelpWidget({
    Key? key,
    required this.message,
    this.description,
    this.buttonShape,
    this.buttonText,
    this.onPressed,
    this.buttonColor,
    this.textColor,
  }) : super(key: key);
  final String message;
  final String? description;
  final ButtonShape? buttonShape;
  final String? buttonText;
  final Function? onPressed;
  final Color? buttonColor;
  final Color? textColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              message,
              softWrap: false,
              overflow: TextOverflow.ellipsis,
              style: boldTitleWhiteStyle.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: AppColors.textColorPrimary),
            ),
            description != null
                ? Container(
                  width: Get.width * 0.5,
                  child: Text(
                      description ?? '',
                      textAlign: TextAlign.start,
                      strutStyle: StrutStyle(
                        leadingDistribution: TextLeadingDistribution.even
                      ),
                      softWrap: true,
                      style: cardSubtitleStyle,
                    ),
                )
                : Container(),
          ],
        ),
        PrimaryButton(
          width: 120,
          color: buttonColor,
          shape: buttonShape ?? ButtonShape.RECTANGLE,
          height: 40,
          labelText: buttonText ?? 'Need help ?',
          textColor: textColor,
        )
      ],
    );
  }
}
