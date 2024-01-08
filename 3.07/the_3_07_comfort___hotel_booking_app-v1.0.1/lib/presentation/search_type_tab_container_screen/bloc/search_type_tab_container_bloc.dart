import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_3_07_comfort___hotel_booking_app/presentation/search_type_tab_container_screen/models/search_type_tab_container_model.dart';
part 'search_type_tab_container_event.dart';
part 'search_type_tab_container_state.dart';

/// A bloc that manages the state of a SearchTypeTabContainer according to the event that is dispatched to it.
class SearchTypeTabContainerBloc
    extends Bloc<SearchTypeTabContainerEvent, SearchTypeTabContainerState> {
  SearchTypeTabContainerBloc(SearchTypeTabContainerState initialState)
      : super(initialState) {
    on<SearchTypeTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SearchTypeTabContainerInitialEvent event,
    Emitter<SearchTypeTabContainerState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
  }
}
