import 'package:flutter/material.dart';import 'package:the_5_07_comfort___hotel_booking_app/core/app_export.dart';import 'package:the_5_07_comfort___hotel_booking_app/presentation/location_screen/models/location_model.dart';/// A provider class for the LocationScreen.
///
/// This provider manages the state of the LocationScreen, including the
/// current locationModelObj

// ignore_for_file: must_be_immutable
class LocationProvider extends ChangeNotifier {LocationModel locationModelObj = LocationModel();

@override void dispose() { super.dispose(); } 
 }
