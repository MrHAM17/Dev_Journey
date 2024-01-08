import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_17_housit___buyrentsell_property/presentation/location_fill_screen/models/location_fill_model.dart';part 'location_fill_state.dart';final locationFillNotifier = StateNotifierProvider<LocationFillNotifier, LocationFillState>((ref) => LocationFillNotifier(LocationFillState(locationFillModelObj: LocationFillModel())));
/// A notifier that manages the state of a LocationFill according to the event that is dispatched to it.
class LocationFillNotifier extends StateNotifier<LocationFillState> {LocationFillNotifier(LocationFillState state) : super(state);

 }
