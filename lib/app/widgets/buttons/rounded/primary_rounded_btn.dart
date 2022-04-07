import 'package:catch_task_app/app/widgets/values/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum ButtonShape {
  ROUNDED,
  RECTANGLE,
  // CIRCLE,
  // SQUARE,
}

class PrimaryButton extends StatefulWidget {
  const PrimaryButton(
      {Key? key,
      this.labelText,
      this.onTap,
      this.disable,
      this.width,
      this.height,
      this.fontSize,
      this.child,
      this.color,
      this.shape = ButtonShape.ROUNDED,
      this.icon,
      this.textColor,
      this.labelStyle,
      this.suffix,
      this.mainAxisAlignment,
      this.crossAxisAlignment,
      this.prefix})
      : super(key: key);
  final String? labelText;
  final Function? onTap;
  final bool? disable;
  final double? width;
  final double? height;
  final double? fontSize;
  final Color? color;
  final Color? textColor;
  final Icon? icon;
  final ButtonShape? shape;
  final TextStyle? labelStyle;
  final Widget? prefix;
  final Widget? child;
  final Widget? suffix;
  final MainAxisAlignment? mainAxisAlignment;
  final CrossAxisAlignment? crossAxisAlignment;

  @override
  State<PrimaryButton> createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: widget.width ?? null,
        height: widget.height ?? 55,
        child: widget.icon != null
            ? ElevatedButton.icon(
                icon: widget.icon!,
                onPressed: () => widget.onTap?.call(),
                label: widget.child ?? Text('${widget.labelText}',
                    style: widget.labelStyle ??
                        TextStyle(
                            fontSize: widget.fontSize ?? null,
                            color: widget.textColor ?? null)),
                style: ElevatedButton.styleFrom(
                  primary: widget.color ?? AppColors.appPrimaryColor,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          widget.shape == ButtonShape.ROUNDED ? 30 : 10)),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                ))
            : ElevatedButton(
                onPressed: () => widget.onTap?.call(),
                child: Row(
                  mainAxisAlignment:
                      widget.mainAxisAlignment ?? MainAxisAlignment.center,
                  crossAxisAlignment:
                      widget.crossAxisAlignment ?? CrossAxisAlignment.center,
                  children: [
                    widget.prefix != null ? widget.prefix! : SizedBox.shrink(),
                    widget.child ??
                        Text('${widget.labelText}',
                            style: widget.labelStyle ??
                                TextStyle(
                                    fontSize: widget.fontSize ?? null,
                                    color: widget.textColor ?? null)),
                    widget.suffix != null ? widget.suffix! : SizedBox.shrink(),
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  primary: widget.color ?? AppColors.appPrimaryColor,
                  elevation: 0,
                  fixedSize:
                      Size(widget.width ?? Get.width, widget.height ?? 55),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          widget.shape == ButtonShape.ROUNDED ? 30 : 10)),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                )),
      ),
    );
  }
}
