import 'package:flutter/material.dart';import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_5_17_housit___buyrentsell_property/presentation/location_choose_location_screen/models/location_choose_location_model.dart';/// A provider class for the LocationChooseLocationScreen.
///
/// This provider manages the state of the LocationChooseLocationScreen, including the
/// current locationChooseLocationModelObj

// ignore_for_file: must_be_immutable
class LocationChooseLocationProvider extends ChangeNotifier {LocationChooseLocationModel locationChooseLocationModelObj = LocationChooseLocationModel();

@override void dispose() { super.dispose(); } 
 }
