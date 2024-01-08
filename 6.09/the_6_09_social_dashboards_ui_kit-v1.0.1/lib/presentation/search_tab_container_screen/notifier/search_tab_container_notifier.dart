import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_09_social_dashboards_ui_kit/presentation/search_tab_container_screen/models/search_tab_container_model.dart';
part 'search_tab_container_state.dart';

final searchTabContainerNotifier =
    StateNotifierProvider<SearchTabContainerNotifier, SearchTabContainerState>(
        (ref) => SearchTabContainerNotifier(SearchTabContainerState(
            searchController: TextEditingController(),
            searchTabContainerModelObj: SearchTabContainerModel())));

/// A notifier that manages the state of a SearchTabContainer according to the event that is dispatched to it.
class SearchTabContainerNotifier
    extends StateNotifier<SearchTabContainerState> {
  SearchTabContainerNotifier(SearchTabContainerState state) : super(state);
}
