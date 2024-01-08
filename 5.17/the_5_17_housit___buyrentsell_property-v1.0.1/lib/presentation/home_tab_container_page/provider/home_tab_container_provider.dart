import 'package:flutter/material.dart';
import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';
import 'package:the_5_17_housit___buyrentsell_property/presentation/home_tab_container_page/models/home_tab_container_model.dart';

/// A provider class for the HomeTabContainerPage.
///
/// This provider manages the state of the HomeTabContainerPage, including the
/// current homeTabContainerModelObj
class HomeTabContainerProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  HomeTabContainerModel homeTabContainerModelObj = HomeTabContainerModel();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }

  onSelected(dynamic value) {
    for (var element in homeTabContainerModelObj.dropdownItemList) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }
}
