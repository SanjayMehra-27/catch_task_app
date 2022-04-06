
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MakeOfferDialogController extends GetxController {
  MakeOfferDialogController();
  final _offerBidPrice = 0.obs;
  var commentsController = TextEditingController().obs;

  int get offerBidPrice => _offerBidPrice.value;
  
  set offerBidPrice(int value) => _offerBidPrice.value = value;

  void onIncrement() {
    offerBidPrice += 1;
  }

  void onDecrement() {
    if (offerBidPrice > 0) {
      offerBidPrice -= 1;     
    }
  }
}