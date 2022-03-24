import 'package:get/get.dart';

class CustomCheckBoxController extends GetxController {
  RxBool _isChecked = false.obs;
  RxBool get isChecked => _isChecked;
  set isChecked(RxBool value) => _isChecked = value;
}
