import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_18_tune_cast___music_streaming__podcast_app/presentation/search_result_profile_tab_container_screen/models/search_result_profile_tab_container_model.dart';
part 'search_result_profile_tab_container_state.dart';

final searchResultProfileTabContainerNotifier = StateNotifierProvider<
    SearchResultProfileTabContainerNotifier,
    SearchResultProfileTabContainerState>(
  (ref) => SearchResultProfileTabContainerNotifier(
      SearchResultProfileTabContainerState(
    searchController: TextEditingController(),
    searchResultProfileTabContainerModelObj:
        SearchResultProfileTabContainerModel(),
  )),
);

/// A notifier that manages the state of a SearchResultProfileTabContainer according to the event that is dispatched to it.
class SearchResultProfileTabContainerNotifier
    extends StateNotifier<SearchResultProfileTabContainerState> {
  SearchResultProfileTabContainerNotifier(
      SearchResultProfileTabContainerState state)
      : super(state) {}
}
