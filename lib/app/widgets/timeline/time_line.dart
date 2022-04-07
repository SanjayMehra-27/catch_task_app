import 'package:catch_task_app/app/widgets/values/app_colors.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import 'package:get/get.dart';

class Events {
  final String eventName;
  final String description;

  Events({required this.eventName, required this.description});
}

final List<Events> listOfEvents = [
  Events(
      eventName: "Assigned",
      description:
          "Assigned to tasker name \nAssigned date on Tue,Jun 20, 2021"),
  Events(
      eventName: "Created",
      description:'Task created on Tue,Jun 20, 2021'),
];

final List<Color> listOfColors = [AppColors.appGreen, AppColors.appYellow];
class Timeline extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(top: 20, bottom: 20),
        child: Column(
          children: 
                [ListView.builder(
                shrinkWrap: true,
                itemCount: listOfEvents.length,
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      ListTile(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        contentPadding: EdgeInsets.symmetric(horizontal: 50),
                        title: Text(listOfEvents[index].eventName),
                        subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(listOfEvents[index].eventName),
                                  Text(
                                    listOfEvents[index].description,
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12),
                                  )
                                ],
                              ),
                      ),
                      
                      Positioned(
                        left: 10,
                        child: new Container(
                          height: 100.00 * listOfEvents.length,
                          width: 1.0,
                          color: Colors.grey.shade400,
                        ),
                      ),
                      Positioned(
                        bottom: 20,
                        child: Container(
                          color: AppColors.appWhite02,
                          padding: EdgeInsets.symmetric(
                            vertical: 5,
                          ),
                          child: Icon(
                            Icons.check_circle,
                            color: listOfColors[index],
                          ),
                        ),
                      ),
                    ],
                  );
                }),
              ],
        ),
      ),
    );

  }

}






