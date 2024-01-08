import 'package:flutter/material.dart';
import 'package:the_5_20_movie_streaming/core/app_export.dart';
import 'package:the_5_20_movie_streaming/presentation/search_eight_screen/models/search_eight_model.dart';

/// A provider class for the SearchEightScreen.
///
/// This provider manages the state of the SearchEightScreen, including the
/// current searchEightModelObj
class SearchEightProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  SearchEightModel searchEightModelObj = SearchEightModel();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }
}
