import 'package:catch_task_app/app/widgets/widget/ct_chip/ct_chip.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:catch_task_app/app/modules/browse_task/model/task/task.model.dart';
import 'package:catch_task_app/app/widgets/values/app_colors.dart';

class StatusChip extends StatelessWidget {
  const StatusChip({
    Key? key,
    required this.status,
  }) : super(key: key);
  final TaskStatus status;
  @override
  Widget build(BuildContext context) {
    return CtChip(
      color: getTaskStatusColor(status: status),
      text: status.name.capitalizeFirst.toString());
  }
}

getTaskStatusColor({required TaskStatus status}) {
  switch (status) {
    case TaskStatus.OPEN:
      return AppColors.appPrimaryColor;
    case TaskStatus.ASSIGNED:
      return Color.fromARGB(255, 252, 209, 154);
    case TaskStatus.COMPLETED:
      return AppColors.appGreen;
    case TaskStatus.CANCELLED:
      return Colors.red;
    case TaskStatus.CLOSED:
      return Colors.black45;
    case TaskStatus.EXPIRED:
      return Colors.grey;
    default:
  }
}
