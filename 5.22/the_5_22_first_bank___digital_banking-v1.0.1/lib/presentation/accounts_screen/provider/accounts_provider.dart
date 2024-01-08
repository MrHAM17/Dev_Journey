import 'package:flutter/material.dart';
import 'package:the_5_22_first_bank___digital_banking/core/app_export.dart';
import 'package:the_5_22_first_bank___digital_banking/presentation/accounts_screen/models/accounts_model.dart';
import '../models/accounts_item_model.dart';

/// A provider class for the AccountsScreen.
///
/// This provider manages the state of the AccountsScreen, including the
/// current accountsModelObj

// ignore_for_file: must_be_immutable
class AccountsProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  AccountsModel accountsModelObj = AccountsModel();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }
}
