import 'package:flutter/material.dart';
import 'package:the_5_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_5_19_banksy___digital_banking/presentation/bank_to_bank_two_screen/models/bank_to_bank_two_model.dart';

/// A provider class for the BankToBankTwoScreen.
///
/// This provider manages the state of the BankToBankTwoScreen, including the
/// current bankToBankTwoModelObj

// ignore_for_file: must_be_immutable
class BankToBankTwoProvider extends ChangeNotifier {
  TextEditingController priceController = TextEditingController();

  BankToBankTwoModel bankToBankTwoModelObj = BankToBankTwoModel();

  @override
  void dispose() {
    super.dispose();
    priceController.dispose();
  }
}
