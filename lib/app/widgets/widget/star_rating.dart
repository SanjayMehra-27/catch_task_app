import 'package:catch_task_app/app/widgets/values/app_colors.dart';
import 'package:flutter/material.dart';

class StarDisplay extends StatelessWidget {
  final int value;
  const StarDisplay({this.value = 0});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        return Icon(
          index < value ? Icons.star_rounded : Icons.star_border_rounded,
          color: AppColors.appYellow,
          size: 18,
        );
      }),
    );
  }
}
