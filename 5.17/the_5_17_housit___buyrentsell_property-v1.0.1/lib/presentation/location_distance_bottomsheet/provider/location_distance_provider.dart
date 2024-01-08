import 'package:flutter/material.dart';import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_5_17_housit___buyrentsell_property/presentation/location_distance_bottomsheet/models/location_distance_model.dart';import '../models/locationlist_item_model.dart';/// A provider class for the LocationDistanceBottomsheet.
///
/// This provider manages the state of the LocationDistanceBottomsheet, including the
/// current locationDistanceModelObj

// ignore_for_file: must_be_immutable
class LocationDistanceProvider extends ChangeNotifier {LocationDistanceModel locationDistanceModelObj = LocationDistanceModel();

@override void dispose() { super.dispose(); } 
 }
