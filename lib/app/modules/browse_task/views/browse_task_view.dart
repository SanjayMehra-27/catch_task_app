import 'package:catch_task_app/app/modules/browse_task/controllers/browse_task_controller.dart';
import 'package:catch_task_app/app/widgets/values/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';

class BrowseTaskPage extends StatelessWidget {
  BrowseTaskPage({Key? key}) : super(key: key);

  final BrowseTaskController browseTaskController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: AppColors.appBarTextColor,
        elevation: 0,
        title:
            Text('Create Task', style: Theme.of(context).textTheme.headline6),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back,
              color: Theme.of(context).textTheme.headline6?.color),
          onPressed: () => Get.back(),
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              // todo: add rounded rect tabs for [All Tasks, My Pins, Suggested]
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Obx(
                    () => FlutterToggleTab(
                      width: 80,
                      borderRadius: 30,
                      height: 40,
                      selectedBackgroundColors: [
                        AppColors.appPrimaryColor
                      ],
                      unSelectedBackgroundColors: [
                        AppColors.appWhite01,
                      ],
                      selectedTextStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w700),
                      unSelectedTextStyle: TextStyle(
                          color: AppColors.textColorPrimary,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                      labels: ["All Tasks", "My Pins", "Suggested"],
                      selectedLabelIndex: (index) {
                        browseTaskController.setSelectedTabIndex(index);
                      },
                      selectedIndex: browseTaskController.selectedTab.value.index,
                    ),
                  ),
                ],
              ),
              // todo: add App Banner
              Container(
                margin: EdgeInsets.only(top: 20),
                width: double.infinity,
                color: AppColors.appWhite01,
                child: Center(
                  child: Image.asset(
                    'assets/images/app_banner@test.png',
                    fit: BoxFit.fitHeight,
                    width: double.infinity,
                  )
                ),
              ),

              // todo: toggle tab view
              Obx(() => 
              browseTaskController.getSelectedTabView()),


              // todo: add task list
            ],
          ),
        ),
      ),
    );
  }
}
