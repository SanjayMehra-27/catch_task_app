import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:catch_task_app/app/widgets/values/text_styles.dart';
import 'package:catch_task_app/app/widgets/widget/labels/widget-key-value-pair/label_value_pair_widget.dart';

class LabelValuePairWidget extends StatelessWidget {
  LabelValuePairWidget({
    Key? key,
    required this.label,
    required this.value,
    this.spacing,
    this.labelType,
    this.crossAxisAlignment,
    this.valueStyle,
    this.mainAxisAlignment,
  }) : super(key: key);

  final Widget label;
  final String value;
  final TextStyle? valueStyle;
  final double? spacing;
  LabelType? labelType = LabelType.TOP_DOWN;
  final CrossAxisAlignment? crossAxisAlignment;
  final MainAxisAlignment? mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return labelType?.index == LabelType.TOP_DOWN.index ?
    Column(
      crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.center,
      mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
      children: [
        label,
        SizedBox(height:spacing ?? Get.height * 0.01),
        Text('$value',
            style: valueStyle ?? boldTitleWhiteStyle.copyWith(
                fontSize: 16, fontWeight: FontWeight.w500)),
      ],
    ) :
    Container(
      child: Row(
        crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
        mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.spaceBetween,
        children: [
          label,
          SizedBox(height: spacing ?? Get.width * 0.01),
          Text('$value',
              style: valueStyle ?? boldTitleWhiteStyle.copyWith(
                  fontSize: 16, fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }
}
