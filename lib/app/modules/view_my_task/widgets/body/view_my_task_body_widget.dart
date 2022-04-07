import 'package:catch_task_app/app/modules/browse_task/model/task/task.model.dart';
import 'package:catch_task_app/app/widgets/buttons/rounded/primary_rounded_btn.dart';
import 'package:catch_task_app/app/widgets/timeline/time_line.dart';
import 'package:catch_task_app/app/widgets/values/app_colors.dart';
import 'package:catch_task_app/app/widgets/values/text_styles.dart';
import 'package:catch_task_app/app/widgets/widget/containers/ct_container/ct_container.dart';
import 'package:catch_task_app/app/widgets/widget/covid19/covid19_warning_widget.dart';
import 'package:catch_task_app/app/widgets/widget/offer-received-card/offer-received-card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:readmore/readmore.dart';

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
                CTContainer(
                  color: Colors.white70,
                  margin: EdgeInsets.only(
                    top: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.calendar_today,
                        color: AppColors.textColorPrimary,
                        size: 20,
                      ),
                      Text(
                        'Due Date',
                        style: boldTitleWhiteStyle.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: AppColors.textColorPrimary),
                      ),
                      Text(
                        'Fri, Jun 20, 2021\nEvening (4:00 PM - 6:00 PM)',
                        style: boldTitleWhiteStyle.copyWith(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: AppColors.textColorPrimary),
                      ),
                    ],
                  ),
                ),
                CTContainer(
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
                          Icon(
                            Icons.lock,
                            color: AppColors.textColorPrimary,
                            size: 20,
                          ),
                          Image.asset(
                            'assets/images/catchTaskPay@test.png',
                            height: 20,
                            width: 100,
                            alignment: Alignment.topRight,
                            // color: AppColors.white,
                          ),
                        ],
                      ),
                      Text(
                        'Payments Terms',
                        style: boldTitleWhiteStyle.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: AppColors.textColorPrimary),
                      ),
                      Text(
                        'CatchTask PAY',
                        style: boldTitleWhiteStyle.copyWith(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: AppColors.textColorPrimary),
                      ),
                      Row(
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'If you have facing any issues\nKindly contact us at',
                      softWrap: false,
                      overflow: TextOverflow.ellipsis,
                      style: boldTitleWhiteStyle.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: AppColors.textColorPrimary),
                    ),
                    PrimaryButton(
                      width: 120,
                      shape: ButtonShape.RECTANGLE,
                      height: 40,
                      labelText: 'Need help ?',
                    )
                  ],
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

            // todo: Offers Received
            Text(
              'Offers Received',
              style: boldTitleWhiteStyle.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: AppColors.appGrey),
            ),

            SizedBox(height: 10),
            ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => OfferReceivedCard(
                offer: task.offers[index],
              ),
              separatorBuilder: (context, index) => SizedBox(
                height: 10,
              ),
              itemCount: task.offers.length,
              shrinkWrap: true,
            ),
          ],
        ),
      ),
    );
  }
}
