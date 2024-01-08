import 'package:the_4_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_4_19_banksy___digital_banking/presentation/receive_money_personal_page/models/receive_money_personal_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ReceiveMoneyPersonalPage.
///
/// This class manages the state of the ReceiveMoneyPersonalPage, including the
/// current receiveMoneyPersonalModelObj
class ReceiveMoneyPersonalController extends GetxController {
  ReceiveMoneyPersonalController(this.receiveMoneyPersonalModelObj);

  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController countryController = TextEditingController();

  TextEditingController amountController = TextEditingController();

  TextEditingController inputsController = TextEditingController();

  TextEditingController inputsController1 = TextEditingController();

  Rx<ReceiveMoneyPersonalModel> receiveMoneyPersonalModelObj;

  @override
  void onClose() {
    super.onClose();
    firstNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
    countryController.dispose();
    amountController.dispose();
    inputsController.dispose();
    inputsController1.dispose();
  }

  @override
  void onReady() {
    Get.toNamed(
      AppRoutes.requestSentScreen,
    );
  }
}
