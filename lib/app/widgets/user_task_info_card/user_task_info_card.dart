import 'package:catch_task_app/app/modules/browse_task/model/task/task.model.dart';
import 'package:catch_task_app/app/widgets/task-status-chips/task_status_chip.dart';
import 'package:catch_task_app/app/widgets/values/app_colors.dart';
import 'package:catch_task_app/app/widgets/values/text_styles.dart';
import 'package:flutter/material.dart';

class UserTaskInfoCard extends StatelessWidget {
  const UserTaskInfoCard({
    Key? key, 
    required this.task,
  }) : super(key: key);
  final TaskModel task;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text('Fri,23 July 2021', style: cardSmallTagStyle),
            SizedBox(width: 10),
            StatusChip(
              status: task.status,
            )
          ],
        ),
        Text('Need to drop my son to school', style: cardTitleStyle),
        SizedBox(height: 10),
        Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1518791841217-8f162f1e1131?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'),
              backgroundColor: AppColors.appPrimaryColor,
              maxRadius: 30,
            ),
            SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Manas Pradhan',
                    style: cardTitleStyle.copyWith(fontSize: 18)),
                Text('Assign to Tasker Name', style: cardSmallTagStyle),
                Text('Assign date Fri,25 July 2021', style: cardSmallTagStyle),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
