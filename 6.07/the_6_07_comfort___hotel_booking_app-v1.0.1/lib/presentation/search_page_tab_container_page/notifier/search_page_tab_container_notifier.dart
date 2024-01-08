import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_07_comfort___hotel_booking_app/presentation/search_page_tab_container_page/models/search_page_tab_container_model.dart';
part 'search_page_tab_container_state.dart';

final searchPageTabContainerNotifier = StateNotifierProvider<
    SearchPageTabContainerNotifier, SearchPageTabContainerState>(
  (ref) => SearchPageTabContainerNotifier(SearchPageTabContainerState(
    searchController: TextEditingController(),
    searchPageTabContainerModelObj: SearchPageTabContainerModel(),
  )),
);

/// A notifier that manages the state of a SearchPageTabContainer according to the event that is dispatched to it.
class SearchPageTabContainerNotifier
    extends StateNotifier<SearchPageTabContainerState> {
  SearchPageTabContainerNotifier(SearchPageTabContainerState state)
      : super(state) {}
}
