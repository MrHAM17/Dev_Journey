import 'package:flutter/material.dart';
import 'package:the_5_06_helthio___telehealth/core/app_export.dart';
import 'package:the_5_06_helthio___telehealth/presentation/drugs_detail_screen/models/drugs_detail_model.dart';

/// A provider class for the DrugsDetailScreen.
///
/// This provider manages the state of the DrugsDetailScreen, including the
/// current drugsDetailModelObj

// ignore_for_file: must_be_immutable
class DrugsDetailProvider extends ChangeNotifier {
  DrugsDetailModel drugsDetailModelObj = DrugsDetailModel();

  @override
  void dispose() {
    super.dispose();
  }
}
