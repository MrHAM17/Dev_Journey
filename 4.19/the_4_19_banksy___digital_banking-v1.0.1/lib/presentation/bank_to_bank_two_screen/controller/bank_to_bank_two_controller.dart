import 'package:the_4_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_4_19_banksy___digital_banking/presentation/bank_to_bank_two_screen/models/bank_to_bank_two_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the BankToBankTwoScreen.
///
/// This class manages the state of the BankToBankTwoScreen, including the
/// current bankToBankTwoModelObj
class BankToBankTwoController extends GetxController {
  TextEditingController priceController = TextEditingController();

  Rx<BankToBankTwoModel> bankToBankTwoModelObj = BankToBankTwoModel().obs;

  @override
  void onClose() {
    super.onClose();
    priceController.dispose();
  }

  @override
  void onReady() {
    Get.toNamed(
      AppRoutes.bankToBankThreeScreen,
    );
  }
}
