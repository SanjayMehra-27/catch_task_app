import 'package:flutter/material.dart';

class InlineIconValuePairLabelWidget extends StatelessWidget {
  final IconData icon;
  final String value;
  final Color? iconColor;
  final double? size;
  final Widget? suffix;
  final int? maxLines;

  const InlineIconValuePairLabelWidget(
      {Key? key, required this.icon, required this.value, this.iconColor, this.size, this.suffix, this.maxLines})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: iconColor ?? Colors.white,
          size: size ?? 20,
        ),
        SizedBox(
          width: 5,
        ),
        Expanded(
            child: Padding(
            padding:const EdgeInsets.fromLTRB(4,8,0,8),
            child: Text(
              "$value",
              // overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: size ?? 18,
                fontWeight: FontWeight.w500,
                // overflow: TextOverflow.ellipsis,
              ),
              maxLines: maxLines,

            ))
          ),
       suffix ?? Container(),
      ],
    );
  }
}
