import 'package:the_4_22_first_bank___digital_banking/core/app_export.dart';
import 'package:the_4_22_first_bank___digital_banking/presentation/loans_screen/models/loans_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the LoansScreen.
///
/// This class manages the state of the LoansScreen, including the
/// current loansModelObj
class LoansController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<LoansModel> loansModelObj = LoansModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
