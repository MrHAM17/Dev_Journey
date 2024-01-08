import 'package:flutter/material.dart';
import 'package:the_5_20_movie_streaming/core/app_export.dart';
import 'package:the_5_20_movie_streaming/presentation/search_ten_screen/models/search_ten_model.dart';
import '../models/searchten_item_model.dart';

/// A provider class for the SearchTenScreen.
///
/// This provider manages the state of the SearchTenScreen, including the
/// current searchTenModelObj

// ignore_for_file: must_be_immutable
class SearchTenProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  SearchTenModel searchTenModelObj = SearchTenModel();

  bool popularSearch = false;

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }

  void changeCheckBox1(bool value) {
    popularSearch = value;
    notifyListeners();
  }
}
