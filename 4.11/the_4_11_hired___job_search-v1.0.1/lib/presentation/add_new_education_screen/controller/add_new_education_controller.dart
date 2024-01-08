import 'package:the_4_11_hired___job_search/core/app_export.dart';
import 'package:the_4_11_hired___job_search/presentation/add_new_education_screen/models/add_new_education_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the AddNewEducationScreen.
///
/// This class manages the state of the AddNewEducationScreen, including the
/// current addNewEducationModelObj
class AddNewEducationController extends GetxController {
  TextEditingController frameOneController = TextEditingController();

  TextEditingController frameOneController1 = TextEditingController();

  TextEditingController frameOneController2 = TextEditingController();

  TextEditingController frameOneController3 = TextEditingController();

  Rx<AddNewEducationModel> addNewEducationModelObj = AddNewEducationModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onClose() {
    super.onClose();
    frameOneController.dispose();
    frameOneController1.dispose();
    frameOneController2.dispose();
    frameOneController3.dispose();
  }

  onSelected(dynamic value) {
    for (var element in addNewEducationModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    addNewEducationModelObj.value.dropdownItemList.refresh();
  }
}
