import 'package:catch_task_app/app/widgets/values/app_colors.dart';
import 'package:catch_task_app/app/widgets/values/text_styles.dart';
import 'package:flutter/material.dart';

class CTButton extends StatelessWidget {
  final double width;
  final double height;
  final Function()? onTap;
  final String title;
  final IconData? icon;
  final double? iconSize;
  final Color backgroundColor;
  final Color textColor;
  final Color borderColor;
  final double borderRadius;

  CTButton({
    Key? key,
    required this.width,
    required this.height,
    required this.title,
    required this.onTap,
    this.icon,
    this.backgroundColor = AppColors.appPrimaryColor,
    this.textColor = AppColors.white,
    this.borderColor = AppColors.appPrimaryColor,
    this.iconSize = 18,
    this.borderRadius = 10.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _theme = Theme.of(context);
    EdgeInsetsGeometry edgeInsets = EdgeInsets.all(0);
    if (width == null || height == null) {
      edgeInsets = EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0);
    }

    return Padding(
      padding: edgeInsets,
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: width,
          height: height,
          padding: edgeInsets,
          decoration: BoxDecoration(
              color: backgroundColor,
              // border: Border.all(color: borderColor),
              borderRadius: BorderRadius.circular(borderRadius),
              boxShadow: [
                BoxShadow(
                  color: backgroundColor.withOpacity(0.2),
                  blurRadius: 1,
                  spreadRadius: 0.5,
                  offset: Offset(2.0, 2.0),
                )
              ]),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _buildTitle(_theme),
                _buildIcon(_theme),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTitle(ThemeData _theme) {
    return Text(title, style: btnwhiteText14);
  }

  Widget _buildIcon(ThemeData theme) {
    if (icon != null) {
      return Padding(
        padding: const EdgeInsets.only(
          right: 2.0,
        ),
        child: Icon(
          icon,
          size: iconSize,
          color: AppColors.white,
        ),
      );
    }

    return SizedBox();
  }
}
