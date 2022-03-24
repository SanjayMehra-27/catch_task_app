import 'package:catch_task_app/app/widgets/values/app_colors.dart';
import 'package:catch_task_app/app/widgets/values/app_values.dart';
import 'package:catch_task_app/app/widgets/values/text_styles.dart';
import 'package:flutter/material.dart';

class DropdownPicker extends StatelessWidget {
  const DropdownPicker(
      {required this.menuOptions,
        required this.selectedOption,
      required this.onChanged,
      required this.hintText,
      required this.horizontalPadding});

  final List<String> menuOptions;
  final String selectedOption;
  final void Function(String?) onChanged;
  final double horizontalPadding;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: 5.0),
      child: DropdownButtonFormField(
          decoration: const InputDecoration(
            enabledBorder: OutlineInputBorder(
              // width: 0.0 produces a thin "hairline" border
              borderSide:
                  BorderSide(color: AppColors.textFieldBorder, width: 1.0),
              borderRadius:
                  BorderRadius.all(Radius.circular(AppValues.radius_12)),
            ),
            border: OutlineInputBorder(),
            disabledBorder: OutlineInputBorder(
              // width: 0.0 produces a thin "hairline" border
              borderSide:
                  BorderSide(color: AppColors.textFieldBorder, width: 0.0),
              borderRadius:
                  BorderRadius.all(Radius.circular(AppValues.radius_12)),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: AppColors.appPrimaryColor, width: 2.0),
              borderRadius:
                  BorderRadius.all(Radius.circular(AppValues.radius_12)),
            ),

            // TODO
            // labelText: hintText,
            // labelStyle: textFiledHint14
          ),
          focusColor: Colors.white,
          style: const TextStyle(color: Colors.white),
          iconEnabledColor: Colors.black,
          items: menuOptions.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value, style: textFiledHint14),
            );
          }).toList(),
          hint: Text(hintText, style: textFiledHint14),
          value: selectedOption,
          onChanged: onChanged),
    );
  }
}
