import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_17_housit___buyrentsell_property/presentation/location_choose_location_screen/models/location_choose_location_model.dart';part 'location_choose_location_state.dart';final locationChooseLocationNotifier = StateNotifierProvider<LocationChooseLocationNotifier, LocationChooseLocationState>((ref) => LocationChooseLocationNotifier(LocationChooseLocationState(locationChooseLocationModelObj: LocationChooseLocationModel())));
/// A notifier that manages the state of a LocationChooseLocation according to the event that is dispatched to it.
class LocationChooseLocationNotifier extends StateNotifier<LocationChooseLocationState> {LocationChooseLocationNotifier(LocationChooseLocationState state) : super(state);

 }
