import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_17_housit___buyrentsell_property/presentation/select_location_bottomsheet/models/select_location_model.dart';
part 'select_location_state.dart';

final selectLocationNotifier =
    StateNotifierProvider<SelectLocationNotifier, SelectLocationState>(
  (ref) => SelectLocationNotifier(SelectLocationState(
    selectLocationModelObj: SelectLocationModel(),
  )),
);

/// A notifier that manages the state of a SelectLocation according to the event that is dispatched to it.
class SelectLocationNotifier extends StateNotifier<SelectLocationState> {
  SelectLocationNotifier(SelectLocationState state) : super(state) {}
}
