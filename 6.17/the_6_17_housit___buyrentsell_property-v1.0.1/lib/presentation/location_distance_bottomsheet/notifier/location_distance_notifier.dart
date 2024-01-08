import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/locationlist_item_model.dart';
import 'package:the_6_17_housit___buyrentsell_property/presentation/location_distance_bottomsheet/models/location_distance_model.dart';
part 'location_distance_state.dart';

final locationDistanceNotifier =
    StateNotifierProvider<LocationDistanceNotifier, LocationDistanceState>(
  (ref) => LocationDistanceNotifier(LocationDistanceState(
    locationDistanceModelObj: LocationDistanceModel(
        locationlistItemList:
            List.generate(2, (index) => LocationlistItemModel())),
  )),
);

/// A notifier that manages the state of a LocationDistance according to the event that is dispatched to it.
class LocationDistanceNotifier extends StateNotifier<LocationDistanceState> {
  LocationDistanceNotifier(LocationDistanceState state) : super(state) {}
}
