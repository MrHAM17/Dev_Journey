import 'package:flutter/material.dart';
import 'package:the_5_09_social_dashboards_ui_kit/core/app_export.dart';
import 'package:the_5_09_social_dashboards_ui_kit/presentation/search_results_screen/models/search_results_model.dart';

/// A provider class for the SearchResultsScreen.
///
/// This provider manages the state of the SearchResultsScreen, including the
/// current searchResultsModelObj

// ignore_for_file: must_be_immutable
class SearchResultsProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  SearchResultsModel searchResultsModelObj = SearchResultsModel();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }
}
