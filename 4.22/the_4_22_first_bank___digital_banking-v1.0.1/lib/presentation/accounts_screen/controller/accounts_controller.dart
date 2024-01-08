import 'package:the_4_22_first_bank___digital_banking/core/app_export.dart';
import 'package:the_4_22_first_bank___digital_banking/presentation/accounts_screen/models/accounts_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the AccountsScreen.
///
/// This class manages the state of the AccountsScreen, including the
/// current accountsModelObj
class AccountsController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<AccountsModel> accountsModelObj = AccountsModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }

  @override
  void onReady() {
    Get.toNamed(
      AppRoutes.creditCardsScreen,
    );
  }
}
