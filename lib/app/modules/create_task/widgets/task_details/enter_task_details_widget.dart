import 'package:catch_task_app/app/modules/create_task/widgets/create-task-stepper/controller/create_task_stepper.controller.dart';
import 'package:catch_task_app/app/modules/create_task/widgets/create-task-stepper/create-task-stepper.dart';
import 'package:catch_task_app/app/modules/create_task/widgets/task_details/controller/enter_task_detail_conrollert.dart';
import 'package:catch_task_app/app/widgets/buttons/rounded/primary_rounded_btn.dart';
import 'package:catch_task_app/app/widgets/values/app_colors.dart';
import 'package:catch_task_app/app/widgets/values/app_values.dart';
import 'package:catch_task_app/app/widgets/values/text_styles.dart';
import 'package:catch_task_app/app/widgets/widget/ct_text_field.dart';
import 'package:catch_task_app/app/widgets/widget/drop_down.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_switch/flutter_switch.dart';

class EnterTaskDetailsWidget extends StatefulWidget {
  EnterTaskDetailsWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<EnterTaskDetailsWidget> createState() => _EnterTaskDetailsWidgetState();
}

class _EnterTaskDetailsWidgetState extends State<EnterTaskDetailsWidget> {
  String? cityValue = '';
  String? stateValue = '';
  String cityFirstValue = 'City';
  String stateFirstValue = 'State';
  final EnterTaskDetailController controller = Get.find<EnterTaskDetailController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Obx(
          () => CTInputField(
              controller: controller.taskTitleController.value,
              hint: 'Title',
              horizontalPadding: AppValues.padding_zero),
        ),
        DropdownPicker(
          horizontalPadding: AppValues.padding_zero,
          hintText: 'Choose category',
          menuOptions: categoryItems,
          onChanged: (value) {},
          selectedOption: categoryItems[0],
        ),
        Obx(
          () => CTInputField(
              controller: controller.taskDescriptionController.value,
              hint: 'Description',
              maxLength: 200,
              horizontalPadding: AppValues.padding_zero),
        ),
        PrimaryRoundedBtn(
          labelText: 'Add Must Have',
          fontSize: 18,
          icon: Icon(Icons.add),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Can This Task To Be Completed \nRemotely?",
                style: labelStylePrimaryTextColor),
            Obx(
              () => FlutterSwitch(
                value: controller.isTaskRemotely.value,
                activeColor: AppColors.appPrimaryColor,
                height: 30,
                width: 60,
                inactiveColor: AppColors.lightGreyColor,
                onToggle: (bool value) {
                  controller.isTaskRemotely.value = value;
                },
              ),
            )
          ],
        ),
        SizedBox(height: 20),
        // todo: Upload Image Button With Icon
        PrimaryRoundedBtn(
          labelText: 'Upload Image',
          fontSize: 18,
          width: double.infinity,
          icon: Icon(Icons.image),
        ),
        SizedBox(height: 20),

        // todo: Add Locations TextFields [City/Town, District, State]
        // CSCPicker(
        //   layout: Layout.vertical,
        //   disableCountry: true,
        //   defaultCountry: DefaultCountry.India,
        //   currentState: 'State',
        //   currentCity: 'City',

        //   ///Enable disable state dropdown [OPTIONAL PARAMETER]
        //   showStates: true,

        //   /// Enable disable city drop down [OPTIONAL PARAMETER]
        //   showCities: true,

        //   ///Enable (get flag with country name) / Disable (Disable flag) / ShowInDropdownOnly (display flag in dropdown only) [OPTIONAL PARAMETER]
        //   flagState: CountryFlag.DISABLE,

        //   ///Dropdown box decoration to style your dropdown selector [OPTIONAL PARAMETER] (USE with disabledDropdownDecoration)
        //   dropdownDecoration: BoxDecoration(
        //       borderRadius: BorderRadius.all(Radius.circular(10)),
        //       border: Border.all(color: Colors.black38, width: 1)),

        //   ///Disabled Dropdown box decoration to style your dropdown selector [OPTIONAL PARAMETER]  (USE with disabled dropdownDecoration)
        //   disabledDropdownDecoration: BoxDecoration(
        //       borderRadius: BorderRadius.all(Radius.circular(10)),
        //       color: AppColors.appPrimaryColor,
        //       border: Border.all(color: Colors.black38, width: 1)),

        //   ///placeholders for dropdown search field
        //   stateSearchPlaceholder: "State",
        //   citySearchPlaceholder: "City/Town",

        //   ///labels for dropdown
        //   stateDropdownLabel: "State",
        //   cityDropdownLabel: "City/Town",

        //   ///Default Country
        //   //defaultCountry: DefaultCountry.India,

        //   ///Disable country dropdown (Note: use it with default country)
        //   //disableCountry: true,

        //   ///selected item style [OPTIONAL PARAMETER]
        //   selectedItemStyle: TextStyle(
        //     color: Colors.black,
        //     fontSize: 14,
        //   ),

        //   ///DropdownDialog Heading style [OPTIONAL PARAMETER]
        //   dropdownHeadingStyle: TextStyle(
        //       color: Colors.white60, fontSize: 17, fontWeight: FontWeight.bold),

        //   ///DropdownDialog Item style [OPTIONAL PARAMETER]
        //   dropdownItemStyle: TextStyle(
        //     color: Colors.black,
        //     fontSize: 14,
        //   ),

        //   ///Dialog box radius [OPTIONAL PARAMETER]
        //   dropdownDialogRadius: 10.0,

        //   ///Search bar radius [OPTIONAL PARAMETER]
        //   searchBarRadius: 10.0,

        //   ///triggers once country selected in dropdown
        //   onCountryChanged: (value) {
        //     setState(() {
        //       ///store value in country variable
        //       // countryValue = value;
        //     });
        //   },

        //   ///triggers once state selected in dropdown
        //   onStateChanged: (value) {
        //     ///store value in state variable
        //     if (value != '*State' && value != '*City') {
        //       stateValue = value;
        //     }
        //   },

        //   ///triggers once city selected in dropdown
        //   onCityChanged: (value) {
        //     ///store value in city variable
        //     if (value != '*City' && value != '*State') {
        //       cityValue = value;
        //     }
        //   },
        // ),
      ],
    );
  }
}
