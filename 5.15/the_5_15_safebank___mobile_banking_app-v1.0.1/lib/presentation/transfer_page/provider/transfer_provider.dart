import 'package:flutter/material.dart';
import 'package:the_5_15_safebank___mobile_banking_app/core/app_export.dart';
import 'package:the_5_15_safebank___mobile_banking_app/presentation/transfer_page/models/transfer_model.dart';

/// A provider class for the TransferPage.
///
/// This provider manages the state of the TransferPage, including the
/// current transferModelObj

// ignore_for_file: must_be_immutable
class TransferProvider extends ChangeNotifier {
  TransferModel transferModelObj = TransferModel();

  @override
  void dispose() {
    super.dispose();
  }
}
