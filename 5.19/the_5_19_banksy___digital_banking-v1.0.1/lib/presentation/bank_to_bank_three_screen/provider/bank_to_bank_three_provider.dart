import 'package:flutter/material.dart';
import 'package:the_5_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_5_19_banksy___digital_banking/presentation/bank_to_bank_three_screen/models/bank_to_bank_three_model.dart';

/// A provider class for the BankToBankThreeScreen.
///
/// This provider manages the state of the BankToBankThreeScreen, including the
/// current bankToBankThreeModelObj

// ignore_for_file: must_be_immutable
class BankToBankThreeProvider extends ChangeNotifier {
  TextEditingController otpController = TextEditingController();

  BankToBankThreeModel bankToBankThreeModelObj = BankToBankThreeModel();

  @override
  void dispose() {
    super.dispose();
  }
}
