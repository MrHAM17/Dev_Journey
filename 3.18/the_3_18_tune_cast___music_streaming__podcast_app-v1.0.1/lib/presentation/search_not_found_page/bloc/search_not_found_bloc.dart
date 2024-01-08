import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_3_18_tune_cast___music_streaming__podcast_app/presentation/search_not_found_page/models/search_not_found_model.dart';
part 'search_not_found_event.dart';
part 'search_not_found_state.dart';

/// A bloc that manages the state of a SearchNotFound according to the event that is dispatched to it.
class SearchNotFoundBloc
    extends Bloc<SearchNotFoundEvent, SearchNotFoundState> {
  SearchNotFoundBloc(SearchNotFoundState initialState) : super(initialState) {
    on<SearchNotFoundInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SearchNotFoundInitialEvent event,
    Emitter<SearchNotFoundState> emit,
  ) async {}
}
