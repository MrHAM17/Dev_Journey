import 'package:flutter/material.dart';
import 'package:the_5_15_safebank___mobile_banking_app/core/app_export.dart';
import 'package:the_5_15_safebank___mobile_banking_app/presentation/transfer_amount_screen/models/transfer_amount_model.dart';

/// A provider class for the TransferAmountScreen.
///
/// This provider manages the state of the TransferAmountScreen, including the
/// current transferAmountModelObj

// ignore_for_file: must_be_immutable
class TransferAmountProvider extends ChangeNotifier {
  TransferAmountModel transferAmountModelObj = TransferAmountModel();

  @override
  void dispose() {
    super.dispose();
  }
}
