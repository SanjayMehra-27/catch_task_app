import 'package:catch_task_app/app/modules/browse_task/controllers/browse_task_controller.dart';
import 'package:catch_task_app/app/modules/task_details/views/task_details_view.dart';
import 'package:catch_task_app/app/routes/app_routes.dart';
import 'package:catch_task_app/app/widgets/values/app_colors.dart';
import 'package:catch_task_app/app/widgets/values/app_values.dart';
import 'package:catch_task_app/app/widgets/values/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:catch_task_app/app/modules/browse_task/model/task/task.model.dart';
import 'package:intl/intl.dart';

class TaskTile extends StatelessWidget {
  final TaskModel task;
  TaskTile({
    Key? key,
    required this.task,
  }) : super(key: key);

  BrowseTaskController browseTaskController = Get.find();

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: AppColors.appGrey.withOpacity(0.1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      horizontalTitleGap: AppValues.padding_15,
      minVerticalPadding: AppValues.padding_15,
      leading: CircleAvatar(
        backgroundImage: NetworkImage(task.imageUrl ?? ''),
        backgroundColor: AppColors.appPrimaryColor,
        maxRadius: 30,
      ),
      title: Text('${task.title}',
          textAlign: TextAlign.start, style: labelStylePrimaryTextColor),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // date in [September 12, 2020]
          Text(DateFormat('MMMM d, yyyy').format(task.dateTime)),
          SizedBox(height: AppValues.padding_2),
          // location or remote only based on task is remote or not
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Icon(
              Icons.location_on,
              color: AppColors.appGrey,
              size: 14,
            ),
            SizedBox(width: 2),
            Text(task.isRemoteOnly! ? 'Remote Only' : '${task.location}',
                textAlign: TextAlign.start)
          ]),
          SizedBox(height: AppValues.padding_2),
          // task status & offer count
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                getTaskStatus(status: task.status),
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: getTaskStatusColor(status: task.status),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(width: 2),
              Text(
                '- ${task.offersCount} Offers',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: AppColors.appGrey,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          // pinned or not on top
          GestureDetector(
            onTap: () {
              browseTaskController.pinTask(task);
            },
            child: Icon(
              task.isPinned
                  ? Icons.add_box_rounded
                  : Icons.check_box_outline_blank,
              color:
                  task.isPinned ? AppColors.appPrimaryColor : AppColors.appGrey,
              size: 18,
            ),
          ),
          // budget eg. INR 60000
          Text(
            'INR ${task.budget}',
            textAlign: TextAlign.start,
            style: TextStyle(
              color: AppColors.textColorPrimary,
              fontSize: 14,
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      ),
      onTap: () {
       Get.to(() => TaskDetailsPage(task: task));
      },
    );
  }
}

// utils

/// get task status
String getTaskStatus({required TaskStatus status}) {
  switch (status) {
    case TaskStatus.OPEN:
      return 'Task Open';
    case TaskStatus.ASSIGNED:
      return 'Task Assigned';
    case TaskStatus.COMPLETED:
      return 'Task Completed';
    case TaskStatus.CANCELLED:
      return 'Task Cancelled';
    case TaskStatus.EXPIRED:
      return 'Task Expired';
    default:
      return 'Unknown';
  }
}

/// get task status color
Color getTaskStatusColor({required TaskStatus status}) {
  switch (status) {
    case TaskStatus.OPEN:
      return AppColors.appGreen;
    case TaskStatus.ASSIGNED:
      return AppColors.appYellow;
    case TaskStatus.COMPLETED:
      return AppColors.appPrimaryColor;
    case TaskStatus.CANCELLED:
      return AppColors.errorColor;
    case TaskStatus.EXPIRED:
      return AppColors.textColorCyan;
    default:
      return AppColors.colorAccent;
  }
}
