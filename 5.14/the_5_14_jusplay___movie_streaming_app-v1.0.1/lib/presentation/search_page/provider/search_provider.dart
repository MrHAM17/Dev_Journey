import 'package:flutter/material.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/presentation/search_page/models/search_model.dart';
import '../models/frame3_item_model.dart';
import '../models/frame5_item_model.dart';
import '../models/frame6_item_model.dart';

/// A provider class for the SearchPage.
///
/// This provider manages the state of the SearchPage, including the
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
    searchModelObj.frame3ItemList.forEach((element) {
      element.isSelected = false;
    });
    searchModelObj.frame3ItemList[index].isSelected = value;
    notifyListeners();
  }
}
