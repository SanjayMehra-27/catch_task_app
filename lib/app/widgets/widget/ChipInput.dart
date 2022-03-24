import 'package:catch_task_app/app/widgets/values/text_styles.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:get/get.dart';

class MyChipInput extends StatelessWidget {
  var listOfvValues = [];

  MyChipInput({
    Key? key,
    required this.listOfvValues,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: listOfvValues.map((item) {
        return Padding(
          padding: const EdgeInsets.all(3.0),
          child: FilterChip(
            backgroundColor:
                Color((math.Random().nextDouble() * 0xFe0FA).toInt())
                    .withOpacity(0.1),
            label: Text(
              item,
              style: textFiled13White,
            ),
            labelStyle: textFiled13White,
            pressElevation: 5,
            onSelected: (bool value) {},
          ),
        );
      }).toList(),
    );
  }
}
