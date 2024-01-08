import 'package:flutter/material.dart';
import 'package:the_5_06_helthio___telehealth/core/app_export.dart';
import 'package:the_5_06_helthio___telehealth/presentation/location_screen/models/location_model.dart';

/// A provider class for the LocationScreen.
///
/// This provider manages the state of the LocationScreen, including the
/// current locationModelObj
class LocationProvider extends ChangeNotifier {
  LocationModel locationModelObj = LocationModel();

  @override
  void dispose() {
    super.dispose();
  }
}
