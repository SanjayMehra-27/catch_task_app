import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:catch_task_app/app/widgets/values/text_styles.dart';
import 'package:catch_task_app/app/widgets/widget/labels/widget-key-value-pair/label_value_pair_widget.dart';

class LabelValuePairWidget extends StatelessWidget {
  LabelValuePairWidget({
    Key? key,
    this.label,
    this.labelText,
    required this.value,
    this.valueStyle,
    this.labelTextStyle,
    this.labelType = LabelType.INLINE,
    this.spacing,
    this.crossAxisAlignment,
    this.mainAxisAlignment,
  }) : super(key: key);

  final Widget? label;
  final String? labelText;
  final String value;
  final TextStyle? valueStyle;
  final TextStyle? labelTextStyle;
  final double? spacing;
  final LabelType? labelType;
  final CrossAxisAlignment? crossAxisAlignment;
  final MainAxisAlignment? mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return labelType?.index == LabelType.TOP_DOWN.index ?
    Column(
      crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.center,
      mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
      children: [
        labelText != null ?  Text('$labelText',
                  style: labelTextStyle ??
                      cardTitleStyle.copyWith(
                          fontSize: 16, fontWeight: FontWeight.w500)) : label != null ? label! : Container(),
        SizedBox(height:spacing ?? Get.height * 0.01),
        Text('$value',
            style: valueStyle ?? cardSubtitleStyle.copyWith(
                fontSize: 16, fontWeight: FontWeight.w500)),
      ],
    ) :
    Container(
      child: Row(
        crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
        mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.spaceBetween,
        children: [
          labelText != null
                    ? Text('$labelText',
                        style: labelTextStyle ??
                            cardTitleStyle.copyWith(
                                fontSize: 16, fontWeight: FontWeight.w500))
                    : label != null
                        ? label!
                        : Container(),
          SizedBox(height: spacing ?? Get.width * 0.01),
           Text('$value',
                    style: valueStyle ??
                        cardSubtitleStyle.copyWith(
                            fontSize: 16, fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }
}
