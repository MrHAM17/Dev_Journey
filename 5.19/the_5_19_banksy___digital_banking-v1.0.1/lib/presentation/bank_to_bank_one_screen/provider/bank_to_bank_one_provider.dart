import 'package:flutter/material.dart';
import 'package:the_5_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_5_19_banksy___digital_banking/presentation/bank_to_bank_one_screen/models/bank_to_bank_one_model.dart';

/// A provider class for the BankToBankOneScreen.
///
/// This provider manages the state of the BankToBankOneScreen, including the
/// current bankToBankOneModelObj

// ignore_for_file: must_be_immutable
class BankToBankOneProvider extends ChangeNotifier {
  BankToBankOneModel bankToBankOneModelObj = BankToBankOneModel();

  @override
  void dispose() {
    super.dispose();
  }
}
