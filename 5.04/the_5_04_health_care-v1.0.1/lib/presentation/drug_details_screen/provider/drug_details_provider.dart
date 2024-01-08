import 'package:flutter/material.dart';
import 'package:the_5_04_health_care/core/app_export.dart';
import 'package:the_5_04_health_care/presentation/drug_details_screen/models/drug_details_model.dart';

/// A provider class for the DrugDetailsScreen.
///
/// This provider manages the state of the DrugDetailsScreen, including the
/// current drugDetailsModelObj

// ignore_for_file: must_be_immutable
class DrugDetailsProvider extends ChangeNotifier {
  DrugDetailsModel drugDetailsModelObj = DrugDetailsModel();

  @override
  void dispose() {
    super.dispose();
  }
}
