import 'package:flutter/material.dart';
import 'package:the_5_11_hired___job_search/core/app_export.dart';
import 'package:the_5_11_hired___job_search/presentation/new_position_screen/models/new_position_model.dart';

/// A provider class for the NewPositionScreen.
///
/// This provider manages the state of the NewPositionScreen, including the
/// current newPositionModelObj

// ignore_for_file: must_be_immutable
class NewPositionProvider extends ChangeNotifier {
  TextEditingController frameOneController = TextEditingController();

  TextEditingController nameController = TextEditingController();

  TextEditingController locationController = TextEditingController();

  TextEditingController frameOneController1 = TextEditingController();

  NewPositionModel newPositionModelObj = NewPositionModel();

  @override
  void dispose() {
    super.dispose();
    frameOneController.dispose();
    nameController.dispose();
    locationController.dispose();
    frameOneController1.dispose();
  }

  onSelected(dynamic value) {
    for (var element in newPositionModelObj.dropdownItemList) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }
}
