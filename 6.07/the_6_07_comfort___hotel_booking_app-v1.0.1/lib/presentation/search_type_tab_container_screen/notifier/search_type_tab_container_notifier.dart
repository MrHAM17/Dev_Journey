import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_07_comfort___hotel_booking_app/presentation/search_type_tab_container_screen/models/search_type_tab_container_model.dart';
part 'search_type_tab_container_state.dart';

final searchTypeTabContainerNotifier = StateNotifierProvider<
    SearchTypeTabContainerNotifier, SearchTypeTabContainerState>(
  (ref) => SearchTypeTabContainerNotifier(SearchTypeTabContainerState(
    searchController: TextEditingController(),
    searchTypeTabContainerModelObj: SearchTypeTabContainerModel(),
  )),
);

/// A notifier that manages the state of a SearchTypeTabContainer according to the event that is dispatched to it.
class SearchTypeTabContainerNotifier
    extends StateNotifier<SearchTypeTabContainerState> {
  SearchTypeTabContainerNotifier(SearchTypeTabContainerState state)
      : super(state) {}
}
