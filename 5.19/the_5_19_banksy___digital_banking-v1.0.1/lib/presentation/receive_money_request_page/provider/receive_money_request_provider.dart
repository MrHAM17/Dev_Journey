import 'package:flutter/material.dart';
import 'package:the_5_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_5_19_banksy___digital_banking/presentation/receive_money_request_page/models/receive_money_request_model.dart';

/// A provider class for the ReceiveMoneyRequestPage.
///
/// This provider manages the state of the ReceiveMoneyRequestPage, including the
/// current receiveMoneyRequestModelObj

// ignore_for_file: must_be_immutable
class ReceiveMoneyRequestProvider extends ChangeNotifier {
  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController nameController = TextEditingController();

  TextEditingController countryController = TextEditingController();

  TextEditingController amountController = TextEditingController();

  TextEditingController inputsController = TextEditingController();

  TextEditingController inputsController1 = TextEditingController();

  ReceiveMoneyRequestModel receiveMoneyRequestModelObj =
      ReceiveMoneyRequestModel();

  @override
  void dispose() {
    super.dispose();
    firstNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
    nameController.dispose();
    countryController.dispose();
    amountController.dispose();
    inputsController.dispose();
    inputsController1.dispose();
  }
}
