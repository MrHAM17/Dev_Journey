import 'package:flutter/material.dart';
import 'package:the_5_15_safebank___mobile_banking_app/core/app_export.dart';
import 'package:the_5_15_safebank___mobile_banking_app/presentation/send_money_screen/models/send_money_model.dart';

/// A provider class for the SendMoneyScreen.
///
/// This provider manages the state of the SendMoneyScreen, including the
/// current sendMoneyModelObj

// ignore_for_file: must_be_immutable
class SendMoneyProvider extends ChangeNotifier {
  SendMoneyModel sendMoneyModelObj = SendMoneyModel();

  @override
  void dispose() {
    super.dispose();
  }

  onSelected(dynamic value) {
    for (var element in sendMoneyModelObj.dropdownItemList) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }
}
