import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_19_banksy___digital_banking/presentation/bank_to_bank_one_screen/models/bank_to_bank_one_model.dart';
part 'bank_to_bank_one_state.dart';

final bankToBankOneNotifier =
    StateNotifierProvider<BankToBankOneNotifier, BankToBankOneState>((ref) =>
        BankToBankOneNotifier(
            BankToBankOneState(bankToBankOneModelObj: BankToBankOneModel())));

/// A notifier that manages the state of a BankToBankOne according to the event that is dispatched to it.
class BankToBankOneNotifier extends StateNotifier<BankToBankOneState> {
  BankToBankOneNotifier(BankToBankOneState state) : super(state);
}
