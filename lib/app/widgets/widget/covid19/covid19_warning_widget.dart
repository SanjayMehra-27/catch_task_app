import 'package:catch_task_app/app/widgets/values/app_colors.dart';
import 'package:catch_task_app/app/widgets/values/text_styles.dart';
import 'package:catch_task_app/app/widgets/widget/labels/widget-key-value-pair/label_value_pair_widget.dart';
import 'package:flutter/material.dart';

class Covid19Warning extends StatelessWidget {
  const Covid19Warning({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: AppColors.appYellow,
          width: 1,
        ),
      ),
      child: LabelValuePairWidget2(
        labelType: LabelType.TOP_DOWN,
        crossAxisAlignment: CrossAxisAlignment.start,
        label: Text(
          'Government Covid-19 Restrictions has been changed.',
          style: boldTitleWhiteStyle.copyWith(
              fontWeight: FontWeight.w500,
              fontSize: 16,
              color: AppColors.textColorPrimary),
        ),
        value: RichText(
            text: TextSpan(
                text: 'Your task may be impacted. See',
                style: boldTitleWhiteStyle.copyWith(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: AppColors.appGrey),
                children: [
              TextSpan(
                text: ' Safety Center',
                style: boldTitleWhiteStyle.copyWith(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    decoration: TextDecoration.underline,
                    color: AppColors.appPrimaryColor),
                children: [
                  TextSpan(
                    text: ' for info.',
                    style: boldTitleWhiteStyle.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: AppColors.appGrey),
                  ),
                ],
              ),
            ])),
      ),
    );
  }
}
