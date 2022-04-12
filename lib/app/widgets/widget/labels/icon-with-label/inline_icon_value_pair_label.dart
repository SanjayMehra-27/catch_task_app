import 'package:catch_task_app/app/widgets/values/app_colors.dart';
import 'package:catch_task_app/app/widgets/values/text_styles.dart';
import 'package:flutter/material.dart';

class IconValuePairLabelWidget extends StatelessWidget {
  final IconData icon;
  final String value;
  final TextStyle? valueTextStyle;
  final Color? iconColor;
  final double? size;
  final Widget? suffix;
  final int? maxLines;

  const IconValuePairLabelWidget(
      {Key? key,
      required this.icon,
      required this.value,
      this.iconColor,
      this.valueTextStyle,
      this.size,
      this.suffix,
      this.maxLines})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: iconColor ?? Colors.white,
          size: size ?? 20,
        ),
        SizedBox(
          width: 5,
        ),
        Expanded(
            child: Padding(
                padding: const EdgeInsets.fromLTRB(4, 8, 0, 8),
                child: Text(
                  "$value",
                  // overflow: TextOverflow.ellipsis,
                  style: valueTextStyle ?? boldTitleStyle.copyWith(fontSize: 16, color: AppColors.appGrey),
                  maxLines: maxLines,
                ))),
        suffix ?? Container(),
      ],
    );
  }
}
