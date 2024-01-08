import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_15_safebank___mobile_banking_app/presentation/send_money_screen/models/send_money_model.dart';
part 'send_money_state.dart';

final sendMoneyNotifier =
    StateNotifierProvider<SendMoneyNotifier, SendMoneyState>(
        (ref) => SendMoneyNotifier(SendMoneyState(
            selectedDropDownValue: SelectionPopupModel(title: ''),
            sendMoneyModelObj: SendMoneyModel(dropdownItemList: [
              SelectionPopupModel(id: 1, title: "Item One", isSelected: true),
              SelectionPopupModel(id: 2, title: "Item Two"),
              SelectionPopupModel(id: 3, title: "Item Three")
            ]))));

/// A notifier that manages the state of a SendMoney according to the event that is dispatched to it.
class SendMoneyNotifier extends StateNotifier<SendMoneyState> {
  SendMoneyNotifier(SendMoneyState state) : super(state);
}
