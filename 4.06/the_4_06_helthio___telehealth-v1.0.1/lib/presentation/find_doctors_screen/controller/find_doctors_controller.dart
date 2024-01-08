import 'package:the_4_06_helthio___telehealth/core/app_export.dart';
import 'package:the_4_06_helthio___telehealth/presentation/find_doctors_screen/models/find_doctors_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the FindDoctorsScreen.
///
/// This class manages the state of the FindDoctorsScreen, including the
/// current findDoctorsModelObj
class FindDoctorsController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<FindDoctorsModel> findDoctorsModelObj = FindDoctorsModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
