import 'package:flutter/material.dart';
import 'package:the_5_15_safebank___mobile_banking_app/core/app_export.dart';
import 'package:the_5_15_safebank___mobile_banking_app/presentation/currency_exchange_screen/models/currency_exchange_model.dart';

/// A provider class for the CurrencyExchangeScreen.
///
/// This provider manages the state of the CurrencyExchangeScreen, including the
/// current currencyExchangeModelObj

// ignore_for_file: must_be_immutable
class CurrencyExchangeProvider extends ChangeNotifier {
  TextEditingController priceController = TextEditingController();

  TextEditingController commentController = TextEditingController();

  CurrencyExchangeModel currencyExchangeModelObj = CurrencyExchangeModel();

  @override
  void dispose() {
    super.dispose();
    priceController.dispose();
    commentController.dispose();
  }

  onSelected(dynamic value) {
    for (var element in currencyExchangeModelObj.dropdownItemList) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }

  onSelected1(dynamic value) {
    for (var element in currencyExchangeModelObj.dropdownItemList1) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }
}
