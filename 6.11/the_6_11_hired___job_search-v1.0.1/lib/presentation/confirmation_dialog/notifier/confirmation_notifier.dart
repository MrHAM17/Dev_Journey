import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_11_hired___job_search/presentation/confirmation_dialog/models/confirmation_model.dart';
part 'confirmation_state.dart';

final confirmationNotifier =
    StateNotifierProvider<ConfirmationNotifier, ConfirmationState>((ref) =>
        ConfirmationNotifier(
            ConfirmationState(confirmationModelObj: ConfirmationModel())));

/// A notifier that manages the state of a Confirmation according to the event that is dispatched to it.
class ConfirmationNotifier extends StateNotifier<ConfirmationState> {
  ConfirmationNotifier(ConfirmationState state) : super(state);
}
