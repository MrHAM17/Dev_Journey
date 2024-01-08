import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_16_tikpik___short_video__social_networking/presentation/search_results_users_tab_container_screen/models/search_results_users_tab_container_model.dart';
part 'search_results_users_tab_container_state.dart';

final searchResultsUsersTabContainerNotifier = StateNotifierProvider<
    SearchResultsUsersTabContainerNotifier,
    SearchResultsUsersTabContainerState>(
  (ref) => SearchResultsUsersTabContainerNotifier(
      SearchResultsUsersTabContainerState(
    searchController: TextEditingController(),
    searchResultsUsersTabContainerModelObj:
        SearchResultsUsersTabContainerModel(),
  )),
);

/// A notifier that manages the state of a SearchResultsUsersTabContainer according to the event that is dispatched to it.
class SearchResultsUsersTabContainerNotifier
    extends StateNotifier<SearchResultsUsersTabContainerState> {
  SearchResultsUsersTabContainerNotifier(
      SearchResultsUsersTabContainerState state)
      : super(state) {}
}
