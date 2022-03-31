import 'package:flutter/material.dart';

enum LabelType { None, INLINE, TOP_DOWN }
class LabelValuePairWidget2 extends StatelessWidget {
  LabelValuePairWidget2({
    Key? key,
    required this.value,
    required this.label,
    this.labelType,
    this.mainAxisAlignment,
    this.crossAxisAlignment,
    this.spacing,
  }) : super(key: key);

  final Widget value;
  final Widget label;
  final double? spacing;
  LabelType? labelType = LabelType.TOP_DOWN;
  final MainAxisAlignment? mainAxisAlignment;
  final CrossAxisAlignment? crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return labelType?.index == LabelType.TOP_DOWN.index
        ? Column(
            crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.center,
            mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.center,
            children: [
              label,
              SizedBox(height: spacing ?? 8),
              value,
            ],
          )
        : Container(
            child: Row(
              crossAxisAlignment:crossAxisAlignment ?? CrossAxisAlignment.start,
              mainAxisAlignment:mainAxisAlignment ?? MainAxisAlignment.spaceBetween,
              children: [
                label,
                SizedBox(height: spacing ?? 8),
                value,
              ],
            ),
          );
  }
}
