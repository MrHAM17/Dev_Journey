import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/search_item_model.dart';
import 'package:the_6_09_social_dashboards_ui_kit/presentation/search_page/models/search_model.dart';
part 'search_state.dart';

final searchNotifier = StateNotifierProvider<SearchNotifier, SearchState>(
  (ref) => SearchNotifier(SearchState(
    searchModelObj: SearchModel(searchItemList: [
      SearchItemModel(
          edwardFord: ImageConstant.imgThumbnail,
          username: "Edward Ford",
          edwardFord1: ImageConstant.imgThumbnail229x154,
          edwardFord2: ImageConstant.imgImage6,
          username1: "Edward Ford",
          edwardFord3: ImageConstant.imgThumbnail1,
          edwardFord4: ImageConstant.imgImage7,
          username2: "Edward Ford",
          edwardFord5: ImageConstant.imgThumbnail2,
          edwardFord6: ImageConstant.imgImage8,
          username3: "Edward Ford")
    ]),
  )),
);

/// A notifier that manages the state of a Search according to the event that is dispatched to it.
class SearchNotifier extends StateNotifier<SearchState> {
  SearchNotifier(SearchState state) : super(state) {}
}
