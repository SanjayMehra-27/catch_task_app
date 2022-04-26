import 'package:catch_task_app/app/modules/browse_task/model/task/task.model.dart';
import 'package:catch_task_app/app/widgets/values/app_colors.dart';
import 'package:catch_task_app/app/widgets/values/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StatusChip extends StatelessWidget {
  const StatusChip({
    Key? key,
    required this.status,
  }) : super(key: key);
  final TaskStatus status;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: getTaskStatusColor(status: status),
      ),
      child: Text('${status.name.capitalizeFirst}', style: cardSmallTagStyle),
    );
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
