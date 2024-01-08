import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_17_housit___buyrentsell_property/presentation/add_location_screen/models/add_location_model.dart';part 'add_location_state.dart';final addLocationNotifier = StateNotifierProvider<AddLocationNotifier, AddLocationState>((ref) => AddLocationNotifier(AddLocationState(addLocationModelObj: AddLocationModel())));
/// A notifier that manages the state of a AddLocation according to the event that is dispatched to it.
class AddLocationNotifier extends StateNotifier<AddLocationState> {AddLocationNotifier(AddLocationState state) : super(state);

 }
