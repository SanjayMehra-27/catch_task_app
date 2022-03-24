import 'package:catch_task_app/app/modules/create_task/widgets/create-task-stepper/controller/create_task_stepper.controller.dart';
import 'package:catch_task_app/app/modules/create_task/widgets/task_date_time/controller/enter_task_date_time_conrollert.dart';
import 'package:catch_task_app/app/widgets/values/app_colors.dart';
import 'package:catch_task_app/app/widgets/values/app_values.dart';
import 'package:catch_task_app/app/widgets/values/text_styles.dart';
import 'package:catch_task_app/app/widgets/widget/CheckBox/checkbox_widget.dart';
import 'package:catch_task_app/app/widgets/widget/ct_text_field.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:get/get.dart';

class DayPeriod {
  final String periodName;
  final String periodDurationLabel;
  final IconData icon;

  DayPeriod({required this.periodName, required this.periodDurationLabel, required this.icon,});
}

List<DayPeriod> dayPeriods = [
  DayPeriod(
    periodName: 'Morning',
    periodDurationLabel: 'Before 10 AM',
    icon: Icons.wb_sunny_outlined,
  ),
  DayPeriod(
    periodName: 'Mid Day',
    periodDurationLabel: '10 AM - 1 PM',
    icon: Icons.wb_sunny_outlined,
  ),
  DayPeriod(
    periodName: 'Afternoon',
    periodDurationLabel: '1 PM - 4 PM',
    icon: Icons.cloud_outlined,
  ),
  DayPeriod(
    periodName: 'Evening',
    periodDurationLabel: 'After 4 PM',
    icon: Icons.nightlight_outlined,
  ),
];

class EnterTaskDateTimeWidget extends StatefulWidget {
  EnterTaskDateTimeWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<EnterTaskDateTimeWidget> createState() => _EnterTaskDateTimeWidgetState();
}

class _EnterTaskDateTimeWidgetState extends State<EnterTaskDateTimeWidget> {
  EnterTaskDateTimeController enterTaskDateTimeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Obx(
          () => InkWell(
            onTap: () async {
               DateTime? pickedDate = await showDatePicker(
                        context: context, initialDate: DateTime.now(),
                        firstDate: DateTime.now() //not to allow to choose before today.
                        lastDate: DateTime(2101),
                    );
                    if(pickedDate != null ){
                        enterTaskDateTimeController.taskDateController.value.text = DateFormat('MMM dd, yyyy').format(pickedDate); //set output date to TextField value. 
                    }else{
                        print("Date is not selected");
                    }
            },
            child: CTInputField(
                controller: enterTaskDateTimeController.taskDateController.value,
                isEnabled: false,
                hint: 'When do you need it done ?', horizontalPadding: AppValues.padding_zero),
          ),
        ),
        SizedBox(height: 20),
        Obx(() => CustomCheckbox(
            isChecked: enterTaskDateTimeController.certainTimeCheckBoxController.value.isChecked.value,
            onChecked: (value){
            },
            labelName:'I need certain time of a day',
            controller: enterTaskDateTimeController.certainTimeCheckBoxController.value,
            ),
        ),

        SizedBox(height: 20),
        Text("What time(s) do you need the tasker ?",style: labelStylePrimaryTextColor),
        SizedBox(height: 20),

        // Certain Time CheckBox
        ListView.separated(
          scrollDirection: Axis.vertical,
          itemBuilder:(context, index) => DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(AppValues.padding_15)),
              boxShadow: [
                BoxShadow(
                  color: AppColors.appGrey.withOpacity(0.3),
                  blurRadius: AppValues.padding_4,
                  spreadRadius: AppValues.padding_3,
                  offset: Offset(2, 2),
                ),
              ],
            ),
            child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(AppValues.padding_15)),
              child: Card(
                elevation: 0,
                color: Colors.transparent,
                margin: EdgeInsets.zero,
                child: 
                Obx(() =>  ListTile(
                  onTap: (){
                   enterTaskDateTimeController.selectedPeriodIndex.value = index;
                  },
                  selected: enterTaskDateTimeController.selectedPeriodIndex.value == index,
                  selectedTileColor: AppColors.appPrimaryColor,
                  leading: Container(
                    padding: EdgeInsets.all(AppValues.padding_15),  
                    child: Icon(
                      dayPeriods[index].icon,
                      size: AppValues.iconSize_28,
                      color: enterTaskDateTimeController.selectedPeriodIndex.value == index ? AppColors.appWhite : AppColors.appDarkGrey,
                    ),
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: AppValues.padding_15, vertical: AppValues.padding_zero),
                  title: Text('${dayPeriods[index].periodName}',style: enterTaskDateTimeController.selectedPeriodIndex.value == index ? labelStylePrimaryTextColor.copyWith(color: AppColors.white) :labelStylePrimaryTextColor ),
                  subtitle: Text('${dayPeriods[index].periodDurationLabel}',style: enterTaskDateTimeController.selectedPeriodIndex.value == index ? primaryColorSubtitleStyle.copyWith(color: AppColors.white) :primaryColorSubtitleStyle ),
                  trailing: Container(
                    padding: EdgeInsets.only(top:AppValues.padding_15),
                    width: 30,
                    child:  CustomCheckbox(
                      isChecked: true,
                      disabledColor: enterTaskDateTimeController.selectedPeriodIndex.value == index ? Colors.white : null,
                      selectedIconColor: enterTaskDateTimeController.selectedPeriodIndex.value == index ? AppColors.appPrimaryColor : null,
                      disabled: true,
                      onChecked: (value){
                      },
                    ),
                  )
                ),),
              ),
            ),
          ),
          separatorBuilder: (context, index) => SizedBox(height: 10),
          itemCount: dayPeriods.length,
          shrinkWrap: true,
        ),
        SizedBox(height: 20),
        // info indigator
        TextButton.icon(
          onPressed: (){
          }, 
          icon: Icon(Icons.info,color: AppColors.appYellow,), 
          label: Text("Aut sapiente deserunt est doloremque et.", style: labelStylePrimaryTextColor.copyWith(
            fontSize: 14,
          )),), 
        SizedBox(height: 20),
      ],
    );
  }
}
