import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_19_banksy___digital_banking/presentation/receive_money_personal_page/models/receive_money_personal_model.dart';
part 'receive_money_personal_state.dart';

final receiveMoneyPersonalNotifier = StateNotifierProvider<
        ReceiveMoneyPersonalNotifier, ReceiveMoneyPersonalState>(
    (ref) => ReceiveMoneyPersonalNotifier(ReceiveMoneyPersonalState(
        firstNameController: TextEditingController(),
        lastNameController: TextEditingController(),
        emailController: TextEditingController(),
        countryController: TextEditingController(),
        amountController: TextEditingController(),
        inputsController: TextEditingController(),
        inputsController1: TextEditingController(),
        receiveMoneyPersonalModelObj: ReceiveMoneyPersonalModel())));

/// A notifier that manages the state of a ReceiveMoneyPersonal according to the event that is dispatched to it.
class ReceiveMoneyPersonalNotifier
    extends StateNotifier<ReceiveMoneyPersonalState> {
  ReceiveMoneyPersonalNotifier(ReceiveMoneyPersonalState state) : super(state);
}
