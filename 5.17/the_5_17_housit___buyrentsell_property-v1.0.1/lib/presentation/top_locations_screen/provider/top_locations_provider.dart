import 'package:flutter/material.dart';import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_5_17_housit___buyrentsell_property/presentation/top_locations_screen/models/top_locations_model.dart';import '../models/data_item_model.dart';/// A provider class for the TopLocationsScreen.
///
/// This provider manages the state of the TopLocationsScreen, including the
/// current topLocationsModelObj

// ignore_for_file: must_be_immutable
class TopLocationsProvider extends ChangeNotifier {TopLocationsModel topLocationsModelObj = TopLocationsModel();

@override void dispose() { super.dispose(); } 
 }
