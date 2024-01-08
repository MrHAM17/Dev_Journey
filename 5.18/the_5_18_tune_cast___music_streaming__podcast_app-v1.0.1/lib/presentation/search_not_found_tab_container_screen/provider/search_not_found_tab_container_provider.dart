import 'package:flutter/material.dart';
import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';
import 'package:the_5_18_tune_cast___music_streaming__podcast_app/presentation/search_not_found_tab_container_screen/models/search_not_found_tab_container_model.dart';

/// A provider class for the SearchNotFoundTabContainerScreen.
///
/// This provider manages the state of the SearchNotFoundTabContainerScreen, including the
/// current searchNotFoundTabContainerModelObj
class SearchNotFoundTabContainerProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  SearchNotFoundTabContainerModel searchNotFoundTabContainerModelObj =
      SearchNotFoundTabContainerModel();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }
}
