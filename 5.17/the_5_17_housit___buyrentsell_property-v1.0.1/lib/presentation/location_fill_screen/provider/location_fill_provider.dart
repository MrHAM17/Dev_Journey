import 'package:flutter/material.dart';import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_5_17_housit___buyrentsell_property/presentation/location_fill_screen/models/location_fill_model.dart';/// A provider class for the LocationFillScreen.
///
/// This provider manages the state of the LocationFillScreen, including the
/// current locationFillModelObj

// ignore_for_file: must_be_immutable
class LocationFillProvider extends ChangeNotifier {LocationFillModel locationFillModelObj = LocationFillModel();

@override void dispose() { super.dispose(); } 
 }
