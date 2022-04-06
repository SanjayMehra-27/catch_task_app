import 'package:catch_task_app/app/modules/browse_task/model/task/task.model.dart';
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
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: AppColors.textColorPrimary),
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
