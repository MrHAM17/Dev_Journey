import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_19_banksy___digital_banking/presentation/enter_money_screen/models/enter_money_model.dart';
part 'enter_money_state.dart';

final enterMoneyNotifier =
    StateNotifierProvider<EnterMoneyNotifier, EnterMoneyState>((ref) =>
        EnterMoneyNotifier(EnterMoneyState(
            messageController: TextEditingController(),
            enterMoneyModelObj: EnterMoneyModel())));

/// A notifier that manages the state of a EnterMoney according to the event that is dispatched to it.
class EnterMoneyNotifier extends StateNotifier<EnterMoneyState> {
  EnterMoneyNotifier(EnterMoneyState state) : super(state);
}
