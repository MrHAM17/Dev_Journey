import 'package:flutter/material.dart';
import 'package:the_5_04_health_care/core/app_export.dart';
import 'package:the_5_04_health_care/presentation/ambulance_screen/models/ambulance_model.dart';

/// A provider class for the AmbulanceScreen.
///
/// This provider manages the state of the AmbulanceScreen, including the
/// current ambulanceModelObj

// ignore_for_file: must_be_immutable
class AmbulanceProvider extends ChangeNotifier {
  AmbulanceModel ambulanceModelObj = AmbulanceModel();

  @override
  void dispose() {
    super.dispose();
  }
}
