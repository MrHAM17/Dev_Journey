import 'package:flutter/material.dart';
import 'package:the_5_20_movie_streaming/core/app_export.dart';
import 'package:the_5_20_movie_streaming/presentation/search_six_screen/models/search_six_model.dart';
import '../models/movies7_item_model.dart';
import '../models/movies8_item_model.dart';
import '../models/movies9_item_model.dart';

/// A provider class for the SearchSixScreen.
///
/// This provider manages the state of the SearchSixScreen, including the
/// current searchSixModelObj

// ignore_for_file: must_be_immutable
class SearchSixProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  SearchSixModel searchSixModelObj = SearchSixModel();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }
}
