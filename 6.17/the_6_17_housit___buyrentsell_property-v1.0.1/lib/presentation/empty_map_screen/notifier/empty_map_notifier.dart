import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_17_housit___buyrentsell_property/presentation/empty_map_screen/models/empty_map_model.dart';
part 'empty_map_state.dart';

final emptyMapNotifier = StateNotifierProvider<EmptyMapNotifier, EmptyMapState>(
  (ref) => EmptyMapNotifier(EmptyMapState(
    emptyMapModelObj: EmptyMapModel(),
  )),
);

/// A notifier that manages the state of a EmptyMap according to the event that is dispatched to it.
class EmptyMapNotifier extends StateNotifier<EmptyMapState> {
  EmptyMapNotifier(EmptyMapState state) : super(state) {}
}
