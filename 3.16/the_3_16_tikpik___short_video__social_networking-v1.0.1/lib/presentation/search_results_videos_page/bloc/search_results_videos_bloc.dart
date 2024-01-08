import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/searchresultsvideos_item_model.dart';
import 'package:the_3_16_tikpik___short_video__social_networking/presentation/search_results_videos_page/models/search_results_videos_model.dart';
part 'search_results_videos_event.dart';
part 'search_results_videos_state.dart';

/// A bloc that manages the state of a SearchResultsVideos according to the event that is dispatched to it.
class SearchResultsVideosBloc
    extends Bloc<SearchResultsVideosEvent, SearchResultsVideosState> {
  SearchResultsVideosBloc(SearchResultsVideosState initialState)
      : super(initialState) {
    on<SearchResultsVideosInitialEvent>(_onInitialize);
    on<SearchresultsvideosItemEvent>(_searchresultsvideosItem);
  }

  _onInitialize(
    SearchResultsVideosInitialEvent event,
    Emitter<SearchResultsVideosState> emit,
  ) async {
    emit(state.copyWith(
        searchResultsVideosModelObj:
            state.searchResultsVideosModelObj?.copyWith(
      searchresultsvideosItemList: fillSearchresultsvideosItemList(),
    )));
  }

  _searchresultsvideosItem(
    SearchresultsvideosItemEvent event,
    Emitter<SearchResultsVideosState> emit,
  ) {
    List<SearchresultsvideosItemModel> newList =
        List<SearchresultsvideosItemModel>.from(
            state.searchResultsVideosModelObj!.searchresultsvideosItemList);
    newList[event.index] = newList[event.index].copyWith(
      radioGroup: event.radioGroup,
    );
    emit(state.copyWith(
        searchResultsVideosModelObj: state.searchResultsVideosModelObj
            ?.copyWith(searchresultsvideosItemList: newList)));
  }

  List<SearchresultsvideosItemModel> fillSearchresultsvideosItemList() {
    return [
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
    ];
  }
}
