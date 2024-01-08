import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_19_banksy___digital_banking/presentation/receive_money_request_page/models/receive_money_request_model.dart';
part 'receive_money_request_state.dart';

final receiveMoneyRequestNotifier = StateNotifierProvider<
        ReceiveMoneyRequestNotifier, ReceiveMoneyRequestState>(
    (ref) => ReceiveMoneyRequestNotifier(ReceiveMoneyRequestState(
        firstNameController: TextEditingController(),
        lastNameController: TextEditingController(),
        emailController: TextEditingController(),
        nameController: TextEditingController(),
        countryController: TextEditingController(),
        amountController: TextEditingController(),
        inputsController: TextEditingController(),
        inputsController1: TextEditingController(),
        receiveMoneyRequestModelObj: ReceiveMoneyRequestModel())));

/// A notifier that manages the state of a ReceiveMoneyRequest according to the event that is dispatched to it.
class ReceiveMoneyRequestNotifier
    extends StateNotifier<ReceiveMoneyRequestState> {
  ReceiveMoneyRequestNotifier(ReceiveMoneyRequestState state) : super(state);
}
