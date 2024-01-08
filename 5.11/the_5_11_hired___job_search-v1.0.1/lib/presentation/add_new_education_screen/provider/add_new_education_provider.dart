import 'package:flutter/material.dart';
import 'package:the_5_11_hired___job_search/core/app_export.dart';
import 'package:the_5_11_hired___job_search/presentation/add_new_education_screen/models/add_new_education_model.dart';

/// A provider class for the AddNewEducationScreen.
///
/// This provider manages the state of the AddNewEducationScreen, including the
/// current addNewEducationModelObj

// ignore_for_file: must_be_immutable
class AddNewEducationProvider extends ChangeNotifier {
  TextEditingController frameOneController = TextEditingController();

  TextEditingController frameOneController1 = TextEditingController();

  TextEditingController frameOneController2 = TextEditingController();

  TextEditingController frameOneController3 = TextEditingController();

  AddNewEducationModel addNewEducationModelObj = AddNewEducationModel();

  @override
  void dispose() {
    super.dispose();
    frameOneController.dispose();
    frameOneController1.dispose();
    frameOneController2.dispose();
    frameOneController3.dispose();
  }

  onSelected(dynamic value) {
    for (var element in addNewEducationModelObj.dropdownItemList) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }
}
