import 'package:catch_task_app/app/widgets/values/app_colors.dart';
import 'package:catch_task_app/app/widgets/values/text_styles.dart';
import 'package:flutter/material.dart';

class CtChip extends StatelessWidget {
  const CtChip({
    Key? key,
    required this.text,
    this.radius,
    this.padding,
    this.textStyle,
    this.height,
    this.width,
    this.color,
    this.shape,
  }) : super(key: key);

  final String text;
  final double? radius;
  final EdgeInsets? padding;
  final TextStyle? textStyle;
  final double? height;
  final double? width;
  final Color? color;
  final BoxShape? shape;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: padding ?? EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      decoration: BoxDecoration(
        shape: shape ?? BoxShape.rectangle,
        borderRadius: BorderRadius.circular(radius ?? 5),
        color: color ?? AppColors.appPrimaryColor,
      ),
      child: Text('$text', style: textStyle ?? cardSmallTagStyle),
    );
  }
}
