import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/follow_item_model.dart';
import '../models/autolayouthorizontal_item_model.dart';
import 'package:the_6_16_tikpik___short_video__social_networking/presentation/search_results_top_page/models/search_results_top_model.dart';
part 'search_results_top_state.dart';

final searchResultsTopNotifier =
    StateNotifierProvider<SearchResultsTopNotifier, SearchResultsTopState>(
  (ref) => SearchResultsTopNotifier(SearchResultsTopState(
    searchResultsTopModelObj: SearchResultsTopModel(followItemList: [
      FollowItemModel(
          arianaGrande: ImageConstant.imgEllipse8,
          arianaGrande1: "Ariana Grande",
          price: "arianagrande | 27.3M followers"),
      FollowItemModel(
          arianaGrande: ImageConstant.imgEllipse9,
          arianaGrande1: "Ariana Cooper",
          price: "arianacooper | 24.5M followers")
    ], autolayouthorizontalItemList: [
      AutolayouthorizontalItemModel(
          k: ImageConstant.imgImage5,
          k1: ImageConstant.imgOverflowmenuPrimary,
          k2: "367.5K"),
      AutolayouthorizontalItemModel(k: ImageConstant.imgImage10, k2: "837.9K"),
      AutolayouthorizontalItemModel(k: ImageConstant.imgImage7, k2: "736.2K")
    ]),
  )),
);

/// A notifier that manages the state of a SearchResultsTop according to the event that is dispatched to it.
class SearchResultsTopNotifier extends StateNotifier<SearchResultsTopState> {
  SearchResultsTopNotifier(SearchResultsTopState state) : super(state) {}
}
