import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_15_safebank___mobile_banking_app/presentation/transfer_page/models/transfer_model.dart';
part 'transfer_state.dart';

final transferNotifier = StateNotifierProvider<TransferNotifier, TransferState>(
    (ref) =>
        TransferNotifier(TransferState(transferModelObj: TransferModel())));

/// A notifier that manages the state of a Transfer according to the event that is dispatched to it.
class TransferNotifier extends StateNotifier<TransferState> {
  TransferNotifier(TransferState state) : super(state);
}
