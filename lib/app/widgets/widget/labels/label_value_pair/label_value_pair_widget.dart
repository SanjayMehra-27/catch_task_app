import 'package:catch_task_app/app/widgets/values/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
