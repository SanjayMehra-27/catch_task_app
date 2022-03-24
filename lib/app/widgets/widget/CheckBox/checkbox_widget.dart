import 'package:catch_task_app/app/widgets/values/app_colors.dart';
import 'package:catch_task_app/app/widgets/widget/CheckBox/controller/custom_checkbox.conroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class CustomCheckbox extends StatefulWidget {
  final bool isChecked;
  final bool? disabled;
  final double? size;
  final double? left;
  final double? bottom;
  final String? labelName;
  final double? iconSize;
  final Color? selectedColor;
  final Color? disabledColor;
  final Color? selectedIconColor;
  final Function onChecked;
  CustomCheckBoxController? controller;
  CustomCheckbox({
    Key? key,
    required this.isChecked,
    this.size,
    this.left,
    this.bottom,
    this.disabled = false,
    this.labelName = '',
    this.iconSize,
    this.selectedColor,
    this.disabledColor,
    this.selectedIconColor,
    required this.onChecked,
    this.controller,
  }) : super(key: key);

  @override
  State<CustomCheckbox> createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  @override
  Widget build(BuildContext context) {
    bool _isSelected = false;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       GestureDetector(
            onTap: () {
              if (widget.controller != null && widget.disabled == false) {
                widget.controller!.isChecked(!widget.controller!.isChecked.value);
                widget.onChecked(widget.controller!.isChecked);
              }else{
                widget.onChecked(widget.isChecked);
              }
            },
            child: AnimatedContainer(
              duration: Duration(milliseconds: 500),
              curve: Curves.fastLinearToSlowEaseIn,
              decoration: BoxDecoration(
                color: 
                !widget.disabled! ?
                widget.controller != null ? widget.controller!.isChecked.value
                    ? widget.selectedColor ?? AppColors.appPrimaryColor
                    : Colors.white : widget.isChecked ? widget.selectedColor ?? AppColors.appPrimaryColor : Colors.white 
                : widget.disabledColor ?? AppColors.textColorGreyLight.withOpacity(0.5),
                borderRadius: BorderRadius.circular(5.0),
                border: widget.controller != null ? widget.controller!.isChecked.value
                    ? null
                    : Border.all(
                        color: Colors.white,
                        //  width: 2.0,
                      ) : widget.isChecked ? null : Border.all(
                        color: Colors.white,
                        //  width: 2.0,
                      ),
              ),
              width: widget.size ?? 20,
              height: widget.size ?? 20,
              child: widget.controller?.isChecked.value ?? widget.isChecked
                  ? Icon(
                      Icons.check,
                      color: widget.selectedIconColor ?? Colors.white,
                      size: widget.iconSize ?? 15,
                    )
                  : null,
            ),
          ),
        widget.labelName!.length > 0
            ? Container(
                margin: EdgeInsets.only(bottom: 5, left: 13),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      widget.labelName ?? '',
                      style: TextStyle(
                        fontSize: 15,
                        //fontWeight: FontWeight.w600,
                        // color: Color(0xFF8D8E98),
                      ),
                    ),
                  ],
                ),
              )
            : Container(),
      ],
    );
  }
}
