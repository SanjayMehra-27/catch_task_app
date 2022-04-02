import 'package:catch_task_app/app/modules/my_task/widgets/sort_by/controller/sort_by_controller.dart';
import 'package:catch_task_app/app/widgets/buttons/rounded/primary_rounded_btn.dart';
import 'package:catch_task_app/app/widgets/values/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SortByWidget extends StatelessWidget {
  SortByWidget({Key? key}) : super(key: key);
  // final List<DropdownMenuItem> items;

  SortByController sortByController = Get.find();
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(seconds: 2),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Obx(
            () => AnimatedCrossFade(
              crossFadeState: !sortByController.isExpanded.value
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
              duration: const Duration(milliseconds: 500),
              firstChild: SizedBox.shrink(),
              secondChild: Container(
                alignment: Alignment.topRight,
                // duration: const Duration(seconds: 1),
                // curve: Curves.easeInOut,
                width: 200,
                padding: EdgeInsets.symmetric(vertical: 10,),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.white,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.appWhite02,
                      blurRadius: 5,
                      spreadRadius: 5,
                    ),
                  ],
                ),
                child: 
                
                ListView.builder(
                    itemCount: 2,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Obx (() => 
                      InkWell(
                        onTap: () {
                          sortByController.setSelectedSortBy(index);
                        },
                        child: Container(
                          padding: EdgeInsets.all(20),
                          color: sortByController.selectedSortBy ==
                                  SortBy.values[index]
                              ? AppColors.appWhite02
                              : AppColors.appWhite,
                          child: Text(
                            sortByController.sortItems[index],
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: sortByController.selectedSortBy ==
                                      SortBy.values[index]
                                  ? AppColors.textColorPrimary
                                  : AppColors.textColorPrimary
                                                    .withOpacity(0.5),
                            ),
                          ),
                        ),
                      )
                      // ListTile(
                      //   tileColor: index == sortByController.selectedSortBy.index ? AppColors.appPrimaryColor : AppColors.appWhite01,
                      //   title: Text('${sortByController.sortItems[index]}',
                      //       style: Theme.of(context).textTheme.headline6),
                      //   trailing: Icon(Icons.arrow_drop_down),
                      //   onTap: () {
                      //     sortByController.setSelectedSortBy(index);
                      //   },
                      // ),
                      );
                    })
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Obx(() => AnimatedCrossFade(
                sizeCurve: Curves.easeInToLinear,
                crossFadeState: !sortByController.isExpanded.value
                    ? CrossFadeState.showSecond
                    : CrossFadeState.showFirst,
                duration: const Duration(milliseconds: 600),
                firstChild: PrimaryButton(
                  labelText: 'Close',
                  width: 120,
                  height: 50,
                  // icon: Icon(Icons.close),
                  color: AppColors.appYellow,
                  onTap: () {
                    sortByController.isExpanded.value =
                        !sortByController.isExpanded.value;
                  },
                ),
                secondChild: PrimaryButton(
                  labelText: 'Sort by',
                  width: 120,
                  height: 50,
                  icon: Icon(Icons.sort_rounded),
                  color: AppColors.appYellow,
                  onTap: () {
                    sortByController.isExpanded.value =
                        !sortByController.isExpanded.value;
                  },
                ),
              )),
        ],
      ),
    );
  }
}
