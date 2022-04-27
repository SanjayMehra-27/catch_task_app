import 'package:catch_task_app/app/modules/task-submission/controllers/task_submission_controller.dart';
import 'package:catch_task_app/app/widgets/buttons/rounded/primary_rounded_btn.dart';
import 'package:catch_task_app/app/widgets/user_task_info_card/user_task_info_card.dart';
import 'package:catch_task_app/app/widgets/values/app_colors.dart';
import 'package:catch_task_app/app/widgets/values/text_styles.dart';
import 'package:catch_task_app/app/widgets/widget/containers/ct_container/ct_container.dart';
import 'package:catch_task_app/app/widgets/widget/ct_chip/ct_chip.dart';
import 'package:catch_task_app/app/widgets/widget/ct_chip/poster_or_tasker_chip.dart';
import 'package:catch_task_app/app/widgets/widget/ct_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:get/get.dart';

class TaskSubmitView extends GetView {
  final controller =
      Get.put<TaskSubmissionController>(TaskSubmissionController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Awesome!',
                style: bigTitleTextStyle_20.copyWith(
                    fontSize: 30,
                    color: AppColors.textColorPrimary,
                    height: 1.5),
              ),
              Text(
                'Your task completed successfully',
                style: cardSubtitleStyle.copyWith(color: AppColors.appGreen),
              ),
              Text(
                'The poster will review and approve for payment',
                style: cardSubtitleStyle.copyWith(
                    color: AppColors.textColorPrimary, height: 1.5),
              ),
              SizedBox(height: 20),
              Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey.withOpacity(0.25)),
                  ),
                  child: UserTaskInfoCard(task: controller.task.value)),
              SizedBox(height: 20),
              Stack(
                children: <Widget>[
                  CTContainer(
                    margin: const EdgeInsets.only(top: 40.0),
                    padding: const EdgeInsets.all(20.0),
                    child: SizedBox(
                        // height: 100.0,
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 35.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Swayam Padhi",
                                style: cardTitleStyle,
                              ),
                              SizedBox(height: 20),
                              Text(
                                "Rate your experience",
                                style: cardSubtitleStyle.copyWith(
                                    color: AppColors.textColorPrimary,
                                    height: 1.5),
                              ),
                              SizedBox(height: 10),
                              RatingBar.builder(
                                initialRating: 3,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemPadding:
                                    EdgeInsets.symmetric(horizontal: 4.0),
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              ),
                              SizedBox(height: 20),
                              CTInputField(
                                hint: 'Leave your comment',
                                maxLines: 6,
                              ),
                              SizedBox(height: 20),
                              PrimaryButton(
                                width: Get.height * 0.2,
                                child: Text('Submit'),
                                color: AppColors.appYellow,
                                shape: ButtonShape.RECTANGLE,
                                onTap: () {
                                  Get.to(TaskSubmitView());
                                },
                              )
                            ],
                          ),
                        )),
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://images.unsplash.com/photo-1518791841217-8f162f1e1131?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'),
                        backgroundColor: AppColors.appPrimaryColor,
                        maxRadius: 40,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 65,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: PosterTaskerChip(userType: UserType.Poster),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
