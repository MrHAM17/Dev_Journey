import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_17_housit___buyrentsell_property/presentation/location_empty_screen/models/location_empty_model.dart';part 'location_empty_state.dart';final locationEmptyNotifier = StateNotifierProvider<LocationEmptyNotifier, LocationEmptyState>((ref) => LocationEmptyNotifier(LocationEmptyState(locationEmptyModelObj: LocationEmptyModel())));
/// A notifier that manages the state of a LocationEmpty according to the event that is dispatched to it.
class LocationEmptyNotifier extends StateNotifier<LocationEmptyState> {LocationEmptyNotifier(LocationEmptyState state) : super(state);

 }
