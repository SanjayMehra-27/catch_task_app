import 'package:catch_task_app/app/widgets/values/app_colors.dart';
import 'package:catch_task_app/app/widgets/values/text_styles.dart';
import 'package:flutter/material.dart';

enum DrawerMenuItemIds {
  MenuId_NONE,
  MenuId_Profile
}

class BCDrawerMenuItem extends StatelessWidget {
  final String title;
  final Function? onSelect;
  final DrawerMenuItemIds? itemId;
  final DrawerMenuItemIds? selectedDrawerMenuItemId;
  final IconData iconData;

  BCDrawerMenuItem(
      {this.itemId,
      required this.title,
      this.selectedDrawerMenuItemId,
      required this.iconData,
      this.onSelect});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: ListTile(
        leading: Container(
            height:30,
            width: 30,
            child: Icon(
              iconData,
              color: AppColors.colorPrimary,
            )),
        selectedTileColor: AppColors.appGreen,

        // trailing: Icon(
        //     Icons.arrow_forward_ios,
        //     color: FONT_WHITE,
        //     size: 18
        // ),

        title: new Text(this.title, style: bigTitleTextStyle_20),
        selected: itemId == selectedDrawerMenuItemId,
        onTap: () {
          onSelect!(itemId);
        },
      ),
    );
  }
}
