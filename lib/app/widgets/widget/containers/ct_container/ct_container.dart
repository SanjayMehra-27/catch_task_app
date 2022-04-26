import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CTContainer extends StatelessWidget {
  CTContainer({
    Key? key,
    required this.child,
    this.height,
    this.width,
    this.color,
    this.padding,
    this.margin,
    this.decoration,
  }) : super(key: key);
  final Widget child;
  final double? height;
  final double? width;
  final Color? color;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Decoration? decoration;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: padding ?? EdgeInsets.all(15),
      margin: margin,
      decoration: decoration ??
          BoxDecoration(
            color: color ?? Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
                spreadRadius: 5,
              ),
            ],
          ),
      child: child,
    );
  }
}
