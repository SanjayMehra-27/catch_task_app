import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/task_submission_controller.dart';

class TaskSubmissionView extends GetView<TaskSubmissionController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TaskSubmissionView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'TaskSubmissionView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
