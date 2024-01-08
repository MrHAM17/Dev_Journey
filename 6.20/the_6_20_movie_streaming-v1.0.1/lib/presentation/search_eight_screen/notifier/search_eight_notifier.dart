import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_20_movie_streaming/presentation/search_eight_screen/models/search_eight_model.dart';
part 'search_eight_state.dart';

final searchEightNotifier =
    StateNotifierProvider<SearchEightNotifier, SearchEightState>(
  (ref) => SearchEightNotifier(SearchEightState(
    searchController: TextEditingController(),
    searchEightModelObj: SearchEightModel(),
  )),
);

/// A notifier that manages the state of a SearchEight according to the event that is dispatched to it.
class SearchEightNotifier extends StateNotifier<SearchEightState> {
  SearchEightNotifier(SearchEightState state) : super(state) {}
}
