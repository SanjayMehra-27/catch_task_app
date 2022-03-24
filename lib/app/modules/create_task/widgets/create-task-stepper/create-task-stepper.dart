import 'package:catch_task_app/app/modules/create_task/widgets/create-task-stepper/controller/create_task_stepper.controller.dart';
import 'package:catch_task_app/app/widgets/buttons/drop_down/drop_down_btn.dart';
import 'package:catch_task_app/app/widgets/buttons/rounded/primary_rounded_btn.dart';
import 'package:catch_task_app/app/widgets/values/app_colors.dart';
import 'package:catch_task_app/app/widgets/values/app_values.dart';
import 'package:catch_task_app/app/widgets/values/text_styles.dart';
import 'package:catch_task_app/app/widgets/widget/ct_text_field.dart';
import 'package:catch_task_app/app/widgets/widget/drop_down.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:csc_picker/csc_picker.dart';

final List<String> categoryItems = [
  'Choose Category',
  'Category 1',
  'Category 2',
  'Category 3',
  'Category 4',
  'Category 5',
  'Category 6',
  'Category 7',
  'Category 8',
  'Category 9',
];

class CreateTaskStepper extends StatefulWidget {
  @override
  _CreateTaskStepperState createState() => _CreateTaskStepperState();
}

class _CreateTaskStepperState extends State<CreateTaskStepper> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        color: AppColors.appWhite,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Expanded(
            child: GetBuilder<CreateTaskStepperController>(
              initState: (_) =>
                  Get.find<CreateTaskStepperController>().tapped(0),
              builder: (controller) => Stepper(
                controlsBuilder:
                    (BuildContext context, ControlsDetails details) {
                  return PrimaryRoundedBtn(
                    labelText: 'Continue',
                    fontSize: 18,
                    height: 50,
                    onTap: details.onStepContinue,
                  );
                },
                type: controller.stepperType,
                physics: ScrollPhysics(),
                currentStep: controller.currentStep,
                onStepTapped: (step) => controller.tapped(step),
                onStepContinue: controller.continued,
                onStepCancel: controller.cancel,
                elevation: 0,
                steps: <Step>[
                  Step(
                    title: new Text('Details'),
                    content: EnterTaskDetailsWidget(),
                    isActive: controller.currentStep >= 0,
                    state: controller.currentStep >= 0
                        ? StepState.complete
                        : StepState.disabled,
                  ),
                  Step(
                    title: new Text('Date & Time'),
                    content: Column(
                      children: <Widget>[
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Home Address',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Postcode'),
                        ),
                      ],
                    ),
                    isActive: controller.currentStep >= 0,
                    state: controller.currentStep >= 1
                        ? StepState.complete
                        : StepState.disabled,
                  ),
                  Step(
                    title: new Text('Budget'),
                    content: Column(
                      children: <Widget>[
                        TextFormField(
                          decoration:
                              InputDecoration(labelText: 'Mobile Number'),
                        ),
                      ],
                    ),
                    isActive: controller.currentStep >= 0,
                    state: controller.currentStep >= 2
                        ? StepState.complete
                        : StepState.disabled,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

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
  final CreateTaskStepperController controller =
      Get.find<CreateTaskStepperController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Obx(
          () => CTInputField(
              controller: controller.titleController.value,
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
              controller: controller.descriptionController.value,
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
