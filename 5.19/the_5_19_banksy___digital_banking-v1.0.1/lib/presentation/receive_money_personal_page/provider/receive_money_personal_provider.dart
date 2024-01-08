import 'package:flutter/material.dart';
import 'package:the_5_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_5_19_banksy___digital_banking/presentation/receive_money_personal_page/models/receive_money_personal_model.dart';

/// A provider class for the ReceiveMoneyPersonalPage.
///
/// This provider manages the state of the ReceiveMoneyPersonalPage, including the
/// current receiveMoneyPersonalModelObj

// ignore_for_file: must_be_immutable
class ReceiveMoneyPersonalProvider extends ChangeNotifier {
  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController countryController = TextEditingController();

  TextEditingController amountController = TextEditingController();

  TextEditingController inputsController = TextEditingController();

  TextEditingController inputsController1 = TextEditingController();

  ReceiveMoneyPersonalModel receiveMoneyPersonalModelObj =
      ReceiveMoneyPersonalModel();

  @override
  void dispose() {
    super.dispose();
    firstNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
    countryController.dispose();
    amountController.dispose();
    inputsController.dispose();
    inputsController1.dispose();
  }
}
