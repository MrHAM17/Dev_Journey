import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_05_blog_app/presentation/search_topics_screen/models/search_topics_model.dart';
part 'search_topics_state.dart';

final searchTopicsNotifier =
    StateNotifierProvider<SearchTopicsNotifier, SearchTopicsState>((ref) =>
        SearchTopicsNotifier(SearchTopicsState(
            searchController: TextEditingController(),
            searchTopicsModelObj: SearchTopicsModel())));

/// A notifier that manages the state of a SearchTopics according to the event that is dispatched to it.
class SearchTopicsNotifier extends StateNotifier<SearchTopicsState> {
  SearchTopicsNotifier(SearchTopicsState state) : super(state);
}
