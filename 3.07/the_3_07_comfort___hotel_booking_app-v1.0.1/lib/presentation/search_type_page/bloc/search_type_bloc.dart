import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_3_07_comfort___hotel_booking_app/presentation/search_type_page/models/search_type_model.dart';
part 'search_type_event.dart';
part 'search_type_state.dart';

/// A bloc that manages the state of a SearchType according to the event that is dispatched to it.
class SearchTypeBloc extends Bloc<SearchTypeEvent, SearchTypeState> {
  SearchTypeBloc(SearchTypeState initialState) : super(initialState) {
    on<SearchTypeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SearchTypeInitialEvent event,
    Emitter<SearchTypeState> emit,
  ) async {}
}
