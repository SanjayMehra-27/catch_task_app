import 'package:catch_task_app/app/widgets/values/app_colors.dart';
import 'package:catch_task_app/app/widgets/values/app_values.dart';
import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  final Function()? onTap;
  final Widget? child;
  final Color rippleColor;
  final double rippleRadius;

  const CardView({
    Key? key,
    this.child,
    required this.onTap,
    this.rippleColor = AppColors.defaultRippleColor,
    this.rippleRadius = AppValues.smallRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(rippleRadius),
        highlightColor: rippleColor,
        onTap: onTap,
        child: child,
      ),
    );
  }
}
//
//
// Card(
// elevation: 3,
// shape: RoundedRectangleBorder(
// side: BorderSide(color: AppColors.red, width: 1.0),
// borderRadius:
// BorderRadius.circular(AppSizes.textFieldRadius),
// ),
// color: AppColors.white,
// child: Padding(
// padding: EdgeInsets.only(left: 16.0),
//
// child: TextField(
// onChanged: (value) => widget.onValueChanged(value),
// style: TextStyle(
// color: AppColors.black,
// fontWeight: FontWeight.normal,
// fontSize: 16),
// controller: widget.controller,
// focusNode: widget.focusNode,
// keyboardType: widget.keyboard,
// obscureText: widget.isPassword,
// decoration: InputDecoration(
// border: InputBorder.none,
// labelText: widget.hint,
// hintText: widget.hint,
// suffixIcon: error != null
// ? Icon(
// Icons.close,
// color: AppColors.red,
// )
// : isChecked ? Icon(Icons.done) : null,
// hintStyle: TextStyle(
// color: AppColors.lightGray,
// fontSize: 16,
// fontWeight: FontWeight.w300)),
// ),
// ),
// ),
