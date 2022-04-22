import 'package:catch_task_app/app/widgets/values/app_colors.dart';
import 'package:catch_task_app/app/widgets/values/text_styles.dart';
import 'package:catch_task_app/app/widgets/widget/containers/ct_container/ct_container.dart';
import 'package:flutter/material.dart';

class CTInfoCard extends StatelessWidget {
  const CTInfoCard({
    Key? key,
    required this.primaryIcon,
    required this.primaryText,
    this.secondaryIcon,
    this.subtitleText1,
    this.subtitleText2,
  }) : super(key: key);

  final Icon primaryIcon;
  final String primaryText;
  final Widget? secondaryIcon;
  final Widget? subtitleText1;
  final Widget? subtitleText2;

  @override
  Widget build(BuildContext context) {
    return CTContainer(
      color: Colors.white70,
      margin: EdgeInsets.only(
        top: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              primaryIcon,
              secondaryIcon ?? Container(),
            ],
          ),
          Text(
            '$primaryText',
            style: boldTitleWhiteStyle.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: AppColors.textColorPrimary),
          ),
          subtitleText1 ?? Container(),
          subtitleText2 ?? Container(),
        ],
      ),
    );
  }
}
