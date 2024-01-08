import 'package:flutter/material.dart';
import 'package:the_5_06_helthio___telehealth/core/app_export.dart';
import 'package:the_5_06_helthio___telehealth/presentation/top_doctor_screen/models/top_doctor_model.dart';
import '../models/topdoctor_item_model.dart';

/// A provider class for the TopDoctorScreen.
///
/// This provider manages the state of the TopDoctorScreen, including the
/// current topDoctorModelObj

// ignore_for_file: must_be_immutable
class TopDoctorProvider extends ChangeNotifier {
  TopDoctorModel topDoctorModelObj = TopDoctorModel();

  @override
  void dispose() {
    super.dispose();
  }
}
