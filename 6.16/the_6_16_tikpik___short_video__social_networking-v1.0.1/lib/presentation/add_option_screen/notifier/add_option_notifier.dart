import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_16_tikpik___short_video__social_networking/presentation/add_option_screen/models/add_option_model.dart';
part 'add_option_state.dart';

final addOptionNotifier =
    StateNotifierProvider<AddOptionNotifier, AddOptionState>(
  (ref) => AddOptionNotifier(AddOptionState(
    stateInactiveController: TextEditingController(),
    stateInactiveController1: TextEditingController(),
    addOptionModelObj: AddOptionModel(),
  )),
);

/// A notifier that manages the state of a AddOption according to the event that is dispatched to it.
class AddOptionNotifier extends StateNotifier<AddOptionState> {
  AddOptionNotifier(AddOptionState state) : super(state) {}
}
