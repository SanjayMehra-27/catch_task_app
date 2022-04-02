import 'package:catch_task_app/app/modules/task_details/widgets/make-offer-dialog/controller/make_offer_dialog_controller.dart';
import 'package:catch_task_app/app/widgets/buttons/rounded/primary_rounded_btn.dart';
import 'package:catch_task_app/app/widgets/values/app_colors.dart';
import 'package:catch_task_app/app/widgets/values/text_styles.dart';
import 'package:catch_task_app/app/widgets/widget/ct_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MakeOfferDialog extends StatefulWidget {
  final int bidPrice;
  final Function(int) onConfirm;
  MakeOfferDialog({
    Key? key,
    required this.bidPrice,
    required this.onConfirm,
  }) : super(key: key);

  @override
  State<MakeOfferDialog> createState() => _MakeOfferDialogState();
}

class _MakeOfferDialogState extends State<MakeOfferDialog> {
  MakeOfferDialogController controller = Get.put(MakeOfferDialogController());

  @override
  void initState() {
    controller.offerBidPrice = widget.bidPrice;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        primary: false,
        backgroundColor: AppColors.appWhite02,
        appBar: AppBar(
          backgroundColor: AppColors.appWhite02,
          elevation: 0,
          centerTitle: true,
          toolbarHeight: Get.height * 0.12,
          title: Text('Make Offer',
              style: boldTitlePrimaryColorStyle.copyWith(
                  fontSize: 20, color: AppColors.textColorPrimary)),
          leading: IconButton(
            icon: Icon(Icons.close, color: AppColors.appPrimaryColor),
            onPressed: () => Get.back(),
          ),
        ),
        body: SafeArea(
          child: Container(
              width: Get.width,
              padding: EdgeInsets.symmetric(
                  horizontal: Get.width * 0.05, vertical: Get.height * 0.05),
              decoration: BoxDecoration(
                  color: AppColors.appWhite,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // ! Title
                  Text('Bid your task',
                      style: boldTitlePrimaryColorStyle.copyWith(
                          fontSize: 16, color: AppColors.textColorPrimary)),

                  SizedBox(
                    height: Get.height * 0.02,
                  ),

                  // ! Price Increase & Decrease Button
                  Obx( () =>
                  PrimaryButton(
                      labelText: "₹ ${controller.offerBidPrice}",
                      color: AppColors.appYellow,
                      shape: ButtonShape.RECTANGLE,
                      width: Get.width,
                      fontSize: 22,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      suffix: InkWell(
                        onTap: () {
                          controller.onIncrement()  ;
                        },
                        child: Icon(
                          Icons.add,
                          color: AppColors.appWhite,
                        ),
                      ),
                      prefix: InkWell(
                        onTap: () {
                          controller.onDecrement();
                        },
                        child: Icon(
                          Icons.remove,
                          color: AppColors.appWhite,
                        ),
                      ),
                      onTap: () {}),
                  ),

                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  // ! Comments
                  CTInputField(
                    hint: 'Leave a comment (optional)',
                    maxLines: 10,
                    controller: controller.commentsController.value, 
                    labelText: 'Comments',
                  ),
                  // ! Submit Button [Make Offer]
                  Flexible(
                    fit: FlexFit.tight,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        PrimaryButton(labelText: 'Make Offer',
                            width: Get.width,
                            fontSize: 16,
                            onTap: () {
                              Get.back();
                              widget.onConfirm(controller.offerBidPrice);
                            }),
                      ],
                    ),
                  ),
                ],
              )),
        ));
  }
}
