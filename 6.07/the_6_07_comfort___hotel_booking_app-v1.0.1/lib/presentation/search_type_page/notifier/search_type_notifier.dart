import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_07_comfort___hotel_booking_app/presentation/search_type_page/models/search_type_model.dart';
part 'search_type_state.dart';

final searchTypeNotifier =
    StateNotifierProvider<SearchTypeNotifier, SearchTypeState>(
  (ref) => SearchTypeNotifier(SearchTypeState(
    searchTypeModelObj: SearchTypeModel(),
  )),
);

/// A notifier that manages the state of a SearchType according to the event that is dispatched to it.
class SearchTypeNotifier extends StateNotifier<SearchTypeState> {
  SearchTypeNotifier(SearchTypeState state) : super(state) {}
}
