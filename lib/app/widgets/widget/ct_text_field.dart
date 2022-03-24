import 'package:catch_task_app/app/widgets/values/app_colors.dart';
import 'package:catch_task_app/app/widgets/values/app_values.dart';
import 'package:catch_task_app/app/widgets/values/text_styles.dart';
import 'package:flutter/material.dart';

class CTInputField extends StatefulWidget {
  final TextEditingController? controller;
  final String hint;
  final int? maxLength;
  final TextInputType keyboard;
  final FocusNode? focusNode;
  final VoidCallback? onFinished;
  final bool isPassword;
  final bool isEnabled;
  final String suffixIcon;
  final double horizontalPadding;
  final Function? onValueChanged;
  final String? error;

  const CTInputField(
      {Key? key,
      this.controller,
      required this.hint,
      this.maxLength,
      this.keyboard = TextInputType.text,
      this.focusNode,
      this.suffixIcon = '',
      this.isEnabled = true,
      this.onFinished,
      this.isPassword = false,
      required this.horizontalPadding,
      this.onValueChanged,
      this.error})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return CTInputFieldState();
  }
}

class CTInputFieldState extends State<CTInputField> {
  String? error;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    error = widget.error;

    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: widget.horizontalPadding, vertical: 5.0),
      child: Column(
        children: <Widget>[
          TextField(
            enabled: widget.isEnabled,
            onChanged: (value) => "",
            maxLength: widget.maxLength,
            // onChanged: (value) => widget.onValueChanged(value),
            style: textFiled14,
            controller: widget.controller,
            focusNode: widget.focusNode,
            keyboardType: widget.keyboard,
            obscureText: widget.isPassword,

            decoration: InputDecoration(
                isDense: false,
                filled: false,
                enabledBorder:  OutlineInputBorder(
                  borderSide:
                      BorderSide(color: AppColors.textFieldBorder, width: 1.0),
                  borderRadius:
                      BorderRadius.all(Radius.circular(AppValues.radius_12)),
                ),
                disabledBorder: const OutlineInputBorder(
                  borderSide:
                      BorderSide(color: AppColors.textFieldBorder, width: 1.0),
                  borderRadius:
                      BorderRadius.all(Radius.circular(AppValues.radius_12)),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide:
                      BorderSide(color: AppColors.appPrimaryColor, width: 2.0),
                  borderRadius:
                      BorderRadius.all(Radius.circular(AppValues.radius_12)),
                ),
                labelText: widget.hint,
                suffixIcon: !widget.suffixIcon.isEmpty
                    ? Image.asset(
                        widget.suffixIcon,
                        scale: 1.5,
                      )
                    : isChecked
                        ? const Icon(Icons.done)
                        : null,
                labelStyle: textFiledHint14),
          ),
          error == null
              ? Container()
              : const Text(
                  "error",
                  style: errorTextStyle,
                )
        ],
      ),
    );
  }

// String validate() {
//   setState(() {
//     error = widget.validator(widget.controller.text);
//   });
//   return error;
// }
}
