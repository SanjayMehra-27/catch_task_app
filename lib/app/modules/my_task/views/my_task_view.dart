import 'package:catch_task_app/app/modules/browse_task/controllers/browse_task_controller.dart';
import 'package:catch_task_app/app/modules/browse_task/widgets/task_tile/task_tile.dart';
import 'package:catch_task_app/app/modules/my_task/controllers/my_task_controller.dart';
import 'package:catch_task_app/app/modules/my_task/widgets/sort_by/sort_by_widget.dart';
import 'package:catch_task_app/app/widgets/values/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';

class MyTaskPage extends StatelessWidget {
  MyTaskPage({Key? key}) : super(key: key);

  final BrowseTaskController browseTaskController = Get.find();
  final MyTaskController myTaskController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      floatingActionButton: SortByWidget(),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      appBar: AppBar(
        // backgroundColor: AppColors.appBarTextColor,
        elevation: 0,
        title: Obx(() => AnimatedCrossFade(
          crossFadeState: myTaskController.selectedSortBy.index  == 0 ? CrossFadeState.showSecond: CrossFadeState.showFirst,
          duration: const Duration(milliseconds: 600),
          firstChild: Text('Poster', style: Theme.of(context).textTheme.headline6),
          secondChild: Text('Tasker', style: Theme.of(context).textTheme.headline6),
          )),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              // ! Rounded rect tabs [All Tasks,   My Pins, Suggested]
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Obx(
                    () => FlutterToggleTab(
                      width: 80,
                      borderRadius: 30,
                      height: 40,
                      selectedBackgroundColors: [AppColors.appPrimaryColor],
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
                      labels: ["My Tasks", "Assigned", "Completed"],
                      selectedLabelIndex: (index) {
                        browseTaskController.setSelectedTabIndex(index);
                      },
                      selectedIndex:
                          browseTaskController.selectedTab.value.index,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),

              //! task list view based on selected tab [All Tasks, My Pins, Suggested]
              Expanded(
                  child: Obx(
                () => ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) => TaskTile(
                          task: browseTaskController.tasks[index],
                        ),
                    separatorBuilder: (context, index) => SizedBox(height: 10),
                    itemCount: browseTaskController.tasks.length),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
