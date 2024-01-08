import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/searchresultsvideos_item_model.dart';
import 'package:the_6_16_tikpik___short_video__social_networking/presentation/search_results_videos_page/models/search_results_videos_model.dart';
part 'search_results_videos_state.dart';

final searchResultsVideosNotifier = StateNotifierProvider<
    SearchResultsVideosNotifier, SearchResultsVideosState>(
  (ref) => SearchResultsVideosNotifier(SearchResultsVideosState(
    searchResultsVideosModelObj:
        SearchResultsVideosModel(searchresultsvideosItemList: [
      SearchresultsvideosItemModel(
          k: ImageConstant.imgImage300x186,
          k1: ImageConstant.imgOverflowmenuPrimary,
          k2: "837.5K"),
      SearchresultsvideosItemModel(k: ImageConstant.imgImage11, k2: "736.3K"),
      SearchresultsvideosItemModel(
          k: ImageConstant.imgImage12,
          k1: ImageConstant.imgOverflowmenuPrimary,
          k2: "639.8K"),
      SearchresultsvideosItemModel(
          k: ImageConstant.imgImage13,
          k1: ImageConstant.imgOverflowmenuPrimary,
          k2: "528.5K")
    ]),
  )),
);

/// A notifier that manages the state of a SearchResultsVideos according to the event that is dispatched to it.
class SearchResultsVideosNotifier
    extends StateNotifier<SearchResultsVideosState> {
  SearchResultsVideosNotifier(SearchResultsVideosState state) : super(state) {}

  void changeRadioButton1(
    int index,
    String value,
  ) {
    List<SearchresultsvideosItemModel> newList =
        List<SearchresultsvideosItemModel>.from(
            state.searchResultsVideosModelObj!.searchresultsvideosItemList);
    newList[index] = newList[index].copyWith(radioGroup: value);
    state = state.copyWith(
        searchResultsVideosModelObj: state.searchResultsVideosModelObj
            ?.copyWith(searchresultsvideosItemList: newList));
  }
}
