import 'package:catch_task_app/app/modules/browse_task/model/offer-received/offer_received.dart';
import 'package:catch_task_app/app/widgets/times-ago/times_ago.dart';
import 'package:catch_task_app/app/widgets/values/app_colors.dart';
import 'package:catch_task_app/app/widgets/values/text_styles.dart';
import 'package:catch_task_app/app/widgets/widget/containers/ct_container/ct_container.dart';
import 'package:catch_task_app/app/widgets/widget/labels/widget-key-value-pair/label_value_pair_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:readmore/readmore.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class OfferReceivedCard extends StatelessWidget {
  const OfferReceivedCard({
    Key? key,
    required this.offer,
  }) : super(key: key);

  final OfferReceived offer;

  @override
  Widget build(BuildContext context) {
    return CTContainer(
      margin: EdgeInsets.symmetric(
        vertical: 2,
      ),
      padding: EdgeInsets.only(
        bottom: 20,
        top: 5,
        left: 20,
        right: 20,
      ),
      color: AppColors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LabelValuePairWidget2(
            crossAxisAlignment: CrossAxisAlignment.center,
            label: Text(
              '${offer.userName}',
              style: boldTitleWhiteStyle.copyWith(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: AppColors.textColorPrimary),
            ),
            value: IconButton(
              icon: Icon(
                Icons.more_horiz,
                color: AppColors.appPrimaryColor,
              ),
              onPressed: () {},
            ),
          ),
          RatingBarIndicator(
            rating: offer.rating ?? 0,
            itemBuilder: (context, index) => Icon(
              Icons.star,
              color: Colors.amber,
            ),
            itemCount: 5,
            itemSize: 20.0,
          ),
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
              lessStyle: boldTitleWhiteStyle.copyWith(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: Colors.blue,
              ),
              style: boldTitleWhiteStyle.copyWith(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: AppColors.appGrey)),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                '${TimeAgo.timeAgoSinceDate(offer.dateTime)}',
                style: boldTitleWhiteStyle.copyWith(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: AppColors.appGrey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
