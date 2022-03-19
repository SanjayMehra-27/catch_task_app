import 'package:catch_task_app/app/utils/colors_constants/color_constatnts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

BoxShadow shadow = new BoxShadow(
  color: Colors.grey,
  blurRadius: 3,
);



BoxDecoration tabAddHeadingContainer = new BoxDecoration(
    color: Colors.black54, borderRadius: BorderRadius.circular(1));

RoundedRectangleBorder buttonborderCircular = new RoundedRectangleBorder(
  borderRadius: new BorderRadius.circular(25),
);

BorderRadius StatusRadius = new BorderRadius.circular(25);
TextStyle HeadingBoldGreen = new TextStyle(
    //fontFamily: 'SFProText',
    fontSize: 25,
    fontWeight: FontWeight.w600,
    color: Colors.green);

TextStyle HeadingBoldBlack = new TextStyle(
    //fontFamily: 'SFProText',
    fontSize: 25,
    fontWeight: FontWeight.w600,
    color: Colors.black87);

TextStyle HeadingBoldBlacSk = new TextStyle(
    //fontFamily: 'SFProText',
    fontSize: 15,
    fontWeight: FontWeight.w600,
    color: Colors.black87);
// Heading1
TextStyle Heading1BoldBlack = new TextStyle(
    //fontFamily: 'SFProText',
    fontSize: 19,
    fontWeight: FontWeight.w600,
    color: Colors.black);
TextStyle SubHeadingPrimary = new TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: PRIMARY_COLOR);
TextStyle Heading1BoldBlack87 = new TextStyle(
    //fontFamily: 'SFProText',
    fontSize: 19,
    fontWeight: FontWeight.w600,
    color: Colors.black87);
TextStyle HeadingBoldBlack100 = new TextStyle(
    //fontFamily: 'SFProText',
    fontSize: 35,
    fontWeight: FontWeight.w600,
    color: LIGHT_COLOR);
TextStyle Heading1Black = new TextStyle(fontSize: 19, color: Colors.black);
TextStyle Heading1Black87 = new TextStyle(fontSize: 19, color: Colors.black87);
TextStyle Heading1White = new TextStyle(fontSize: 19, color: Colors.white);

// Heading2
TextStyle Heading2BoldBlack = new TextStyle(
    //fontFamily: 'SFProText',
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Colors.black);
TextStyle Heading2BoldBlack87 = new TextStyle(
    //fontFamily: 'SFProText',
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Colors.black87);
TextStyle Heading2Black = new TextStyle(fontSize: 16, color: Colors.black);
TextStyle Heading2Black87 = new TextStyle(
    //fontFamily: 'SFProText',
    fontSize: 16,
    color: Colors.black87);
TextStyle Heading2Grey = new TextStyle(fontSize: 16, color: Colors.black54);
TextStyle Heading2BoldGrey = new TextStyle(
    //fontFamily: 'SFProText',
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Colors.grey);
TextStyle Heading1BoldGrey = new TextStyle(
    //fontFamily: 'SFProText',
    fontSize: 17,
    fontWeight: FontWeight.w700,
    color: Colors.grey);
TextStyle HeadingBoldGrey = new TextStyle(
    //fontFamily: 'SFProText',
    fontSize: 20,
    fontWeight: FontWeight.w800,
    color: Colors.grey);
TextStyle Heading2White = new TextStyle(fontSize: 16, color: Colors.white);
TextStyle Heading2BoldWhite = new TextStyle(
    //fontFamily: 'SFProText',
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Colors.white);

// Heading3
TextStyle Heading3BoldBlack = new TextStyle(
    fontFamily: 'SFProText',
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: Colors.black);
TextStyle Heading3BoldBlack87 = new TextStyle(
    fontFamily: 'SFProText',
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: Colors.black87);
TextStyle Heading3Black =
    new TextStyle(fontFamily: 'SFProText', fontSize: 14, color: Colors.black);
TextStyle Heading3Black87 =
    new TextStyle(fontFamily: 'SFProText', fontSize: 14, color: Colors.black87);
TextStyle Heading3White =
    new TextStyle(fontFamily: 'SFProText', fontSize: 14, color: Colors.white);

// Heading4
TextStyle Heading4BoldBlack = new TextStyle(
    fontFamily: 'SFProText',
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: Colors.black);
TextStyle Heading4BoldBlack87 = new TextStyle(
    fontFamily: 'SFProText',
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: Colors.black87);

TextStyle Heading4Black87 =
    new TextStyle(fontFamily: 'SFProText', fontSize: 12, color: Colors.black87);
TextStyle Heading4White =
    new TextStyle(fontFamily: 'SFProText', fontSize: 12, color: Colors.white);

//Other...
TextStyle TableRowText = new TextStyle(fontSize: 16);
TextStyle TableRowStrikeText = new TextStyle(
    fontSize: 16,
    decoration: TextDecoration.lineThrough,
    decorationColor: Colors.red);

TextStyle Heading4Primary = new TextStyle(
    fontFamily: 'SFProText',
    fontWeight: FontWeight.w600,
    fontSize: 12,
    color: Color(0xFF3FC1BE));
TextStyle Heading2Primary = new TextStyle(
    fontFamily: 'SFProText',
    fontWeight: FontWeight.w600,
    fontSize: 16,
    color: Color(0xFF3FC1BE));
TextStyle Heading4Remove = new TextStyle(
    fontFamily: 'SFProText',
    fontWeight: FontWeight.w600,
    fontSize: 12,
    color: Colors.red);

// Form Label Text Style
TextStyle FormLabelTextStyle = new TextStyle(
    fontFamily: 'SFProText',
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: Colors.white);

// Form Text Field Hint Text Style
TextStyle FormHintTextStyle = new TextStyle(
    fontFamily: 'SFProText',
    fontSize: 15,
    fontWeight: FontWeight.w600,
    color: Colors.white);

TextStyle drawerMenuTextStyle =
    new TextStyle(fontSize: 20, color: Colors.white);

TextStyle NormalBlackText = new TextStyle(
    //fontFamily: 'SFProText',
    fontSize: 18,
    color: Colors.black);

TextStyle buttonTextWhite = new TextStyle(fontSize: 18, color: Colors.white);

TextStyle Heading4Black =
    TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black);

TextStyle graySubTitleText =
    TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Colors.grey);

    // TextStyle Using TextTheme



    TextStyle? title(context, {Color? textColor}) => Get.textTheme.bodyText1?.copyWith(
                    color: textColor ?? Theme.of(context).colorScheme.onSurface.withOpacity(0.6),
                    fontSize: 18
                    );
    
    TextStyle? subtitle(context,{Color? textColor}) => Get.textTheme.bodyText1?.copyWith(
                    color: textColor ?? Theme.of(context).colorScheme.onSurface.withOpacity(0.87),
                    fontSize: 16
                    );
  
    TextStyle? body(context, {Color? textColor}) => Get.textTheme.bodyText1?.copyWith(
                    color: textColor,
                    fontSize: 14
                    );

    TextStyle? caption(context, {Color? textColor}) => Get.textTheme.bodyText1?.copyWith(
                    color: textColor ?? Theme.of(context).colorScheme.onSurface.withOpacity(0.6),
                    fontSize: 12
                    );
    
