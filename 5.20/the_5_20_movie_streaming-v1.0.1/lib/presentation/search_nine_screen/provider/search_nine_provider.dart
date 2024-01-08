import 'package:flutter/material.dart';
import 'package:the_5_20_movie_streaming/core/app_export.dart';
import 'package:the_5_20_movie_streaming/presentation/search_nine_screen/models/search_nine_model.dart';
import '../models/searchnine_item_model.dart';

/// A provider class for the SearchNineScreen.
///
/// This provider manages the state of the SearchNineScreen, including the
/// current searchNineModelObj

// ignore_for_file: must_be_immutable
class SearchNineProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  SearchNineModel searchNineModelObj = SearchNineModel();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }
}
