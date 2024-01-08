import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_19_banksy___digital_banking/presentation/bank_to_bank_two_screen/models/bank_to_bank_two_model.dart';
part 'bank_to_bank_two_state.dart';

final bankToBankTwoNotifier =
    StateNotifierProvider<BankToBankTwoNotifier, BankToBankTwoState>((ref) =>
        BankToBankTwoNotifier(BankToBankTwoState(
            priceController: TextEditingController(),
            bankToBankTwoModelObj: BankToBankTwoModel())));

/// A notifier that manages the state of a BankToBankTwo according to the event that is dispatched to it.
class BankToBankTwoNotifier extends StateNotifier<BankToBankTwoState> {
  BankToBankTwoNotifier(BankToBankTwoState state) : super(state);
}
