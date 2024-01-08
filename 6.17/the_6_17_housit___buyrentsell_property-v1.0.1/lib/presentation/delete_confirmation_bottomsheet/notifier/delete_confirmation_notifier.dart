import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_17_housit___buyrentsell_property/presentation/delete_confirmation_bottomsheet/models/delete_confirmation_model.dart';
part 'delete_confirmation_state.dart';

final deleteConfirmationNotifier =
    StateNotifierProvider<DeleteConfirmationNotifier, DeleteConfirmationState>(
  (ref) => DeleteConfirmationNotifier(DeleteConfirmationState(
    deleteConfirmationModelObj: DeleteConfirmationModel(),
  )),
);

/// A notifier that manages the state of a DeleteConfirmation according to the event that is dispatched to it.
class DeleteConfirmationNotifier
    extends StateNotifier<DeleteConfirmationState> {
  DeleteConfirmationNotifier(DeleteConfirmationState state) : super(state) {}
}
