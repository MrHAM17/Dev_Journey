import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_17_housit___buyrentsell_property/presentation/edit_success_bottomsheet/models/edit_success_model.dart';
part 'edit_success_state.dart';

final editSuccessNotifier =
    StateNotifierProvider<EditSuccessNotifier, EditSuccessState>(
  (ref) => EditSuccessNotifier(EditSuccessState(
    editSuccessModelObj: EditSuccessModel(),
  )),
);

/// A notifier that manages the state of a EditSuccess according to the event that is dispatched to it.
class EditSuccessNotifier extends StateNotifier<EditSuccessState> {
  EditSuccessNotifier(EditSuccessState state) : super(state) {}
}
