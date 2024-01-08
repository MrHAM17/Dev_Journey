import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_18_tune_cast___music_streaming__podcast_app/presentation/search_results_songs_tab_container_screen/models/search_results_songs_tab_container_model.dart';
part 'search_results_songs_tab_container_state.dart';

final searchResultsSongsTabContainerNotifier = StateNotifierProvider<
    SearchResultsSongsTabContainerNotifier,
    SearchResultsSongsTabContainerState>(
  (ref) => SearchResultsSongsTabContainerNotifier(
      SearchResultsSongsTabContainerState(
    searchController: TextEditingController(),
    searchResultsSongsTabContainerModelObj:
        SearchResultsSongsTabContainerModel(),
  )),
);

/// A notifier that manages the state of a SearchResultsSongsTabContainer according to the event that is dispatched to it.
class SearchResultsSongsTabContainerNotifier
    extends StateNotifier<SearchResultsSongsTabContainerState> {
  SearchResultsSongsTabContainerNotifier(
      SearchResultsSongsTabContainerState state)
      : super(state) {}
}
