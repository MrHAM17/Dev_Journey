import 'package:flutter/material.dart';
import 'package:the_5_11_hired___job_search/core/app_export.dart';
import 'package:the_5_11_hired___job_search/presentation/speciallization_screen/models/speciallization_model.dart';
import '../models/speciallization_item_model.dart';

/// A provider class for the SpeciallizationScreen.
///
/// This provider manages the state of the SpeciallizationScreen, including the
/// current speciallizationModelObj

// ignore_for_file: must_be_immutable
class SpeciallizationProvider extends ChangeNotifier {
  SpeciallizationModel speciallizationModelObj = SpeciallizationModel();

  @override
  void dispose() {
    super.dispose();
  }
}
