import 'package:the_4_15_safebank___mobile_banking_app/core/app_export.dart';
import 'package:the_4_15_safebank___mobile_banking_app/presentation/currency_exchange_screen/models/currency_exchange_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the CurrencyExchangeScreen.
///
/// This class manages the state of the CurrencyExchangeScreen, including the
/// current currencyExchangeModelObj
class CurrencyExchangeController extends GetxController {
  TextEditingController priceController = TextEditingController();

  TextEditingController commentController = TextEditingController();

  Rx<CurrencyExchangeModel> currencyExchangeModelObj =
      CurrencyExchangeModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  @override
  void onClose() {
    super.onClose();
    priceController.dispose();
    commentController.dispose();
  }

  onSelected(dynamic value) {
    for (var element in currencyExchangeModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    currencyExchangeModelObj.value.dropdownItemList.refresh();
  }

  onSelected1(dynamic value) {
    for (var element
        in currencyExchangeModelObj.value.dropdownItemList1.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    currencyExchangeModelObj.value.dropdownItemList1.refresh();
  }
}
