import 'package:flutter/material.dart';
import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';
import 'package:the_5_18_tune_cast___music_streaming__podcast_app/presentation/search_results_songs_tab_container_screen/models/search_results_songs_tab_container_model.dart';

/// A provider class for the SearchResultsSongsTabContainerScreen.
///
/// This provider manages the state of the SearchResultsSongsTabContainerScreen, including the
/// current searchResultsSongsTabContainerModelObj
class SearchResultsSongsTabContainerProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  SearchResultsSongsTabContainerModel searchResultsSongsTabContainerModelObj =
      SearchResultsSongsTabContainerModel();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }
}
