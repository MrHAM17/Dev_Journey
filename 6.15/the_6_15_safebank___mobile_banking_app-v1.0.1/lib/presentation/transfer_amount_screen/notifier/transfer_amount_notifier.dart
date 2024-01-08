import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_15_safebank___mobile_banking_app/presentation/transfer_amount_screen/models/transfer_amount_model.dart';
part 'transfer_amount_state.dart';

final transferAmountNotifier = StateNotifierProvider<TransferAmountNotifier,
        TransferAmountState>(
    (ref) => TransferAmountNotifier(
        TransferAmountState(transferAmountModelObj: TransferAmountModel())));

/// A notifier that manages the state of a TransferAmount according to the event that is dispatched to it.
class TransferAmountNotifier extends StateNotifier<TransferAmountState> {
  TransferAmountNotifier(TransferAmountState state) : super(state);
}
