import 'package:catch_task_app/app/widgets/values/app_colors.dart';
import 'package:catch_task_app/app/widgets/values/text_styles.dart';
import 'package:flutter/material.dart';

class LabeledText extends StatelessWidget {
  final IconData? icon;
  final String? imageIcon;
  final String text;

  const LabeledText({
    Key? key,
    this.icon,
    this.imageIcon,
    this.text = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        children: [
          icon != null
              ? Icon(
                  icon,
                  size: 25,
                )
              : Image.asset(
                  imageIcon!,
                  scale: 1.6,
            color: AppColors.appPrimaryColor,
                ),
          SizedBox(
            width: 5,
          ),
          Text(text, style: textFiled14)
        ],
      ),
    );
  }
}
