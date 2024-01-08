import 'package:the_4_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_4_19_banksy___digital_banking/presentation/money_exchange_screen/models/money_exchange_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the MoneyExchangeScreen.
///
/// This class manages the state of the MoneyExchangeScreen, including the
/// current moneyExchangeModelObj
class MoneyExchangeController extends GetxController {
  TextEditingController inputsController = TextEditingController();

  TextEditingController priceController = TextEditingController();

  Rx<MoneyExchangeModel> moneyExchangeModelObj = MoneyExchangeModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onClose() {
    super.onClose();
    inputsController.dispose();
    priceController.dispose();
  }

  onSelected(dynamic value) {
    for (var element in moneyExchangeModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    moneyExchangeModelObj.value.dropdownItemList.refresh();
  }
}
