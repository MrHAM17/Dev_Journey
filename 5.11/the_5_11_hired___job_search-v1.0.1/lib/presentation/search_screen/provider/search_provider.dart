import 'package:flutter/material.dart';
import 'package:the_5_11_hired___job_search/core/app_export.dart';
import 'package:the_5_11_hired___job_search/presentation/search_screen/models/search_model.dart';
import '../models/search_item_model.dart';
import '../models/fulltime5_item_model.dart';

/// A provider class for the SearchScreen.
///
/// This provider manages the state of the SearchScreen, including the
/// current searchModelObj

// ignore_for_file: must_be_immutable
class SearchProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  SearchModel searchModelObj = SearchModel();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }

  void onSelectedChipView1(
    int index,
    bool value,
  ) {
    searchModelObj.fulltime5ItemList.forEach((element) {
      element.isSelected = false;
    });
    searchModelObj.fulltime5ItemList[index].isSelected = value;
    notifyListeners();
  }
}
