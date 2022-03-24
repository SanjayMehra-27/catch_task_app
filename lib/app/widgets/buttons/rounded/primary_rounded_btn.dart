import 'package:catch_task_app/app/widgets/values/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PrimaryRoundedBtn extends StatefulWidget {
  const PrimaryRoundedBtn({
    Key? key,
    required this.labelText,
    this.onTap,
    this.disable,
    this.width,
    this.height,
    this.fontSize,
    this.color,
    this.icon,
    this.textColor,
  }) : super(key: key);
  final String labelText;
  final Function? onTap;
  final bool? disable;
  final double? width;
  final double? height;
  final double? fontSize;
  final Color? color;
  final Color? textColor;
  final Icon? icon;

  @override
  State<PrimaryRoundedBtn> createState() => _PrimaryRoundedBtnState();
}

class _PrimaryRoundedBtnState extends State<PrimaryRoundedBtn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width ?? null,
      height: widget.height ?? 55,
      child: widget.icon != null
          ? ElevatedButton.icon(
              icon: widget.icon!,
              onPressed: () => widget.onTap?.call(),
              label: Text('${widget.labelText}',
                  style: TextStyle(
                      fontSize: widget.fontSize ?? null,
                      color: widget.textColor ?? null)),
              style: ElevatedButton.styleFrom(
                primary: widget.color ?? AppColors.appPrimaryColor,
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              ))
          : ElevatedButton(
              onPressed: () => widget.onTap?.call(),
              child: Text('${widget.labelText}',
                  style: TextStyle(
                      fontSize: widget.fontSize ?? null,
                      color: widget.textColor ?? null)),
              style: ElevatedButton.styleFrom(
                primary: widget.color ?? AppColors.appPrimaryColor,
                elevation: 0,
                fixedSize: Size(widget.width ?? Get.width, widget.height ?? 55),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              )),
    );
  }
}
