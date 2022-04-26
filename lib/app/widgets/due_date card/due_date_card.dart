import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:catch_task_app/app/modules/create_task/widgets/task_date_time/enter_task_date_time_widget.dart' as DayPeriod;
import 'package:catch_task_app/app/widgets/ct_info_card/ct_info_card.dart';
import 'package:catch_task_app/app/widgets/values/app_colors.dart';
import 'package:catch_task_app/app/widgets/values/text_styles.dart';

class DueDateCard extends StatelessWidget {
  const DueDateCard({
    Key? key,
    required this.dueDate,
    required this.dayPeriod,
    this.decoration,
    this.cardHeight,
    this.cardWidth,
  }) : super(key: key);

  final DateTime dueDate;
  final DayPeriod.DayPeriod dayPeriod;
  final Decoration? decoration;
  final double? cardHeight;
  final double? cardWidth;

  @override
  Widget build(BuildContext context) {
    return CTInfoCard(
      height: cardHeight,
      width: cardWidth,
      decoration: decoration ?? BoxDecoration(),
      padding: EdgeInsets.only(right: 25, left: 15, top: 15, bottom: 15),
      primaryIcon: Icon(
        Icons.calendar_today,
        color: AppColors.textColorPrimary,
        size: 20,
      ),
      primaryText: "Due Date",
      subtitleText1: Text(
        //Fri, Jun 20, 2021
        '${DateFormat('EEE, MMM dd, yyyy').format(dueDate)} \n ${dayPeriod.periodName} (${dayPeriod.periodDurationLabel})',
        style: boldTitleWhiteStyle.copyWith(
            fontWeight: FontWeight.w400,
            fontSize: 12,
            color: AppColors.textColorPrimary),
      ),
    );
  }
}
