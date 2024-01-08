import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_18_tune_cast___music_streaming__podcast_app/presentation/search_not_found_page/models/search_not_found_model.dart';
part 'search_not_found_state.dart';

final searchNotFoundNotifier =
    StateNotifierProvider<SearchNotFoundNotifier, SearchNotFoundState>(
  (ref) => SearchNotFoundNotifier(SearchNotFoundState(
    searchNotFoundModelObj: SearchNotFoundModel(),
  )),
);

/// A notifier that manages the state of a SearchNotFound according to the event that is dispatched to it.
class SearchNotFoundNotifier extends StateNotifier<SearchNotFoundState> {
  SearchNotFoundNotifier(SearchNotFoundState state) : super(state) {}
}
