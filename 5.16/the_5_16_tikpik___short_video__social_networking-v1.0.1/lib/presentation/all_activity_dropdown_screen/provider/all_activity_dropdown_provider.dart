import 'package:flutter/material.dart';
import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'package:the_5_16_tikpik___short_video__social_networking/presentation/all_activity_dropdown_screen/models/all_activity_dropdown_model.dart';

/// A provider class for the AllActivityDropdownScreen.
///
/// This provider manages the state of the AllActivityDropdownScreen, including the
/// current allActivityDropdownModelObj
class AllActivityDropdownProvider extends ChangeNotifier {
  AllActivityDropdownModel allActivityDropdownModelObj =
      AllActivityDropdownModel();

  @override
  void dispose() {
    super.dispose();
  }

  onSelected(dynamic value) {
    for (var element in allActivityDropdownModelObj.dropdownItemList) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }
}
