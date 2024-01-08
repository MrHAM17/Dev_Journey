import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_19_banksy___digital_banking/presentation/money_exchange_screen/models/money_exchange_model.dart';
part 'money_exchange_state.dart';

final moneyExchangeNotifier =
    StateNotifierProvider<MoneyExchangeNotifier, MoneyExchangeState>(
  (ref) => MoneyExchangeNotifier(MoneyExchangeState(
    inputsController: TextEditingController(),
    priceController: TextEditingController(),
    selectedDropDownValue: SelectionPopupModel(title: ''),
    moneyExchangeModelObj: MoneyExchangeModel(dropdownItemList: [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      )
    ]),
  )),
);

/// A notifier that manages the state of a MoneyExchange according to the event that is dispatched to it.
class MoneyExchangeNotifier extends StateNotifier<MoneyExchangeState> {
  MoneyExchangeNotifier(MoneyExchangeState state) : super(state) {}
}
