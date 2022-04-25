import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/cancellation_controller.dart';

class CancellationView extends GetView<CancellationController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CancellationView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'CancellationView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
