import 'package:catch_task_app/app/widgets/values/app_colors.dart';
import 'package:flutter/material.dart';

import 'package:catch_task_app/app/modules/view_my_task/widgets/body/view_my_task_body_widget.dart';
import 'package:catch_task_app/app/widgets/widget/ct_chip/ct_chip.dart';

enum UserType {
  Poster,
  Tasker,
}

class PosterTaskerChip extends StatefulWidget {
  const PosterTaskerChip({
    Key? key,
    required this.userType,
  }) : super(key: key);
  final UserType userType;

  @override
  State<PosterTaskerChip> createState() => _PosterTaskerChipState();
}

class _PosterTaskerChipState extends State<PosterTaskerChip> {
  @override
  Widget build(BuildContext context) {
    return CtChip(
      radius: 15,
      color: getUserChipsColor(userType: widget.userType),
      text: widget.userType == UserType.Poster ? 'Poster' : 'Tasker');
  }

  getUserChipsColor({required UserType userType}) {
    switch (userType) {
      case UserType.Tasker:
        return AppColors.appPrimaryColor.withOpacity(0.6);
      case UserType.Poster:
        return Color(0xFFf8e3c7);
      default:
    }
  }
}
