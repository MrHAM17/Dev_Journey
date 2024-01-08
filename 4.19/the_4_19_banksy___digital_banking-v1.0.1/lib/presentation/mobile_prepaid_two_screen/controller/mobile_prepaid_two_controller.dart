import 'package:the_4_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_4_19_banksy___digital_banking/presentation/mobile_prepaid_two_screen/models/mobile_prepaid_two_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the MobilePrepaidTwoScreen.
///
/// This class manages the state of the MobilePrepaidTwoScreen, including the
/// current mobilePrepaidTwoModelObj
class MobilePrepaidTwoController extends GetxController {
  TextEditingController priceController = TextEditingController();

  Rx<MobilePrepaidTwoModel> mobilePrepaidTwoModelObj =
      MobilePrepaidTwoModel().obs;

  @override
  void onClose() {
    super.onClose();
    priceController.dispose();
  }

  @override
  void onReady() {
    Get.toNamed(
      AppRoutes.mobilePrepaidThreeScreen,
    );
  }
}
