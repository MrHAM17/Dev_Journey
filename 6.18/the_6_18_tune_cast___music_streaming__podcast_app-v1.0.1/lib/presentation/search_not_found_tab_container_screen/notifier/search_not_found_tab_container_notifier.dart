import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_18_tune_cast___music_streaming__podcast_app/presentation/search_not_found_tab_container_screen/models/search_not_found_tab_container_model.dart';
part 'search_not_found_tab_container_state.dart';

final searchNotFoundTabContainerNotifier = StateNotifierProvider<
    SearchNotFoundTabContainerNotifier, SearchNotFoundTabContainerState>(
  (ref) => SearchNotFoundTabContainerNotifier(SearchNotFoundTabContainerState(
    searchController: TextEditingController(),
    searchNotFoundTabContainerModelObj: SearchNotFoundTabContainerModel(),
  )),
);

/// A notifier that manages the state of a SearchNotFoundTabContainer according to the event that is dispatched to it.
class SearchNotFoundTabContainerNotifier
    extends StateNotifier<SearchNotFoundTabContainerState> {
  SearchNotFoundTabContainerNotifier(SearchNotFoundTabContainerState state)
      : super(state) {}
}
