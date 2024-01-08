import 'package:the_4_11_hired___job_search/core/app_export.dart';
import 'package:the_4_11_hired___job_search/presentation/new_position_screen/models/new_position_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the NewPositionScreen.
///
/// This class manages the state of the NewPositionScreen, including the
/// current newPositionModelObj
class NewPositionController extends GetxController {
  TextEditingController frameOneController = TextEditingController();

  TextEditingController nameController = TextEditingController();

  TextEditingController locationController = TextEditingController();

  TextEditingController frameOneController1 = TextEditingController();

  Rx<NewPositionModel> newPositionModelObj = NewPositionModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onClose() {
    super.onClose();
    frameOneController.dispose();
    nameController.dispose();
    locationController.dispose();
    frameOneController1.dispose();
  }

  onSelected(dynamic value) {
    for (var element in newPositionModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    newPositionModelObj.value.dropdownItemList.refresh();
  }
}
