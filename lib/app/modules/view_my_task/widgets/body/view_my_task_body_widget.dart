import 'package:catch_task_app/app/widgets/due_date%20card/due_date_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:readmore/readmore.dart';

import 'package:catch_task_app/app/modules/browse_task/model/offer-received/offer_received.dart';
import 'package:catch_task_app/app/modules/browse_task/model/task/task.model.dart';
import 'package:catch_task_app/app/modules/create_task/widgets/task_date_time/enter_task_date_time_widget.dart';
import 'package:catch_task_app/app/widgets/ct_info_card/ct_info_card.dart';
import 'package:catch_task_app/app/widgets/timeline/time_line.dart';
import 'package:catch_task_app/app/widgets/values/app_colors.dart';
import 'package:catch_task_app/app/widgets/values/text_styles.dart';
import 'package:catch_task_app/app/widgets/widget/containers/ct_container/ct_container.dart';
import 'package:catch_task_app/app/widgets/widget/covid19/covid19_warning_widget.dart';
import 'package:catch_task_app/app/widgets/widget/need_help/need_help_widget.dart';

class ViewMyTasKBodyWidget extends StatelessWidget {
  const ViewMyTasKBodyWidget({
    Key? key,
    required this.task,
  }) : super(key: key);

  final TaskModel task;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //! Task Timeline
            Timeline(),

            // Due date
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DueDateCard(
                  dueDate: task.dateTime,
                  dayPeriod: dayPeriods[0],
                ),
                CTInfoCard(
                  primaryIcon: Icon(
                    Icons.lock,
                    color: AppColors.textColorPrimary,
                    size: 20,
                  ),
                  secondaryIcon: Image.asset(
                    'assets/images/catchTaskPay@test.png',
                    height: 20,
                    width: 100,
                    alignment: Alignment.topRight,
                  ),
                  primaryText: 'Payments Terms',
                  subtitleText1: Text(
                    'CatchTask PAY',
                    style: boldTitleWhiteStyle.copyWith(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: AppColors.textColorPrimary),
                  ),
                  subtitleText2: Row(
                    children: [
                      Icon(
                        Icons.check_circle,
                        color: AppColors.appGreen,
                        size: 16,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Secure',
                        textAlign: TextAlign.right,
                        style: boldTitleWhiteStyle.copyWith(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: AppColors.appGreen),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            // Need Help ?
            CTContainer(
                color: Colors.white70,
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                margin: EdgeInsets.only(
                  top: 20,
                ),
                child: NeedHelpWidget(
                  message:
                      'If you have facing any issues\nKindly contact us at',
                )),

            // todo: Task Description
            CTContainer(
              width: Get.width,
              margin: EdgeInsets.symmetric(
                vertical: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Task Description',
                    style: boldTitleWhiteStyle.copyWith(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: AppColors.textColorPrimary),
                  ),
                  Text(
                    'Must Have',
                    style: boldTitleWhiteStyle.copyWith(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: AppColors.appDarkGrey),
                  ),
                  Container(
                    height: 50,
                    child: ListView.separated(
                      shrinkWrap: true,
                      itemCount: 10,
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      separatorBuilder: (context, index) => SizedBox(
                        width: 15,
                      ),
                      itemBuilder: (context, index) => Chip(
                        label: Text('Tools'),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6)),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  ReadMoreText('${task.description}',
                      trimLines: 4,
                      colorClickableText: Colors.blue,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: 'Read more',
                      trimExpandedText: 'less',
                      moreStyle: boldTitleWhiteStyle.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Colors.blue,
                      ),
                      lessStyle: boldTitleWhiteStyle.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Colors.blue,
                      ),
                      style: boldTitleWhiteStyle.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: AppColors.appGrey)),
                  Container(
                    constraints: BoxConstraints(
                      maxHeight: Get.height * 0.2,
                      minHeight: Get.height * 0.0,
                    ),
                    child: GridView.count(
                        primary: false,
                        padding: const EdgeInsets.all(10),
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        crossAxisCount: 4,
                        children: List.generate(
                          10,
                          (index) => ClipRRect(
                            child: Image(
                              errorBuilder: (context, object, error) =>
                                  Icon(Icons.error),
                              image: NetworkImage(
                                  'https://picsum.photos/250?image=9'),
                              fit: BoxFit.fitHeight,
                              frameBuilder: (context, child, frame,
                                  wasSynchronouslyLoaded) {
                                if (wasSynchronouslyLoaded) {
                                  return child;
                                }
                                return AnimatedOpacity(
                                  child: child,
                                  opacity: frame == null ? 0 : 1,
                                  duration: const Duration(milliseconds: 300),
                                );
                              },
                              alignment: Alignment.topLeft,
                            ),
                          ),
                        )),
                  ),
                ],
              ),
            ),
            // todo: Covid-19 Warning
            Covid19Warning(),

            SizedBox(height: 20),

            CTContainer(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // todo: Offers Received
                Text(
                  'Offers Received (5)',
                  style: boldTitleWhiteStyle.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: AppColors.textColorPrimary),
                ),

                SizedBox(height: 10),
                ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => OfferReceivedUserCard(
                    offer: task.offers[index],
                  ),
                  separatorBuilder: (context, index) => SizedBox(
                    height: 10,
                  ),
                  itemCount: task.offers.length,
                  shrinkWrap: true,
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}




class OfferReceivedUserCard extends StatelessWidget {
  final OfferReceived offer;
  OfferReceivedUserCard({
    Key? key,
    required this.offer,
  }) : super(key: key);

  final TextStyle subtitleTextStyle = boldTitleWhiteStyle.copyWith(
      fontWeight: FontWeight.w500, fontSize: 14, color: AppColors.appGrey);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(
            'https://picsum.photos/250?image=9',
          ),
        ),
        title: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${offer.userName}',
                  style: boldTitleWhiteStyle.copyWith(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: AppColors.textColorPrimary),
                ),
                Text(
                  'Software Engineer',
                  style: subtitleTextStyle,
                ),
              ],
            ),
            SizedBox(width: 10, height: 0),
            CTUserRoleChip(
              role: UserRole.TASKER,
            )
          ],
        ),
        subtitle: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('${offer.price}', style: subtitleTextStyle),
            ReadMoreText('${offer.message}',
                trimLines: 4,
                colorClickableText: Colors.blue,
                trimMode: TrimMode.Line,
                trimCollapsedText: 'Read more',
                trimExpandedText: 'less',
                moreStyle: boldTitleWhiteStyle.copyWith(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Colors.blue,
                ),
                lessStyle: subtitleTextStyle.copyWith(
                  fontWeight: FontWeight.w500,
                  color: Colors.blue,
                ),
                style: subtitleTextStyle),
          ],
        ),
        trailing: Text('Rebid',
            textAlign: TextAlign.right,
            style: boldTitleWhiteStyle.copyWith(
                fontWeight: FontWeight.w700,
                fontSize: 14,
                color: AppColors.appYellow)),
      ),

      // Column(
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: [
      //     LabelValuePairWidget2(
      //       crossAxisAlignment: CrossAxisAlignment.center,
      //       label: Text(
      //         '${offer.userName}',
      //         style: boldTitleWhiteStyle.copyWith(
      //             fontWeight: FontWeight.w500,
      //             fontSize: 16,
      //             color: AppColors.textColorPrimary),
      //       ),
      //       value: IconButton(
      //         icon: Icon(
      //           Icons.more_horiz,
      //           color: AppColors.appPrimaryColor,
      //         ),
      //         onPressed: () {},
      //       ),
      //     ),
      //     ReadMoreText('${offer.message}',
      //         trimLines: 4,
      //         colorClickableText: Colors.blue,
      //         trimMode: TrimMode.Line,
      //         trimCollapsedText: 'Read more',
      //         trimExpandedText: 'less',
      //         moreStyle: boldTitleWhiteStyle.copyWith(
      //           fontWeight: FontWeight.w500,
      //           fontSize: 16,
      //           color: Colors.blue,
      //         ),
      //         lessStyle: boldTitleWhiteStyle.copyWith(
      //           fontWeight: FontWeight.w500,
      //           fontSize: 16,
      //           color: Colors.blue,
      //         ),
      //         style: boldTitleWhiteStyle.copyWith(
      //             fontWeight: FontWeight.w500,
      //             fontSize: 16,
      //             color: AppColors.appGrey)),
      //   ],
      // ),
    );
  }
}

enum UserRole { TASKER, POSTER }

class CTUserRoleChip extends StatelessWidget {
  const CTUserRoleChip({
    Key? key,
    this.role = UserRole.TASKER,
  }) : super(key: key);

  final UserRole? role;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      padding: EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 5,
      ),
      decoration: BoxDecoration(
        color: AppColors.appYellow.withOpacity(0.4),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Text(
        role == UserRole.TASKER ? 'Tasker' : 'Poster',
        style: boldTitleWhiteStyle.copyWith(
            fontWeight: FontWeight.w500,
            fontSize: 10,
            color: AppColors.textColorPrimary),
      ),
    );
  }
}
