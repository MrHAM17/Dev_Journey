import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_19_banksy___digital_banking/presentation/money_sent_success_screen/models/money_sent_success_model.dart';
part 'money_sent_success_state.dart';

final moneySentSuccessNotifier =
    StateNotifierProvider<MoneySentSuccessNotifier, MoneySentSuccessState>(
  (ref) => MoneySentSuccessNotifier(MoneySentSuccessState(
    moneySentSuccessModelObj: MoneySentSuccessModel(),
  )),
);

/// A notifier that manages the state of a MoneySentSuccess according to the event that is dispatched to it.
class MoneySentSuccessNotifier extends StateNotifier<MoneySentSuccessState> {
  MoneySentSuccessNotifier(MoneySentSuccessState state) : super(state) {}
}
