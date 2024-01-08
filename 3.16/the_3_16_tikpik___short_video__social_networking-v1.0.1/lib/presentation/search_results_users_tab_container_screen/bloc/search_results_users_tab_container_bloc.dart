import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_3_16_tikpik___short_video__social_networking/presentation/search_results_users_tab_container_screen/models/search_results_users_tab_container_model.dart';
part 'search_results_users_tab_container_event.dart';
part 'search_results_users_tab_container_state.dart';

/// A bloc that manages the state of a SearchResultsUsersTabContainer according to the event that is dispatched to it.
class SearchResultsUsersTabContainerBloc extends Bloc<
    SearchResultsUsersTabContainerEvent, SearchResultsUsersTabContainerState> {
  SearchResultsUsersTabContainerBloc(
      SearchResultsUsersTabContainerState initialState)
      : super(initialState) {
    on<SearchResultsUsersTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SearchResultsUsersTabContainerInitialEvent event,
    Emitter<SearchResultsUsersTabContainerState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
  }
}
