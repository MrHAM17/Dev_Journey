import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_15_safebank___mobile_banking_app/presentation/national_bank_page/models/national_bank_model.dart';
part 'national_bank_state.dart';

final nationalBankNotifier =
    StateNotifierProvider<NationalBankNotifier, NationalBankState>((ref) =>
        NationalBankNotifier(
            NationalBankState(nationalBankModelObj: NationalBankModel())));

/// A notifier that manages the state of a NationalBank according to the event that is dispatched to it.
class NationalBankNotifier extends StateNotifier<NationalBankState> {
  NationalBankNotifier(NationalBankState state) : super(state);
}
