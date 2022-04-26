import 'package:catch_task_app/app/widgets/ct_info_card/ct_info_card.dart';
import 'package:catch_task_app/app/widgets/values/app_colors.dart';
import 'package:catch_task_app/app/widgets/values/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SupportPage extends StatelessWidget {
  SupportPage({Key? key}) : super(key: key);

  final TextStyle primaryText = boldTitleWhiteStyle.copyWith(
      fontWeight: FontWeight.w700, fontSize: 12, color: AppColors.appGrey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Get.back(),
          ),
          centerTitle: false,
          title: Text('Supports'),
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 40),
              // ! Image
              Image.asset(
                'assets/images/supports@test.png',
                fit: BoxFit.cover,
              ),
              //  ! How Can we help you?
              SizedBox(height: Get.height * 0.05),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "How can we help you?",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                      width: Get.width * 0.59,
                      child: Text(
                          "It looks like you are facing problems.\nWe are here to help you out.So please get in touch with us.",
                          textAlign: TextAlign.center,
                          style: primaryText.copyWith(
                            fontSize: 14,
                          ))),
                ],
              ),
              SizedBox(height: Get.height * 0.05),
              // ! Cards
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CTInfoCard(
                        backgroundColor: AppColors.lightGreyColor,
                        height: 120,
                        width: 150,
                        primaryIcon: Icon(
                          Icons.call,
                          color: Colors.red,
                          size: 25,
                        ),
                        primaryText: "Call Us",
                        subtitleText1: Text(
                          'Trading Hours\n8:00 AM - 6:00 PM',
                          style: primaryText,
                        ),
                      ),
                      CTInfoCard(
                        backgroundColor: AppColors.lightGreyColor,
                        height: 120,
                        width: 150,
                        primaryIcon: Image.asset(
                          'assets/images/whatsapp@test.png',
                          fit: BoxFit.cover,
                          height: 30,
                          width: 30,
                        ),
                        primaryText: "Chat with us",
                        subtitleText1: Text(
                          'Whatsapp',
                          style: primaryText,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CTInfoCard(
                        backgroundColor: AppColors.lightGreyColor,
                        height: 120,
                        width: 150,
                        primaryIcon: Icon(
                          Icons.info,
                          color: AppColors.appYellow,
                          size: 25,
                        ),
                        primaryText: "FAQs & Blogs",
                        subtitleText1: Text(
                          'Got questions?\nRead & Learn more',
                          style: primaryText,
                        ),
                      ),
                      CTInfoCard(
                        backgroundColor: AppColors.lightGreyColor,
                        height: 120,
                        width: 150,
                        primaryIcon: Icon(
                          Icons.mail,
                          color: AppColors.textColorPrimary,
                          size: 25,
                        ),
                        primaryText: "Say Hello!",
                        subtitleText1: Text(
                          'support@catchtask.com',
                          style: primaryText.copyWith(
                              color: AppColors.appPrimaryColor),
                        ),
                        subtitleText2: Text(
                          'Write to us',
                          style: primaryText,
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
