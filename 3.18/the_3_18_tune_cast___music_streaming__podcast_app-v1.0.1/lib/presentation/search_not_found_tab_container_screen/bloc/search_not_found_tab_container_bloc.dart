import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_3_18_tune_cast___music_streaming__podcast_app/presentation/search_not_found_tab_container_screen/models/search_not_found_tab_container_model.dart';
part 'search_not_found_tab_container_event.dart';
part 'search_not_found_tab_container_state.dart';

/// A bloc that manages the state of a SearchNotFoundTabContainer according to the event that is dispatched to it.
class SearchNotFoundTabContainerBloc extends Bloc<
    SearchNotFoundTabContainerEvent, SearchNotFoundTabContainerState> {
  SearchNotFoundTabContainerBloc(SearchNotFoundTabContainerState initialState)
      : super(initialState) {
    on<SearchNotFoundTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SearchNotFoundTabContainerInitialEvent event,
    Emitter<SearchNotFoundTabContainerState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
  }
}
