import 'package:catch_task_app/app/widgets/buttons/rounded/primary_rounded_btn.dart';
import 'package:catch_task_app/app/widgets/values/app_colors.dart';
import 'package:catch_task_app/app/widgets/widget/ChipInput.dart';
import 'package:catch_task_app/app/widgets/widget/containers/ct_container/ct_container.dart';
import 'package:catch_task_app/app/widgets/widget/ct_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

final List<String> reasons = [
  'I have decided not to go with task',
  'I have made the mistake accepting offer',
  'I am having difficulties communicating with the tasker',
  'Tasker name didn\'t show up on',
  'Tasker unable to complete task',
  'Others (Comments option mandatory)',
];

class CancellationReasonCard extends StatelessWidget {
  CancellationReasonCard({Key? key}) : super(key: key);
  final selectedReason = 0.obs;

  @override
  Widget build(BuildContext context) {
    return CTContainer(
      margin: EdgeInsets.only(top: 20),
      child: Wrap(
        children: [
          Container(
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 6,
                shrinkWrap: true,
                padding: EdgeInsets.all(0),
                itemBuilder: (context, index) {
                  return Obx(() => RadioListTile(
                        value: index,
                        contentPadding: EdgeInsets.zero,
                        groupValue: selectedReason.value,
                        toggleable: true,
                        activeColor: Colors.black,
                        title: Text('${reasons[index]}', style: TextStyle(fontSize: 14, color: AppColors.textColorPrimary)),
                        onChanged: (value) {
                          selectedReason(value as int);
                        },
                      ));
                }),
          ),
          CTInputField(
            hint: 'Please provide more details',
            maxLines: 6,
          ),
          SizedBox(height: 20),
          PrimaryButton(
            shape: ButtonShape.RECTANGLE,
            child: Text('Submit'),
          )
        ],
      ),
    );
  }
}
