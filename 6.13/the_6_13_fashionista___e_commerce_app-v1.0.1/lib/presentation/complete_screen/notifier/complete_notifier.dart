import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_13_fashionista___e_commerce_app/presentation/complete_screen/models/complete_model.dart';
part 'complete_state.dart';

final completeNotifier = StateNotifierProvider<CompleteNotifier, CompleteState>(
    (ref) =>
        CompleteNotifier(CompleteState(completeModelObj: CompleteModel())));

/// A notifier that manages the state of a Complete according to the event that is dispatched to it.
class CompleteNotifier extends StateNotifier<CompleteState> {
  CompleteNotifier(CompleteState state) : super(state);
}
