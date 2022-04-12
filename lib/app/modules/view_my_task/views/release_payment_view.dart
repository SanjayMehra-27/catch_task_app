import 'package:catch_task_app/app/widgets/buttons/rounded/primary_rounded_btn.dart';
import 'package:catch_task_app/app/widgets/values/app_colors.dart';
import 'package:catch_task_app/app/widgets/values/text_styles.dart';
import 'package:catch_task_app/app/widgets/widget/labels/icon-with-label/inline_icon_value_pair_label.dart';
import 'package:catch_task_app/app/widgets/widget/labels/label_value_pair/label_value_pair_widget.dart';
import 'package:catch_task_app/app/widgets/widget/need_help/need_help_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:readmore/readmore.dart';

class ReleasePaymentView extends StatelessWidget {
  const ReleasePaymentView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Get.back(),
        ),
        title: Text('Release Payment'),
      ),
      body: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ! Task Name & Description
              Text("Need Electrician",
                  style: boldTitleStyle.copyWith(fontSize: 20)),
              ReadMoreText(
                  'lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                  trimLines: 4,
                  colorClickableText: Colors.blue,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: 'Read more',
                  trimExpandedText: 'less',
                  moreStyle: boldTitleWhiteStyle.copyWith(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                  lessStyle: boldTitleWhiteStyle.copyWith(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                  style: boldTitleWhiteStyle.copyWith(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: AppColors.appGrey)),

              SizedBox(height: 20),
              // ! Tasker Profile & Rating
              Divider(color: AppColors.appGrey),
              TaskerBriefProfile(),
              Divider(color: AppColors.appGrey),
              // ! Task Completion label
              IconValuePairLabelWidget(
                  size: 30,
                  icon: Icons.check_circle,
                  value: 'Task Completed on Sat 12 Dec,2020',
                  iconColor: Color(0XFF31e676)),
              Divider(color: AppColors.appGrey),

              // ! Need Help
              Container(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: NeedHelpWidget(
                  message: 'Are you facing any issues?',
                  description: 'Please contact us.',
                  buttonShape: ButtonShape.ROUNDED,
                  buttonColor: AppColors.appYellow,
                ),
              ),

              // ! Payment Summary
              Text("Payment Summary",
                  style: boldTitleStyle.copyWith(fontSize: 16)),
              Divider(color: AppColors.appGrey),
              SizedBox(height: 20),
              LabelValuePairWidget(
                labelText: 'Total',
                labelTextStyle: cardSubtitleStyle,
                value: '₹ 100',
                valueStyle:
                    cardSubtitleStyle.copyWith(fontWeight: FontWeight.w800),
              ),
              SizedBox(height: 10),
              LabelValuePairWidget(
                labelText: 'GST (12%)',
                labelTextStyle: cardSubtitleStyle,
                value: '₹ 12',
                valueStyle:
                    cardSubtitleStyle.copyWith(fontWeight: FontWeight.w800),
              ),
              SizedBox(height: 10),
              LabelValuePairWidget(
                labelText: 'Service Charge',
                labelTextStyle: cardSubtitleStyle,
                value: '₹ 12',
                valueStyle:
                    cardSubtitleStyle.copyWith(fontWeight: FontWeight.w800),
              ),
              SizedBox(height: 20),
              Divider(color: AppColors.appGrey),
              SizedBox(height: 10),
                ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 0),
                  leading: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Amount Paid (Online)",
                      style: boldTitleStyle.copyWith(fontSize: 16)),
                      Text("Transaction ID: 123456789",
                      style: boldTitleStyle.copyWith(fontSize: 14)),
                      Text("View Invoice",
                      style: primaryColorSubtitleStyle.copyWith(color: Colors.blue, fontSize: 14, fontWeight: FontWeight.w700)),
                    ],
                  ),
                  trailing: Text("₹ 600",
                      style: boldTitleStyle.copyWith(fontSize: 20)),
                ),
              SizedBox(height: 10),
              Divider(color: AppColors.appGrey),
            ],
          )),
    );
  }
}

class TaskerBriefProfile extends StatelessWidget {
  const TaskerBriefProfile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(vertical: 15),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(
          'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
        ),
        radius: 25,
      ),
      title: Text('Swayam Padhi', style: boldTitleStyle.copyWith(fontSize: 16)),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Electrician', style: boldTitleStyle.copyWith(fontSize: 14)),
          Row(
            children: [
              Text('4.5',
                  style: boldTitleStyle.copyWith(
                      fontSize: 16, color: AppColors.appYellow)),
              Icon(Icons.star, color: AppColors.appYellow, size: 16),
              Text('(20 Reviews)',
                  style: boldTitleStyle.copyWith(
                    fontSize: 16,
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
