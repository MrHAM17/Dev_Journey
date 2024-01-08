import 'package:flutter/material.dart';
import 'package:the_5_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_5_19_banksy___digital_banking/presentation/money_exchange_screen/models/money_exchange_model.dart';

/// A provider class for the MoneyExchangeScreen.
///
/// This provider manages the state of the MoneyExchangeScreen, including the
/// current moneyExchangeModelObj
class MoneyExchangeProvider extends ChangeNotifier {
  TextEditingController inputsController = TextEditingController();

  TextEditingController priceController = TextEditingController();

  MoneyExchangeModel moneyExchangeModelObj = MoneyExchangeModel();

  @override
  void dispose() {
    super.dispose();
    inputsController.dispose();
    priceController.dispose();
  }

  onSelected(dynamic value) {
    for (var element in moneyExchangeModelObj.dropdownItemList) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }
}
