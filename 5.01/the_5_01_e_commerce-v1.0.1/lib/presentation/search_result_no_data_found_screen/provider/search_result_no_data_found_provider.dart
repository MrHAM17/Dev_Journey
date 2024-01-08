import 'package:flutter/material.dart';
import 'package:the_5_01_e_commerce/core/app_export.dart';
import 'package:the_5_01_e_commerce/presentation/search_result_no_data_found_screen/models/search_result_no_data_found_model.dart';

/// A provider class for the SearchResultNoDataFoundScreen.
///
/// This provider manages the state of the SearchResultNoDataFoundScreen, including the
/// current searchResultNoDataFoundModelObj
class SearchResultNoDataFoundProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  SearchResultNoDataFoundModel searchResultNoDataFoundModelObj =
      SearchResultNoDataFoundModel();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }

  onSelected(dynamic value) {
    for (var element in searchResultNoDataFoundModelObj.dropdownItemList) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }
}
