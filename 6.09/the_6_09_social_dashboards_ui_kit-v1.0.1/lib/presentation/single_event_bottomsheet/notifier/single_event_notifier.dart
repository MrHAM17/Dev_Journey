import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_09_social_dashboards_ui_kit/presentation/single_event_bottomsheet/models/single_event_model.dart';
part 'single_event_state.dart';

final singleEventNotifier =
    StateNotifierProvider<SingleEventNotifier, SingleEventState>(
  (ref) => SingleEventNotifier(SingleEventState(
    singleEventModelObj: SingleEventModel(),
  )),
);

/// A notifier that manages the state of a SingleEvent according to the event that is dispatched to it.
class SingleEventNotifier extends StateNotifier<SingleEventState> {
  SingleEventNotifier(SingleEventState state) : super(state) {}
}
