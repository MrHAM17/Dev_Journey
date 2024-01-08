import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_09_social_dashboards_ui_kit/presentation/search_results_screen/models/search_results_model.dart';
part 'search_results_state.dart';

final searchResultsNotifier =
    StateNotifierProvider<SearchResultsNotifier, SearchResultsState>((ref) =>
        SearchResultsNotifier(SearchResultsState(
            searchController: TextEditingController(),
            searchResultsModelObj: SearchResultsModel())));

/// A notifier that manages the state of a SearchResults according to the event that is dispatched to it.
class SearchResultsNotifier extends StateNotifier<SearchResultsState> {
  SearchResultsNotifier(SearchResultsState state) : super(state);
}
