import 'package:catch_task_app/app/modules/cancellation/views/cancellation_reason_card_view.dart';
import 'package:catch_task_app/app/modules/cancellation/views/task_info_card_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:catch_task_app/app/widgets/values/app_colors.dart';

import '../controllers/cancellation_controller.dart';

class CancellationView extends StatelessWidget {
  const CancellationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appWhite,
      appBar: AppBar(
        backgroundColor: AppColors.appYellow,
        title: Text('Cancellation'),
        centerTitle: false,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Get.back(),
        ),
      ),
      body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Expanded(flex: 2, child: TaskInfoCard()),
              Expanded(flex: 7, child: CancellationReasonCard()),
            ],
          )),
    );
  }
}
