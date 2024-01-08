import 'package:the_4_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_4_19_banksy___digital_banking/presentation/mobile_prepaid_one_screen/models/mobile_prepaid_one_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the MobilePrepaidOneScreen.
///
/// This class manages the state of the MobilePrepaidOneScreen, including the
/// current mobilePrepaidOneModelObj
class MobilePrepaidOneController extends GetxController {
  TextEditingController nameController = TextEditingController();

  Rx<MobilePrepaidOneModel> mobilePrepaidOneModelObj =
      MobilePrepaidOneModel().obs;

  @override
  void onClose() {
    super.onClose();
    nameController.dispose();
  }

  @override
  void onReady() {
    Get.toNamed(
      AppRoutes.enterMoneyScreen,
    );
  }
}
