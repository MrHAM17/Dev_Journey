import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_15_safebank___mobile_banking_app/presentation/currency_exchange_screen/models/currency_exchange_model.dart';
part 'currency_exchange_state.dart';

final currencyExchangeNotifier =
    StateNotifierProvider<CurrencyExchangeNotifier, CurrencyExchangeState>(
        (ref) => CurrencyExchangeNotifier(CurrencyExchangeState(
            priceController: TextEditingController(),
            commentController: TextEditingController(),
            selectedDropDownValue: SelectionPopupModel(title: ''),
            selectedDropDownValue1: SelectionPopupModel(title: ''),
            currencyExchangeModelObj: CurrencyExchangeModel(dropdownItemList: [
              SelectionPopupModel(id: 1, title: "Item One", isSelected: true),
              SelectionPopupModel(id: 2, title: "Item Two"),
              SelectionPopupModel(id: 3, title: "Item Three")
            ], dropdownItemList1: [
              SelectionPopupModel(id: 1, title: "Item One", isSelected: true),
              SelectionPopupModel(id: 2, title: "Item Two"),
              SelectionPopupModel(id: 3, title: "Item Three")
            ]))));

/// A notifier that manages the state of a CurrencyExchange according to the event that is dispatched to it.
class CurrencyExchangeNotifier extends StateNotifier<CurrencyExchangeState> {
  CurrencyExchangeNotifier(CurrencyExchangeState state) : super(state);
}
