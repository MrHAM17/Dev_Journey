import 'package:flutter/material.dart';
import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'package:the_5_16_tikpik___short_video__social_networking/presentation/search_results_users_tab_container_screen/models/search_results_users_tab_container_model.dart';

/// A provider class for the SearchResultsUsersTabContainerScreen.
///
/// This provider manages the state of the SearchResultsUsersTabContainerScreen, including the
/// current searchResultsUsersTabContainerModelObj
class SearchResultsUsersTabContainerProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  SearchResultsUsersTabContainerModel searchResultsUsersTabContainerModelObj =
      SearchResultsUsersTabContainerModel();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }
}
