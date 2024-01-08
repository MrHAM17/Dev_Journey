import 'package:the_4_22_first_bank___digital_banking/core/app_export.dart';
import 'package:the_4_22_first_bank___digital_banking/presentation/transactions_screen/models/transactions_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the TransactionsScreen.
///
/// This class manages the state of the TransactionsScreen, including the
/// current transactionsModelObj
class TransactionsController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<TransactionsModel> transactionsModelObj = TransactionsModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
