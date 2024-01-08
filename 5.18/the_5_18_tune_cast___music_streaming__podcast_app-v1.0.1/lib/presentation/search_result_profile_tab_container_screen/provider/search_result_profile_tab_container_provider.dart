import 'package:flutter/material.dart';
import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';
import 'package:the_5_18_tune_cast___music_streaming__podcast_app/presentation/search_result_profile_tab_container_screen/models/search_result_profile_tab_container_model.dart';

/// A provider class for the SearchResultProfileTabContainerScreen.
///
/// This provider manages the state of the SearchResultProfileTabContainerScreen, including the
/// current searchResultProfileTabContainerModelObj
class SearchResultProfileTabContainerProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  SearchResultProfileTabContainerModel searchResultProfileTabContainerModelObj =
      SearchResultProfileTabContainerModel();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }
}
